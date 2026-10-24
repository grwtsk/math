# zeroAtInftyContinuousMapClass.ofCompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5f7d7d61f2a96fff091e2be4e5bb78134118ad57da1baffc17f6bf3819198304",
  "kind": "def",
  "lexical_name": "zeroAtInftyContinuousMapClass.ofCompact",
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
  "slug": "zeroatinftycontinuousmapclass-ofcompact--7083801bc135eedbafd2a459",
  "source": {
    "blob": "0868213798a1c636cc1a0cbcb614e9944f61bd1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 152,
    "path": "GRWTSK/Topology/GeneralTopology/ZeroAtInfty/Variantcf3659e2164945047346b032c333847df497d9ce9bc98658d59e99039eafd80b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7083801bc135eedbafd2a459f95a19a28646f0c9debf3fafa1ba6e1e51cc6e97",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ZeroAtInfty/Variantcf3659e2164945047346b032c333847df497d9ce9bc98658d59e99039eafd80b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5f7d7d61f2a96fff091e2be4e5bb78134118ad57da1baffc17f6bf3819198304`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def zeroAtInftyContinuousMapClass.ofCompact {G : Type*} [ContinuousMapClass G α β]
    [CompactSpace α] : ZeroAtInftyContinuousMapClass G α β where
  coe g := g
  coe_injective' f g h := FunLike.coe_fn_eq.mp h
  map_continuous := map_continuous
  zero_at_infty := by simp
#align zero_at_infty_continuous_map.zero_at_infty_continuous_map_class.of_compact ZeroAtInftyContinuousMap.zeroAtInftyContinuousMapClass.ofCompact

end Basics

/-! ### Algebraic structure

Whenever `β` has suitable algebraic structure and a compatible topological structure, then
`C₀(α, β)` inherits a corresponding algebraic structure. The primary exception to this is that
`C₀(α, β)` will not have a multiplicative identity.
-/


section AlgebraicStructure

variable [TopologicalSpace β] (x : α)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ZeroAtInfty/Variantcf3659e2164945047346b032c333847df497d9ce9bc98658d59e99039eafd80b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ZeroAtInfty/Variantcf3659e2164945047346b032c333847df497d9ce9bc98658d59e99039eafd80b.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0868213798a1c636cc1a0cbcb614e9944f61bd1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
