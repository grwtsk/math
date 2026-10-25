# min?_eq_some_iff_get?_eq_self_and_forall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d19513fc06472f10bbcaaa97876e805a5bc1e12a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1328,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8f/8fcc200662b0b75a0f367ceb8183191186bd6df14962d5d0551f5b87bc7be686.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5d31d37c-3b69-b3a4-219e-bf46579967f9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:62045533-1b8f-df72-1433-97869fae18db",
  "kind": "theorem",
  "lexical_name": "min?_eq_some_iff_get?_eq_self_and_forall",
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
  "slug": "min-eq-some-iff-get-eq-self-and-forall--acd69bd10791d76173403e8c",
  "source": {
    "blob": "d19513fc06472f10bbcaaa97876e805a5bc1e12a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1331,
    "line": 1328,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant8fcc200662b0b75a0f367ceb8183191186bd6df14962d5d0551f5b87bc7be686.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:acd69bd10791d76173403e8c9c78fdb1c5d465e73e6e48a9826e2b5c9984d3e7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant8fcc200662b0b75a0f367ceb8183191186bd6df14962d5d0551f5b87bc7be686.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:62045533-1b8f-df72-1433-97869fae18db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1328–1331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem min?_eq_some_iff_get?_eq_self_and_forall [TransCmp cmp] (h : t.WF) {km} :
    t.min? = some km ↔ t.get? km = some km ∧ ∀ k ∈ t, (cmp km k).isLE :=
  TreeMap.Raw.minKey?_eq_some_iff_getKey?_eq_self_and_forall h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant8fcc200662b0b75a0f367ceb8183191186bd6df14962d5d0551f5b87bc7be686.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lemmas/Variant8fcc200662b0b75a0f367ceb8183191186bd6df14962d5d0551f5b87bc7be686.lean#L1328).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d19513fc06472f10bbcaaa97876e805a5bc1e12a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
