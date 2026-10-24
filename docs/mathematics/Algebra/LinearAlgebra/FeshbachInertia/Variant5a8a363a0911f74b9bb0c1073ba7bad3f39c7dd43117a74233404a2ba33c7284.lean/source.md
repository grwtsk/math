# Complete source: GRWTSK.Algebra.LinearAlgebra.FeshbachInertia.Variant5a8a363a0911f74b9bb0c1073ba7bad3f39c7dd43117a74233404a2ba33c7284

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a8cf30f101e6f96162800ba7f92fc06b92ce48ad` · SHA-256 `3db1eebdab1b1b98c43c397fe1b25817809a0e41a580c49ef35f0964e3a9edc7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Assemble.Variant0bbce98bbb444017e6390b67f8bd6c8ecbd6bd98b64323023c0231217a887580","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0bbce98bbb444017e6390b67f8bd6c8ecbd6bd98b64323023c0231217a887580","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.Assemble.Variant0bbce98bbb444017e6390b67f8bd6c8ecbd6bd98b64323023c0231217a887580","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"0bbce98bbb444017e6390b67f8bd6c8ecbd6bd98b64323023c0231217a887580","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass15/feshbach_review/pr267-source/FormalResearch/PositiveAtlas/FeshbachInertia.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.FeshbachHermitian
import Mathlib.LinearAlgebra.QuadraticForm.Prod
import Mathlib.LinearAlgebra.QuadraticForm.Signature

/-!
# Exact real Feshbach inertia

The finite retained-first packet is identified with an actual real quadratic
form. Its completion-of-squares shear is a linear equivalence, so Mathlib's
positive signature, negative signature and radical dimension agree with those
of the exact Schur form plus the complementary form. A singular Schur center is
allowed. The complement is explicitly invertible and Hermitian; positive
definiteness is sufficient but is not needed for this congruence identity.

These are invariants of real quadratic forms. No complex eigenvalue count,
quantitative coercivity, source positivity or infinite-dimensional conclusion
is asserted. AI attribution: Codex authored these adapters and proofs.
-/


namespace GRWTSK.Algebra.LinearAlgebra.Assemble.Variant0bbce98bbb444017e6390b67f8bd6c8ecbd6bd98b64323023c0231217a887580

namespace FormalResearch.PositiveAtlas.FeshbachInertia

open Matrix

variable {m n : Type*}
variable [Fintype m] [Fintype n] [DecidableEq m] [DecidableEq n]

/-- Product coordinates as the exact sum-indexed block-matrix coordinates. -/
def assemble : ((m → ℝ) × (n → ℝ)) →ₗ[ℝ] ((m ⊕ n) → ℝ) :=
  (LinearEquiv.sumPiEquivProdPi ℝ m n (fun _ => ℝ)).symm.toLinearMap

/-- The actual retained-first matrix packet, as a real quadratic form. -/
def fullForm (A : Matrix m m ℝ) (C : Matrix n m ℝ) (B : Matrix n n ℝ) :
    QuadraticForm ℝ ((m → ℝ) × (n → ℝ)) :=
  (Matrix.fromBlocks A Cᴴ C B).toQuadraticForm'.comp assemble

/-- The exact Schur quadratic form orthogonally summed with the complement. -/
def reducedForm (A : Matrix m m ℝ) (C : Matrix n m ℝ) (B : Matrix n n ℝ)
    [Invertible B] : QuadraticForm ℝ ((m → ℝ) × (n → ℝ)) :=
  (Feshbach.schur A Cᴴ C B).toQuadraticForm'.prod B.toQuadraticForm'

/-- Exact full-form evaluation in the original sum-indexed matrix coordinates. -/
theorem fullForm_apply (A : Matrix m m ℝ) (C : Matrix n m ℝ) (B : Matrix n n ℝ)
    (z : (m → ℝ) × (n → ℝ)) :
    fullForm A C B z =
      Sum.elim z.1 z.2 ⬝ᵥ (Matrix.fromBlocks A Cᴴ C B).mulVec (Sum.elim z.1 z.2) := by
  simp only [fullForm, QuadraticMap.comp_apply, Matrix.toQuadraticForm',
    LinearMap.BilinMap.toQuadraticMap_apply, Matrix.toLinearMap₂'_apply']
  rfl

/-- Exact evaluation of the orthogonal Schur/complement form. -/
theorem reducedForm_apply (A : Matrix m m ℝ) (C : Matrix n m ℝ) (B : Matrix n n ℝ)
    [Invertible B] (z : (m → ℝ) × (n → ℝ)) :
    reducedForm A C B z = z.1 ⬝ᵥ (Feshbach.schur A Cᴴ C B).mulVec z.1 +
      z.2 ⬝ᵥ B.mulVec z.2 := by
  simp only [reducedForm, QuadraticMap.prod_apply, Matrix.toQuadraticForm',
    LinearMap.BilinMap.toQuadraticMap_apply, Matrix.toLinearMap₂'_apply']

/-- The invertible completion-of-squares shear keeps the retained coordinate
and adds the exact solved cross coupling to the complement. -/
def shear (C : Matrix n m ℝ) (B : Matrix n n ℝ) [Invertible B] :
    ((m → ℝ) × (n → ℝ)) ≃ₗ[ℝ] ((m → ℝ) × (n → ℝ)) where
  toFun z := (z.1, z.2 + (⅟B * C).mulVec z.1)
  invFun z := (z.1, z.2 - (⅟B * C).mulVec z.1)
  left_inv z := by ext <;> simp
  right_inv z := by ext <;> simp
  map_add' z w := by
    ext <;> simp [Matrix.mulVec_add, add_assoc, add_left_comm, add_comm]
  map_smul' a z := by ext <;> simp [Matrix.mulVec_smul]

omit [DecidableEq m] in
@[simp]
theorem shear_apply (C : Matrix n m ℝ) (B : Matrix n n ℝ) [Invertible B]
    (z : (m → ℝ) × (n → ℝ)) :
    shear C B z = (z.1, z.2 + (⅟B * C).mulVec z.1) := rfl

/-- Completion of squares gives an actual isometry of real quadratic forms,
rather than only a sign implication or a zero-set comparison. -/
def formEquiv (A : Matrix m m ℝ) (C : Matrix n m ℝ) (B : Matrix n n ℝ)
    [Invertible B] (hB : B.IsHermitian) :
    (fullForm A C B).IsometryEquiv (reducedForm A C B) where
  toLinearEquiv := shear C B
  map_app' z := by
    change reducedForm A C B (shear C B z) = fullForm A C B z
    rw [shear_apply, reducedForm_apply, fullForm_apply]
    simpa only [star_trivial] using
      (FeshbachHermitian.completion_of_squares A C B hB z.1 z.2).symm

/-- The positive index of the full form is the positive index of `F ⊕ B`. -/
theorem sigPos_eq (A : Matrix m m ℝ) (C : Matrix n m ℝ) (B : Matrix n n ℝ)
    [Invertible B] (hB : B.IsHermitian) :
    sigPos (fullForm A C B) = sigPos (reducedForm A C B) :=
  QuadraticMap.Equivalent.sigPos_eq ⟨formEquiv A C B hB⟩

/-- The negative index of the full form is the negative index of `F ⊕ B`. -/
theorem sigNeg_eq (A : Matrix m m ℝ) (C : Matrix n m ℝ) (B : Matrix n n ℝ)
    [Invertible B] (hB : B.IsHermitian) :
    sigNeg (fullForm A C B) = sigNeg (reducedForm A C B) :=
  QuadraticMap.Equivalent.sigNeg_eq ⟨formEquiv A C B hB⟩

/-- The null index is preserved, including when the Schur center is singular. -/
theorem radical_finrank_eq (A : Matrix m m ℝ) (C : Matrix n m ℝ) (B : Matrix n n ℝ)
    [Invertible B] (hB : B.IsHermitian) :
    Module.finrank ℝ (fullForm A C B).radical =
      Module.finrank ℝ (reducedForm A C B).radical :=
  QuadraticMap.Equivalent.rank_radical_eq ⟨formEquiv A C B hB⟩

/-- Exact equality of all three real inertia entries for the finite packet and
its Schur/complement direct sum. -/
theorem inertia_eq (A : Matrix m m ℝ) (C : Matrix n m ℝ) (B : Matrix n n ℝ)
    [Invertible B] (hB : B.IsHermitian) :
    (sigPos (fullForm A C B), sigNeg (fullForm A C B),
        Module.finrank ℝ (fullForm A C B).radical) =
      (sigPos (reducedForm A C B), sigNeg (reducedForm A C B),
        Module.finrank ℝ (reducedForm A C B).radical) := by
  rw [sigPos_eq A C B hB, sigNeg_eq A C B hB, radical_finrank_eq A C B hB]

end FormalResearch.PositiveAtlas.FeshbachInertia
```
