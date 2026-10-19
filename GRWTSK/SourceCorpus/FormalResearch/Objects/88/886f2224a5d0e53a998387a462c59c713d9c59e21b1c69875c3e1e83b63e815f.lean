import Mathlib.Logic.Relation
import Mathlib.Order.WellFounded
import Mathlib.Data.Nat.Basic

/-!
# Forward reduction and simulation

`R x y` always means a forward reduction from `x` to `y`. Accessibility
therefore uses the reversed relation. Strict simulation must use at least one
target step. Stuttering needs independent accessibility on each encoding fiber.
No injectivity, source catalogue, or execution quota is used.
-/

namespace FormalResearch.MathematicalTooling.Reduction

universe u v

variable {X : Type u} {Y : Type v}

/-- Accessibility in the direction of forward execution. -/
def StronglyNormalizing (R : X → X → Prop) (x : X) : Prop :=
  Acc (fun y x => R x y) x

/-- A counted forward trace, including the zero-step trace. -/
inductive Trace (R : X → X → Prop) : ℕ → X → X → Prop
  | zero (x : X) : Trace R 0 x x
  | step {n : ℕ} {x y z : X} : R x y → Trace R n y z → Trace R (n + 1) x z

/-- Concatenation preserves both endpoints and adds the exact number of steps. -/
theorem Trace.trans {R : X → X → Prop} {m n : ℕ} {x y z : X}
    (first : Trace R m x y) (second : Trace R n y z) : Trace R (m + n) x z := by
  induction first with
  | zero => simpa only [Nat.zero_add] using second
  | step reduction _ ih =>
    simpa only [Nat.add_assoc, Nat.add_comm 1 n] using Trace.step reduction (ih second)

/-- A natural rank bounds every admitted trace, without enumerating successors. -/
theorem trace_length_le_rank {R : X → X → Prop} (rank : X → ℕ)
    (decreases : ∀ {x y}, R x y → rank y < rank x)
    {n : ℕ} {x y : X} (trace : Trace R n x y) : n + rank y ≤ rank x := by
  induction trace with
  | zero => omega
  | step reduction _ ih =>
    have := decreases reduction
    omega

/-- Every forward step decreases a natural rank, so execution is accessible. -/
theorem strongly_normalizing_of_rank {R : X → X → Prop} (rank : X → ℕ)
    (decreases : ∀ {x y}, R x y → rank y < rank x) (x : X) :
    StronglyNormalizing R x :=
  ((InvImage.wf rank Nat.lt_wfRel.wf).mono (fun _ _ h => decreases h)).apply x

private theorem target_path_accessible {T : Y → Y → Prop} {y : Y}
    (sn : StronglyNormalizing T y) : Acc (fun b a => Relation.TransGen T a b) y := by
  apply Subrelation.accessible (r := Relation.TransGen (fun b a => T a b)) _ sn.transGen
  intro a b path
  exact (Relation.transGen_swap).mpr path

/-- Positive target simulation transfers strong normalization. -/
theorem strongly_normalizing_of_strict_simulation
    {R : X → X → Prop} {T : Y → Y → Prop} (encoding : X → Y)
    (simulation : ∀ {x y}, R x y → Relation.TransGen T (encoding x) (encoding y))
    {x : X} (target : StronglyNormalizing T (encoding x)) :
    StronglyNormalizing R x := by
  have accessible := target_path_accessible target
  clear target
  generalize equation : encoding x = z at accessible
  induction accessible generalizing x with
  | intro z _ ih =>
    refine Acc.intro x fun y reduction => ?_
    exact ih (encoding y) (equation ▸ simulation reduction) rfl

/-- Administrative well-foundedness is required on each whole encoding fiber. -/
def FiberWellFounded (encoding : X → Y) (Admin : X → X → Prop) : Prop :=
  ∀ z : Y, WellFounded (fun y x : {x : X // encoding x = z} => Admin x.val y.val)

/-- A natural administrative rank supplies the fiber condition. -/
theorem fiber_well_founded_of_measure (encoding : X → Y) {Admin : X → X → Prop}
    (measure : X → ℕ)
    (decreases : ∀ {x y}, encoding x = encoding y → Admin x y → measure y < measure x) :
    FiberWellFounded encoding Admin := by
  intro z
  exact (InvImage.wf (fun x : {x : X // encoding x = z} => measure x.val) Nat.lt_wfRel.wf).mono
    (fun x y h => decreases (y.property.trans x.property.symm) h)

/-- Fiberwise administrative termination transfers SN through stuttering simulation. -/
theorem strongly_normalizing_of_fiber_simulation
    {R Admin : X → X → Prop} {T : Y → Y → Prop} (encoding : X → Y)
    (simulation : ∀ {x y}, R x y →
      Relation.TransGen T (encoding x) (encoding y) ∨
        (encoding x = encoding y ∧ Admin x y))
    (fiber : FiberWellFounded encoding Admin)
    {x : X} (target : StronglyNormalizing T (encoding x)) :
    StronglyNormalizing R x := by
  have accessible := target_path_accessible target
  clear target
  generalize equation : encoding x = z at accessible
  induction accessible generalizing x with
  | intro z _ ih =>
    have onFiber : ∀ a : {x : X // encoding x = z}, StronglyNormalizing R a.val := by
      intro a
      induction a using (fiber z).induction with
      | h a adminIH =>
        refine Acc.intro a.val fun b reduction => ?_
        rcases simulation reduction with computational | ⟨same, administrative⟩
        · exact ih (encoding b) (a.property ▸ computational) rfl
        · exact adminIH ⟨b, same ▸ a.property⟩ administrative
    exact onFiber ⟨x, equation⟩

/-- A target rank decreases across every nonempty target path. -/
theorem rank_decreases_along_path {T : Y → Y → Prop} (rank : Y → ℕ)
    (decreases : ∀ {x y}, T x y → rank y < rank x)
    {x y : Y} (path : Relation.TransGen T x y) : rank y < rank x := by
  induction path with
  | single step => exact decreases step
  | tail _ step ih => exact Nat.lt_trans (decreases step) ih

/-- Strict simulation transfers a conservative natural source budget. -/
theorem strict_simulation_rank {R : X → X → Prop} {T : Y → Y → Prop}
    (encoding : X → Y) (rank : Y → ℕ)
    (decreases : ∀ {x y}, T x y → rank y < rank x)
    (simulation : ∀ {x y}, R x y → Relation.TransGen T (encoding x) (encoding y))
    {x y : X} (step : R x y) : rank (encoding y) < rank (encoding x) :=
  rank_decreases_along_path rank decreases (simulation step)

/-- Administrative work decreases; a computational step may reset it to at most `B`.
The weighted natural rank bounds all source steps, not just computational steps. -/
theorem stuttering_total_rank {R : X → X → Prop}
    (targetRank adminRank : X → ℕ) (B : ℕ)
    (classification : ∀ {x y}, R x y →
      (targetRank y < targetRank x ∧ adminRank y ≤ B) ∨
        (targetRank y = targetRank x ∧ adminRank y < adminRank x))
    {x y : X} (step : R x y) :
    adminRank y + targetRank y * (B + 1) < adminRank x + targetRank x * (B + 1) := by
  rcases classification step with ⟨targetDecrease, reset⟩ | ⟨same, adminDecrease⟩
  · have targetBound : (targetRank y + 1) * (B + 1) ≤ targetRank x * (B + 1) :=
      Nat.mul_le_mul_right (B + 1) targetDecrease
    rw [Nat.add_mul, Nat.one_mul] at targetBound
    omega
  · rw [same]
    omega

/-- The reset hypothesis certifies the requested total-step budget. -/
theorem stuttering_trace_budget {R : X → X → Prop}
    (targetRank adminRank : X → ℕ) (B : ℕ)
    (classification : ∀ {x y}, R x y →
      (targetRank y < targetRank x ∧ adminRank y ≤ B) ∨
        (targetRank y = targetRank x ∧ adminRank y < adminRank x))
    {n : ℕ} {x y : X} (trace : Trace R n x y) :
    n ≤ adminRank x + targetRank x * (B + 1) := by
  have := trace_length_le_rank (fun x => adminRank x + targetRank x * (B + 1))
    (stuttering_total_rank targetRank adminRank B classification) trace
  omega

end FormalResearch.MathematicalTooling.Reduction
