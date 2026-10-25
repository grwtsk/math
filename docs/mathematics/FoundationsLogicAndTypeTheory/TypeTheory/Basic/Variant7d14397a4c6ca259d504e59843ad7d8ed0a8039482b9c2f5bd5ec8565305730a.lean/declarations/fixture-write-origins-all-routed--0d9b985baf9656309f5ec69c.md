# fixture_write_origins_all_routed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6b04e2f2be08ade66e6e69b2e28fd0932ecf0f1a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1153,
      "path": "GRWTSK/SourceCorpus/Noeaaeue/Variants/systems/taxonomy/integration/formal/lean/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/TransactionConstruction/Basic.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6e9a9581-491c-a6ac-ed85-6a072cc3211f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5da84856-286c-a9ff-d5c4-e075d122baf3",
  "kind": "theorem",
  "lexical_name": "fixture_write_origins_all_routed",
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
  "slug": "fixture-write-origins-all-routed--0d9b985baf9656309f5ec69c",
  "source": {
    "blob": "6b04e2f2be08ade66e6e69b2e28fd0932ecf0f1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1159,
    "line": 1153,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variant7d14397a4c6ca259d504e59843ad7d8ed0a8039482b9c2f5bd5ec8565305730a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0d9b985baf9656309f5ec69c6d1d0aba31660f8747f8b1bf1a367b8224f10f62",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variant7d14397a4c6ca259d504e59843ad7d8ed0a8039482b9c2f5bd5ec8565305730a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5da84856-286c-a9ff-d5c4-e075d122baf3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1153–1159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixture_write_origins_all_routed :
    constructWrites fixtureRoots [] fixtureRoutedActions .taxonomy
      [("a", ⟨"a", 1, .lean⟩), ("b", ⟨"b", 2, .lean⟩), ("c", ⟨"c", 3, .sidecar⟩)] =
    .ok [("c", ⟨"preservation-root", "input-c", ⟨"c", 3, .sidecar⟩, false⟩),
      ("b", ⟨"destination-root", "input-b", ⟨"b", 2, .lean⟩, false⟩),
      ("a", ⟨"source-root", "input-a", ⟨"a", 1, .lean⟩, false⟩)] := by decide

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variant7d14397a4c6ca259d504e59843ad7d8ed0a8039482b9c2f5bd5ec8565305730a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Basic/Variant7d14397a4c6ca259d504e59843ad7d8ed0a8039482b9c2f5bd5ec8565305730a.lean#L1153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b04e2f2be08ade66e6e69b2e28fd0932ecf0f1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
