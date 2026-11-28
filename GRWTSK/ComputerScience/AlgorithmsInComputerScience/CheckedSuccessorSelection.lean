import Mathlib.Data.List.Basic

/-!
# Total selection from a checked finite successor list

Attribution: grwtsk contributors.
Formal status is recorded in the accompanying exact-source verification evidence.
Target: Lean v4.34.1, Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
Intended subject path: GRWTSK/ComputerScience/AlgorithmsInComputerScience/CheckedSuccessorSelection.lean.

An untrusted generator may order candidates by arbitrary weights. Failed checks
never remove the separately established fallback. This proves selection safety
and termination for a supplied finite list; it does not supply the operation's
fallback-correctness theorem or any open analytic existence theorem.
-/

namespace GRWTSK.ComputerScience.CheckedSuccessor

def select {Candidate : Type*} (check : Candidate → Bool) (fallback : Candidate) :
    List Candidate → Candidate
  | [] => fallback
  | c :: cs => if check c then c else select check fallback cs

/-- Selection is valid even when all heuristic candidates are rejected. -/
theorem select_valid {Candidate : Type*} (Valid : Candidate → Prop)
    (check : Candidate → Bool) (fallback : Candidate)
    (check_sound : ∀ c, check c = true → Valid c)
    (fallback_valid : Valid fallback) (candidates : List Candidate) :
    Valid (select check fallback candidates) := by
  induction candidates with
  | nil => exact fallback_valid
  | cons c cs ih =>
      by_cases hc : check c = true
      · simpa [select, hc] using check_sound c hc
      · simpa [select, hc] using ih

theorem all_rejected_returns_fallback {Candidate : Type*}
    (check : Candidate → Bool) (fallback : Candidate) (candidates : List Candidate)
    (rejected : ∀ c ∈ candidates, check c = false) :
    select check fallback candidates = fallback := by
  induction candidates with
  | nil => rfl
  | cons c cs ih =>
      have hc := rejected c List.mem_cons_self
      have hcs : ∀ d ∈ cs, check d = false := fun d hd =>
        rejected d (List.mem_cons_of_mem c hd)
      simpa [select, hc] using ih hcs

end GRWTSK.ComputerScience.CheckedSuccessor
