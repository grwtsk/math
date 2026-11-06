/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.LinearAlgebra.Matrix.ToLin
import Mathlib.Tactic
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Algebra.Order.Ring.Defs

/-!
# Sound finite quadratic certificates

A finite packet keeps equality constraints, nonnegative constraints and its
quadratic target distinct. A certificate supplies an exact Gram identity plus
nonnegative inequality multipliers and arbitrary equality multipliers. The
finite checker tests these data; soundness derives the target inequality only
on admissible vectors. The rational specialization is executable. The real
specialization has the same soundness theorem.

No general Positivstellensatz, source identification or certificate existence is
assumed. Local mathematical attribution: grwtsk contributors.
-/

namespace GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates

open Matrix

variable {R ι ε γ ν : Type*}
variable [CommRing R] [LinearOrder R] [IsStrictOrderedRing R]
variable [Fintype ι] [Fintype ε] [Fintype γ] [Fintype ν]

/-- The homogeneous quadratic value of a finite matrix. -/
def quadratic (M : Matrix ι ι R) (x : ι → R) : R := x ⬝ᵥ M.mulVec x

/-- A target and its separately declared finite constraint families. -/
structure Problem (R ι ε γ : Type*) where
  /-- The quadratic matrix whose nonnegativity is certified. -/
  target : Matrix ι ι R
  /-- Matrices whose quadratic values vanish on admissible vectors. -/
  equalities : ε → Matrix ι ι R
  /-- Matrices whose quadratic values are nonnegative on admissible vectors. -/
  inequalities : γ → Matrix ι ι R

/-- Admissibility carries both vanishing and sign constraints explicitly. -/
def Problem.Admissible (P : Problem R ι ε γ) (x : ι → R) : Prop :=
  (∀ e, quadratic (P.equalities e) x = 0) ∧
    (∀ g, 0 ≤ quadratic (P.inequalities g) x)

/-- Finite certificate data, without a target inequality as a field. -/
structure Certificate (R ι ε γ ν : Type*) where
  /-- Rows whose Gram matrix supplies the nonnegative quadratic part. -/
  gram : Matrix ν ι R
  /-- Arbitrary coefficients for the vanishing equality constraints. -/
  equalityMultipliers : ε → R
  /-- Coefficients required to be nonnegative by certificate validity. -/
  inequalityMultipliers : γ → R

/-- The exact matrix identity and coefficient signs tested by the checker. -/
def Valid (P : Problem R ι ε γ) (S : Certificate R ι ε γ ν) : Prop :=
  (∀ g, 0 ≤ S.inequalityMultipliers g) ∧
    P.target = S.gram.transpose * S.gram +
      ∑ g, S.inequalityMultipliers g • P.inequalities g +
      ∑ e, S.equalityMultipliers e • P.equalities e

instance (P : Problem R ι ε γ) (S : Certificate R ι ε γ ν) : Decidable (Valid P S) := by
  unfold Valid
  infer_instance

/-- This is an executable finite rational checker when `R = ℚ`. -/
def check (P : Problem R ι ε γ) (S : Certificate R ι ε γ ν) : Bool :=
  decide (Valid P S)

omit [Fintype ε] [Fintype γ] [Fintype ν] [LinearOrder R] [IsStrictOrderedRing R] in
theorem quadratic_add (A B : Matrix ι ι R) (x : ι → R) :
    quadratic (A + B) x = quadratic A x + quadratic B x := by
  simp only [quadratic, Matrix.add_mulVec, dotProduct_add]

omit [Fintype ε] [Fintype γ] [Fintype ν] [LinearOrder R] [IsStrictOrderedRing R] in
theorem quadratic_smul (r : R) (A : Matrix ι ι R) (x : ι → R) :
    quadratic (r • A) x = r * quadratic A x := by
  simp only [quadratic, Matrix.smul_mulVec, dotProduct_smul, smul_eq_mul]

omit [Fintype ε] [Fintype γ] [Fintype ν] [LinearOrder R] [IsStrictOrderedRing R] in
theorem quadratic_sum {σ : Type*} (s : Finset σ)
    (A : σ → Matrix ι ι R) (x : ι → R) :
    quadratic (∑ i ∈ s, A i) x = ∑ i ∈ s, quadratic (A i) x := by
  simp only [quadratic, Matrix.sum_mulVec, dotProduct_sum]

omit [Fintype ε] [Fintype γ] in
theorem gram_nonnegative (W : Matrix ν ι R) (x : ι → R) :
    0 ≤ quadratic (W.transpose * W) x := by
  rw [quadratic, ← Matrix.mulVec_mulVec, Matrix.dotProduct_transpose_mulVec]
  exact Finset.sum_nonneg fun i _ ↦ mul_self_nonneg (W.mulVec x i)

/-- A checked finite identity implies the target inequality on every vector
satisfying the declared equality and nonnegative constraints. -/
theorem sound (P : Problem R ι ε γ) (S : Certificate R ι ε γ ν)
    (hS : Valid P S) (x : ι → R) (hx : P.Admissible x) :
    0 ≤ quadratic P.target x := by
  rw [hS.2, quadratic_add, quadratic_add, quadratic_sum, quadratic_sum]
  have he : (∑ e, quadratic (S.equalityMultipliers e • P.equalities e) x) = 0 := by
    apply Finset.sum_eq_zero
    intro e _
    rw [quadratic_smul, hx.1 e, mul_zero]
  rw [he, add_zero]
  exact add_nonneg (gram_nonnegative S.gram x) (Finset.sum_nonneg fun g _ ↦ by
    rw [quadratic_smul]
    exact mul_nonneg (hS.1 g) (hx.2 g))

/-- The Boolean check has the same soundness boundary as the exact identity. -/
theorem check_sound (P : Problem R ι ε γ) (S : Certificate R ι ε γ ν)
    (h : check P S = true) (x : ι → R) (hx : P.Admissible x) :
    0 ≤ quadratic P.target x :=
  sound P S (of_decide_eq_true h) x hx


/-- Coefficientwise realization of a rational problem, including its
complete constraint families. -/
noncomputable def Problem.realizeRat (P : Problem ℚ ι ε γ) : Problem ℝ ι ε γ where
  target := P.target.map (Rat.castHom ℝ)
  equalities e := (P.equalities e).map (Rat.castHom ℝ)
  inequalities g := (P.inequalities g).map (Rat.castHom ℝ)

/-- Realize the rational Gram rows and every multiplier in the same field. -/
noncomputable def Certificate.realizeRat (S : Certificate ℚ ι ε γ ν) : Certificate ℝ ι ε γ ν where
  gram := S.gram.map (Rat.castHom ℝ)
  equalityMultipliers e := (S.equalityMultipliers e : ℝ)
  inequalityMultipliers g := (S.inequalityMultipliers g : ℝ)

omit [Fintype ι] in
/-- Cast the full checked identity, rather than testing rational vectors
and extrapolating the result to the real domain. -/
theorem valid_realizeRat (P : Problem ℚ ι ε γ) (S : Certificate ℚ ι ε γ ν)
    (h : Valid P S) : Valid P.realizeRat S.realizeRat := by
  refine ⟨fun g => Rat.cast_nonneg.mpr (h.1 g), ?_⟩
  let f : ℚ →+* ℝ := Rat.castHom ℝ
  let cast : Matrix ι ι ℚ →+ Matrix ι ι ℝ := f.toAddMonoidHom.mapMatrix
  have he := congrArg cast h.2
  simp only [map_add, map_sum] at he
  have hgram : cast (S.gram.transpose * S.gram) =
      (S.gram.map f).transpose * S.gram.map f := by
    change (S.gram.transpose * S.gram).map f = _
    rw [Matrix.map_mul, Matrix.transpose_map]
  rw [hgram] at he
  simpa [cast, f, Problem.realizeRat, Certificate.realizeRat, Matrix.map_smul', map_mul] using he

/-- A rational check applies to every real vector satisfying the realized
constraints. Whole-space use must establish that those constraints hold. -/
theorem checked_realizeRat_nonneg (P : Problem ℚ ι ε γ) (S : Certificate ℚ ι ε γ ν)
    (h : check P S = true) (x : ι → ℝ) (hx : P.realizeRat.Admissible x) :
    0 ≤ quadratic P.realizeRat.target x :=
  sound _ _ (valid_realizeRat P S (of_decide_eq_true h)) x hx

section Refinement

variable {κ : Type*} [Fintype κ]

/-- Exact congruence pullback on finite matrices, as a linear map. -/
def congruence (T : Matrix ι κ R) : Matrix ι ι R →ₗ[R] Matrix κ κ R where
  toFun M := T.transpose * M * T
  map_add' A B := by simp only [Matrix.mul_add, Matrix.add_mul]
  map_smul' r A := by simp only [Matrix.mul_smul, Matrix.smul_mul, RingHom.id_apply]

omit [LinearOrder R] [IsStrictOrderedRing R] in
/-- The quadratic form of an exact congruence TᵀMT is the original
quadratic form evaluated on the concrete coordinate image T x. -/
theorem quadratic_congruence
    (M : Matrix ι ι R) (T : Matrix ι κ R) (x : κ → R) :
    quadratic (congruence T M) x = quadratic M (T *ᵥ x) := by
  change x ⬝ᵥ ((T.transpose * M * T) *ᵥ x) =
    (T *ᵥ x) ⬝ᵥ (M *ᵥ (T *ᵥ x))
  calc
    x ⬝ᵥ ((T.transpose * M * T) *ᵥ x) =
        x ⬝ᵥ (T.transpose *ᵥ (M *ᵥ (T *ᵥ x))) := by
          simp only [← Matrix.mulVec_mulVec]
    _ = (M *ᵥ (T *ᵥ x)) ⬝ᵥ (T *ᵥ x) :=
      Matrix.dotProduct_transpose_mulVec T x _
    _ = (T *ᵥ x) ⬝ᵥ (M *ᵥ (T *ᵥ x)) :=
      dotProduct_comm _ _

end Refinement

end GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
