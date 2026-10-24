# isClosed_closedBall

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b21c59208a4359b18957f25189f000567b3df91e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 179,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8d/8d8f838b0a11bb94bcc1594e86b51385c1ec8a3733a87aed4d872e93e2e3e822.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5214fffc-05d9-7577-f8f9-3c0092bb45f9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:81a6cc0d-07cc-c1a0-5da8-e2b2f26fdb63",
  "kind": "theorem",
  "lexical_name": "isClosed_closedBall",
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
  "slug": "isclosed-closedball--e7d6d3b5942b706b2dd40e48",
  "source": {
    "blob": "b21c59208a4359b18957f25189f000567b3df91e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 191,
    "line": 179,
    "path": "GRWTSK/Topology/GeneralTopology/WeakDual/Variant8d8f838b0a11bb94bcc1594e86b51385c1ec8a3733a87aed4d872e93e2e3e822.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7d6d3b5942b706b2dd40e482a495b0af2e182864bd21a0139c45519437c48b7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/WeakDual/Variant8d8f838b0a11bb94bcc1594e86b51385c1ec8a3733a87aed4d872e93e2e3e822.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81a6cc0d-07cc-c1a0-5da8-e2b2f26fdb63`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–191.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isClosed_closedBall (x' : Dual 𝕜 E) (r : ℝ) : IsClosed (toNormedDual ⁻¹' closedBall x' r) :=
  isClosed_induced_iff'.2 (ContinuousLinearMap.is_weak_closed_closedBall x' r)
#align weak_dual.is_closed_closed_ball WeakDual.isClosed_closedBall

/-!
### Polar sets in the weak dual space
-/


variable (𝕜)

/-- The polar set `polar 𝕜 s` of `s : set E` seen as a subset of the dual of `E` with the
weak-star topology is `WeakDual.polar 𝕜 s`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/WeakDual/Variant8d8f838b0a11bb94bcc1594e86b51385c1ec8a3733a87aed4d872e93e2e3e822.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/WeakDual/Variant8d8f838b0a11bb94bcc1594e86b51385c1ec8a3733a87aed4d872e93e2e3e822.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b21c59208a4359b18957f25189f000567b3df91e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
