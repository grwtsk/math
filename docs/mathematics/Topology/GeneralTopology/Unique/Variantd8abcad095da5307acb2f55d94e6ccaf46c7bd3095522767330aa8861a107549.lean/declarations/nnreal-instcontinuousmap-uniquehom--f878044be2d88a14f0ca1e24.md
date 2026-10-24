# NNReal.instContinuousMap.UniqueHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b7915fe1feb594c11f45f370c0ee5d132417d51bde84ba33093699c0f7b41f14",
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
  "slug": "nnreal-instcontinuousmap-uniquehom--f878044be2d88a14f0ca1e24",
  "source": {
    "blob": "d016c978765f37ae7e2d105f4336d6a5a50bcc6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 184,
    "path": "GRWTSK/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f878044be2d88a14f0ca1e24d93922cac403a8ecd27c832daa2c2518bee4e5d8",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b7915fe1feb594c11f45f370c0ee5d132417d51bde84ba33093699c0f7b41f14`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance NNReal.instContinuousMap.UniqueHom [T2Space A] :
    ContinuousMap.UniqueHom ℝ≥0 A where
  eq_of_continuous_of_map_id s hs φ ψ hφ hψ h := by
    let s' : Set ℝ := (↑) '' s
    let e : s ≃ₜ s' := NNReal.isEmbedding_coe.homeomorphImage s
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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Unique/Variantd8abcad095da5307acb2f55d94e6ccaf46c7bd3095522767330aa8861a107549.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d016c978765f37ae7e2d105f4336d6a5a50bcc6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
