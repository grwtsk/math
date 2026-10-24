# exists_forall_sphere_dist_add_le_two_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a14313d-24c3-457a-668a-baa7dc7bd84b",
  "kind": "theorem",
  "lexical_name": "exists_forall_sphere_dist_add_le_two_sub",
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
  "slug": "exists-forall-sphere-dist-add-le-two-sub--38bb5a9ea2a6485db5521bb7",
  "source": {
    "blob": "e93aa3d31d8604811194bd3a8cba093a1ebd2c6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 58,
    "path": "GRWTSK/Topology/MetricTopology/Uniform/Variant817fac0d020c612c0f49e2ce947a1180b260d1ccb35ef250b27aecf4296affef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:38bb5a9ea2a6485db5521bb7e6fb79f938cc2e49f2e4ba208c12b13c24c9afc9",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Uniform/Variant817fac0d020c612c0f49e2ce947a1180b260d1ccb35ef250b27aecf4296affef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a14313d-24c3-457a-668a-baa7dc7bd84b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_forall_sphere_dist_add_le_two_sub (hε : 0 < ε) :
    ∃ δ, 0 < δ ∧ ∀ ⦃x : E⦄, ‖x‖ = 1 → ∀ ⦃y⦄, ‖y‖ = 1 → ε ≤ ‖x - y‖ → ‖x + y‖ ≤ 2 - δ :=
  UniformConvexSpace.uniform_convex hε

variable [NormedSpace ℝ E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Uniform/Variant817fac0d020c612c0f49e2ce947a1180b260d1ccb35ef250b27aecf4296affef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Uniform/Variant817fac0d020c612c0f49e2ce947a1180b260d1ccb35ef250b27aecf4296affef.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e93aa3d31d8604811194bd3a8cba093a1ebd2c6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
