# Flow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0655239d7e9e6f39873fe542bec2b4e30a7156d9812a3c9456057f491d3044ec",
  "kind": "structure",
  "lexical_name": "Flow",
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
  "slug": "flow--3d2a5ad733ef5bcbbb4ccae0",
  "source": {
    "blob": "b0de0d25fe3960f304e036a277fdb1ddfd5e2a5b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 85,
    "path": "GRWTSK/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3d2a5ad733ef5bcbbb4ccae0e0575182cf9f268bf00ec9830e8dc54b02ac7e85",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0655239d7e9e6f39873fe542bec2b4e30a7156d9812a3c9456057f491d3044ec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Flow [TopologicalSpace τ] [TopologicalSpace α] [AddZero τ] where
  /-- The map `τ → α → α` underlying a flow of `τ` on `α`. -/
  toFun : τ → α → α
  cont' : Continuous (uncurry toFun)
  map_add' : ∀ t₁ t₂ x, toFun (t₁ + t₂) x = toFun t₁ (toFun t₂ x)
  map_zero' : ∀ x, toFun 0 x = x

namespace Flow

variable [TopologicalSpace τ] [TopologicalSpace α]

section AddZero

variable [AddZero τ] (ϕ : Flow τ α)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Flow/Variant699d26276fb429c6159bb0c1d518bcd0a1a01d1cfb769f46a4a5131b2c002cfb.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0de0d25fe3960f304e036a277fdb1ddfd5e2a5b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
