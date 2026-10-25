# opow_mul_lt_opow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3199de4602c8439e7f4a263ec862495ae88cc935",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 274,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e7/e71ca5d0ff5223a4f1f5163dedec74c5798e7d7f7285374331c767fcad4dedc6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:97dd980b-eb1c-eb99-9fe6-710e198fbb56",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fc2b2cfd-7c35-158c-e968-7826a8db2eef",
  "kind": "theorem",
  "lexical_name": "opow_mul_lt_opow",
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
  "slug": "opow-mul-lt-opow--fdc2ef7f864f4491744c002f",
  "source": {
    "blob": "3199de4602c8439e7f4a263ec862495ae88cc935",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 274,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Exponential/Variante71ca5d0ff5223a4f1f5163dedec74c5798e7d7f7285374331c767fcad4dedc6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fdc2ef7f864f4491744c002f1cd6669fb29e0fe1d2efc39cd6931ce7be1b98b2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/SetTheory/Exponential/Variante71ca5d0ff5223a4f1f5163dedec74c5798e7d7f7285374331c767fcad4dedc6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc2b2cfd-7c35-158c-e968-7826a8db2eef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 274–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem opow_mul_lt_opow {b u v x : Ordinal} (hv : v < b) (hu : u < x) : b ^ u * v < b ^ x := by
  simpa using opow_mul_add_lt_opow hv (opow_pos _ hv.pos) hu

/-! ### Ordinal logarithm -/

/-- The ordinal logarithm is the solution `u` to the equation `x = b ^ u * v + w` where `v < b` and
`w < b ^ u`.

We special case `log 0 x = log 1 x = 0`, as well as `log b 0 = 0`. -/
@[pp_nodot]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/SetTheory/Exponential/Variante71ca5d0ff5223a4f1f5163dedec74c5798e7d7f7285374331c767fcad4dedc6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/SetTheory/Exponential/Variante71ca5d0ff5223a4f1f5163dedec74c5798e7d7f7285374331c767fcad4dedc6.lean#L274).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3199de4602c8439e7f4a263ec862495ae88cc935` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
