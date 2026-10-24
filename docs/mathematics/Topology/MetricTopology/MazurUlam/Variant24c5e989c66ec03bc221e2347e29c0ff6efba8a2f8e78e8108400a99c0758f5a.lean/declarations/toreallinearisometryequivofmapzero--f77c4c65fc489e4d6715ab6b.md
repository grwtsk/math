# toRealLinearIsometryEquivOfMapZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:08d13658c9f0631873f26a154fbb3851c8339e5d97a6d68e55f73946d29d7808",
  "kind": "def",
  "lexical_name": "toRealLinearIsometryEquivOfMapZero",
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
  "slug": "toreallinearisometryequivofmapzero--f77c4c65fc489e4d6715ab6b",
  "source": {
    "blob": "97a64fda4f043f8ec8c4bd8ac7a6a93224653c16",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 107,
    "path": "GRWTSK/Topology/MetricTopology/MazurUlam/Variant24c5e989c66ec03bc221e2347e29c0ff6efba8a2f8e78e8108400a99c0758f5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f77c4c65fc489e4d6715ab6bd71c1b1de655deb549bdc919f2660c2d89bf01da",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/MazurUlam/Variant24c5e989c66ec03bc221e2347e29c0ff6efba8a2f8e78e8108400a99c0758f5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:08d13658c9f0631873f26a154fbb3851c8339e5d97a6d68e55f73946d29d7808`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toRealLinearIsometryEquivOfMapZero (f : E ≃ᵢ F) (h0 : f 0 = 0) : E ≃ₗᵢ[ℝ] F :=
  { (AddMonoidHom.ofMapMidpoint ℝ ℝ f h0 f.map_midpoint).toRealLinearMap f.continuous, f with
    norm_map' := fun x => show ‖f x‖ = ‖x‖ by simp only [← dist_zero_right, ← h0, f.dist_eq] }

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/MazurUlam/Variant24c5e989c66ec03bc221e2347e29c0ff6efba8a2f8e78e8108400a99c0758f5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/MazurUlam/Variant24c5e989c66ec03bc221e2347e29c0ff6efba8a2f8e78e8108400a99c0758f5a.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `97a64fda4f043f8ec8c4bd8ac7a6a93224653c16` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
