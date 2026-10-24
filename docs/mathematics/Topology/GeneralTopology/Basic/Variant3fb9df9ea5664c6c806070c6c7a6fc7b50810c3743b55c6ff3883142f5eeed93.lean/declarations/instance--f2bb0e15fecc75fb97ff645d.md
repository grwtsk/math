# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2b8ac7db201397d33c3a5b7a736228062e6f4677323dc72c4b35c44840e903b7",
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
  "slug": "instance--f2bb0e15fecc75fb97ff645d",
  "source": {
    "blob": "3de600b6955f74106ab6e7089f9b0c12cd0ec43f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 181,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant3fb9df9ea5664c6c806070c6c7a6fc7b50810c3743b55c6ff3883142f5eeed93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f2bb0e15fecc75fb97ff645de915f8ce9ace366bc97dc5ac62ce79755312fc07",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant3fb9df9ea5664c6c806070c6c7a6fc7b50810c3743b55c6ff3883142f5eeed93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2b8ac7db201397d33c3a5b7a736228062e6f4677323dc72c4b35c44840e903b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [Group G] [Group H] [TopologicalSpace G] [MulDistribMulAction H G]
    [ContinuousConstSMul H G] {𝒢 : Subgroup G} (h : H) [DiscreteTopology 𝒢] :
    DiscreteTopology ↑(h • 𝒢) := by
  simp only [← SetLike.coe_sort_coe, ← isDiscrete_iff_discreteTopology] at *
  refine IsDiscrete.image_of_isOpenMap ‹_› ?_ fun x y ↦ by simp
  apply IsOpenMap.of_inverse (f' := fun x ↦ h⁻¹ • x) (continuous_const_smul _) <;>
  · intro x
    simp

variable [TopologicalSpace G] [Inv G] [Mul G]

/-- Conjugation is jointly continuous on `G × G` when both `mul` and `inv` are continuous. -/
@[to_additive continuous_addConj_prod
  /-- Conjugation is jointly continuous on `G × G` when both `add` and `neg` are continuous. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant3fb9df9ea5664c6c806070c6c7a6fc7b50810c3743b55c6ff3883142f5eeed93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant3fb9df9ea5664c6c806070c6c7a6fc7b50810c3743b55c6ff3883142f5eeed93.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3de600b6955f74106ab6e7089f9b0c12cd0ec43f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
