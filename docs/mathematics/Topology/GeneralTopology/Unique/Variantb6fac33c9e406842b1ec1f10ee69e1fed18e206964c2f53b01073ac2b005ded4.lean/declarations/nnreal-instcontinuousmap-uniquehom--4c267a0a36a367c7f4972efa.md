# NNReal.instContinuousMap.UniqueHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:43df797d1e9a36cd66805e3b67ea4c9cc69d64eabf2a5dd502b0ab19bdebc1b7",
  "kind": "instance",
  "lexical_name": "NNReal.instContinuousMap.UniqueHom",
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
  "slug": "nnreal-instcontinuousmap-uniquehom--4c267a0a36a367c7f4972efa",
  "source": {
    "blob": "308e0ac542c4dfd28e7a09452f03f1499653d46c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 172,
    "path": "GRWTSK/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4c267a0a36a367c7f4972efa212cef458581075de54062c297fe3160d03c4437",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:43df797d1e9a36cd66805e3b67ea4c9cc69d64eabf2a5dd502b0ab19bdebc1b7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 172–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance NNReal.instContinuousMap.UniqueHom [T2Space A] :
    ContinuousMap.UniqueHom ℝ≥0 A where
  eq_of_continuous_of_map_id s hs φ ψ hφ hψ h := by
    let s' : Set ℝ := (↑) '' s
    let e : s ≃ₜ s' :=
      { toFun := Subtype.map (↑) (by simp [s'])
        invFun := Subtype.map Real.toNNReal (by simp [s'])
        left_inv := fun _ ↦ by ext; simp
        right_inv := fun x ↦ by
          ext
          obtain ⟨y, -, hy⟩ := x.2
          simpa using hy ▸ NNReal.coe_nonneg y
        continuous_toFun := continuous_coe.subtype_map (by simp [s'])
        continuous_invFun := continuous_real_toNNReal.subtype_map (by simp [s']) }
    have (ξ : C(s, ℝ≥0) →⋆ₐ[ℝ≥0] A) (hξ : Continuous ξ) :
        (let ξ' := ξ.realContinuousMapOfNNReal.comp <| ContinuousMap.compStarAlgHom' ℝ ℝ e
        Continuous ξ' ∧ ξ' (.restrict s' <| .id ℝ) = ξ (.restrict s <| .id ℝ≥0)) := by
      intro ξ'
      refine ⟨ξ.continuous_realContinuousMapOfNNReal hξ |>.comp <|
        ContinuousMap.continuous_precomp _, ?_⟩
      exact ξ.realContinuousMapOfNNReal_apply_comp_toReal (.restrict s <| .id ℝ≥0)
    obtain ⟨hφ', hφ_id⟩ := this φ hφ
    obtain ⟨hψ', hψ_id⟩ := this ψ hψ
    have hs' : CompactSpace s' := e.compactSpace
    have h' := ContinuousMap.UniqueHom.eq_of_continuous_of_map_id s' _ _ hφ' hψ'
      (hφ_id ▸ hψ_id ▸ h)
    have h'' := congr($(h').comp <| ContinuousMap.compStarAlgHom' ℝ ℝ (e.symm : C(s', s)))
    have : (ContinuousMap.compStarAlgHom' ℝ ℝ (e : C(s, s'))).comp
        (ContinuousMap.compStarAlgHom' ℝ ℝ (e.symm : C(s', s))) = StarAlgHom.id _ _ := by
      ext1; simp
    simp only [StarAlgHom.comp_assoc, this, StarAlgHom.comp_id] at h''
    exact StarAlgHom.realContinuousMapOfNNReal_injective h''

end NNReal

end UniqueUnital

section UniqueNonUnital

section RCLike

variable {𝕜 A : Type*} [RCLike 𝕜]

open NonUnitalStarAlgebra in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Unique/Variantb6fac33c9e406842b1ec1f10ee69e1fed18e206964c2f53b01073ac2b005ded4.lean#L172).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `308e0ac542c4dfd28e7a09452f03f1499653d46c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
