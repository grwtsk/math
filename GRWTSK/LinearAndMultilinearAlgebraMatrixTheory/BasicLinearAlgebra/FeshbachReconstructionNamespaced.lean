-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Schur.Variant2752d30c602d76aa9e464fbe7ba4510c315dedb8f069937b441dd80922ece7bf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2752d30c602d76aa9e464fbe7ba4510c315dedb8f069937b441dd80922ece7bf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.Schur.Variant2752d30c602d76aa9e464fbe7ba4510c315dedb8f069937b441dd80922ece7bf","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"2752d30c602d76aa9e464fbe7ba4510c315dedb8f069937b441dd80922ece7bf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass15/feshbach_review/pr267-source/FormalResearch/PositiveAtlas/FeshbachReconstruction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.ExplicitSchurMatrix
import FormalResearch.PositiveAtlas.PhaseIIResidualQuotient
import Mathlib.LinearAlgebra.Matrix.SchurComplement

/-!
# Exact finite Feshbach reconstruction

The algebraic packet has blocks `A, U, C, B` and an explicitly invertible
bottom-right block. No Hermitian or positivity hypothesis is needed for
reconstruction or the kernel equivalence. The Schur center is the existing
Mathlib normalization `A - U * ⅟B * C`.

Product coordinates are identified with the sum-indexed block matrix, and the
real positive-form specialization is identified with the existing Phase-II
residualization, with its provenance-first ordering reversed.

AI attribution: Codex authored this module and its proofs.
-/


namespace GRWTSK.Algebra.LinearAlgebra.Schur.Variant2752d30c602d76aa9e464fbe7ba4510c315dedb8f069937b441dd80922ece7bf

namespace FormalResearch.PositiveAtlas.Feshbach

open Matrix

universe u v w

variable {R : Type u} [CommRing R]
variable {ι : Type v} {κ : Type w}
variable [Fintype ι] [Fintype κ] [DecidableEq κ]

/-- The Schur center of an algebraic block packet. -/
def schur (A : Matrix ι ι R) (U : Matrix ι κ R) (C : Matrix κ ι R)
    (B : Matrix κ κ R) [Invertible B] : Matrix ι ι R :=
  A - U * ⅟B * C

/-- The full block equation map in product coordinates. -/
def blockMap (A : Matrix ι ι R) (U : Matrix ι κ R) (C : Matrix κ ι R)
    (B : Matrix κ κ R) : ((ι → R) × (κ → R)) →ₗ[R] ((ι → R) × (κ → R)) :=
  (A.mulVecLin.comp (LinearMap.fst R (ι → R) (κ → R)) +
    U.mulVecLin.comp (LinearMap.snd R (ι → R) (κ → R))).prod
    (C.mulVecLin.comp (LinearMap.fst R (ι → R) (κ → R)) +
      B.mulVecLin.comp (LinearMap.snd R (ι → R) (κ → R)))

omit [DecidableEq κ] in
@[simp]
theorem blockMap_apply (A : Matrix ι ι R) (U : Matrix ι κ R) (C : Matrix κ ι R)
    (B : Matrix κ κ R) (z : (ι → R) × (κ → R)) :
    blockMap A U C B z = (A.mulVec z.1 + U.mulVec z.2,
      C.mulVec z.1 + B.mulVec z.2) := rfl

omit [DecidableEq κ] in
/-- Product-coordinate equations are exactly those of the sum-indexed matrix. -/
theorem blockMap_eq_fromBlocks (A : Matrix ι ι R) (U : Matrix ι κ R)
    (C : Matrix κ ι R) (B : Matrix κ κ R) (z : (ι → R) × (κ → R)) :
    (fromBlocks A U C B).mulVec (Sum.elim z.1 z.2) =
      Sum.elim (blockMap A U C B z).1 (blockMap A U C B z).2 := by
  rw [fromBlocks_mulVec]
  rfl

/-- The reconstructed vector has second coordinate `-⅟B C x`. -/
def lift (C : Matrix κ ι R) (B : Matrix κ κ R) [Invertible B] :
    (ι → R) →ₗ[R] ((ι → R) × (κ → R)) :=
  LinearMap.id.prod (-((⅟B).mulVecLin.comp C.mulVecLin))

@[simp]
theorem lift_apply (C : Matrix κ ι R) (B : Matrix κ κ R) [Invertible B] (x : ι → R) :
    lift C B x = (x, -(⅟B).mulVec (C.mulVec x)) := rfl

/-- Restriction to the unreduced coordinate. -/
def restrict : ((ι → R) × (κ → R)) →ₗ[R] (ι → R) :=
  LinearMap.fst R (ι → R) (κ → R)

@[simp]
theorem restrict_lift (C : Matrix κ ι R) (B : Matrix κ κ R) [Invertible B]
    (x : ι → R) : restrict (lift C B x) = x := rfl

/-- Reconstruction followed by restriction is the identity linear map. -/
theorem restrict_comp_lift (C : Matrix κ ι R) (B : Matrix κ κ R) [Invertible B] :
    restrict.comp (lift C B) = LinearMap.id := by
  ext x i
  rfl

/-- The reconstruction projection `L ∘ R`. -/
def project (C : Matrix κ ι R) (B : Matrix κ κ R) [Invertible B] :
    ((ι → R) × (κ → R)) →ₗ[R] ((ι → R) × (κ → R)) :=
  (lift C B).comp restrict

/-- The reconstruction projection is idempotent. -/
theorem project_idempotent (C : Matrix κ ι R) (B : Matrix κ κ R) [Invertible B]
    (z : (ι → R) × (κ → R)) : project C B (project C B z) = project C B z := rfl

/-- The eliminated equation vanishes exactly on the reconstructed coordinate. -/
theorem lower_eq_zero_iff (C : Matrix κ ι R) (B : Matrix κ κ R) [Invertible B]
    (x : ι → R) (y : κ → R) :
    C.mulVec x + B.mulVec y = 0 ↔ y = -(⅟B).mulVec (C.mulVec x) := by
  constructor
  · intro h
    have h' := congrArg ((⅟B).mulVec) h
    simp only [mulVec_add, mulVec_mulVec, invOf_mul_self, one_mulVec, mulVec_zero] at h'
    exact eq_neg_of_add_eq_zero_right (by simpa only [← mulVec_mulVec] using h')
  · intro h
    rw [h, mulVec_neg, mulVec_mulVec, mul_invOf_self, one_mulVec, add_neg_cancel]

/-- Applying the full packet to a reconstructed vector gives `(Fx, 0)`. -/
theorem blockMap_lift (A : Matrix ι ι R) (U : Matrix ι κ R) (C : Matrix κ ι R)
    (B : Matrix κ κ R) [Invertible B] (x : ι → R) :
    blockMap A U C B (lift C B x) = ((schur A U C B).mulVec x, 0) := by
  apply Prod.ext
  · simp only [blockMap_apply, lift_apply, mulVec_neg]
    rw [schur, sub_mulVec, ← mulVec_mulVec, ← mulVec_mulVec]
    exact (sub_eq_add_neg _ _).symm
  · simp only [blockMap_apply, lift_apply, mulVec_neg, mulVec_mulVec,
      ← Matrix.mul_assoc, mul_invOf_self, Matrix.one_mul, add_neg_cancel]

/-- Exact full/reduced equation equivalence, without a sign assumption. -/
theorem blockMap_eq_zero_iff (A : Matrix ι ι R) (U : Matrix ι κ R)
    (C : Matrix κ ι R) (B : Matrix κ κ R) [Invertible B]
    (z : (ι → R) × (κ → R)) :
    blockMap A U C B z = 0 ↔
      (schur A U C B).mulVec z.1 = 0 ∧ z.2 = -(⅟B).mulVec (C.mulVec z.1) := by
  constructor
  · intro h
    have hlower : C.mulVec z.1 + B.mulVec z.2 = 0 := congrArg Prod.snd h
    have hy := (lower_eq_zero_iff C B z.1 z.2).mp hlower
    have hz : z = lift C B z.1 := Prod.ext rfl hy
    rw [hz, blockMap_lift] at h
    exact ⟨congrArg Prod.fst h, hy⟩
  · rintro ⟨hx, hy⟩
    have hz : z = lift C B z.1 := Prod.ext rfl hy
    rw [hz, blockMap_lift, hx]
    rfl

/-- A zero of the full packet is precisely a lift of a zero of its Schur center. -/
theorem kernel_eq_lift (A : Matrix ι ι R) (U : Matrix ι κ R)
    (C : Matrix κ ι R) (B : Matrix κ κ R) [Invertible B]
    (z : (ι → R) × (κ → R)) :
    blockMap A U C B z = 0 ↔
      ∃ x : ι → R, (schur A U C B).mulVec x = 0 ∧ lift C B x = z := by
  rw [blockMap_eq_zero_iff]
  constructor
  · rintro ⟨hx, hy⟩
    exact ⟨z.1, hx, Prod.ext rfl hy.symm⟩
  · rintro ⟨x, hx, rfl⟩
    exact ⟨hx, rfl⟩

/-- The full kernel and the Schur kernel are linearly equivalent, preserving
kernel dimension whenever a finite-dimensional field specialization is made. -/
def kernelEquiv (A : Matrix ι ι R) (U : Matrix ι κ R) (C : Matrix κ ι R)
    (B : Matrix κ κ R) [Invertible B] :
    LinearMap.ker (schur A U C B).mulVecLin ≃ₗ[R] LinearMap.ker (blockMap A U C B) where
  toFun x := ⟨lift C B x, by
    change blockMap A U C B (lift C B x) = 0
    rw [blockMap_lift]
    have hx : (schur A U C B).mulVec x = 0 := x.property
    rw [hx]
    rfl⟩
  invFun z := ⟨z.val.1, by
    exact ((blockMap_eq_zero_iff A U C B z).mp z.property).1⟩
  left_inv x := Subtype.ext rfl
  right_inv z := by
    apply Subtype.ext
    exact Prod.ext rfl ((blockMap_eq_zero_iff A U C B z).mp z.property).2.symm
  map_add' x y := by
    apply Subtype.ext
    exact (lift C B).map_add x y
  map_smul' r x := by
    apply Subtype.ext
    exact (lift C B).map_smul r x

end FormalResearch.PositiveAtlas.Feshbach

namespace FormalResearch.PositiveAtlas.MatrixBlockRealization

open Matrix

universe u v

variable {ι : Type u} {κ : Type v}
variable [Fintype ι] [DecidableEq ι] [Fintype κ]
variable {G : PositiveForm ((ι → ℝ) × (κ → ℝ))}

/-- The accepted explicit inverse supplies Mathlib's invertibility witness. -/
@[instance_reducible]
def provenanceInvertible (D : MatrixBlockRealization G) : Invertible D.provenanceMatrix where
  invOf := D.inverseProvenanceMatrix
  invOf_mul_self := D.inverse_mul
  mul_invOf_self := D.mul_inverse

/-- The new algebraic lift is exactly the existing residualization after reversing
provenance-first coordinates; it does not fork the positive-form construction. -/
theorem feshbachLift_eq_phaseIIResidualization (D : MatrixBlockRealization G) (x : κ → ℝ) :
    letI := D.provenanceInvertible
    Feshbach.lift D.crossMatrix D.provenanceMatrix x =
      Prod.swap (D.blockSchurSolver.phaseIIResidualization.residualMap x) := by
  let _ := D.provenanceInvertible
  change (x, -D.inverseProvenanceMatrix.mulVec (D.crossMatrix.mulVec x)) = _
  rw [BlockSchurSolver.phaseIIResidualization_apply]
  simp only [autonomousInclusion_apply, provenanceInclusion_apply, blockSchurSolver_solve,
    solve_apply, Prod.mk_sub_mk, Prod.swap_prod_mk, sub_zero, zero_sub]

/-- The generic Schur center recovers the already accepted Schur matrix exactly. -/
theorem feshbachSchur_eq_schurMatrix (D : MatrixBlockRealization G) :
    letI := D.provenanceInvertible
    Feshbach.schur D.autonomousMatrix D.crossMatrix.transpose D.crossMatrix
      D.provenanceMatrix = D.schurMatrix := rfl

end FormalResearch.PositiveAtlas.MatrixBlockRealization
