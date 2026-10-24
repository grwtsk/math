# mapHomologicalComplex_commShiftIso_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "937aeceacd9192c28445ceb9348170882a6b52e2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 225,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0a/0a5eb47dafc15ea5652db198b6c9984c7649f8a409b97774b1947264393efca2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8e933b9a-58db-181b-bab9-d7f728276e75",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:330e40b7-f1b0-4860-4aa0-65a93167508e",
  "kind": "lemma",
  "lexical_name": "mapHomologicalComplex_commShiftIso_eq",
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
  "slug": "maphomologicalcomplex-commshiftiso-eq--7b1247fad5f1dbaf50bd7d63",
  "source": {
    "blob": "937aeceacd9192c28445ceb9348170882a6b52e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 229,
    "line": 225,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant0a5eb47dafc15ea5652db198b6c9984c7649f8a409b97774b1947264393efca2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7b1247fad5f1dbaf50bd7d63af104097d8f4bba8ac2f2ea8a38e7fd8ee6ac6bd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant0a5eb47dafc15ea5652db198b6c9984c7649f8a409b97774b1947264393efca2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:330e40b7-f1b0-4860-4aa0-65a93167508e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–229.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mapHomologicalComplex_commShiftIso_eq (n : ℤ) :
    (F.mapHomologicalComplex (ComplexShape.up ℤ)).commShiftIso n =
      F.mapCochainComplexShiftIso n := rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant0a5eb47dafc15ea5652db198b6c9984c7649f8a409b97774b1947264393efca2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Shift/Variant0a5eb47dafc15ea5652db198b6c9984c7649f8a409b97774b1947264393efca2.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `937aeceacd9192c28445ceb9348170882a6b52e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
