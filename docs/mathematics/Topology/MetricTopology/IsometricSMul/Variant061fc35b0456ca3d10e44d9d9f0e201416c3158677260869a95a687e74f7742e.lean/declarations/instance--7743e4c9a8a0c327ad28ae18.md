# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ee499e31b27f74b07eb7f6a7c390e04882444327bd88e73e7e7881b5bb844c8",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--7743e4c9a8a0c327ad28ae18",
  "source": {
    "blob": "0cecd6d9ae4bb89f4d9516dd16bc7eb3d0a0234d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 71,
    "path": "GRWTSK/Topology/MetricTopology/IsometricSMul/Variant061fc35b0456ca3d10e44d9d9f0e201416c3158677260869a95a687e74f7742e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7743e4c9a8a0c327ad28ae186f653fa36120e83f96864c2e46bcae72661fc49d",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/IsometricSMul/Variant061fc35b0456ca3d10e44d9d9f0e201416c3158677260869a95a687e74f7742e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ee499e31b27f74b07eb7f6a7c390e04882444327bd88e73e7e7881b5bb844c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (priority := 100) IsIsometricSMul.opposite_of_comm [PseudoEMetricSpace X] [SMul M X]
    [SMul Mᵐᵒᵖ X] [IsCentralScalar M X] [IsIsometricSMul M X] : IsIsometricSMul Mᵐᵒᵖ X :=
  ⟨fun c x y => by simpa only [← op_smul_eq_smul] using! isometry_smul X c.unop x y⟩

variable {M G X}

section EMetric

variable [PseudoEMetricSpace X] [Group G] [MulAction G X] [IsIsometricSMul G X]

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/IsometricSMul/Variant061fc35b0456ca3d10e44d9d9f0e201416c3158677260869a95a687e74f7742e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/IsometricSMul/Variant061fc35b0456ca3d10e44d9d9f0e201416c3158677260869a95a687e74f7742e.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cecd6d9ae4bb89f4d9516dd16bc7eb3d0a0234d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
