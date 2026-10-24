# instContinuousSMul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:06302dfe33df13945e432ff400781023747c9938b05029751b7e3035a9e717a2",
  "kind": "instance",
  "lexical_name": "instContinuousSMul",
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
  "slug": "instcontinuoussmul--a1a47d6c36290958660efce2",
  "source": {
    "blob": "d96bf9c9283d5b84177fcd19135b52765008cfb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 202,
    "line": 194,
    "path": "GRWTSK/Topology/GeneralTopology/Topology/Variant89df1ca74e32c5413dd26e4211399057a6e66da69406cfe92e37d3667c1a9817.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a1a47d6c36290958660efce2e5ebdd0df07e99ba5f6675289ebdd03411cf4946",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Topology/Variant89df1ca74e32c5413dd26e4211399057a6e66da69406cfe92e37d3667c1a9817.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:06302dfe33df13945e432ff400781023747c9938b05029751b7e3035a9e717a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 194–202.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instContinuousSMul [ContinuousSMul 𝕜 F] :
    ContinuousSMul 𝕜 (ContinuousMultilinearMap 𝕜 E F) :=
  letI := IsTopologicalAddGroup.toUniformSpace F
  haveI := isUniformAddGroup_of_addCommGroup (G := F)
  let φ : ContinuousMultilinearMap 𝕜 E F →ₗ[𝕜] (Π i, E i) → F :=
    { toFun := (↑), map_add' := fun _ _ ↦ rfl, map_smul' := fun _ _ ↦ rfl }
  UniformOnFun.continuousSMul_induced_of_image_bounded _ _ _ _ φ
    isEmbedding_toUniformOnFun.isInducing fun _ _ hu ↦ hu.image_multilinear _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Topology/Variant89df1ca74e32c5413dd26e4211399057a6e66da69406cfe92e37d3667c1a9817.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Topology/Variant89df1ca74e32c5413dd26e4211399057a6e66da69406cfe92e37d3667c1a9817.lean#L194).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d96bf9c9283d5b84177fcd19135b52765008cfb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
