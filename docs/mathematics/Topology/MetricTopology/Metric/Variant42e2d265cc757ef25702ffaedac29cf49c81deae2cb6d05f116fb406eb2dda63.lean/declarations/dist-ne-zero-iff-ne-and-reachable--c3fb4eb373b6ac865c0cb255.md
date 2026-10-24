# dist_ne_zero_iff_ne_and_reachable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c48525b1b35d4a8a65e7d33b978fe5892fd00f38",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 232,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/42/42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:21feb453-60da-575b-deaa-8aeaf41286c7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8d9c1f7b-e9e8-b53c-f26d-a3b9eb79576f",
  "kind": "lemma",
  "lexical_name": "dist_ne_zero_iff_ne_and_reachable",
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
  "slug": "dist-ne-zero-iff-ne-and-reachable--c3fb4eb373b6ac865c0cb255",
  "source": {
    "blob": "c48525b1b35d4a8a65e7d33b978fe5892fd00f38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 232,
    "path": "GRWTSK/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3fb4eb373b6ac865c0cb255357878bfbdcc581f41f77f1efdbb6cb2bd7a050f",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d9c1f7b-e9e8-b53c-f26d-a3b9eb79576f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma dist_ne_zero_iff_ne_and_reachable : G.dist u v ≠ 0 ↔ u ≠ v ∧ G.Reachable u v := by
  rw [ne_eq, dist_eq_zero_iff_eq_or_not_reachable.not]
  push_neg; rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Metric/Variant42e2d265cc757ef25702ffaedac29cf49c81deae2cb6d05f116fb406eb2dda63.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c48525b1b35d4a8a65e7d33b978fe5892fd00f38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
