# Bundle.Prod.smoothVectorBundle

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bbee38a9742057e434fc22a777be5c9639155053f898ae3b68fe6d45273437fe",
  "kind": "instance",
  "lexical_name": "Bundle.Prod.smoothVectorBundle",
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
  "slug": "bundle-prod-smoothvectorbundle--939b213f24ad6fbcabdf9a5e",
  "source": {
    "blob": "38cae4e66dd7e1a50557c64284780343e53644ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 660,
    "line": 636,
    "path": "GRWTSK/Geometry/DifferentialGeometry/Basic/Variant261907832c8828afe827871e82ca310427fd43cf68d4bc899358dc9125102ce0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:939b213f24ad6fbcabdf9a5e9b42016ca1c9b8ebd2be4819c41d6ebfe7a894ce",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/Basic/Variant261907832c8828afe827871e82ca310427fd43cf68d4bc899358dc9125102ce0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bbee38a9742057e434fc22a777be5c9639155053f898ae3b68fe6d45273437fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 636–660.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Bundle.Prod.smoothVectorBundle : SmoothVectorBundle (F₁ × F₂) (E₁ ×ᵇ E₂) IB where
  smoothOn_coordChangeL := by
    rintro _ _ ⟨e₁, e₂, i₁, i₂, rfl⟩ ⟨e₁', e₂', i₁', i₂', rfl⟩
    rw [SmoothOn]
    refine' ContMDiffOn.congr _ (e₁.coordChangeL_prod 𝕜 e₁' e₂ e₂')
    refine' ContMDiffOn.clm_prodMap _ _
    · refine' (smoothOn_coordChangeL IB e₁ e₁').mono _
      simp only [Trivialization.baseSet_prod, mfld_simps]
      mfld_set_tac
    · refine' (smoothOn_coordChangeL IB e₂ e₂').mono _
      simp only [Trivialization.baseSet_prod, mfld_simps]
      mfld_set_tac
#align bundle.prod.smooth_vector_bundle Bundle.Prod.smoothVectorBundle

end Prod

end WithTopology

/-! ### Prebundle construction for smooth vector bundles -/

namespace VectorPrebundle

variable [∀ x, TopologicalSpace (E x)]

/-- Mixin for a `VectorPrebundle` stating smoothness of coordinate changes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/Basic/Variant261907832c8828afe827871e82ca310427fd43cf68d4bc899358dc9125102ce0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/Basic/Variant261907832c8828afe827871e82ca310427fd43cf68d4bc899358dc9125102ce0.lean#L636).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38cae4e66dd7e1a50557c64284780343e53644ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
