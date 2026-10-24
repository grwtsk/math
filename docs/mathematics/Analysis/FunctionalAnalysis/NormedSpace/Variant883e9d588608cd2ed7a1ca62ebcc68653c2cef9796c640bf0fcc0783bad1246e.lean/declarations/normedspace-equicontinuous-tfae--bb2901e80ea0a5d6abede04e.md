# NormedSpace.equicontinuous_TFAE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "91ea19160ef036dcc670c8e0c9a67c85bdb26104",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 331,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/88/883e9d588608cd2ed7a1ca62ebcc68653c2cef9796c640bf0fcc0783bad1246e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4a6251d2-5d3d-0672-3904-2b992309aaab",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c2a68f95-00c0-0508-3cee-13e62455d665",
  "kind": "theorem",
  "lexical_name": "NormedSpace.equicontinuous_TFAE",
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
  "slug": "normedspace-equicontinuous-tfae--bb2901e80ea0a5d6abede04e",
  "source": {
    "blob": "91ea19160ef036dcc670c8e0c9a67c85bdb26104",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 385,
    "line": 331,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/NormedSpace/Variant883e9d588608cd2ed7a1ca62ebcc68653c2cef9796c640bf0fcc0783bad1246e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb2901e80ea0a5d6abede04e8de262d71223ae043d92a7e72a3381fd911ad8f0",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/NormedSpace/Variant883e9d588608cd2ed7a1ca62ebcc68653c2cef9796c640bf0fcc0783bad1246e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c2a68f95-00c0-0508-3cee-13e62455d665`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–385.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem NormedSpace.equicontinuous_TFAE : List.TFAE
    [ EquicontinuousAt ((↑) ∘ f) 0,
      Equicontinuous ((↑) ∘ f),
      UniformEquicontinuous ((↑) ∘ f),
      ∃ C, ∀ i x, ‖f i x‖ ≤ C * ‖x‖,
      ∃ C ≥ 0, ∀ i x, ‖f i x‖ ≤ C * ‖x‖,
      ∃ C, ∀ i, ‖f i‖ ≤ C,
      ∃ C ≥ 0, ∀ i, ‖f i‖ ≤ C,
      BddAbove (Set.range (‖f ·‖)),
      (⨆ i, (‖f i‖₊ : ENNReal)) < ⊤ ] := by
  -- `1 ↔ 2 ↔ 3` follows from `uniformEquicontinuous_of_equicontinuousAt_zero`
  tfae_have 1 → 3 := uniformEquicontinuous_of_equicontinuousAt_zero f
  tfae_have 3 → 2 := UniformEquicontinuous.equicontinuous
  tfae_have 2 → 1 := fun H ↦ H 0
  -- `4 ↔ 5 ↔ 6 ↔ 7 ↔ 8 ↔ 9` is morally trivial, we just have to use a lot of rewriting
  -- and `congr` lemmas
  tfae_have 4 ↔ 5 := by
    rw [exists_ge_and_iff_exists]
    exact fun C₁ C₂ hC ↦ forall₂_imp fun i x ↦ le_trans' <| by gcongr
  tfae_have 5 ↔ 7 := by
    refine exists_congr (fun C ↦ and_congr_right fun hC ↦ forall_congr' fun i ↦ ?_)
    rw [ContinuousLinearMap.opNorm_le_iff hC]
  tfae_have 7 ↔ 8 := by
    simp_rw [bddAbove_iff_exists_ge (0 : ℝ), Set.forall_mem_range]
  tfae_have 6 ↔ 8 := by
    simp_rw [bddAbove_def, Set.forall_mem_range]
  tfae_have 8 ↔ 9 := by
    rw [ENNReal.iSup_coe_lt_top, ← NNReal.bddAbove_coe, ← Set.range_comp]
    rfl
  -- `3 ↔ 4` is the interesting part of the result. It is essentially a combination of
  -- `WithSeminorms.uniformEquicontinuous_iff_exists_continuous_seminorm` which turns
  -- equicontinuity into existence of some continuous seminorm and
  -- `Seminorm.bound_of_continuous_normedSpace` which characterize such seminorms.
  tfae_have 3 ↔ 4 := by
    refine ((norm_withSeminorms 𝕜₂ F).uniformEquicontinuous_iff_exists_continuous_seminorm _).trans
      ?_
    rw [forall_const]
    constructor
    · intro ⟨p, hp, hpf⟩
      rcases p.bound_of_continuous_normedSpace hp with ⟨C, -, hC⟩
      exact ⟨C, fun i x ↦ (hpf i x).trans (hC x)⟩
    · intro ⟨C, hC⟩
      refine ⟨C.toNNReal • normSeminorm 𝕜 E,
        ((norm_withSeminorms 𝕜 E).continuous_seminorm 0).const_smul C.toNNReal, fun i x ↦ ?_⟩
      exact (hC i x).trans (mul_le_mul_of_nonneg_right (C.le_coe_toNNReal) (norm_nonneg x))
  tfae_finish

end Equicontinuous

section single

variable {ι : Type*} [Fintype ι] [DecidableEq ι]
    (𝕜 : Type*) [NontriviallyNormedField 𝕜] (E : ι → Type*)

/-- The injection `x ↦ Pi.single i x` as a linear isometry. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/NormedSpace/Variant883e9d588608cd2ed7a1ca62ebcc68653c2cef9796c640bf0fcc0783bad1246e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/NormedSpace/Variant883e9d588608cd2ed7a1ca62ebcc68653c2cef9796c640bf0fcc0783bad1246e.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `91ea19160ef036dcc670c8e0c9a67c85bdb26104` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
