import Mathlib.LinearAlgebra.Matrix.ToLin
import GRWTSK.Algebra.LinearAlgebra.MatrixTheory.SchurFeshbachJet
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
private theorem quadratic_add (A B : Matrix ι ι R) (x : ι → R) :
    quadratic (A + B) x = quadratic A x + quadratic B x := by
  simp only [quadratic, Matrix.add_mulVec, dotProduct_add]

omit [Fintype ε] [Fintype γ] [Fintype ν] [LinearOrder R] [IsStrictOrderedRing R] in
private theorem quadratic_smul (r : R) (A : Matrix ι ι R) (x : ι → R) :
    quadratic (r • A) x = r * quadratic A x := by
  simp only [quadratic, Matrix.smul_mulVec, dotProduct_smul, smul_eq_mul]

omit [Fintype ε] [Fintype γ] [Fintype ν] [LinearOrder R] [IsStrictOrderedRing R] in
private theorem quadratic_sum {σ : Type*} (s : Finset σ)
    (A : σ → Matrix ι ι R) (x : ι → R) :
    quadratic (∑ i ∈ s, A i) x = ∑ i ∈ s, quadratic (A i) x := by
  simp only [quadratic, Matrix.sum_mulVec, dotProduct_sum]

omit [Fintype ε] [Fintype γ] in
private theorem gram_nonnegative (W : Matrix ν ι R) (x : ι → R) :
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

section Refinement

variable {κ : Type*} [Fintype κ]

/-- Exact congruence pullback on finite matrices, as a linear map. -/
def congruence (T : Matrix ι κ R) : Matrix ι ι R →ₗ[R] Matrix κ κ R where
  toFun M := T.transpose * M * T
  map_add' A B := by simp only [Matrix.mul_add, Matrix.add_mul]
  map_smul' r A := by simp only [Matrix.mul_smul, Matrix.smul_mul, RingHom.id_apply]

/-- Pull back the target and both constraint families through the same map. -/
def Problem.pullback (P : Problem R ι ε γ) (T : Matrix ι κ R) : Problem R κ ε γ where
  target := congruence T P.target
  equalities e := congruence T (P.equalities e)
  inequalities g := congruence T (P.inequalities g)

/-- The pulled-back Gram matrix and multipliers are constructed explicitly. -/
def Certificate.pullback (S : Certificate R ι ε γ ν) (T : Matrix ι κ R) :
    Certificate R κ ε γ ν where
  gram := S.gram * T
  equalityMultipliers := S.equalityMultipliers
  inequalityMultipliers := S.inequalityMultipliers

omit [IsStrictOrderedRing R] [Fintype κ] in
/-- Exact coordinate refinement preserves the entire certificate identity,
including the separately retained equality and nonnegative constraints. -/
theorem valid_pullback (P : Problem R ι ε γ) (S : Certificate R ι ε γ ν)
    (hS : Valid P S) (T : Matrix ι κ R) :
    Valid (P.pullback T) (S.pullback T) := by
  refine ⟨hS.1, ?_⟩
  have h := congrArg (congruence T) hS.2
  simpa only [map_add, map_sum, map_smul, Problem.pullback, Certificate.pullback,
    congruence, LinearMap.coe_mk, AddHom.coe_mk, Matrix.transpose_mul, Matrix.mul_assoc] using h

omit [IsStrictOrderedRing R] in
/-- A passing finite checker transports through exact congruence; no claim
about continuum limits or source identification occurs in this implication. -/
theorem check_pullback (P : Problem R ι ε γ) (S : Certificate R ι ε γ ν)
    (hS : check P S = true) (T : Matrix ι κ R) :
    check (P.pullback T) (S.pullback T) = true := by
  apply decide_eq_true
  exact valid_pullback P S (of_decide_eq_true hS) T

end Refinement


/-!
## Positive Euclidean operator carried by the actual Gram certificate

The rectangular Gram field W of any certificate determines WᵀW. This
Gram component is globally positive semidefinite as an operator on real
finite Euclidean coordinates. Validity of a certificate is not needed for
this Gram positivity, but the *target* matrix is only nonnegative on
admissible vectors under the existing Valid assumptions. No target
positivity or general Positivstellensatz is inferred from this section.

The sharp unit moment lower bound is a direct Hilbert-space consequence
of the Gram positivity and the existing NavierStokesMomentGap interface.
-/

section GramEuclideanMoment

open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.NavierStokesMomentGap

variable [DecidableEq ι]

/-- The positive-semidefinite Euclidean operator built from the actual
rectangular Gram field of a finite real quadratic certificate. -/
noncomputable def certificateGramOperator
    (S : Certificate ℝ ι ε γ ν) :
    EuclideanSpace ℝ ι →L[ℝ] EuclideanSpace ℝ ι :=
  LinearMap.toContinuousLinearMap
    (Matrix.toLpLin 2 2 (S.gram.transpose * S.gram))

/-- The Euclidean operator acts by the existing Gram matrix WᵀW, with
no implicit spectral-frame or coordinate-identification assumptions. -/
theorem certificateGramOperator_apply
    (S : Certificate ℝ ι ε γ ν) (x : ι → ℝ) :
    certificateGramOperator S (WithLp.toLp 2 x) =
      WithLp.toLp 2 ((S.gram.transpose * S.gram) *ᵥ x) := by
  rfl

/-- The actual Gram source field is positive semidefinite in the real
Euclidean inner product; no Valid or Admissible premise is required. -/
theorem certificateGramOperator_nonneg
    (S : Certificate ℝ ι ε γ ν) (y : EuclideanSpace ℝ ι) :
    0 ≤ inner ℝ (certificateGramOperator S y) y := by
  let x : ι → ℝ := WithLp.ofLp y
  have hy : y = WithLp.toLp 2 x := (WithLp.toLp_ofLp y).symm
  rw [hy, certificateGramOperator_apply]
  simpa [EuclideanSpace.inner_toLp_toLp, quadratic] using
    (gram_nonnegative S.gram x)

/-- The shifted Gram operator I+WᵀW inherits the sharp unit least-norm
margin from its constructed global positive quadratic form. -/
theorem certificateGramMoment_unit_gap
    (S : Certificate ℝ ι ε γ ν) (y : EuclideanSpace ℝ ι) :
    ‖y‖ ≤ ‖momentMatrix (certificateGramOperator S)
      (ContinuousLinearMap.id ℝ (EuclideanSpace ℝ ι)) y‖ := by
  exact positive_operator_moment_sharp_gap
    (certificateGramOperator S) (certificateGramOperator_nonneg S) y

end GramEuclideanMoment


/-!
## Concrete coupled Schur realization of a certificate Gram operator

The existing identity-block Schur construction takes B(z) to be the actual
positive-semidefinite Euclidean Gram operator of the certificate S(z),
and C(z)=id. This creates an explicit coupled block pencil, rather than
assuming it is equal to some unrelated target or PDE operator. The
certificate target and its equality/inequality constraints are retained
separately and are not claimed to be positive without admissibility.
-/

section CertificateGramSchur

open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.NavierStokesMomentGap
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.FiniteAdjointDescent
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.SchurFeshbachJet

/-- The actual certificate Gram field gives a coupled block Schur pencil
with effective operator I+W(z)ᵀW(z) and arbitrary off-diagonal couplings. -/
noncomputable def certificateGramSchurLift
    {Z : Type*} {n m : ℕ}
    (S : Z → Certificate ℝ (Fin n) ε γ ν)
    (U : Z → Matrix (Fin n) (Fin m) ℝ)
    (V : Z → Matrix (Fin m) (Fin n) ℝ) :
    BlockPencil Z (Fin n) (Fin m) ℝ :=
  BlockPencil.momentSchurLift
    (fun z => certificateGramOperator (S z))
    (fun _ : Z => ContinuousLinearMap.id ℝ (EuclideanSpace ℝ (Fin n)))
    U V

/-- The effective Schur matrix is exactly the Euclidean coordinate matrix
of the shifted certificate Gram operator, without an identity hypothesis. -/
theorem certificateGramSchurLift_effective
    {Z : Type*} {n m : ℕ}
    (S : Z → Certificate ℝ (Fin n) ε γ ν)
    (U : Z → Matrix (Fin n) (Fin m) ℝ)
    (V : Z → Matrix (Fin m) (Fin n) ℝ) (z : Z) :
    (certificateGramSchurLift S U V).effective z =
      euclideanOperatorMatrix
        (momentMatrix (certificateGramOperator (S z))
          (ContinuousLinearMap.id ℝ (EuclideanSpace ℝ (Fin n)))) := by
  exact BlockPencil.momentSchurLift_effective
    (fun t => certificateGramOperator (S t))
    (fun _ : Z => ContinuousLinearMap.id ℝ (EuclideanSpace ℝ (Fin n)))
    U V z

/-- The full coupled determinant equals that of the actual shifted Gram
operator, independent of the off-diagonal couplings at this parameter. -/
theorem certificateGramSchurLift_full_det
    {Z : Type*} {n m : ℕ}
    (S : Z → Certificate ℝ (Fin n) ε γ ν)
    (U : Z → Matrix (Fin n) (Fin m) ℝ)
    (V : Z → Matrix (Fin m) (Fin n) ℝ) (z : Z) :
    ((certificateGramSchurLift S U V).full z).det =
      (momentMatrix (certificateGramOperator (S z))
        (ContinuousLinearMap.id ℝ (EuclideanSpace ℝ (Fin n)))).det := by
  exact BlockPencil.momentSchurLift_full_det
    (fun t => certificateGramOperator (S t))
    (fun _ : Z => ContinuousLinearMap.id ℝ (EuclideanSpace ℝ (Fin n)))
    U V z

/-- Every shifted certificate Gram operator has a nonzero full Schur
determinant. This does not require Valid S or Admissible x, because
WᵀW itself is globally positive semidefinite. -/
theorem certificateGramSchurLift_full_det_ne_zero
    {Z : Type*} {n m : ℕ}
    (S : Z → Certificate ℝ (Fin n) ε γ ν)
    (U : Z → Matrix (Fin n) (Fin m) ℝ)
    (V : Z → Matrix (Fin m) (Fin n) ℝ) (z : Z) :
    ((certificateGramSchurLift S U V).full z).det ≠ 0 := by
  rw [certificateGramSchurLift_full_det]
  have hinj :
      Function.Injective
        (momentMatrix (certificateGramOperator (S z))
          (ContinuousLinearMap.id ℝ (EuclideanSpace ℝ (Fin n)))) :=
    positive_operator_moment_injective
      (certificateGramOperator (S z))
      (certificateGramOperator_nonneg (S z))
  have hker :
      LinearMap.ker
        (momentMatrix (certificateGramOperator (S z))
          (ContinuousLinearMap.id ℝ (EuclideanSpace ℝ (Fin n)))).toLinearMap = ⊥ :=
    LinearMap.ker_eq_bot.mpr hinj
  intro hzero
  exact (LinearMap.det_eq_zero_iff_ker_ne_bot.mp hzero) hker

/-- The concrete finite-adjoint reconstruction associated with a real
certificate Gram operator inherits the sharp relative factor 1-damping. -/
theorem certificateGramMoment_unit_contraction
    {n : ℕ} (S : Certificate ℝ (Fin n) ε γ ν)
    (v : Fin n → ℝ) :
    let A := euclideanOperatorMatrix
      (momentMatrix (certificateGramOperator S)
        (ContinuousLinearMap.id ℝ (EuclideanSpace ℝ (Fin n))))
    energy (Finset.univ : Finset (Fin n))
        (fun c => v c - reconstruction Finset.univ Finset.univ A
          (applyMatrix Finset.univ A v) c) ≤
      (1 - damping Finset.univ Finset.univ A) * energy Finset.univ v ∧
    1 - damping Finset.univ Finset.univ A < 1 :=
  positive_euclidean_moment_sharp_contraction
    (certificateGramOperator S) (certificateGramOperator_nonneg S) v

end CertificateGramSchur

end GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
