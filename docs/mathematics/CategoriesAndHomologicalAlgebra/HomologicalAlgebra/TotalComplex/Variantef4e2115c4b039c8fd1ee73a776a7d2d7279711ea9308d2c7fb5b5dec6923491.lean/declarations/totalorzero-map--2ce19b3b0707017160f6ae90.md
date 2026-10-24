# ιTotalOrZero_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:75031617-eff7-c7eb-f5d9-3796f5458718",
  "kind": "lemma",
  "lexical_name": "ιTotalOrZero_map",
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
  "slug": "totalorzero-map--2ce19b3b0707017160f6ae90",
  "source": {
    "blob": "84ead7dd5224c2168dc3a9b2d0f35757a63ebdc8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 478,
    "line": 467,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variantef4e2115c4b039c8fd1ee73a776a7d2d7279711ea9308d2c7fb5b5dec6923491.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2ce19b3b0707017160f6ae900e6b65f9d5ccb7d1637b5fc1f0621ca7b21ff10c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variantef4e2115c4b039c8fd1ee73a776a7d2d7279711ea9308d2c7fb5b5dec6923491.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75031617-eff7-c7eb-f5d9-3796f5458718`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 467–478.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ιTotalOrZero_map (i₁ : I₁) (i₂ : I₂) (i₁₂ : I₁₂) :
    K.ιTotalOrZero c₁₂ i₁ i₂ i₁₂ ≫ (total.map φ c₁₂).f i₁₂ =
      (φ.f i₁).f i₂ ≫ L.ιTotalOrZero c₁₂ i₁ i₂ i₁₂ := by
  simp [total.map, ιTotalOrZero]

end

variable (C c₁ c₂)
variable [∀ (K : HomologicalComplex₂ C c₁ c₂), K.HasTotal c₁₂]

/-- The functor which sends a bicomplex to its total complex. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variantef4e2115c4b039c8fd1ee73a776a7d2d7279711ea9308d2c7fb5b5dec6923491.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variantef4e2115c4b039c8fd1ee73a776a7d2d7279711ea9308d2c7fb5b5dec6923491.lean#L467).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84ead7dd5224c2168dc3a9b2d0f35757a63ebdc8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
