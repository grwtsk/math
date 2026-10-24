# leftHomologyMap_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6db812f4-cfa3-df8a-e7fd-165025f2b329",
  "kind": "lemma",
  "lexical_name": "leftHomologyMap_comp",
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
  "slug": "lefthomologymap-comp--cadd59d78c3a1a8d3631709c",
  "source": {
    "blob": "3b85472eef291fd83e327c73f53b3986ace107ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 672,
    "line": 667,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomology/Variant07f841967d674baf73153a4fe7378e9f2dfe274e1c9298de1a7eadf3e6cb6270.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cadd59d78c3a1a8d3631709c61e79b6e6fd1e567cbac443457d7390190ddfa80",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomology/Variant07f841967d674baf73153a4fe7378e9f2dfe274e1c9298de1a7eadf3e6cb6270.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6db812f4-cfa3-df8a-e7fd-165025f2b329`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 667–672.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma leftHomologyMap_comp [HasLeftHomology S₁] [HasLeftHomology S₂] [HasLeftHomology S₃]
    (φ₁ : S₁ ⟶ S₂) (φ₂ : S₂ ⟶ S₃) :
    leftHomologyMap (φ₁ ≫ φ₂) = leftHomologyMap φ₁ ≫ leftHomologyMap φ₂ :=
  leftHomologyMap'_comp _ _ _ _ _

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomology/Variant07f841967d674baf73153a4fe7378e9f2dfe274e1c9298de1a7eadf3e6cb6270.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftHomology/Variant07f841967d674baf73153a4fe7378e9f2dfe274e1c9298de1a7eadf3e6cb6270.lean#L667).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b85472eef291fd83e327c73f53b3986ace107ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
