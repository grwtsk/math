# standardConePolarDisk_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ff8ba875-4fb6-c5e7-3b47-db14776c549a",
  "kind": "theorem",
  "lexical_name": "standardConePolarDisk_surjective",
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
  "slug": "standardconepolardisk-surjective--fb0446bdb89fd0c968ec2e45",
  "source": {
    "blob": "8d790f36777c1bafabe89dda19823a4cc2fe72a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 61,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPolarComplexPhase.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb0446bdb89fd0c968ec2e45844d20332c9ccc210c5f35c24eefe10344e4eef0",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonPolarComplexPhase.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ff8ba875-4fb6-c5e7-3b47-db14776c549a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem standardConePolarDisk_surjective :
    Function.Surjective
      GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarStandardConeDescent.standardConePolarDisk := by
  apply standardConePolarDisk_surjective_of_phase
  intro z hz
  exact ⟨normalizedComplexAngle z,
    complex_realAnglePolar_representation z hz⟩

/-
OPEN: exact-head Lean elaboration of Complex.norm_mul_exp_arg_mul_I
and all inherited quotient/continuity sources; then package the
compact-to-Hausdorff homeomorphism and perimeter cone transport.
-/

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarComplexPhase
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonPolarComplexPhase.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPolarComplexPhase.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d790f36777c1bafabe89dda19823a4cc2fe72a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
