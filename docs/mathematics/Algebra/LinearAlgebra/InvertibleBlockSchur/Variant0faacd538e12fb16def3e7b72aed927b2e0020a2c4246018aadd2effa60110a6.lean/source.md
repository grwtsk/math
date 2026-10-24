# Complete source: GRWTSK.Algebra.LinearAlgebra.InvertibleBlockSchur.Variant0faacd538e12fb16def3e7b72aed927b2e0020a2c4246018aadd2effa60110a6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5d7a805c2c750459d48d80ec851cda8f781d99f5` · SHA-256 `6a940728402b370f1c5492eb06b39037206504528882cf85fac1cf7a386f9737`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.InvertibleProvenanceBlock.Variant3e380801a7efe53e2cfa345ffd9c091bfd65764ebc99c27d663e2297cef98116","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3e380801a7efe53e2cfa345ffd9c091bfd65764ebc99c27d663e2297cef98116","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.InvertibleProvenanceBlock.Variant3e380801a7efe53e2cfa345ffd9c091bfd65764ebc99c27d663e2297cef98116","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"3e380801a7efe53e2cfa345ffd9c091bfd65764ebc99c27d663e2297cef98116","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/rh-target-sufficiency/FormalResearch/PositiveAtlas/InvertibleBlockSchur.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.BlockSchur

/-!
# Invertible provenance blocks

This module constructs the Phase-II block Schur solver from an invertible
provenance Gram block.

The provenance Gram block is represented by a linear equivalence from the
provenance space to its algebraic dual.  The cross block sends an autonomous
coordinate to the corresponding provenance functional.  Applying the inverse
Gram equivalence to that cross functional produces the canonical normal-equation
solver used by BlockSchurSolver.

This is the invertible-block case.  No Moore--Penrose pseudoinverse is used here.
-/


namespace GRWTSK.Algebra.LinearAlgebra.InvertibleProvenanceBlock.Variant3e380801a7efe53e2cfa345ffd9c091bfd65764ebc99c27d663e2297cef98116

namespace FormalResearch.PositiveAtlas

universe u v

variable {P : Type u} {U : Type v}
variable [AddCommGroup P] [Module ℝ P]
variable [AddCommGroup U] [Module ℝ U]

/-- The cross block of a positive form, regarded as a linear map from autonomous
coordinates to provenance covectors. -/
def provenanceCrossMap (G : PositiveForm (P × U)) :
    U →ₗ[ℝ] (P →ₗ[ℝ] ℝ) where
  toFun u :=
    { toFun := fun p =>
        G.form (provenanceInclusion p) (autonomousInclusion u)
      map_add' := by
        intro p q
        rw [map_add, G.add_left]
      map_smul' := by
        intro r p
        rw [map_smul, G.smul_left] }
  map_add' := by
    intro u v
    ext p
    rw [map_add, G.add_right]
  map_smul' := by
    intro r u
    ext p
    rw [map_smul, G.smul_right]

@[simp]
theorem provenanceCrossMap_apply (G : PositiveForm (P × U)) (u : U) (p : P) :
    provenanceCrossMap G u p =
      G.form (provenanceInclusion p) (autonomousInclusion u) :=
  rfl

/-- An invertible provenance block identifies provenance vectors with all
provenance covectors through the restriction of the ambient positive form. -/
structure InvertibleProvenanceBlock (G : PositiveForm (P × U)) where
  gramEquiv : P ≃ₗ[ℝ] (P →ₗ[ℝ] ℝ)
  gramEquiv_apply : ∀ p q,
    gramEquiv p q =
      G.form (provenanceInclusion q) (provenanceInclusion p)

namespace InvertibleProvenanceBlock

variable {G : PositiveForm (P × U)}

/-- The canonical least-squares provenance correction obtained by solving the
Gram normal equation. -/
def solve (I : InvertibleProvenanceBlock G) : U →ₗ[ℝ] P :=
  I.gramEquiv.symm.toLinearMap.comp (provenanceCrossMap G)

@[simp]
theorem gramEquiv_solve (I : InvertibleProvenanceBlock G) (u : U) :
    I.gramEquiv (I.solve u) = provenanceCrossMap G u := by
  simp [solve]

/-- The canonical correction reproduces the cross block against every provenance
test direction. -/
theorem provenance_form_solve (I : InvertibleProvenanceBlock G) (p : P) (u : U) :
    G.form (provenanceInclusion p) (provenanceInclusion (I.solve u)) =
      G.form (provenanceInclusion p) (autonomousInclusion u) := by
  calc
    G.form (provenanceInclusion p) (provenanceInclusion (I.solve u)) =
        I.gramEquiv (I.solve u) p := by
          symm
          exact I.gramEquiv_apply (I.solve u) p
    _ = provenanceCrossMap G u p := by
          rw [I.gramEquiv_solve]
    _ = G.form (provenanceInclusion p) (autonomousInclusion u) := rfl

private theorem form_sub_right (G : PositiveForm (P × U))
    (x y z : P × U) :
    G.form x (y - z) = G.form x y - G.form x z := by
  rw [sub_eq_add_neg, G.add_right]
  have h := G.smul_right (-1 : ℝ) x z
  simp at h
  rw [h]
  ring

/-- Invertibility of the provenance Gram block supplies the normal-equation
solver required by the abstract block Schur construction. -/
def blockSchurSolver (I : InvertibleProvenanceBlock G) :
    BlockSchurSolver G where
  solve := I.solve
  normal := by
    intro p u
    rw [form_sub_right]
    rw [I.provenance_form_solve]
    ring

@[simp]
theorem blockSchurSolver_solve (I : InvertibleProvenanceBlock G) :
    I.blockSchurSolver.solve = I.solve :=
  rfl

/-- The canonical Schur residual from an invertible provenance block is positive
semidefinite. -/
theorem schur_nonnegative (I : InvertibleProvenanceBlock G) (u : U) :
    0 ≤ I.blockSchurSolver.schurForm.form u u :=
  I.blockSchurSolver.schurForm_nonnegative u

/-- The canonical invertible-block Schur form is the autonomous block minus the
provenance energy of the solved correction. -/
theorem schur_eq_sub (I : InvertibleProvenanceBlock G) (u v : U) :
    I.blockSchurSolver.schurForm.form u v =
      G.form (autonomousInclusion u) (autonomousInclusion v) -
        G.form (provenanceInclusion (I.solve u))
          (provenanceInclusion (I.solve v)) := by
  simpa using I.blockSchurSolver.schurForm_eq_sub u v

/-- The Schur subtraction on the diagonal is nonnegative. -/
theorem schur_diagonal_nonnegative (I : InvertibleProvenanceBlock G) (u : U) :
    0 ≤
      G.form (autonomousInclusion u) (autonomousInclusion u) -
        G.form (provenanceInclusion (I.solve u))
          (provenanceInclusion (I.solve u)) := by
  simpa using I.blockSchurSolver.schur_diagonal_nonnegative u

end InvertibleProvenanceBlock

end FormalResearch.PositiveAtlas
```
