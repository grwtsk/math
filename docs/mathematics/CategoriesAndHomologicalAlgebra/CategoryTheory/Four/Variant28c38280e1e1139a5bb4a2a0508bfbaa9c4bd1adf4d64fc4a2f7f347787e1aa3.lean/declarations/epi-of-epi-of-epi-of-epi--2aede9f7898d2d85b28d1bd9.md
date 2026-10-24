# epi_of_epi_of_epi_of_epi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a9df8757-2d90-e77e-2dae-bef5068fa30b",
  "kind": "theorem",
  "lexical_name": "epi_of_epi_of_epi_of_epi",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "epi-of-epi-of-epi-of-epi--2aede9f7898d2d85b28d1bd9",
  "source": {
    "blob": "137da5d7cc72b45967a2c92089f0cc9d946f430c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 217,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant28c38280e1e1139a5bb4a2a0508bfbaa9c4bd1adf4d64fc4a2f7f347787e1aa3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2aede9f7898d2d85b28d1bd9dcf06c65f682e37f8453b47dad706b58d1520805",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant28c38280e1e1139a5bb4a2a0508bfbaa9c4bd1adf4d64fc4a2f7f347787e1aa3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9df8757-2d90-e77e-2dae-bef5068fa30b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem epi_of_epi_of_epi_of_epi (hR₂ : R₂.Exact) (hR₁' : Epi (R₁.map' 1 2))
    (h₀ : Epi (app' φ 0)) (h₁ : Epi (app' φ 2)) :
    Epi (app' φ 1) := by
  let ψ : mk₃ (R₁.map' 0 1) (R₁.map' 1 2) (0 : _ ⟶ R₁.obj' 0) ⟶
    mk₃ (R₂.map' 0 1) (R₂.map' 1 2) (0 : _ ⟶ R₁.obj' 0) := homMk₃ (app' φ 0) (app' φ 1)
      (app' φ 2) (𝟙 _) (naturality' φ 0 1) (naturality' φ 1 2) (by simp)
  refine epi_of_epi_of_epi_of_mono' ψ (exact₂_mk _ (by simp) ?_)
    (hR₂.exact 0).exact_toComposableArrows (by simp)
    h₀ h₁ (by dsimp [ψ]; infer_instance)
  rw [ShortComplex.exact_iff_epi _ (by simp)]
  exact hR₁'

end Three

end Abelian

namespace ShortComplex

variable {C : Type*} [Category C] [Abelian C]
variable {R₁ R₂ : ShortComplex C} (φ : R₁ ⟶ R₂)

attribute [local simp] ComposableArrows.Precomp.map

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant28c38280e1e1139a5bb4a2a0508bfbaa9c4bd1adf4d64fc4a2f7f347787e1aa3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Four/Variant28c38280e1e1139a5bb4a2a0508bfbaa9c4bd1adf4d64fc4a2f7f347787e1aa3.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `137da5d7cc72b45967a2c92089f0cc9d946f430c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
