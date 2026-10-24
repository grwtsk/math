# Complete source: GRWTSK.Analysis.ErrorBounds.IntegerSquareWitness

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `293d2264461e3ae00dca296533143ad4e2cafb4f` · SHA-256 `d6a42bc6a7d89db4065a5e57de6b79fef920da691df397e060e626532e18b6e2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ErrorBounds.IntegerExpStateFold

set_option autoImplicit false

/-!
# Division-free witnesses for exact dyadic square transitions

Candidate states are untrusted data. Six integer inequalities identify the exact
old rounded state, including its error. Every link, the requested step count and
the externally fixed initial state are checked. This is pure finite arithmetic,
not a parser, runtime receipt or permission to execute. All Lean remains NOT_RUN.
-/
namespace GRWTSK.Analysis.ErrorBounds.IntegerSquareWitness

open GRWTSK.Algebra.BigOperators.IndexedStateFold
open IntegerDyadicSquare

/-- Floor is lower-inclusive and upper-STRICT, also for negative numerators. -/
def FloorBounds (n d q : ℤ) : Prop := q*d ≤ n ∧ n < (q+1)*d

/-- Ceiling has the opposite half-open convention. -/
def CeilBounds (n d q : ℤ) : Prop := (q-1)*d < n ∧ n ≤ q*d

theorem floorBounds_iff {n d q : ℤ} (hd : 0 < d) :
    FloorBounds n d q ↔ q = n/d := by
  have hdq : (0 : ℚ) < (d : ℚ) := by exact_mod_cast hd
  have he : q = n/d ↔
      (q : ℚ) ≤ (n : ℚ)/(d : ℚ) ∧ (n : ℚ)/(d : ℚ) < (q : ℚ)+1 := by
    rw [← floor_ratio n hd, eq_comm, Int.floor_eq_iff]
  rw [he]
  constructor
  · intro h
    exact ⟨(le_div_iff₀ hdq).mpr (by exact_mod_cast h.1),
      (div_lt_iff₀ hdq).mpr (by exact_mod_cast h.2)⟩
  · rintro ⟨hlo,hhi⟩
    exact ⟨by exact_mod_cast (le_div_iff₀ hdq).mp hlo,
      by exact_mod_cast (div_lt_iff₀ hdq).mp hhi⟩

theorem ceilBounds_iff {n d q : ℤ} (hd : 0 < d) :
    CeilBounds n d q ↔ q = ceilDiv n d := by
  have he : CeilBounds n d q ↔ FloorBounds (-n) d (-q) := by
    unfold CeilBounds FloorBounds
    constructor <;> rintro ⟨ha,hb⟩ <;> constructor <;> nlinarith
  rw [he, floorBounds_iff hd]
  unfold ceilDiv
  constructor <;> intro h <;> linarith

/-- Compute displacement from the proposed coordinates; never accept a supplied residual. -/
def proposedResidual (bits : ℕ) (x y : State) : ℤ :=
  |y.re*scale bits-realNumerator x| + |y.im*scale bits-imagNumerator x|

def errorNumerator (bits : ℕ) (x y : State) : ℤ :=
  2*x.error*scale bits+x.error^2+proposedResidual bits x y

/-- No division, floor, ceiling or old `step` call occurs in this predicate. -/
def StepBounds (bits : ℕ) (x y : State) : Prop :=
  FloorBounds (realNumerator x) (scale bits) y.re ∧
    FloorBounds (imagNumerator x) (scale bits) y.im ∧
    CeilBounds (errorNumerator bits x y) (scale bits) y.error

instance stepBoundsDecidable (bits : ℕ) (x y : State) : Decidable (StepBounds bits x y) := by
  unfold StepBounds FloorBounds CeilBounds
  infer_instance

def checkStep (bits : ℕ) (x y : State) : Bool := decide (StepBounds bits x y)

theorem proposedResidual_eq {bits : ℕ} {x y : State}
    (hr : y.re = realNumerator x / scale bits)
    (hi : y.im = imagNumerator x / scale bits) :
    proposedResidual bits x y = residual bits x := by
  simp only [proposedResidual, residual, hr, hi]

/-- Exact equality, not merely a larger safe radius. Negative error states have
arithmetic meaning here only; analytic validity is still guarded upstream. -/
theorem stepBounds_iff (bits : ℕ) (x y : State) :
    StepBounds bits x y ↔ y = step bits x := by
  constructor
  · rintro ⟨hr,hi,he⟩
    have hr' := (floorBounds_iff (scale_pos bits)).mp hr
    have hi' := (floorBounds_iff (scale_pos bits)).mp hi
    have he' := (ceilBounds_iff (scale_pos bits)).mp he
    rw [errorNumerator, proposedResidual_eq hr' hi'] at he'
    rw [show y = State.mk y.re y.im y.error from rfl, hr', hi', he']
    rfl
  · rintro rfl
    refine ⟨(floorBounds_iff (scale_pos bits)).mpr rfl,
      (floorBounds_iff (scale_pos bits)).mpr rfl, ?_⟩
    apply (ceilBounds_iff (scale_pos bits)).mpr
    simp only [errorNumerator, proposedResidual_eq
      (show (step bits x).re = realNumerator x / scale bits from rfl)
      (show (step bits x).im = imagNumerator x / scale bits from rfl)]
    rfl

theorem checkStep_iff (bits : ℕ) (x y : State) :
    checkStep bits x y = true ↔ y = step bits x := by
  simpa only [checkStep, decide_eq_true_eq] using stepBounds_iff bits x y

/-- The rows contain successor states only. The caller fixes the initial state
and count externally. Missing or extra rows fail, even at a fixed point. -/
def walk (bits : ℕ) : ℕ → State → List State → Option State
  | 0, x, [] => some x
  | n+1, x, y::ys => if checkStep bits x y then walk bits n y ys else none
  | _, _, _ => none

theorem run_cursor (bits start count : ℕ) (x : State) :
    run (fun _ z => step bits z) start count x =
      run (fun _ z => step bits z) 0 count x := by
  induction count generalizing start x with
  | zero => rfl
  | succ count ih =>
      simpa only [run] using (ih (start+1) (step bits x)).trans (ih 1 (step bits x)).symm

theorem walk_sound {bits n : ℕ} {x out : State} {rows : List State}
    (h : walk bits n x rows = some out) :
    run (fun _ z => step bits z) 0 n x = out := by
  induction n generalizing x rows with
  | zero =>
      cases rows with
      | nil => simpa only [walk, run, Option.some.injEq] using h
      | cons y ys => simp [walk] at h
  | succ n ih =>
      cases rows with
      | nil => simp [walk] at h
      | cons y ys =>
          by_cases hc : checkStep bits x y = true
          · have ht : walk bits n y ys = some out := by simpa [walk, hc] using h
            have hy := (checkStep_iff bits x y).mp hc
            calc
              _ = run (fun _ z => step bits z) 0 n y := by rw [run, ← hy, run_cursor]
              _ = out := ih ht
          · simp [walk, hc] at h

theorem walk_length {bits n : ℕ} {x out : State} {rows : List State}
    (h : walk bits n x rows = some out) : rows.length = n := by
  induction n generalizing x rows with
  | zero =>
      cases rows with
      | nil => rfl
      | cons y ys => simp [walk] at h
  | succ n ih =>
      cases rows with
      | nil => simp [walk] at h
      | cons y ys =>
          by_cases hc : checkStep bits x y = true
          · have ht : walk bits n y ys = some out := by simpa [walk, hc] using h
            simpa only [List.length_cons] using congrArg Nat.succ (ih ht)
          · simp [walk, hc] at h

/-- A pure witness constructor. It is not a successful execution receipt. -/
def rowsFor (bits : ℕ) : ℕ → State → List State
  | 0, _ => []
  | n+1, x => let y := step bits x; y :: rowsFor bits n y

theorem walk_rowsFor (bits n : ℕ) (x : State) :
    walk bits n x (rowsFor bits n x) = some (run (fun _ z => step bits z) 0 n x) := by
  induction n generalizing x with
  | zero => rfl
  | succ n ih =>
      have hc := (checkStep_iff bits x (step bits x)).mpr rfl
      simp only [rowsFor, walk, hc, if_true, ih, run, run_cursor]

def check (bits n : ℕ) (initial : State) (rows : List State) (expected : State) : Bool :=
  match walk bits n initial rows with
  | none => false
  | some actual => decide (actual = expected)

theorem check_iff (bits n : ℕ) (initial : State) (rows : List State) (expected : State) :
    check bits n initial rows expected = true ↔ walk bits n initial rows = some expected := by
  unfold check
  cases h : walk bits n initial rows with
  | none => simp
  | some out => simp

theorem check_sound {bits n : ℕ} {initial out : State} {rows : List State}
    (h : check bits n initial rows out = true) :
    run (fun _ z => step bits z) 0 n initial = out :=
  walk_sound ((check_iff _ _ _ _ _).mp h)

/-- Completeness: every exact recurrence endpoint has a checked witness. -/
theorem exists_checked_iff (bits n : ℕ) (initial out : State) :
    (∃ rows, check bits n initial rows out = true) ↔
      run (fun _ z => step bits z) 0 n initial = out := by
  constructor
  · rintro ⟨rows,h⟩; exact check_sound h
  · intro h
    exact ⟨rowsFor bits n initial, (check_iff _ _ _ _ _).mpr (by rw [walk_rowsFor, h])⟩

/-- Checked pieces compose only at the SAME complete intermediate state. -/
theorem walk_append {bits n m : ℕ} {x middle out : State} {left right : List State}
    (hleft : walk bits n x left = some middle)
    (hright : walk bits m middle right = some out) :
    walk bits (n+m) x (left++right) = some out := by
  induction n generalizing x left with
  | zero =>
      cases left with
      | nil =>
          have hx : x = middle := by simpa only [walk, Option.some.injEq] using hleft
          simpa only [List.nil_append, Nat.zero_add, hx] using hright
      | cons y ys => simp [walk] at hleft
  | succ n ih =>
      cases left with
      | nil => simp [walk] at hleft
      | cons y ys =>
          by_cases hc : checkStep bits x y = true
          · have ht : walk bits n y ys = some middle := by
              simpa [walk, hc] using hleft
            simpa only [Nat.succ_add, List.cons_append, walk, hc, if_true] using ih ht
          · simp [walk, hc] at hleft

theorem check_append {bits n m : ℕ} {x middle out : State} {left right : List State}
    (hleft : check bits n x left middle = true)
    (hright : check bits m middle right out = true) :
    check bits (n+m) x (left++right) out = true :=
  (check_iff _ _ _ _ _).mpr (walk_append
    ((check_iff _ _ _ _ _).mp hleft) ((check_iff _ _ _ _ _).mp hright))

end GRWTSK.Analysis.ErrorBounds.IntegerSquareWitness
```
