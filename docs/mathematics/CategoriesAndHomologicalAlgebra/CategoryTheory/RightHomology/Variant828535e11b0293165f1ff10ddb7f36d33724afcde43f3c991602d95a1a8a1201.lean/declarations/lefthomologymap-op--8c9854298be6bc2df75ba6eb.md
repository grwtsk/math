# leftHomologyMap_op

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da57d8d6-efeb-4722-d8eb-b1217b286f98",
  "kind": "lemma",
  "lexical_name": "leftHomologyMap_op",
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
  "slug": "lefthomologymap-op--8c9854298be6bc2df75ba6eb",
  "source": {
    "blob": "6592c642cd8759ea926576a25ab4ff9b5ca9dcbe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1120,
    "line": 1113,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomology/Variant828535e11b0293165f1ff10ddb7f36d33724afcde43f3c991602d95a1a8a1201.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c9854298be6bc2df75ba6eb7293de162ad417350c63a6fd9a6929e88ba8d759",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomology/Variant828535e11b0293165f1ff10ddb7f36d33724afcde43f3c991602d95a1a8a1201.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da57d8d6-efeb-4722-d8eb-b1217b286f98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1113–1120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma leftHomologyMap_op (φ : S₁ ⟶ S₂) [S₁.HasLeftHomology] [S₂.HasLeftHomology] :
    (leftHomologyMap φ).op = S₂.rightHomologyOpIso.inv ≫ rightHomologyMap (opMap φ) ≫
      S₁.rightHomologyOpIso.hom := by
  dsimp [rightHomologyOpIso, RightHomologyData.rightHomologyIso, rightHomologyMap,
    leftHomologyMap]
  simp only [← rightHomologyMap'_comp, comp_id, id_comp, leftHomologyMap'_op]

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomology/Variant828535e11b0293165f1ff10ddb7f36d33724afcde43f3c991602d95a1a8a1201.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/RightHomology/Variant828535e11b0293165f1ff10ddb7f36d33724afcde43f3c991602d95a1a8a1201.lean#L1113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6592c642cd8759ea926576a25ab4ff9b5ca9dcbe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
