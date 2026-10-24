# postcompUniformConvergenceCLM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:71d1cf7b766b1da55aa47fb44efbaef0a34be40e9b4383838e888ed27fb287df",
  "kind": "def",
  "lexical_name": "postcompUniformConvergenceCLM",
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
  "slug": "postcompuniformconvergenceclm--bede6ea07993d5ca57d84cc9",
  "source": {
    "blob": "2895b3845de48cd019222a498552f7c119aeefe2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 544,
    "line": 513,
    "path": "GRWTSK/Topology/GeneralTopology/UniformConvergenceCLM/Variant0dd024f67da3fb817d72a2515b5e2c3e0f499525b66c139a0a6519a3f62fcbed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bede6ea07993d5ca57d84cc9ac46b7a9e5fb5e62790606be1a3fede090996457",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformConvergenceCLM/Variant0dd024f67da3fb817d72a2515b5e2c3e0f499525b66c139a0a6519a3f62fcbed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:71d1cf7b766b1da55aa47fb44efbaef0a34be40e9b4383838e888ed27fb287df`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 513–544.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def postcompUniformConvergenceCLM [IsTopologicalAddGroup F] [IsTopologicalAddGroup G]
    [ContinuousConstSMul 𝕜₃ G] [ContinuousConstSMul 𝕜₂ F] (L : F →SL[τ] G) :
    (E →SLᵤ[σ, 𝔖] F) →SL[τ] (E →SLᵤ[ρ, 𝔖] G) where
  toFun f := L.comp f
  map_add' := comp_add L
  map_smul' := comp_smulₛₗ L
  cont := by
    let : UniformSpace G := IsTopologicalAddGroup.rightUniformSpace G
    have : IsUniformAddGroup G := isUniformAddGroup_of_addCommGroup
    let : UniformSpace F := IsTopologicalAddGroup.rightUniformSpace F
    have : IsUniformAddGroup F := isUniformAddGroup_of_addCommGroup
    rw [(UniformConvergenceCLM.isEmbedding_coeFn _ _ _).continuous_iff]
    exact
      (UniformOnFun.postcomp_uniformContinuous L.uniformContinuous).continuous.comp
        (UniformConvergenceCLM.isEmbedding_coeFn _ _ _).continuous

end ContinuousLinearMap

/-! ### Continuous linear equivalences -/

section Pi

open scoped UniformConvergenceCLM

variable (𝕜 : Type*) [NormedField 𝕜] {E ι : Type*} (F : ι → Type*)
  [AddCommGroup E] [Module 𝕜 E] [TopologicalSpace E]
  [∀ i, AddCommGroup (F i)] [∀ i, Module 𝕜 (F i)] [∀ i, TopologicalSpace (F i)]
  [∀ i, IsTopologicalAddGroup (F i)] [∀ i, ContinuousConstSMul 𝕜 (F i)]

set_option backward.isDefEq.respectTransparency.types false in
/-- `ContinuousLinearMap.pi`, upgraded to a continuous linear equivalence between
`Π i, E →Lᵤ[𝕜, 𝔖] F i` and `E →Lᵤ[𝕜, 𝔖] Π i, F i`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UniformConvergenceCLM/Variant0dd024f67da3fb817d72a2515b5e2c3e0f499525b66c139a0a6519a3f62fcbed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformConvergenceCLM/Variant0dd024f67da3fb817d72a2515b5e2c3e0f499525b66c139a0a6519a3f62fcbed.lean#L513).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2895b3845de48cd019222a498552f7c119aeefe2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
