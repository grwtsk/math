# continuousWithinAt_update_same

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6fcb9e290ca73882fdb5cde61853318fc2106ac7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 19,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cc/cc6d67114c3cef0fff3d49aac9eefe31760f06f4396858823a861e29f15f608c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5301b615-bb00-ff1d-821e-2abadf40392c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7f33f7f1-7c5b-b3a6-3b0b-487c1f2a09a9",
  "kind": "theorem",
  "lexical_name": "continuousWithinAt_update_same",
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
  "slug": "continuouswithinat-update-same--a165072cdd47313e45350d1f",
  "source": {
    "blob": "6fcb9e290ca73882fdb5cde61853318fc2106ac7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28,
    "line": 19,
    "path": "GRWTSK/Topology/GeneralTopology/Piecewise/Variantcc6d67114c3cef0fff3d49aac9eefe31760f06f4396858823a861e29f15f608c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a165072cdd47313e45350d1f8adbf36784d24268ac96596787a009f5da8cd677",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Piecewise/Variantcc6d67114c3cef0fff3d49aac9eefe31760f06f4396858823a861e29f15f608c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f33f7f1-7c5b-b3a6-3b0b-487c1f2a09a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–28.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuousWithinAt_update_same [DecidableEq α] {y : β} :
    ContinuousWithinAt (update f x y) s x ↔ Tendsto f (𝓝[s \ {x}] x) (𝓝 y) :=
  calc
    ContinuousWithinAt (update f x y) s x ↔ Tendsto (update f x y) (𝓝[s \ {x}] x) (𝓝 y) := by
    { rw [← continuousWithinAt_diff_self, ContinuousWithinAt, update_self] }
    _ ↔ Tendsto f (𝓝[s \ {x}] x) (𝓝 y) :=
      tendsto_congr' <| eventually_nhdsWithin_iff.2 <| Eventually.of_forall
        fun _ hz => update_of_ne hz.2 ..

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Piecewise/Variantcc6d67114c3cef0fff3d49aac9eefe31760f06f4396858823a861e29f15f608c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Piecewise/Variantcc6d67114c3cef0fff3d49aac9eefe31760f06f4396858823a861e29f15f608c.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6fcb9e290ca73882fdb5cde61853318fc2106ac7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
