# functorEnrichedOrdinaryCategory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b40cec2c2d64217680b2736ee9dd3bd1b386cca44453b0877fa3c9d12e03e6c1",
  "kind": "def",
  "lexical_name": "functorEnrichedOrdinaryCategory",
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
  "slug": "functorenrichedordinarycategory--fb773aaaa94adde6ebd28c30",
  "source": {
    "blob": "964746b1888763c4112af60a841300762aca73ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 464,
    "line": 456,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fb773aaaa94adde6ebd28c301d362c21b4e02f98349d98609b5b7bb9f298fff3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b40cec2c2d64217680b2736ee9dd3bd1b386cca44453b0877fa3c9d12e03e6c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 456–464.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def functorEnrichedOrdinaryCategory
    [∀ (F₁ F₂ : J ⥤ C), HasFunctorEnrichedHom V F₁ F₂]
    [∀ (F₁ F₂ : J ⥤ C), HasEnrichedHom V F₁ F₂] :
    EnrichedOrdinaryCategory (J ⥤ V) (J ⥤ C) where
  homEquiv := functorHomEquiv V
  homEquiv_id F := functorHomEquiv_id V F
  homEquiv_comp f g := functorHomEquiv_comp V f g

end CategoryTheory.Enriched.FunctorCategory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5ce70a6d6814b364302cf0f7a86ee1021829301d1614bb8b5a8e7586bb9fa4f.lean#L456).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `964746b1888763c4112af60a841300762aca73ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
