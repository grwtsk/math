# LocalPresentationAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:70510569d901bf049b7ff5031eafe02061031ce68249b707c533529b1ee7c8d6",
  "kind": "structure",
  "lexical_name": "LocalPresentationAt",
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
  "slug": "localpresentationat--9aee95669833dadbb8d3a95a",
  "source": {
    "blob": "72df890c93d70eb2965f0bd7ec30aded4a9b5cfd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 76,
    "path": "GRWTSK/Topology/GeneralTopology/LocalSourceTargetProperty/Varianta2a134370ac0f2d34405e4f07c0c53c6e335595d9eed21073688a3a5fe333b81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9aee95669833dadbb8d3a95ae98bf7dbd6660a96110f9c5bf8f4e6ca3d56932b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LocalSourceTargetProperty/Varianta2a134370ac0f2d34405e4f07c0c53c6e335595d9eed21073688a3a5fe333b81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:70510569d901bf049b7ff5031eafe02061031ce68249b707c533529b1ee7c8d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LocalPresentationAt (f : M → N) (x : M)
    (P : (M → N) → OpenPartialHomeomorph M H → OpenPartialHomeomorph N G → Prop) where
  /-- A choice of chart on the domain `M` of the local property `P` of `f` at `x`:
  w.r.t. this chart and `codChart`, `f` has the local property `P` at `x`. -/
  domChart : OpenPartialHomeomorph M H
  /-- A choice of chart on the target `N` of the local property `P` of `f` at `x`:
  w.r.t. this chart and `domChart`, `f` has the local property `P` at `x`. -/
  codChart : OpenPartialHomeomorph N G
  mem_domChart_source : x ∈ domChart.source
  mem_codChart_source : f x ∈ codChart.source
  domChart_mem_maximalAtlas : domChart ∈ IsManifold.maximalAtlas I n M
  codChart_mem_maximalAtlas : codChart ∈ IsManifold.maximalAtlas J n N
  source_subset_preimage_source : domChart.source ⊆ f ⁻¹' codChart.source
  property : P f domChart codChart

variable (I J n) in
/-- The induced property by a local property `P`: it is satisfied for `f` at `x` iff there exist
charts `φ` and `ψ` of `M` and `N` around `x` and `f x`, respectively, such that `f` satisfies `P`
w.r.t. `φ` and `ψ`.

The motivating examples are smooth immersions and submersions: the corresponding condition is that
`f` look like the inclusion `u ↦ (u, 0)` (resp. a projection `(u, v) ↦ u`)
in the charts `φ` and `ψ`.
-/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LocalSourceTargetProperty/Varianta2a134370ac0f2d34405e4f07c0c53c6e335595d9eed21073688a3a5fe333b81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LocalSourceTargetProperty/Varianta2a134370ac0f2d34405e4f07c0c53c6e335595d9eed21073688a3a5fe333b81.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72df890c93d70eb2965f0bd7ec30aded4a9b5cfd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
