# WithLower.toDualHomeomorph

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6e7e5af9c23013dbfa2e2e28e518ffbc806b1b2c6c0e945fe3d9f4910d8de5a4",
  "kind": "def",
  "lexical_name": "WithLower.toDualHomeomorph",
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
  "slug": "withlower-todualhomeomorph--f019e9d8e4508b0a4df168e0",
  "source": {
    "blob": "7db07cb4b8c52a3078efa07865a741108310081c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 211,
    "path": "GRWTSK/Topology/GeneralTopology/LowerUpperTopology/Variant8f2f02f4a28f8a35e558ecc86d744b2c5b65cc9a2bffe0650ff266e3b1cdf07c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f019e9d8e4508b0a4df168e02834d793809355512ea7648aff6a5d2a2bd9ddaa",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LowerUpperTopology/Variant8f2f02f4a28f8a35e558ecc86d744b2c5b65cc9a2bffe0650ff266e3b1cdf07c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6e7e5af9c23013dbfa2e2e28e518ffbc806b1b2c6c0e945fe3d9f4910d8de5a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 211–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def WithLower.toDualHomeomorph [Preorder α] : WithLower α ≃ₜ WithUpper αᵒᵈ where
  toFun := OrderDual.toDual
  invFun := OrderDual.ofDual
  left_inv := OrderDual.toDual_ofDual
  right_inv := OrderDual.ofDual_toDual
  continuous_toFun := continuous_coinduced_rng
  continuous_invFun := continuous_coinduced_rng

namespace IsLower

/-- The complements of the upper closures of finite sets are a collection of lower sets
which form a basis for the lower topology. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LowerUpperTopology/Variant8f2f02f4a28f8a35e558ecc86d744b2c5b65cc9a2bffe0650ff266e3b1cdf07c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LowerUpperTopology/Variant8f2f02f4a28f8a35e558ecc86d744b2c5b65cc9a2bffe0650ff266e3b1cdf07c.lean#L211).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7db07cb4b8c52a3078efa07865a741108310081c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
