import Mathlib

/-!
# History behavior, information kernels and future quotients

Local mathematical attribution: grwtsk contributors.
Consumer: https://github.com/grwtsk/sofic/issues/10 (A02).
SOURCE_PROOF_CANDIDATE. Compilation, fresh kernel checking, transitive axiom
audit and independent review: NOT_RUN.

Compare the finite continuation carrier in BehavioralEquivalence.lean
(blob 1eca0b6ec7b456443ad355f095c666db294d2a00). The present domain
is ALL finite histories and ALL finite continuations, not that finite probe
family. Reuse Mathlib's Function.FactorsThrough and factorsThrough_iff
(Logic/Function/Basic.lean, d13f23b723b8a846827a245b89c10fc7d3f11612).
No new mathematical novelty is claimed. Quotient readouts follow from the
kernel inclusion; right congruence follows from append associativity.
The state-run theorem gives the mathematical prerequisite for reachable
Moore minimization; effective finite minimization, finite-state bounds,
contextual effects and cost realization remain separate.
-/

set_option autoImplicit false

namespace GRWTSK.HistoryBehavior

universe u v w x
abbrev History (I : Type u) := List I
abbrev Behavior (I : Type u) (O : Type v) := History I → O

variable {I : Type u} {A : Type v} {B : Type w}

def obsKernel (b : Behavior I A) (u v : History I) : Prop := b u = b v

/-- Mathlib's factorization relation is exactly kernel inclusion, with
the *readout* behavior first. -/
theorem kernel_inclusion_iff (g : Behavior I A) (b : Behavior I B) :
    (∀ u v, obsKernel g u v → obsKernel b u v) ↔ b.FactorsThrough g := by
  constructor
  · intro h u v huv
    exact h u v huv
  · intro h u v huv
    exact h huv

/-- Since the history domain includes [], the readout codomain is inhabited.
The abstract existence theorem is not an algorithm for computing the readout. -/
theorem factorsThrough_iff_readout (g : Behavior I A) (b : Behavior I B) :
    b.FactorsThrough g ↔ ∃ h : A → B, ∀ w, b w = h (g w) := by
  letI : Nonempty B := ⟨b []⟩
  constructor
  · intro hf
    obtain ⟨h, hh⟩ := (Function.factorsThrough_iff (f := g) b).mp hf
    exact ⟨h, fun w => congrFun hh w⟩
  · rintro ⟨h, hh⟩
    intro u v he
    exact (hh u).trans ((congrArg h he).trans (hh v).symm)

def jointFactor (a : Behavior I A) (b : Behavior I B) : Behavior I (A × B) :=
  fun w => (a w, b w)

theorem joint_kernel (a : Behavior I A) (b : Behavior I B) (u v : History I) :
    obsKernel (jointFactor a b) u v ↔ obsKernel a u v ∧ obsKernel b u v := by
  change (a u, b u) = (a v, b v) ↔ a u = a v ∧ b u = b v
  constructor
  · intro h
    exact ⟨congrArg Prod.fst h, congrArg Prod.snd h⟩
  · rintro ⟨ha, hb⟩
    rw [ha, hb]

theorem joint_universal {C : Type x} (g : Behavior I C)
    (a : Behavior I A) (b : Behavior I B) :
    (jointFactor a b).FactorsThrough g ↔ a.FactorsThrough g ∧ b.FactorsThrough g := by
  constructor
  · intro h
    exact ⟨fun _ _ he => congrArg Prod.fst (h he),
      fun _ _ he => congrArg Prod.snd (h he)⟩
  · rintro ⟨ha, hb⟩ u v he
    exact (joint_kernel a b u v).mpr ⟨ha he, hb he⟩

def futureEquiv (b : Behavior I A) (u v : History I) : Prop :=
  ∀ z : History I, b (u ++ z) = b (v ++ z)

theorem future_equivalence (b : Behavior I A) : Equivalence (futureEquiv b) := by
  refine ⟨?_, ?_, ?_⟩
  · intro u z; rfl
  · intro u v h z; exact (h z).symm
  · intro u v w h k z; exact (h z).trans (k z)

theorem future_right (b : Behavior I A) {u v : History I}
    (h : futureEquiv b u v) (a : I) :
    futureEquiv b (u ++ [a]) (v ++ [a]) := by
  intro z
  simpa [List.append_assoc] using h (a :: z)

theorem future_now (b : Behavior I A) {u v : History I}
    (h : futureEquiv b u v) : b u = b v := by
  simpa using h []

def futureSetoid (b : Behavior I A) : Setoid (History I) :=
  ⟨futureEquiv b, future_equivalence b⟩

abbrev FutureState (b : Behavior I A) := Quotient (futureSetoid b)

def futureInitial (b : Behavior I A) : FutureState b :=
  Quotient.mk (futureSetoid b) []

def futureOutput (b : Behavior I A) : FutureState b → A :=
  Quotient.lift b (fun _ _ h => future_now b h)

def futureStep (b : Behavior I A) (a : I) : FutureState b → FutureState b :=
  Quotient.lift (fun w => Quotient.mk (futureSetoid b) (w ++ [a]))
    (fun _ _ h => Quotient.sound (future_right b h a))

theorem future_output_mk (b : Behavior I A) (w : History I) :
    futureOutput b (Quotient.mk (futureSetoid b) w) = b w := rfl

theorem future_step_mk (b : Behavior I A) (a : I) (w : History I) :
    futureStep b a (Quotient.mk (futureSetoid b) w) =
      Quotient.mk (futureSetoid b) (w ++ [a]) := rfl

/-- Equal states in a deterministic run cannot have different future states,
even if histories are different. -/
theorem state_equal_append {S : Type x} (run : History I → S) (step : S → I → S)
    (runStep : ∀ w a, run (w ++ [a]) = step (run w) a) :
    ∀ (z u v : History I), run u = run v → run (u ++ z) = run (v ++ z) := by
  intro z
  induction z with
  | nil => intro u v h; simpa using h
  | cons a z ih =>
    intro u v h
    have hstep : run (u ++ [a]) = run (v ++ [a]) := by
      simp only [runStep, h]
    simpa [List.append_assoc] using ih (u ++ [a]) (v ++ [a]) hstep

theorem state_kernel_sub_future {S : Type x} (b : Behavior I A)
    (run : History I → S) (step : S → I → S) (out : S → A)
    (runStep : ∀ w a, run (w ++ [a]) = step (run w) a)
    (readout : ∀ w, b w = out (run w)) {u v : History I} (h : run u = run v) :
    futureEquiv b u v := by
  intro z
  rw [readout, readout]
  exact congrArg out (state_equal_append run step runStep z u v h)

/-- The reachable-state map factors onto the future quotient. Minimal
cardinality in the finite case follows from surjectivity, not from trace fit. -/
theorem future_factor_of_run {S : Type x} (b : Behavior I A)
    (run : History I → S) (step : S → I → S) (out : S → A)
    (runStep : ∀ w a, run (w ++ [a]) = step (run w) a)
    (readout : ∀ w, b w = out (run w)) :
    (fun w => Quotient.mk (futureSetoid b) w).FactorsThrough run := by
  intro u v h
  exact Quotient.sound (state_kernel_sub_future b run step out runStep readout h)

end GRWTSK.HistoryBehavior
