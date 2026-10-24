# sup_subgroupOf_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a121785d4facd6e5cda4586def26031803850094",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 521,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b0/b0b2af76895eae93ce241347e184021cf4c6b781d903cfdd3a05bbe7976655d1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:09ba22db-16a7-6c0b-91a4-aaeb9e0da739",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2fdf52b7-1b5b-f63d-03a8-944e31cb6016",
  "kind": "theorem",
  "lexical_name": "sup_subgroupOf_eq",
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
  "slug": "sup-subgroupof-eq--6bcf2004af71adbea865e0e4",
  "source": {
    "blob": "a121785d4facd6e5cda4586def26031803850094",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 526,
    "line": 521,
    "path": "GRWTSK/Algebra/GroupTheory/Ker/Variantb0b2af76895eae93ce241347e184021cf4c6b781d903cfdd3a05bbe7976655d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6bcf2004af71adbea865e0e4dd333d4bde91b294e291237a5b85deb9f26f87c0",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Ker/Variantb0b2af76895eae93ce241347e184021cf4c6b781d903cfdd3a05bbe7976655d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fdf52b7-1b5b-f63d-03a8-944e31cb6016`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 521–526.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sup_subgroupOf_eq {H K L : Subgroup G} (hH : H ≤ L) (hK : K ≤ L) :
    H.subgroupOf L ⊔ K.subgroupOf L = (H ⊔ K).subgroupOf L :=
  comap_sup_eq_of_le_range L.subtype (hH.trans_eq L.range_subtype.symm)
     (hK.trans_eq L.range_subtype.symm)

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Ker/Variantb0b2af76895eae93ce241347e184021cf4c6b781d903cfdd3a05bbe7976655d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Ker/Variantb0b2af76895eae93ce241347e184021cf4c6b781d903cfdd3a05bbe7976655d1.lean#L521).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a121785d4facd6e5cda4586def26031803850094` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
