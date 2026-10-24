# Complete source: GRWTSK.Algebra.LinearAlgebra.FiniteQuadraticCertificate.Variantfe82083ed78498f3ee1c20702380743c7f6101261701e1cf0fa69cf676d4ce3d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `76a8331750d2a88aaa6903c1b4a00c088766b95e` · SHA-256 `754e2f3245c58ae90e14a65e8420d8a779b55eaea177a084d33a534defedcad8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Problem.Variant1438a3cea90966bbf3874c63f50820576606213de8db5ee4a257180d5caf311b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1438a3cea90966bbf3874c63f50820576606213de8db5ee4a257180d5caf311b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.Problem.Variant1438a3cea90966bbf3874c63f50820576606213de8db5ee4a257180d5caf311b","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"1438a3cea90966bbf3874c63f50820576606213de8db5ee4a257180d5caf311b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass15/feshbach_review/pr267-source/FormalResearch/PositiveAtlas/FiniteQuadraticCertificate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.LinearAlgebra.Matrix.ToLin
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
assumed. AI attribution: Codex authored this module and its proofs.
-/


namespace GRWTSK.Algebra.LinearAlgebra.Problem.Variant1438a3cea90966bbf3874c63f50820576606213de8db5ee4a257180d5caf311b

namespace FormalResearch.PositiveAtlas.FiniteQuadraticCertificate

open Matrix

variable {R ι ε γ ν : Type*}
variable [CommRing R] [LinearOrder R] [IsStrictOrderedRing R]
variable [Fintype ι] [Fintype ε] [Fintype γ] [Fintype ν]

/-- The homogeneous quadratic value of a finite matrix. -/
def quadratic (M : Matrix ι ι R) (x : ι → R) : R := x ⬝ᵥ M.mulVec x

/-- A target and its separately declared finite constraint families. -/
structure Problem (R ι ε γ : Type*) where
  target : Matrix ι ι R
  equalities : ε → Matrix ι ι R
  inequalities : γ → Matrix ι ι R

/-- Admissibility carries both vanishing and sign constraints explicitly. -/
def Problem.Admissible (P : Problem R ι ε γ) (x : ι → R) : Prop :=
  (∀ e, quadratic (P.equalities e) x = 0) ∧
    (∀ g, 0 ≤ quadratic (P.inequalities g) x)

/-- Finite certificate data, without a target inequality as a field. -/
structure Certificate (R ι ε γ ν : Type*) where
  gram : Matrix ν ι R
  equalityMultipliers : ε → R
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

end FormalResearch.PositiveAtlas.FiniteQuadraticCertificate
```
