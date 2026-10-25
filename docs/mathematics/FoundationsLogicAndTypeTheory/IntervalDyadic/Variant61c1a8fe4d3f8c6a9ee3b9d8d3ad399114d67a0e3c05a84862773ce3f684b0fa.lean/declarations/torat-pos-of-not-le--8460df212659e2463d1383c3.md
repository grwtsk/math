# toRat_pos_of_not_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b77f3102dc0f912b0389995fefcaf7161365b344",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 324,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/61/61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:98630163-342d-1948-81b7-75f1eb2d92fb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:807ef329-e015-bd20-b613-ae9483b521fa",
  "kind": "theorem",
  "lexical_name": "toRat_pos_of_not_le",
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
  "slug": "torat-pos-of-not-le--8460df212659e2463d1383c3",
  "source": {
    "blob": "b77f3102dc0f912b0389995fefcaf7161365b344",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 327,
    "line": 324,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8460df212659e2463d1383c3f9ffffaea6ba0f91b45f173ed999df0854b02f1b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:807ef329-e015-bd20-b613-ae9483b521fa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–327.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem toRat_pos_of_not_le {d : Dyadic} (h : ¬ Dyadic.le d 0) : 0 < d.toRat := by
  exact lt_of_not_ge fun h' => h ((Dyadic.le_iff_toRat_le d 0).mpr (by rwa [Dyadic.toRat_zero]))

/-- mulFast endpoints match mul endpoints: lo -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/IntervalDyadic/Variant61c1a8fe4d3f8c6a9ee3b9d8d3ad399114d67a0e3c05a84862773ce3f684b0fa.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b77f3102dc0f912b0389995fefcaf7161365b344` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
