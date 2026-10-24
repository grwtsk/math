# gammaSideChi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "07b64e0a553cf16d7498fb2ec52901ec7537d4ab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 147,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c94f43c09f47893bf9ba6afb5e668c8482d6878c1a2189ba12582a393c5dca8e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e44f4f0b-293d-72e7-5ff6-6aa9ef960f5f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e4bc4c67-27d7-9303-c620-57054e37be50",
  "kind": "theorem",
  "lexical_name": "gammaSideChi",
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
  "slug": "gammasidechi--b802545d7a8cfb627db8119d",
  "source": {
    "blob": "07b64e0a553cf16d7498fb2ec52901ec7537d4ab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 147,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaSideChi/Variantc94f43c09f47893bf9ba6afb5e668c8482d6878c1a2189ba12582a393c5dca8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b802545d7a8cfb627db8119de8304b674471b5e1c07628fa2eb9c3a4a1cb84e1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaSideChi/Variantc94f43c09f47893bf9ba6afb5e668c8482d6878c1a2189ba12582a393c5dca8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e4bc4c67-27d7-9303-c620-57054e37be50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem gammaSideChi {T₁ T₂ : ℝ} (_h0 : 0 < T₁) (_h0' : 0 < T₂) :
    (1 / Real.pi) * (RvM.halfContour (logDeriv (archChi q κ)) T₁ T₂).im =
      ∫ t in T₁..T₂, muq κ q t := by
  set F := logDeriv (archChi q κ) with hF
  have hrect : (Set.uIcc (1/2:ℝ) 2 ×ℂ Set.uIcc T₁ T₂) ⊆ rightHalfPlane := by
    rintro s ⟨hre, -⟩
    rw [Set.uIcc_of_le (by norm_num : (1/2:ℝ) ≤ 2)] at hre
    show 0 < s.re
    have := hre.1
    linarith [this]
  have hCG := Complex.integral_boundary_rect_eq_zero_of_differentiableOn F (1/2 + T₁ * I)
    (2 + T₂ * I) ((logDeriv_archChi_differentiableOn q κ).mono (by simpa using hrect))
  simp only [add_re, one_re, ofReal_re, mul_re, I_re, mul_zero, ofReal_im, I_im, mul_one, sub_self,
    add_zero, add_im, one_im, mul_im, zero_add, div_ofNat_re, div_ofNat_im, zero_div,
    re_ofNat, im_ofNat] at hCG
  have hhc : RvM.halfContour F T₁ T₂ = I * ∫ y : ℝ in T₁..T₂, F (1/2 + y * I) := by
    unfold RvM.halfContour
    have hthis := hCG
    simp only [smul_eq_mul] at hthis
    have hc : ((1/2 : ℝ) : ℂ) = (1/2 : ℂ) := by norm_num
    simp only [hc] at hthis
    linear_combination hthis
  rw [hhc, Complex.mul_im, Complex.I_re, Complex.I_im, zero_mul, one_mul, zero_add]
  have hcont : Continuous fun y : ℝ => F (1/2 + y * I) := by
    have hd := logDeriv_archChi_differentiableOn q κ
    have hmap : Continuous fun y : ℝ => ((1:ℂ)/2 + y * I) := by fun_prop
    refine (hd.continuousOn.comp_continuous hmap fun y => ?_)
    show 0 < ((1:ℂ)/2 + y * I).re
    simp
  rw [show ((∫ y : ℝ in T₁..T₂, F (1/2 + y * I)).re) = ∫ y : ℝ in T₁..T₂, (F (1/2 + y * I)).re from
    (Complex.reCLM.intervalIntegral_comp_comm (hcont.intervalIntegrable _ _)).symm]
  simp_rw [hF, re_logDeriv_archChi_half]
  rw [intervalIntegral.integral_const_mul]
  field_simp

end ThmE
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaSideChi/Variantc94f43c09f47893bf9ba6afb5e668c8482d6878c1a2189ba12582a393c5dca8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/GammaSideChi/Variantc94f43c09f47893bf9ba6afb5e668c8482d6878c1a2189ba12582a393c5dca8e.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07b64e0a553cf16d7498fb2ec52901ec7537d4ab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
