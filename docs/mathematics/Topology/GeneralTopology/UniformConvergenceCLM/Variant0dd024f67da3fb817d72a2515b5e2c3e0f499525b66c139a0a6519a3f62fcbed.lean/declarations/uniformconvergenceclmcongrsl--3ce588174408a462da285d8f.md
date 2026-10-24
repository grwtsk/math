# uniformConvergenceCLMCongrSL

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a25a45c907e13e8a24417bf07be76c3d4dcee87cf2cfd415741898defd445371",
  "kind": "def",
  "lexical_name": "uniformConvergenceCLMCongrSL",
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
  "slug": "uniformconvergenceclmcongrsl--3ce588174408a462da285d8f",
  "source": {
    "blob": "2895b3845de48cd019222a498552f7c119aeefe2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 620,
    "line": 603,
    "path": "GRWTSK/Topology/GeneralTopology/UniformConvergenceCLM/Variant0dd024f67da3fb817d72a2515b5e2c3e0f499525b66c139a0a6519a3f62fcbed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3ce588174408a462da285d8f55f71587bb55c6c29d04e7f04a01fb5d58eff088",
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

Occurrence: `declaration:a25a45c907e13e8a24417bf07be76c3d4dcee87cf2cfd415741898defd445371`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 603–620.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def uniformConvergenceCLMCongrSL (e₁₂ : E ≃SL[σ₁₂] F) (e₄₃ : H ≃SL[σ₄₃] G)
    (𝔖 : Set (Set E)) (𝔗 : Set (Set F))
    (h : ∀ t, t ∈ 𝔗 ↔ e₁₂ ⁻¹' t ∈ 𝔖) :
    (E →SLᵤ[σ₁₄, 𝔖] H) ≃SL[σ₄₃] (F →SLᵤ[σ₂₃, 𝔗] G) :=
  haveI mapsto₁ : MapsTo (e₁₂ '' ·) 𝔖 𝔗 := fun s ↦ by simp [h, preimage_image_eq _ e₁₂.injective]
  haveI mapsto₂ : MapsTo (e₁₂.symm '' ·) 𝔗 𝔖 := fun t ↦ by simp [h, e₁₂.image_symm_eq_preimage]
  { e₁₂.arrowCongrEquivₛₗ e₄₃ with
    -- given explicitly to help `simps`
    toFun := fun L => (e₄₃ : H →SL[σ₄₃] G).comp (L.comp (e₁₂.symm : F →SL[σ₂₁] E))
    -- given explicitly to help `simps`
    invFun := fun L => (e₄₃.symm : G →SL[σ₃₄] H).comp (L.comp (e₁₂ : E →SL[σ₁₂] F))
    continuous_toFun := ((postcompUniformConvergenceCLM _ e₄₃.toContinuousLinearMap).comp
      (precompUniformConvergenceCLM H _ _ e₁₂.symm.toContinuousLinearMap mapsto₂)).continuous
    continuous_invFun :=
      ((precompUniformConvergenceCLM H _ _ e₁₂.toContinuousLinearMap mapsto₁).comp
        (postcompUniformConvergenceCLM _ e₄₃.symm.toContinuousLinearMap)).continuous }

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UniformConvergenceCLM/Variant0dd024f67da3fb817d72a2515b5e2c3e0f499525b66c139a0a6519a3f62fcbed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformConvergenceCLM/Variant0dd024f67da3fb817d72a2515b5e2c3e0f499525b66c139a0a6519a3f62fcbed.lean#L603).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2895b3845de48cd019222a498552f7c119aeefe2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
