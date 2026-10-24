import Mathlib.LinearAlgebra.Matrix.ToLin
import Mathlib.Tactic
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


/-!
## Admissibility-sensitive target comparison and subspace coercivity

A certificate's Gram component is globally positive semidefinite, whereas
the target matrix can only be compared to that component on admissible
vectors. The multiplier terms that vanish or are nonnegative are kept
visible in the proof. A positive Gram lower bound on a declared real
submodule transports to a quantitative target lower bound only when all
vectors of that submodule are admissible.

This does not turn the entire original target into a positive operator.
-/

/-- On an admissible vector the certificate's target quadratic form
dominates the *actual* Gram quadratic form. This refines the prior sound
theorem: the equality multipliers vanish and the inequality multipliers
are nonnegative, neither of which holds for arbitrary vectors. -/
theorem target_ge_gram_of_admissible
    (P : Problem R ι ε γ) (S : Certificate R ι ε γ ν)
    (hS : Valid P S) (x : ι → R) (hx : P.Admissible x) :
    quadratic (S.gram.transpose * S.gram) x ≤
      quadratic P.target x := by
  rw [hS.2, quadratic_add, quadratic_add, quadratic_sum, quadratic_sum]
  have he : (∑ e,
      quadratic (S.equalityMultipliers e • P.equalities e) x) = 0 := by
    apply Finset.sum_eq_zero
    intro e _
    rw [quadratic_smul, hx.1 e, mul_zero]
  rw [he, add_zero]
  exact le_add_of_nonneg_right (Finset.sum_nonneg fun g _ => by
    rw [quadratic_smul]
    exact mul_nonneg (hS.1 g) (hx.2 g))

/-- A successful executable certificate checker has the same exact
Gram-versus-target comparison, with all constraints still required. -/
theorem checked_target_ge_gram_of_admissible
    (P : Problem R ι ε γ) (S : Certificate R ι ε γ ν)
    (hS : check P S = true) (x : ι → R) (hx : P.Admissible x) :
    quadratic (S.gram.transpose * S.gram) x ≤
      quadratic P.target x :=
  target_ge_gram_of_admissible P S (of_decide_eq_true hS) x hx

section ConstrainedRealTarget

/-- A quantitative Gram lower bound transfers to the certificate target
on a specified real submodule only if every element of that submodule
satisfies the original equality and inequality constraints. -/
theorem target_coercive_on_submodule
    (P : Problem ℝ ι ε γ) (S : Certificate ℝ ι ε γ ν)
    (hS : Valid P S) (L : Submodule ℝ (ι → ℝ))
    (μ : ℝ)
    (hAdmissible : ∀ x ∈ L, P.Admissible x)
    (hGram : ∀ x ∈ L,
      μ * (∑ i, (x i) ^ 2) ≤
        quadratic (S.gram.transpose * S.gram) x)
    (x : ι → ℝ) (hx : x ∈ L) :
    μ * (∑ i, (x i) ^ 2) ≤ quadratic P.target x :=
  (hGram x hx).trans
    (target_ge_gram_of_admissible P S hS x (hAdmissible x hx))

/-- With a strictly positive Gram lower bound, the target quadratic
form has no nonzero zero-vector on the admissible submodule.
The conclusion says nothing about vectors outside the submodule. -/
theorem target_quadratic_zero_imp_zero_on_submodule
    (P : Problem ℝ ι ε γ) (S : Certificate ℝ ι ε γ ν)
    (hS : Valid P S) (L : Submodule ℝ (ι → ℝ))
    {μ : ℝ} (hμ : 0 < μ)
    (hAdmissible : ∀ x ∈ L, P.Admissible x)
    (hGram : ∀ x ∈ L,
      μ * (∑ i, (x i) ^ 2) ≤
        quadratic (S.gram.transpose * S.gram) x)
    (x : ι → ℝ) (hx : x ∈ L)
    (hzero : quadratic P.target x = 0) : x = 0 := by
  have hle : μ * (∑ i, (x i) ^ 2) ≤ 0 := by
    simpa only [hzero] using
      (target_coercive_on_submodule P S hS L μ
        hAdmissible hGram x hx)
  have hnon : 0 ≤ μ * (∑ i, (x i) ^ 2) :=
    mul_nonneg hμ.le (Finset.sum_nonneg fun i _ => sq_nonneg (x i))
  have hmul : μ * (∑ i, (x i) ^ 2) = 0 :=
    le_antisymm hle hnon
  have hsum : (∑ i, (x i) ^ 2) = 0 :=
    (mul_eq_zero.mp hmul).resolve_left (ne_of_gt hμ)
  have hcoords : ∀ i ∈ (Finset.univ : Finset ι), (x i) ^ 2 = 0 :=
    (Finset.sum_eq_zero_iff_of_nonneg
      (fun i _ => sq_nonneg (x i))).mp hsum
  funext i
  exact sq_eq_zero_iff.mp (hcoords i (Finset.mem_univ i))

end ConstrainedRealTarget


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


/-- The positive Gram portion of a refined certificate is precisely the
congruence pullback of its original Gram matrix. This identity holds over
any commutative ring; no target positivity or admissibility assumption is
needed. It is independent of the equality and inequality multipliers. -/
theorem Certificate.gram_pullback_congruence
    (S : Certificate R ι ε γ ν) (T : Matrix ι κ R) :
    (S.pullback T).gram.transpose * (S.pullback T).gram =
      congruence T (S.gram.transpose * S.gram) := by
  simp [Certificate.pullback, congruence, Matrix.transpose_mul, Matrix.mul_assoc]


/-!
## Exact constraint transport through a concrete coordinate range

The existing Problem.pullback is an actual matrix congruence. Its
quadratic value at x is the original quadratic value at T.mulVec x,
with no faithfulness or isometry required of T. Thus the exact
Admissible predicate transports in both directions.

When every vector of the chosen range is admissible and a certificate
checks, the *pulled-back target* is globally positive semidefinite
on its new coordinate space. The original target outside this range
is not asserted positive.
-/

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
      Matrix.dotProduct_comm _ _

/-- The original quadratic equality and inequality constraints hold
for T x precisely when the pulled-back packet admits x. -/
theorem pullback_admissible_iff
    (P : Problem R ι ε γ) (T : Matrix ι κ R) (x : κ → R) :
    (P.pullback T).Admissible x ↔ P.Admissible (T *ᵥ x) := by
  constructor
  · intro hx
    constructor
    · intro e
      have he := hx.1 e
      change quadratic (congruence T (P.equalities e)) x = 0 at he
      simpa only [quadratic_congruence] using he
    · intro g
      have hg := hx.2 g
      change 0 ≤ quadratic (congruence T (P.inequalities g)) x at hg
      simpa only [quadratic_congruence] using hg
  · intro hx
    constructor
    · intro e
      change quadratic (congruence T (P.equalities e)) x = 0
      rw [quadratic_congruence]
      exact hx.1 e
    · intro g
      change 0 ≤ quadratic (congruence T (P.inequalities g)) x
      rw [quadratic_congruence]
      exact hx.2 g

/-- A passing certificate gives global positive semidefiniteness of
the *pulled-back* target whenever the actual linear range of T is
contained in the original admissible vectors. The range hypothesis
cannot be omitted for a general constrained certificate target. -/
theorem checked_target_pullback_nonneg_of_range_admissible
    (P : Problem ℝ ι ε γ) (S : Certificate ℝ ι ε γ ν)
    (hCheck : check P S = true) (T : Matrix ι κ ℝ)
    (hRange : ∀ x : κ → ℝ, P.Admissible (T *ᵥ x))
    (x : κ → ℝ) :
    0 ≤ quadratic (P.pullback T).target x := by
  change 0 ≤ quadratic (congruence T P.target) x
  rw [quadratic_congruence]
  exact check_sound P S hCheck (T *ᵥ x) (hRange x)



/-!
## A genuinely positive target operator on an admissible coordinate range

For a checked real certificate and an actual matrix T whose entire range
satisfies the original constraints, the pre-existing target pullback
Tᵀ(P.target)T is globally positive semidefinite on the *new* Euclidean
coordinate space. This is not an assertion of global target positivity
on the original space. The original validity and range-admissibility
hypotheses remain separate and visible.

The resulting shifted *target* operator inherits the sharp unit moment
gap, now from the certificate's actual target rather than its Gram part.
-/

section AdmissibleRangeTargetHilbert

open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.NavierStokesMomentGap

variable [DecidableEq κ]

/-- The actual pulled-back target matrix, realized as a continuous
linear operator on finite Euclidean coordinates. -/
noncomputable def admissibleRangeTargetOperator
    (P : Problem ℝ ι ε γ) (T : Matrix ι κ ℝ) :
    EuclideanSpace ℝ κ →L[ℝ] EuclideanSpace ℝ κ :=
  LinearMap.toContinuousLinearMap
    (Matrix.toLpLin 2 2 ((P.pullback T).target))

/-- The Euclidean operator is exactly the pulled-back target matrix,
with no additional coordinate-isomorphism hypothesis. -/
theorem admissibleRangeTargetOperator_apply
    (P : Problem ℝ ι ε γ) (T : Matrix ι κ ℝ)
    (x : κ → ℝ) :
    admissibleRangeTargetOperator P T (WithLp.toLp 2 x) =
      WithLp.toLp 2 ((P.pullback T).target *ᵥ x) := by
  rfl

/-- A *checked* certificate makes the target positive on the chosen
coordinate space if, and only to the extent that, the concrete range
of T is contained in the original admissible set. -/
theorem admissibleRangeTargetOperator_nonneg
    (P : Problem ℝ ι ε γ) (S : Certificate ℝ ι ε γ ν)
    (hCheck : check P S = true) (T : Matrix ι κ ℝ)
    (hRange : ∀ x : κ → ℝ, P.Admissible (T *ᵥ x))
    (y : EuclideanSpace ℝ κ) :
    0 ≤ inner ℝ (admissibleRangeTargetOperator P T y) y := by
  let x : κ → ℝ := WithLp.ofLp y
  have hy : y = WithLp.toLp 2 x := (WithLp.toLp_ofLp y).symm
  rw [hy, admissibleRangeTargetOperator_apply]
  simpa [EuclideanSpace.inner_toLp_toLp, quadratic] using
    (checked_target_pullback_nonneg_of_range_admissible
      P S hCheck T hRange x)

/-- The shifted pulled-back **target** has a unit lower norm gap.
The original target is not claimed globally positive: the conclusion
depends on the original certificate check and admissible range of T. -/
theorem admissibleRangeTarget_shift_unit_gap
    (P : Problem ℝ ι ε γ) (S : Certificate ℝ ι ε γ ν)
    (hCheck : check P S = true) (T : Matrix ι κ ℝ)
    (hRange : ∀ x : κ → ℝ, P.Admissible (T *ᵥ x))
    (y : EuclideanSpace ℝ κ) :
    ‖y‖ ≤
      ‖momentMatrix (admissibleRangeTargetOperator P T)
        (ContinuousLinearMap.id ℝ (EuclideanSpace ℝ κ)) y‖ := by
  exact positive_operator_moment_sharp_gap
    (admissibleRangeTargetOperator P T)
    (admissibleRangeTargetOperator_nonneg P S hCheck T hRange) y

end AdmissibleRangeTargetHilbert



/-!
## A concrete Schur pencil for the admissible-range certificate *target*

The effective operator here is the actual pulled-back target matrix,
not merely the Gram matrix from the certificate. The original checked
certificate and the containment of the coordinate range in the
admissible set supply its global positive semidefiniteness *after*
pullback. Thus the existing finite moment Schur lift applies without
silently asserting any positivity of the original target on all vectors.
-/

section AdmissibleTargetSchur

open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.NavierStokesMomentGap
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.FiniteAdjointDescent
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.SchurFeshbachJet

/-- An explicit coupled Schur block whose effective operator is the
unit shift of the actual target restricted to the coordinate range T.
The algebraic construction does not require the certificate to check,
but its determinant nonvanishing theorem below does. -/
noncomputable def admissibleTargetSchurLift
    {Z : Type*} {n m : ℕ}
    (P : Problem ℝ ι ε γ) (T : Matrix ι (Fin n) ℝ)
    (U : Z → Matrix (Fin n) (Fin m) ℝ)
    (V : Z → Matrix (Fin m) (Fin n) ℝ) :
    BlockPencil Z (Fin n) (Fin m) ℝ :=
  BlockPencil.momentSchurLift
    (fun _ : Z => admissibleRangeTargetOperator P T)
    (fun _ : Z => ContinuousLinearMap.id ℝ (EuclideanSpace ℝ (Fin n)))
    U V

/-- The constructed effective Schur block is literally the Euclidean
matrix of I plus the pulled-back certificate target. -/
theorem admissibleTargetSchurLift_effective
    {Z : Type*} {n m : ℕ}
    (P : Problem ℝ ι ε γ) (T : Matrix ι (Fin n) ℝ)
    (U : Z → Matrix (Fin n) (Fin m) ℝ)
    (V : Z → Matrix (Fin m) (Fin n) ℝ) (z : Z) :
    (admissibleTargetSchurLift P T U V).effective z =
      euclideanOperatorMatrix
        (momentMatrix (admissibleRangeTargetOperator P T)
          (ContinuousLinearMap.id ℝ (EuclideanSpace ℝ (Fin n)))) := by
  exact BlockPencil.momentSchurLift_effective
    (fun _ : Z => admissibleRangeTargetOperator P T)
    (fun _ : Z => ContinuousLinearMap.id ℝ (EuclideanSpace ℝ (Fin n)))
    U V z

/-- The full block determinant equals the determinant of the shifted
*restricted target*, independently of U,V. -/
theorem admissibleTargetSchurLift_full_det
    {Z : Type*} {n m : ℕ}
    (P : Problem ℝ ι ε γ) (T : Matrix ι (Fin n) ℝ)
    (U : Z → Matrix (Fin n) (Fin m) ℝ)
    (V : Z → Matrix (Fin m) (Fin n) ℝ) (z : Z) :
    ((admissibleTargetSchurLift P T U V).full z).det =
      (momentMatrix (admissibleRangeTargetOperator P T)
        (ContinuousLinearMap.id ℝ (EuclideanSpace ℝ (Fin n)))).det := by
  exact BlockPencil.momentSchurLift_full_det
    (fun _ : Z => admissibleRangeTargetOperator P T)
    (fun _ : Z => ContinuousLinearMap.id ℝ (EuclideanSpace ℝ (Fin n)))
    U V z

/-- No full Schur determinant zero is possible if the certificate
checks and every vector of the chosen coordinate range is admissible.
In particular, this does not assert the original target globally PSD
outside that range. -/
theorem admissibleTargetSchurLift_full_det_ne_zero
    {Z : Type*} {n m : ℕ}
    (P : Problem ℝ ι ε γ) (S : Certificate ℝ ι ε γ ν)
    (hCheck : check P S = true)
    (T : Matrix ι (Fin n) ℝ)
    (hRange : ∀ x : Fin n → ℝ, P.Admissible (T *ᵥ x))
    (U : Z → Matrix (Fin n) (Fin m) ℝ)
    (V : Z → Matrix (Fin m) (Fin n) ℝ) (z : Z) :
    ((admissibleTargetSchurLift P T U V).full z).det ≠ 0 := by
  rw [admissibleTargetSchurLift_full_det]
  have hinj :
      Function.Injective
        (momentMatrix (admissibleRangeTargetOperator P T)
          (ContinuousLinearMap.id ℝ (EuclideanSpace ℝ (Fin n)))) :=
    positive_operator_moment_injective
      (admissibleRangeTargetOperator P T)
      (admissibleRangeTargetOperator_nonneg P S hCheck T hRange)
  have hker :
      LinearMap.ker
        (momentMatrix (admissibleRangeTargetOperator P T)
          (ContinuousLinearMap.id ℝ (EuclideanSpace ℝ (Fin n)))).toLinearMap = ⊥ :=
    LinearMap.ker_eq_bot.mpr hinj
  intro hzero
  exact (LinearMap.det_eq_zero_iff_ker_ne_bot.mp hzero) hker

end AdmissibleTargetSchur


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


/-!
## Unit-margin perturbations of the certificate Gram Schur operator

A separate operator K(z) perturbs the concrete positive shift
I+W(z)ᵀW(z) inside the Schur effective matrix. The strict unit
operator-norm threshold is sufficient for determinant nonvanishing
and orientation preservation relative to the unperturbed certificate
Gram Schur system. No Gram positivity is assumed for K.
-/

section CertificateGramPerturbedSchur

open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.NavierStokesMomentGap
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.FiniteAdjointDescent
open GRWTSK.Algebra.LinearAlgebra.MatrixTheory.SchurFeshbachJet

/-- A literal coupled Schur pencil with effective operator
I+W(z)ᵀW(z)+K(z) in finite Euclidean coordinates. -/
noncomputable def certificateGramPerturbedSchurLift
    {Z : Type*} {n m : ℕ}
    (S : Z → Certificate ℝ (Fin n) ε γ ν)
    (K : Z → EuclideanSpace ℝ (Fin n) →L[ℝ] EuclideanSpace ℝ (Fin n))
    (U : Z → Matrix (Fin n) (Fin m) ℝ)
    (V : Z → Matrix (Fin m) (Fin n) ℝ) :
    BlockPencil Z (Fin n) (Fin m) ℝ :=
  BlockPencil.identitySchurLift
    (fun z => euclideanOperatorMatrix
      (momentMatrix (certificateGramOperator (S z))
        (ContinuousLinearMap.id ℝ (EuclideanSpace ℝ (Fin n))) + K z))
    U V

/-- The full determinant is exactly that of the perturbed shifted Gram
operator. All off-diagonal Schur couplings cancel identically. -/
theorem certificateGramPerturbedSchurLift_full_det
    {Z : Type*} {n m : ℕ}
    (S : Z → Certificate ℝ (Fin n) ε γ ν)
    (K : Z → EuclideanSpace ℝ (Fin n) →L[ℝ] EuclideanSpace ℝ (Fin n))
    (U : Z → Matrix (Fin n) (Fin m) ℝ)
    (V : Z → Matrix (Fin m) (Fin n) ℝ) (z : Z) :
    ((certificateGramPerturbedSchurLift S K U V).full z).det =
      (momentMatrix (certificateGramOperator (S z))
        (ContinuousLinearMap.id ℝ (EuclideanSpace ℝ (Fin n))) + K z).det := by
  calc
    ((certificateGramPerturbedSchurLift S K U V).full z).det =
        (euclideanOperatorMatrix
          (momentMatrix (certificateGramOperator (S z))
            (ContinuousLinearMap.id ℝ (EuclideanSpace ℝ (Fin n))) + K z)).det := by
      exact BlockPencil.identitySchurLift_full_det
        (fun t => euclideanOperatorMatrix
          (momentMatrix (certificateGramOperator (S t))
            (ContinuousLinearMap.id ℝ (EuclideanSpace ℝ (Fin n))) + K t))
        U V z
    _ = _ := euclideanOperatorMatrix_det _

/-- The sharp Gram moment gap excludes a zero full Schur determinant
under the exact strict operator-norm condition ‖K(z)‖<1. -/
theorem certificateGramPerturbedSchurLift_full_det_ne_zero
    {Z : Type*} {n m : ℕ}
    (S : Z → Certificate ℝ (Fin n) ε γ ν)
    (K : Z → EuclideanSpace ℝ (Fin n) →L[ℝ] EuclideanSpace ℝ (Fin n))
    (U : Z → Matrix (Fin n) (Fin m) ℝ)
    (V : Z → Matrix (Fin m) (Fin n) ℝ)
    (z : Z) (hK : ‖K z‖ < 1) :
    ((certificateGramPerturbedSchurLift S K U V).full z).det ≠ 0 := by
  rw [certificateGramPerturbedSchurLift_full_det]
  have hpert :
      ‖(momentMatrix (certificateGramOperator (S z))
        (ContinuousLinearMap.id ℝ (EuclideanSpace ℝ (Fin n))) + K z) -
        momentMatrix (certificateGramOperator (S z))
          (ContinuousLinearMap.id ℝ (EuclideanSpace ℝ (Fin n)))‖ < 1 := by
    simpa only [add_sub_cancel_left] using hK
  have hinj :
      Function.Injective
        (momentMatrix (certificateGramOperator (S z))
          (ContinuousLinearMap.id ℝ (EuclideanSpace ℝ (Fin n))) + K z) :=
    positive_operator_perturbed_injective
      (certificateGramOperator (S z))
      (momentMatrix (certificateGramOperator (S z))
        (ContinuousLinearMap.id ℝ (EuclideanSpace ℝ (Fin n))) + K z)
      (certificateGramOperator_nonneg (S z)) hpert
  have hker :
      LinearMap.ker
        (momentMatrix (certificateGramOperator (S z))
          (ContinuousLinearMap.id ℝ (EuclideanSpace ℝ (Fin n))) + K z).toLinearMap = ⊥ :=
    LinearMap.ker_eq_bot.mpr hinj
  intro hzero
  exact (LinearMap.det_eq_zero_iff_ker_ne_bot.mp hzero) hker

/-- The exact full Schur determinant of a certificate Gram pencil
retains its orientation after any perturbation K(z) with norm <1.
No Valid certificate or positivity of the perturbation is required. -/
theorem certificateGramPerturbedSchurLift_full_det_sign
    {Z : Type*} {n m : ℕ}
    (S : Z → Certificate ℝ (Fin n) ε γ ν)
    (K : Z → EuclideanSpace ℝ (Fin n) →L[ℝ] EuclideanSpace ℝ (Fin n))
    (U : Z → Matrix (Fin n) (Fin m) ℝ)
    (V : Z → Matrix (Fin m) (Fin n) ℝ)
    (z : Z) (hK : ‖K z‖ < 1) :
    0 < ((certificateGramSchurLift S U V).full z).det *
        ((certificateGramPerturbedSchurLift S K U V).full z).det := by
  rw [certificateGramSchurLift_full_det,
    certificateGramPerturbedSchurLift_full_det]
  have hpert :
      ‖(momentMatrix (certificateGramOperator (S z))
        (ContinuousLinearMap.id ℝ (EuclideanSpace ℝ (Fin n))) + K z) -
        momentMatrix (certificateGramOperator (S z))
          (ContinuousLinearMap.id ℝ (EuclideanSpace ℝ (Fin n)))‖ < 1 := by
    simpa only [add_sub_cancel_left] using hK
  exact positive_operator_perturbed_det_sign
    (certificateGramOperator (S z))
    (momentMatrix (certificateGramOperator (S z))
      (ContinuousLinearMap.id ℝ (EuclideanSpace ℝ (Fin n))) + K z)
    (certificateGramOperator_nonneg (S z)) hpert

end CertificateGramPerturbedSchur


/-!
## A nonzero admissible range for an indefinite checked target

This two-coordinate fixture instantiates the existing Problem/Certificate
and pullback interfaces. The target is indefinite on the ambient space.
The equality constraint removes its negative coordinate, while a
nontrivial inequality constraint is retained. A literal nonzero
Fin 2 × Fin 1 matrix embeds the admissible one-dimensional axis.

All polynomial identities are mathematical source proof candidates.
The predicate check P S = true below is proved from Valid P S; this is
not an executed external checker receipt or a Lean compilation result.
-/

namespace ConcreteAdmissibleAxis

/-- The one-row Gram supplier, with squared norm x₀². -/
def gramRow : Matrix (Fin 1) (Fin 2) ℝ :=
  fun _ j => if j = 0 then 1 else 0

/-- The equality constraint tests the excluded second coordinate. -/
def equalityMatrix : Matrix (Fin 2) (Fin 2) ℝ :=
  Matrix.diagonal ![0, 1]

/-- A nontrivial nonnegative inequality on the retained first coordinate. -/
def inequalityMatrix : Matrix (Fin 2) (Fin 2) ℝ :=
  Matrix.diagonal ![1, 0]

/-- The target is x ↦ 2 x₀² - x₁², represented through the exact
certificate decomposition rather than assumed positive. -/
def problem : Problem ℝ (Fin 2) (Fin 1) (Fin 1) where
  target := gramRow.transpose * gramRow +
    (1 : ℝ) • inequalityMatrix + (-1 : ℝ) • equalityMatrix
  equalities _ := equalityMatrix
  inequalities _ := inequalityMatrix

/-- The actual Gram and signed multipliers of the two-coordinate packet. -/
def certificate : Certificate ℝ (Fin 2) (Fin 1) (Fin 1) (Fin 1) where
  gram := gramRow
  equalityMultipliers _ := -1
  inequalityMultipliers _ := 1

/-- The finite certificate identity holds exactly and its inequality
multiplier is nonnegative. -/
theorem certificate_valid : Valid problem certificate := by
  constructor
  · intro g
    simp [certificate]
  · simp [problem, certificate, Fin.sum_univ_one]

/-- The source checker proposition follows from exact validity.
This proof is not a record of executing a standalone finite checker. -/
theorem certificate_check : check problem certificate = true := by
  change decide (Valid problem certificate) = true
  exact decide_eq_true certificate_valid

/-- The concrete nonzero map retaining the first coordinate. -/
def axisEmbedding : Matrix (Fin 2) (Fin 1) ℝ :=
  fun i _ => if i = 0 then 1 else 0

theorem axisEmbedding_apply (v : Fin 1 → ℝ) :
    axisEmbedding *ᵥ v = ![v 0, 0] := by
  funext i
  fin_cases i <;>
    simp [axisEmbedding, Matrix.mulVec, Matrix.dotProduct, Fin.sum_univ_one]

/-- The admissible coordinate map is genuinely nonzero. -/
theorem axisEmbedding_ne_zero : axisEmbedding ≠ 0 := by
  intro h
  have he : (1 : ℝ) = 0 := by
    simpa [axisEmbedding] using
      congrArg (fun M : Matrix (Fin 2) (Fin 1) ℝ => M 0 0) h
  norm_num at he

/-- The equality constraint has quadratic value x₁². -/
theorem equality_quadratic (x : Fin 2 → ℝ) :
    quadratic equalityMatrix x = (x 1) ^ 2 := by
  simp [quadratic, equalityMatrix, Matrix.mulVec_diagonal,
    Matrix.dotProduct, Fin.sum_univ_two, pow_two]

/-- The inequality constraint has quadratic value x₀². -/
theorem inequality_quadratic (x : Fin 2 → ℝ) :
    quadratic inequalityMatrix x = (x 0) ^ 2 := by
  simp [quadratic, inequalityMatrix, Matrix.mulVec_diagonal,
    Matrix.dotProduct, Fin.sum_univ_two, pow_two]

/-- The squared Gram energy is also precisely x₀². -/
theorem gram_quadratic (x : Fin 2 → ℝ) :
    quadratic (gramRow.transpose * gramRow) x = (x 0) ^ 2 := by
  rw [quadratic, ← Matrix.mulVec_mulVec,
    Matrix.dotProduct_transpose_mulVec]
  simp [gramRow, Matrix.mulVec, Matrix.dotProduct,
    Fin.sum_univ_one, Fin.sum_univ_two, pow_two]

/-- Every vector in the image of the explicit nonzero embedding satisfies
both the signed equality and the nonnegative inequality constraint. -/
theorem axisEmbedding_admissible (v : Fin 1 → ℝ) :
    problem.Admissible (axisEmbedding *ᵥ v) := by
  change (∀ e : Fin 1, quadratic equalityMatrix (axisEmbedding *ᵥ v) = 0) ∧
    (∀ g : Fin 1, 0 ≤ quadratic inequalityMatrix (axisEmbedding *ᵥ v))
  constructor
  · intro _
    rw [equality_quadratic, axisEmbedding_apply]
    simp
  · intro _
    rw [inequality_quadratic, axisEmbedding_apply]
    simpa using sq_nonneg (v 0)

/-- The ambient target is actually negative on the excluded axis,
so the range-admissibility hypothesis is not vacuous. -/
theorem target_negative_outside :
    quadratic problem.target (![0, 1] : Fin 2 → ℝ) < 0 := by
  change quadratic
      (gramRow.transpose * gramRow +
        (1 : ℝ) • inequalityMatrix + (-1 : ℝ) • equalityMatrix)
      (![0, 1] : Fin 2 → ℝ) < 0
  rw [quadratic_add, quadratic_add, quadratic_smul, quadratic_smul]
  simp [gram_quadratic, inequality_quadratic, equality_quadratic]

/-- The excluded axis does not satisfy the certificate equality. -/
theorem excluded_axis_not_admissible :
    ¬ problem.Admissible (![0, 1] : Fin 2 → ℝ) := by
  intro h
  have he : quadratic equalityMatrix (![0, 1] : Fin 2 → ℝ) = 0 := by
    simpa [problem] using h.1 (0 : Fin 1)
  simp [equality_quadratic] at he

/-- The actual admissible one-dimensional linear range in ambient
two-coordinate space. -/
def admissibleLine : Submodule ℝ (Fin 2 → ℝ) :=
  LinearMap.range axisEmbedding.mulVecLin

theorem admissibleLine_all_admissible :
    ∀ x ∈ admissibleLine, problem.Admissible x := by
  intro x hx
  obtain ⟨v, hv⟩ := hx
  rw [← hv]
  simpa only [Matrix.mulVecLin_apply] using axisEmbedding_admissible v

/-- The actual Gram matrix has a unit quadratic lower bound throughout
the admissible line, not merely nonnegativity at selected points. -/
theorem admissibleLine_gram_unit :
    ∀ x ∈ admissibleLine,
      (1 : ℝ) * (∑ i, (x i) ^ 2) ≤
        quadratic (gramRow.transpose * gramRow) x := by
  intro x hx
  obtain ⟨v, hv⟩ := hx
  rw [← hv]
  simp [axisEmbedding_apply, gram_quadratic, Fin.sum_univ_two]

/-- The original indefinite target becomes quantitatively coercive
on the exact admissible linear range; nothing is claimed outside it. -/
theorem target_unit_coercive_on_line
    (x : Fin 2 → ℝ) (hx : x ∈ admissibleLine) :
    (∑ i, (x i) ^ 2) ≤ quadratic problem.target x := by
  have h := target_coercive_on_submodule
    problem certificate certificate_valid admissibleLine (1 : ℝ)
    admissibleLine_all_admissible admissibleLine_gram_unit x hx
  simpa only [one_mul] using h

/-- A concrete coupled Schur system with two nonzero off-diagonal blocks. -/
def couplingU : Unit → Matrix (Fin 1) (Fin 1) ℝ :=
  fun _ _ _ => 1

def couplingV : Unit → Matrix (Fin 1) (Fin 1) ℝ :=
  fun _ _ _ => 1

/-- The previously conditional target-Schur theorem now has a genuinely
nonzero admissible coordinate range and a proved checker proposition.
The ambient target still takes negative values on excluded vectors. -/
theorem concrete_admissible_target_schur_det_ne_zero :
    ((admissibleTargetSchurLift problem axisEmbedding couplingU couplingV).full ())
      .det ≠ 0 := by
  exact admissibleTargetSchurLift_full_det_ne_zero
    problem certificate certificate_check axisEmbedding
    axisEmbedding_admissible couplingU couplingV ()


/-- This single fully specified packet is a counterexample to the invalid
inference that a checked quadratic certificate makes its ambient target
globally positive semidefinite. The negative point is inadmissible. -/
theorem checked_target_not_globally_nonnegative :
    check problem certificate = true ∧
      ¬ ∀ x : Fin 2 → ℝ, 0 ≤ quadratic problem.target x := by
  refine ⟨certificate_check, ?_⟩
  intro h
  exact (not_le_of_gt target_negative_outside) (h ![0, 1])

/-- The actual pulled-back target is the strictly positive one-coordinate
quadratic form 2 t², not merely an abstract nonnegative form. -/
theorem pulledback_target_exact (v : Fin 1 → ℝ) :
    quadratic (problem.pullback axisEmbedding).target v =
      2 * (v 0) ^ 2 := by
  change quadratic (congruence axisEmbedding problem.target) v = _
  rw [quadratic_congruence, axisEmbedding_apply]
  change quadratic
      (gramRow.transpose * gramRow +
        (1 : ℝ) • inequalityMatrix + (-1 : ℝ) • equalityMatrix)
      (![v 0, 0] : Fin 2 → ℝ) = _
  rw [quadratic_add, quadratic_add, quadratic_smul, quadratic_smul]
  simp [gram_quadratic, inequality_quadratic, equality_quadratic]
  ring

end ConcreteAdmissibleAxis

end GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
