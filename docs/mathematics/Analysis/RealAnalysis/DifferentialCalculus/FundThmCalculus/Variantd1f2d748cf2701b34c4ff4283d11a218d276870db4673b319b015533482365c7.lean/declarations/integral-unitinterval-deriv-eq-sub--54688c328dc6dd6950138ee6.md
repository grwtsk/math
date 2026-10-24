# integral_unitInterval_deriv_eq_sub

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fb9579ad2b81dc1ed8c1145b9e26d1827d3c64ca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1173,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d1/d1f2d748cf2701b34c4ff4283d11a218d276870db4673b319b015533482365c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ccd23bcd-919c-1648-7d1d-8e9a38376839",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:743b88d6-1dc8-62f7-b468-49c5e1c7bb4e",
  "kind": "lemma",
  "lexical_name": "integral_unitInterval_deriv_eq_sub",
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
  "slug": "integral-unitinterval-deriv-eq-sub--54688c328dc6dd6950138ee6",
  "source": {
    "blob": "fb9579ad2b81dc1ed8c1145b9e26d1827d3c64ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1192,
    "line": 1173,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Variantd1f2d748cf2701b34c4ff4283d11a218d276870db4673b319b015533482365c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:54688c328dc6dd6950138ee63bd70f02d91f9d72c363bdcbf7f38d38ca923031",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Variantd1f2d748cf2701b34c4ff4283d11a218d276870db4673b319b015533482365c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:743b88d6-1dc8-62f7-b468-49c5e1c7bb4e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1173–1192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma integral_unitInterval_deriv_eq_sub [RCLike 𝕜] [NormedSpace 𝕜 E] [IsScalarTower ℝ 𝕜 E]
    {f f' : 𝕜 → E} {z₀ z₁ : 𝕜}
    (hcont : ContinuousOn (fun t : ℝ ↦ f' (z₀ + t • z₁)) (Set.Icc 0 1))
    (hderiv : ∀ t ∈ Set.Icc (0 : ℝ) 1, HasDerivAt f (f' (z₀ + t • z₁)) (z₀ + t • z₁)) :
    z₁ • ∫ t in (0 : ℝ)..1, f' (z₀ + t • z₁) = f (z₀ + z₁) - f z₀ := by
  let γ (t : ℝ) : 𝕜 := z₀ + t • z₁
  have hint : IntervalIntegrable (z₁ • (f' ∘ γ)) MeasureTheory.volume 0 1 :=
    (ContinuousOn.const_smul hcont z₁).intervalIntegrable_of_Icc zero_le_one
  have hderiv' (t) (ht : t ∈ Set.uIcc (0 : ℝ) 1) : HasDerivAt (f ∘ γ) (z₁ • (f' ∘ γ) t) t := by
    refine (hderiv t <| (Set.uIcc_of_le (α := ℝ) zero_le_one).symm ▸ ht).scomp t <| .const_add _ ?_
    simp [hasDerivAt_iff_isLittleO, sub_smul]
  convert (integral_eq_sub_of_hasDerivAt hderiv' hint) using 1
  · simp_rw [← integral_smul, Function.comp_apply, γ]
  · simp only [γ, Function.comp_apply, one_smul, zero_smul, add_zero]

/-!
### Automatic integrability for nonnegative derivatives
-/

/-- When the right derivative of a function is nonnegative, then it is automatically integrable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Variantd1f2d748cf2701b34c4ff4283d11a218d276870db4673b319b015533482365c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/FundThmCalculus/Variantd1f2d748cf2701b34c4ff4283d11a218d276870db4673b319b015533482365c7.lean#L1173).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb9579ad2b81dc1ed8c1145b9e26d1827d3c64ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
