# nndist_mul_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0312af9c-a2bd-1f57-0276-8b022c2259b6",
  "kind": "theorem",
  "lexical_name": "nndist_mul_right",
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
  "slug": "nndist-mul-right--a3319322a63f4d60e4a8439f",
  "source": {
    "blob": "0cecd6d9ae4bb89f4d9516dd16bc7eb3d0a0234d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 290,
    "line": 286,
    "path": "GRWTSK/Topology/MetricTopology/IsometricSMul/Variant061fc35b0456ca3d10e44d9d9f0e201416c3158677260869a95a687e74f7742e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a3319322a63f4d60e4a8439fcf537df4d5cd425397af0eb82a0a9401ebc25424",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/IsometricSMul/Variant061fc35b0456ca3d10e44d9d9f0e201416c3158677260869a95a687e74f7742e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0312af9c-a2bd-1f57-0276-8b022c2259b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 286–290.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nndist_mul_right [PseudoMetricSpace M] [Mul M] [IsIsometricSMul Mᵐᵒᵖ M] (a b c : M) :
    nndist (a * c) (b * c) = nndist a b :=
  nndist_smul (MulOpposite.op c) a b

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/IsometricSMul/Variant061fc35b0456ca3d10e44d9d9f0e201416c3158677260869a95a687e74f7742e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/IsometricSMul/Variant061fc35b0456ca3d10e44d9d9f0e201416c3158677260869a95a687e74f7742e.lean#L286).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cecd6d9ae4bb89f4d9516dd16bc7eb3d0a0234d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
