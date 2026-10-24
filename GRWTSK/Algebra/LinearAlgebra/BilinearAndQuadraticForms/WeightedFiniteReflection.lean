/-
Copyright (c) 2026 grwtsk contributors. MIT.
Research direction: grwtsk contributors. Formalization assistance: OpenAI.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. Standalone leaf; no root import.
-/
import Mathlib.Data.Rat.Defs
import Mathlib.Algebra.BigOperators.Fin
import Mathlib.Algebra.Order.BigOperators.Ring.Finset
import Mathlib.Tactic.NormNum

/-!
# Fixed rational weighted finite reflections

The carrier is a full finite rational vector space with a positive normalized
rational bilinear form. A fixed Boolean phase is applied before reflection;
its inverse applies the same reflection before the same Boolean phase.
The pairing identities below avoid any `InnerProductSpace` over the rationals.

These are ideal exact algebraic laws, not a theorem about bounded runtime
domains, mutable plans, serialization, mathematical zeros or RH. The original
four-coordinate `FiniteReflection` module is not changed or imported.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.LinearAlgebra.WeightedFiniteReflection

abbrev Vec (ι : Type*) := ι → ℚ

/-- A finite, strictly positive normalized rational weight vector. -/
structure Weights (ι : Type*) [Fintype ι] where
  weight : ι → ℚ
  positive : ∀ i, 0 < weight i
  normalized : ∑ i, weight i = 1

variable {ι : Type*} [Fintype ι]

/-- Positive rational bilinear pairing; its diagonal is quadratic energy. -/
def pairing (p : Weights ι) (x y : Vec ι) : ℚ :=
  ∑ i, p.weight i * x i * y i

def energy (p : Weights ι) (x : Vec ι) : ℚ :=
  ∑ i, p.weight i * (x i) ^ 2

def weightedMean (p : Weights ι) (x : Vec ι) : ℚ :=
  ∑ i, p.weight i * x i

def projector (p : Weights ι) (x : Vec ι) : Vec ι :=
  fun _ => weightedMean p x

def diffuse (p : Weights ι) (x : Vec ι) : Vec ι :=
  fun i => 2 * weightedMean p x - x i

/-- A Boolean mathematical phase sign, distinct from runtime lifecycle labels. -/
def sign (b : Bool) : ℚ := if b then -1 else 1

def phase (b : ι → Bool) (x : Vec ι) : Vec ι :=
  fun i => sign (b i) * x i

def step (p : Weights ι) (b : ι → Bool) (x : Vec ι) : Vec ι :=
  diffuse p (phase b x)

def inverseStep (p : Weights ι) (b : ι → Bool) (x : Vec ι) : Vec ι :=
  phase b (diffuse p x)

theorem pairing_symm (p : Weights ι) (x y : Vec ι) :
    pairing p x y = pairing p y x := by
  apply Finset.sum_congr rfl
  intro i _
  ring

theorem pairing_add_left (p : Weights ι) (x y z : Vec ι) :
    pairing p (x + y) z = pairing p x z + pairing p y z := by
  simp only [pairing, Pi.add_apply, mul_add, add_mul, Finset.sum_add_distrib]

theorem pairing_sub_left (p : Weights ι) (x y z : Vec ι) :
    pairing p (x - y) z = pairing p x z - pairing p y z := by
  simp only [pairing, Pi.sub_apply, mul_sub, sub_mul, Finset.sum_sub_distrib]

theorem pairing_scale_left (p : Weights ι) (a : ℚ) (x y : Vec ι) :
    pairing p (fun i => a * x i) y = a * pairing p x y := by
  unfold pairing
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro i _
  ring

theorem pairing_add_right (p : Weights ι) (x y z : Vec ι) :
    pairing p x (y + z) = pairing p x y + pairing p x z := by
  calc
    pairing p x (y + z) = pairing p (y + z) x := pairing_symm p _ _
    _ = pairing p y x + pairing p z x := pairing_add_left p _ _ _
    _ = pairing p x y + pairing p x z := by rw [pairing_symm p y x, pairing_symm p z x]

theorem pairing_scale_right (p : Weights ι) (a : ℚ) (x y : Vec ι) :
    pairing p x (fun i => a * y i) = a * pairing p x y := by
  calc
    pairing p x (fun i => a * y i) = pairing p (fun i => a * y i) x :=
      pairing_symm p _ _
    _ = a * pairing p y x := pairing_scale_left p _ _ _
    _ = a * pairing p x y := by rw [pairing_symm p y x]

theorem pairing_self (p : Weights ι) (x : Vec ι) :
    pairing p x x = energy p x := by
  apply Finset.sum_congr rfl
  intro i _
  ring

theorem energy_nonneg (p : Weights ι) (x : Vec ι) : 0 ≤ energy p x := by
  exact Finset.sum_nonneg fun i _ =>
    mul_nonneg (le_of_lt (p.positive i)) (sq_nonneg (x i))

theorem energy_eq_zero_iff (p : Weights ι) (x : Vec ι) :
    energy p x = 0 ↔ x = 0 := by
  classical
  constructor
  · intro h
    have ht : ∀ i ∈ Finset.univ, p.weight i * (x i) ^ 2 = 0 :=
      (Finset.sum_eq_zero_iff_of_nonneg
        (fun i (_ : i ∈ Finset.univ) =>
          mul_nonneg (le_of_lt (p.positive i)) (sq_nonneg (x i)))).1 h
    funext i
    have hs : (x i) ^ 2 = 0 :=
      (mul_eq_zero.mp (ht i (Finset.mem_univ i))).resolve_left
        (ne_of_gt (p.positive i))
    exact sq_eq_zero_iff.mp hs
  · rintro rfl
    simp [energy]

theorem pairing_pos_def (p : Weights ι) (x : Vec ι) (hx : x ≠ 0) :
    0 < pairing p x x := by
  rw [pairing_self]
  have hne : energy p x ≠ 0 := fun h => hx ((energy_eq_zero_iff p x).1 h)
  exact lt_of_le_of_ne (energy_nonneg p x) (Ne.symm hne)

theorem weightedMean_add (p : Weights ι) (x y : Vec ι) :
    weightedMean p (x + y) = weightedMean p x + weightedMean p y := by
  simp only [weightedMean, Pi.add_apply, mul_add, Finset.sum_add_distrib]

theorem weightedMean_sub (p : Weights ι) (x y : Vec ι) :
    weightedMean p (x - y) = weightedMean p x - weightedMean p y := by
  simp only [weightedMean, Pi.sub_apply, mul_sub, Finset.sum_sub_distrib]

theorem weightedMean_scale (p : Weights ι) (a : ℚ) (x : Vec ι) :
    weightedMean p (fun i => a * x i) = a * weightedMean p x := by
  unfold weightedMean
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro i _
  ring

theorem weightedMean_const (p : Weights ι) (a : ℚ) :
    weightedMean p (fun _ => a) = a := by
  unfold weightedMean
  rw [← Finset.sum_mul, p.normalized, one_mul]

theorem weightedMean_projector (p : Weights ι) (x : Vec ι) :
    weightedMean p (projector p x) = weightedMean p x :=
  weightedMean_const p _

theorem weightedMean_diffuse (p : Weights ι) (x : Vec ι) :
    weightedMean p (diffuse p x) = weightedMean p x := by
  change weightedMean p ((fun _ => 2 * weightedMean p x) - x) = _
  rw [weightedMean_sub, weightedMean_const]
  ring

theorem projector_add (p : Weights ι) (x y : Vec ι) :
    projector p (x + y) = projector p x + projector p y := by
  funext i
  exact weightedMean_add p x y

theorem projector_scale (p : Weights ι) (a : ℚ) (x : Vec ι) :
    projector p (fun i => a * x i) = fun i => a * projector p x i := by
  funext i
  exact weightedMean_scale p a x

theorem diffuse_add (p : Weights ι) (x y : Vec ι) :
    diffuse p (x + y) = diffuse p x + diffuse p y := by
  funext i
  change 2 * weightedMean p (x + y) - (x i + y i) = _
  rw [weightedMean_add]
  change 2 * (weightedMean p x + weightedMean p y) - (x i + y i) =
    (2 * weightedMean p x - x i) + (2 * weightedMean p y - y i)
  ring

theorem diffuse_scale (p : Weights ι) (a : ℚ) (x : Vec ι) :
    diffuse p (fun i => a * x i) = fun i => a * diffuse p x i := by
  funext i
  change 2 * weightedMean p (fun i => a * x i) - a * x i = _
  rw [weightedMean_scale]
  change 2 * (a * weightedMean p x) - a * x i = a * (2 * weightedMean p x - x i)
  ring

/-- Law 1: normalized weighted averaging is a projection. -/
theorem projector_idempotent (p : Weights ι) (x : Vec ι) :
    projector p (projector p x) = projector p x := by
  funext i
  exact weightedMean_projector p x

theorem projector_pairing (p : Weights ι) (x y : Vec ι) :
    pairing p (projector p x) y = weightedMean p x * weightedMean p y := by
  change (∑ i, p.weight i * weightedMean p x * y i) = _
  calc
    _ = ∑ i, weightedMean p x * (p.weight i * y i) := by
      apply Finset.sum_congr rfl
      intro i _
      ring
    _ = _ := by simp only [weightedMean, Finset.mul_sum]

/-- Law 2: the projector is self-adjoint for the selected rational pairing. -/
theorem projector_selfAdjoint (p : Weights ι) (x y : Vec ι) :
    pairing p (projector p x) y = pairing p x (projector p y) := by
  rw [projector_pairing, pairing_symm p x (projector p y), projector_pairing]
  ring

theorem diffuse_pairing (p : Weights ι) (x y : Vec ι) :
    pairing p (diffuse p x) y =
      2 * weightedMean p x * weightedMean p y - pairing p x y := by
  change pairing p ((fun i => 2 * projector p x i) - x) y = _
  rw [pairing_sub_left, pairing_scale_left, projector_pairing]
  ring

/-- Law 3: the diffuser is self-adjoint for the selected rational pairing. -/
theorem diffuse_selfAdjoint (p : Weights ι) (x y : Vec ι) :
    pairing p (diffuse p x) y = pairing p x (diffuse p y) := by
  rw [diffuse_pairing, pairing_symm p x (diffuse p y), diffuse_pairing,
    pairing_symm p y x]
  ring

/-- Law 4: exact reflection is an involution. -/
theorem diffuse_involutive (p : Weights ι) : Function.Involutive (diffuse p) := by
  intro x
  funext i
  change 2 * weightedMean p (diffuse p x) - (2 * weightedMean p x - x i) = x i
  rw [weightedMean_diffuse]
  ring

/-- Law 5: the diffuser is its own left inverse. -/
theorem diffuse_leftInverse (p : Weights ι) :
    Function.LeftInverse (diffuse p) (diffuse p) :=
  diffuse_involutive p

/-- Law 6: the diffuser is its own right inverse. -/
theorem diffuse_rightInverse (p : Weights ι) :
    Function.RightInverse (diffuse p) (diffuse p) :=
  diffuse_involutive p

/-- Law 7: reflection is bijective on the full rational vector space. -/
theorem diffuse_bijective (p : Weights ι) : Function.Bijective (diffuse p) := by
  constructor
  · intro x y h
    have hh := congrArg (diffuse p) h
    rw [diffuse_involutive p x, diffuse_involutive p y] at hh
    exact hh
  · intro y
    exact ⟨diffuse p y, diffuse_involutive p y⟩

def diffuseEquiv (p : Weights ι) : Vec ι ≃ Vec ι where
  toFun := diffuse p
  invFun := diffuse p
  left_inv := diffuse_leftInverse p
  right_inv := diffuse_rightInverse p

/-- Law 8: exact weighted quadratic energy is preserved. -/
theorem diffuse_energy (p : Weights ι) (x : Vec ι) :
    energy p (diffuse p x) = energy p x := by
  calc
    energy p (diffuse p x) = pairing p (diffuse p x) (diffuse p x) :=
      (pairing_self p _).symm
    _ = pairing p x (diffuse p (diffuse p x)) := diffuse_selfAdjoint p _ _
    _ = pairing p x x := by rw [diffuse_involutive]
    _ = energy p x := pairing_self p _

theorem sign_mul_self (b : Bool) : sign b * sign b = 1 := by
  cases b <;> norm_num [sign]

omit [Fintype ι] in
theorem phase_involutive (b : ι → Bool) : Function.Involutive (phase b) := by
  intro x
  funext i
  change sign (b i) * (sign (b i) * x i) = x i
  rw [← mul_assoc, sign_mul_self, one_mul]

omit [Fintype ι] in
theorem phase_add (b : ι → Bool) (x y : Vec ι) :
    phase b (x + y) = phase b x + phase b y := by
  funext i
  exact mul_add _ _ _

omit [Fintype ι] in
theorem phase_scale (b : ι → Bool) (a : ℚ) (x : Vec ι) :
    phase b (fun i => a * x i) = fun i => a * phase b x i := by
  funext i
  change sign (b i) * (a * x i) = a * (sign (b i) * x i)
  ring

theorem phase_selfAdjoint (p : Weights ι) (b : ι → Bool) (x y : Vec ι) :
    pairing p (phase b x) y = pairing p x (phase b y) := by
  apply Finset.sum_congr rfl
  intro i _
  change p.weight i * (sign (b i) * x i) * y i =
    p.weight i * x i * (sign (b i) * y i)
  ring

theorem phase_energy (p : Weights ι) (b : ι → Bool) (x : Vec ι) :
    energy p (phase b x) = energy p x := by
  calc
    energy p (phase b x) = pairing p (phase b x) (phase b x) :=
      (pairing_self p _).symm
    _ = pairing p x (phase b (phase b x)) := phase_selfAdjoint p _ _ _
    _ = pairing p x x := by rw [phase_involutive]
    _ = energy p x := pairing_self p _

theorem step_add (p : Weights ι) (b : ι → Bool) (x y : Vec ι) :
    step p b (x + y) = step p b x + step p b y := by
  simp only [step, phase_add, diffuse_add]

theorem step_scale (p : Weights ι) (b : ι → Bool) (a : ℚ) (x : Vec ι) :
    step p b (fun i => a * x i) = fun i => a * step p b x i := by
  simp only [step, phase_scale, diffuse_scale]

/-- Law 9: inverse replay applies the same reflection before the same phase. -/
theorem step_leftInverse (p : Weights ι) (b : ι → Bool) :
    Function.LeftInverse (inverseStep p b) (step p b) := by
  intro x
  change phase b (diffuse p (diffuse p (phase b x))) = x
  rw [diffuse_involutive p (phase b x), phase_involutive b x]

/-- Law 10: the opposite inverse direction is also explicit. -/
theorem step_rightInverse (p : Weights ι) (b : ι → Bool) :
    Function.RightInverse (inverseStep p b) (step p b) := by
  intro y
  change diffuse p (phase b (phase b (diffuse p y))) = y
  rw [phase_involutive b (diffuse p y), diffuse_involutive p y]

def stepEquiv (p : Weights ι) (b : ι → Bool) : Vec ι ≃ Vec ι where
  toFun := step p b
  invFun := inverseStep p b
  left_inv := step_leftInverse p b
  right_inv := step_rightInverse p b

/-- Law 11: the full-step pairing adjoint is the reversed two-sided inverse. -/
theorem step_adjoint_inverse (p : Weights ι) (b : ι → Bool) (x y : Vec ι) :
    pairing p (step p b x) y = pairing p x (inverseStep p b y) := by
  change pairing p (diffuse p (phase b x)) y =
    pairing p x (phase b (diffuse p y))
  rw [diffuse_selfAdjoint, phase_selfAdjoint]

theorem inverseStep_adjoint (p : Weights ι) (b : ι → Bool) (x y : Vec ι) :
    pairing p (inverseStep p b x) y = pairing p x (step p b y) := by
  calc
    pairing p (inverseStep p b x) y = pairing p y (inverseStep p b x) :=
      pairing_symm p _ _
    _ = pairing p (step p b y) x := (step_adjoint_inverse p b y x).symm
    _ = pairing p x (step p b y) := pairing_symm p _ _

/-- Law 12: the full step preserves the same weighted quadratic energy. -/
theorem step_energy (p : Weights ι) (b : ι → Bool) (x : Vec ι) :
    energy p (step p b x) = energy p x := by
  simp only [step, diffuse_energy, phase_energy]

/-- The exact uniform-four-coordinate plan for the retained counterexample. -/
def uniformFour : Weights (Fin 4) where
  weight := fun _ => 1 / 4
  positive := by intro i; norm_num
  normalized := by norm_num [Fin.sum_univ_succ]

def firstBasis : Vec (Fin 4) := fun i => if i = 0 then 1 else 0
def fourthBasis : Vec (Fin 4) := fun i => if i = 3 then 1 else 0
def lastMarked : Fin 4 → Bool := fun i => decide (i = 3)

/-- Law 13: the full step is generally not self-adjoint, despite law 11. -/
theorem step_not_selfAdjoint_control :
    pairing uniformFour (step uniformFour lastMarked firstBasis) fourthBasis = 1 / 8 ∧
      pairing uniformFour firstBasis (step uniformFour lastMarked fourthBasis) = -1 / 8 := by
  norm_num [pairing, step, diffuse, phase, sign, weightedMean, uniformFour,
    firstBasis, fourthBasis, lastMarked, Fin.sum_univ_succ, Fin.ext_iff]

theorem step_not_selfAdjoint :
    ¬ (∀ x y : Vec (Fin 4),
      pairing uniformFour (step uniformFour lastMarked x) y =
        pairing uniformFour x (step uniformFour lastMarked y)) := by
  intro h
  have hh := h firstBasis fourthBasis
  rw [step_not_selfAdjoint_control.1, step_not_selfAdjoint_control.2] at hh
  norm_num at hh

end GRWTSK.LinearAlgebra.WeightedFiniteReflection
