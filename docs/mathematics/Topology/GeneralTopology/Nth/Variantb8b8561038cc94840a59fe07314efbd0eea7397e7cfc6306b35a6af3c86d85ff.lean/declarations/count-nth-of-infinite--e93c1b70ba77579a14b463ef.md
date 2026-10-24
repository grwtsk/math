# count_nth_of_infinite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2d8f1bb74f220d732828f2eb30271b2a8ac9f7c6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 441,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b8b8561038cc94840a59fe07314efbd0eea7397e7cfc6306b35a6af3c86d85ff.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fbc15b6c-57a9-92a8-96f8-8a9298c2621f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:11e62f34-a12f-6a19-ce00-c3368c10b605",
  "kind": "theorem",
  "lexical_name": "count_nth_of_infinite",
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
  "slug": "count-nth-of-infinite--e93c1b70ba77579a14b463ef",
  "source": {
    "blob": "2d8f1bb74f220d732828f2eb30271b2a8ac9f7c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 443,
    "line": 441,
    "path": "GRWTSK/Topology/GeneralTopology/Nth/Variantb8b8561038cc94840a59fe07314efbd0eea7397e7cfc6306b35a6af3c86d85ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e93c1b70ba77579a14b463ef26f461b9599c8251079f7451b41e6cbe6d9bac45",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Nth/Variantb8b8561038cc94840a59fe07314efbd0eea7397e7cfc6306b35a6af3c86d85ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11e62f34-a12f-6a19-ce00-c3368c10b605`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 441–443.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem count_nth_of_infinite (hp : (Set.ofPred p).Infinite) (n : ℕ) : count p (nth p n) = n :=
  count_nth fun hf => absurd hf hp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Nth/Variantb8b8561038cc94840a59fe07314efbd0eea7397e7cfc6306b35a6af3c86d85ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Nth/Variantb8b8561038cc94840a59fe07314efbd0eea7397e7cfc6306b35a6af3c86d85ff.lean#L441).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d8f1bb74f220d732828f2eb30271b2a8ac9f7c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
