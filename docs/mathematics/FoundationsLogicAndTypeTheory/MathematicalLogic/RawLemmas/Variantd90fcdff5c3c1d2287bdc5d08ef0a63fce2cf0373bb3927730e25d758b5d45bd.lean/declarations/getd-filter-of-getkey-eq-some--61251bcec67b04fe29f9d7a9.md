# getD_filter_of_getKey?_eq_some

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7687c2e9d7a17089800e59224e64c6cdcfcd21ff",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 3548,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d9/d90fcdff5c3c1d2287bdc5d08ef0a63fce2cf0373bb3927730e25d758b5d45bd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e5240b25-d492-95cb-e8ee-b8dac164200a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:10f0b574-24ca-6291-3f7a-52844520f505",
  "kind": "theorem",
  "lexical_name": "getD_filter_of_getKey?_eq_some",
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
  "slug": "getd-filter-of-getkey-eq-some--61251bcec67b04fe29f9d7a9",
  "source": {
    "blob": "7687c2e9d7a17089800e59224e64c6cdcfcd21ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3554,
    "line": 3548,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Variantd90fcdff5c3c1d2287bdc5d08ef0a63fce2cf0373bb3927730e25d758b5d45bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:61251bcec67b04fe29f9d7a996e402b99ccca96cbad52379fcb341955a5ea8a8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Variantd90fcdff5c3c1d2287bdc5d08ef0a63fce2cf0373bb3927730e25d758b5d45bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:10f0b574-24ca-6291-3f7a-52844520f505`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3548–3554.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem getD_filter_of_getKey?_eq_some [EquivBEq α] [LawfulHashable α]
    {f : α → β → Bool} {k k' : α} {fallback : β} (h : m.WF) :
    m.getKey? k = some k' →
      getD (m.filter f) k fallback =
        (m[k]?.filter (fun x => f k' x)).getD fallback :=
  DHashMap.Raw.Const.getD_filter_of_getKey?_eq_some h.out

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Variantd90fcdff5c3c1d2287bdc5d08ef0a63fce2cf0373bb3927730e25d758b5d45bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/RawLemmas/Variantd90fcdff5c3c1d2287bdc5d08ef0a63fce2cf0373bb3927730e25d758b5d45bd.lean#L3548).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7687c2e9d7a17089800e59224e64c6cdcfcd21ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
