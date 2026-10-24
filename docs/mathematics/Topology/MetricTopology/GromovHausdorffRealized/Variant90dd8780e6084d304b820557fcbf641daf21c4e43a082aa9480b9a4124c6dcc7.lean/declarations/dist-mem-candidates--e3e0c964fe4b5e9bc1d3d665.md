# dist_mem_candidates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f53c8dd-9325-e6b1-f066-9b97a262de80",
  "kind": "theorem",
  "lexical_name": "dist_mem_candidates",
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
  "slug": "dist-mem-candidates--e3e0c964fe4b5e9bc1d3d665",
  "source": {
    "blob": "7fc7d03d2ab9c47df0ae19e9f287c8094fdf88a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 408,
    "line": 400,
    "path": "GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variant90dd8780e6084d304b820557fcbf641daf21c4e43a082aa9480b9a4124c6dcc7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3e0c964fe4b5e9bc1d3d665cf9ec4020c2f3a1c35d4537cebe8bd7ac31f0733",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/GromovHausdorffRealized/Variant90dd8780e6084d304b820557fcbf641daf21c4e43a082aa9480b9a4124c6dcc7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f53c8dd-9325-e6b1-f066-9b97a262de80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 400–408.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem dist_mem_candidates :
    (fun p : (X ⊕ Y) × (X ⊕ Y) => dist p.1 p.2) ∈ candidates X Y := by
  simp_rw [candidates, Set.mem_ofPred_eq, dist_comm, dist_triangle, dist_self, maxVar_bound,
    forall_const, and_true]
  exact ⟨fun x y => rfl, fun x y => rfl⟩

set_option backward.privateInPublic true in
set_option backward.privateInPublic.warn false in
/-- The distance on `X ⊕ Y` as a candidate -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/GromovHausdorffRealized/Variant90dd8780e6084d304b820557fcbf641daf21c4e43a082aa9480b9a4124c6dcc7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/GromovHausdorffRealized/Variant90dd8780e6084d304b820557fcbf641daf21c4e43a082aa9480b9a4124c6dcc7.lean#L400).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fc7d03d2ab9c47df0ae19e9f287c8094fdf88a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
