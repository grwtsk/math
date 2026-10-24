# continuous_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "912bc464320d8ea70f002255c59e9f79d41f6ac2",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 907,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/13cd9bc80e44bf7b61a55b5b1c2993058ac995f8803a6fb58c230c23a1d0fa35.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e6d1207c-3a4c-2818-cd59-cd3f1ab21e1a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3f87f09b-7d35-5950-faa3-d24b2b8e92ce",
  "kind": "theorem",
  "lexical_name": "continuous_iff'",
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
  "slug": "continuous-iff--47f572ad3cc7ae63223d1a74",
  "source": {
    "blob": "912bc464320d8ea70f002255c59e9f79d41f6ac2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 910,
    "line": 907,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Defs/Variant13cd9bc80e44bf7b61a55b5b1c2993058ac995f8803a6fb58c230c23a1d0fa35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47f572ad3cc7ae63223d1a745908fe3d07ce628b20fe3b0c93119e927d12ec6e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Defs/Variant13cd9bc80e44bf7b61a55b5b1c2993058ac995f8803a6fb58c230c23a1d0fa35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f87f09b-7d35-5950-faa3-d24b2b8e92ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 907–910.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_iff' [TopologicalSpace β] {f : β → α} :
    Continuous f ↔ ∀ (a), ∀ ε > 0, ∀ᶠ x in 𝓝 a, dist (f x) (f a) < ε :=
  continuous_iff_continuousAt.trans <| forall_congr' fun _ => tendsto_nhds

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Defs/Variant13cd9bc80e44bf7b61a55b5b1c2993058ac995f8803a6fb58c230c23a1d0fa35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Defs/Variant13cd9bc80e44bf7b61a55b5b1c2993058ac995f8803a6fb58c230c23a1d0fa35.lean#L907).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `912bc464320d8ea70f002255c59e9f79d41f6ac2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
