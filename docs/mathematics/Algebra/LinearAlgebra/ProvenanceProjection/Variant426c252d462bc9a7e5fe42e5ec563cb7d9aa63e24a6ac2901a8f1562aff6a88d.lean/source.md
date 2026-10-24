# Complete source: GRWTSK.Algebra.LinearAlgebra.ProvenanceProjection.Variant426c252d462bc9a7e5fe42e5ec563cb7d9aa63e24a6ac2901a8f1562aff6a88d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d47ce7c3f3e75e6e7aaa1871def70edca7ebfc33` · SHA-256 `c4f00796c8ea839084c9100322b7acd7f2eebf3055634ef521c01632304b5c92`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.ProvenanceProjector.Variantaffa71cc096fa7195563f9abd1537db41c44bdd759feed39bb6dc3e6cc1d6a27","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"affa71cc096fa7195563f9abd1537db41c44bdd759feed39bb6dc3e6cc1d6a27","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.ProvenanceProjector.Variantaffa71cc096fa7195563f9abd1537db41c44bdd759feed39bb6dc3e6cc1d6a27","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"affa71cc096fa7195563f9abd1537db41c44bdd759feed39bb6dc3e6cc1d6a27","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/PositiveAtlas/ProvenanceProjection.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.PositiveGeometry

/-!
# Provenance projectors and Schur-type residual geometry

This module formalizes the algebraic core of Phase-II provenance reduction.

A provenance projector is an idempotent linear projection that is orthogonal for
the ambient positive form. Its complementary residual map defines an autonomous
positive geometry. The ambient form decomposes exactly into projected and
residual pieces, giving the abstract Schur-type subtraction identity.

No Moore--Penrose inverse or matrix Schur-complement construction is assumed in
this file. A later finite-dimensional module may instantiate this interface by
constructing the canonical projector and proving the corresponding matrix
formula.
-/


namespace GRWTSK.Algebra.LinearAlgebra.ProvenanceProjector.Variantaffa71cc096fa7195563f9abd1537db41c44bdd759feed39bb6dc3e6cc1d6a27

namespace FormalResearch.PositiveAtlas

universe u

variable {V : Type u} [AddCommGroup V] [Module ℝ V]

/-- An idempotent provenance projection that is orthogonal for a positive form. -/
structure ProvenanceProjector (G : PositiveForm V) where
  /-- Linear projection required to satisfy idempotence and orthogonality below. -/
  project : V →ₗ[ℝ] V
  idempotent : ∀ x, project (project x) = project x
  orthogonal : ∀ x y, G.form (project x) (y - project y) = 0

namespace ProvenanceProjector

variable {G : PositiveForm V}

/-- The complementary autonomous residual transport. -/
def residualMap (P : ProvenanceProjector G) : V →ₗ[ℝ] V :=
  LinearMap.id - P.project

@[simp]
theorem residualMap_apply (P : ProvenanceProjector G) (x : V) :
    P.residualMap x = x - P.project x := by
  rfl

/-- Every vector is the sum of its provenance projection and residual. -/
theorem project_add_residual (P : ProvenanceProjector G) (x : V) :
    P.project x + P.residualMap x = x := by
  simp [residualMap]

/-- Projecting a residual vector gives zero. -/
theorem project_residual_zero (P : ProvenanceProjector G) (x : V) :
    P.project (P.residualMap x) = 0 := by
  simp [residualMap, P.idempotent]

/-- Taking the residual of a projected vector gives zero. -/
theorem residual_project_zero (P : ProvenanceProjector G) (x : V) :
    P.residualMap (P.project x) = 0 := by
  simp [residualMap, P.idempotent]

/-- The provenance projection is orthogonal to every autonomous residual. -/
theorem project_orthogonal_residual (P : ProvenanceProjector G) (x y : V) :
    G.form (P.project x) (P.residualMap y) = 0 := by
  simpa [residualMap] using P.orthogonal x y

/-- By symmetry, every autonomous residual is orthogonal to the provenance
projection. -/
theorem residual_orthogonal_project (P : ProvenanceProjector G) (x y : V) :
    G.form (P.residualMap x) (P.project y) = 0 := by
  rw [G.symmetric]
  exact P.project_orthogonal_residual y x

/-- The positive form splits exactly into provenance and autonomous residual
energies. -/
theorem form_decomposition (P : ProvenanceProjector G) (x y : V) :
    G.form x y =
      G.form (P.project x) (P.project y) +
        G.form (P.residualMap x) (P.residualMap y) := by
  conv_lhs =>
    rw [← P.project_add_residual x, ← P.project_add_residual y]
  rw [G.add_left, G.add_right, G.add_right]
  rw [P.project_orthogonal_residual, P.residual_orthogonal_project]
  ring

/-- The residual geometry is the ambient geometry minus the explained projected
geometry. This is the abstract Schur-type subtraction identity. -/
theorem residual_eq_sub_projected (P : ProvenanceProjector G) (x y : V) :
    G.form (P.residualMap x) (P.residualMap y) =
      G.form x y - G.form (P.project x) (P.project y) := by
  linarith [P.form_decomposition x y]

/-- The explained provenance geometry is the pullback through the projector. -/
def projectedForm (P : ProvenanceProjector G) : PositiveForm V :=
  G.pullback P.project

/-- The autonomous residual geometry is the pullback through the complementary
residual map. -/
def residualForm (P : ProvenanceProjector G) : PositiveForm V :=
  G.pullback P.residualMap

/-- The residual form is positive semidefinite. -/
theorem residualForm_nonnegative (P : ProvenanceProjector G) (x : V) :
    0 ≤ P.residualForm.form x x :=
  P.residualForm.nonnegative x

/-- The projected form is positive semidefinite. -/
theorem projectedForm_nonnegative (P : ProvenanceProjector G) (x : V) :
    0 ≤ P.projectedForm.form x x :=
  P.projectedForm.nonnegative x

/-- The positive quadratic energy decomposes as explained provenance plus
autonomous residual energy. -/
theorem quadratic_decomposition (P : ProvenanceProjector G) (x : V) :
    G.form x x = P.projectedForm.form x x + P.residualForm.form x x :=
  P.form_decomposition x x

/-- Every provenance projector determines the Phase-II residualization interface
introduced by the positive geometry module. -/
def asResidualization (P : ProvenanceProjector G) :
    ProvenanceResidualization V V where
  residualMap := P.residualMap

theorem asResidualization_residualForm (P : ProvenanceProjector G) :
    P.asResidualization.residualForm G = P.residualForm :=
  rfl

end ProvenanceProjector

end FormalResearch.PositiveAtlas
```
