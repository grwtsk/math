# archimedeanValue_sub_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5d12d957f4a26218f547185916842920cc84b2a8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 123,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/44/4453b0a91ea9a1d3f2e1d54122a31bb053046f17e1aaff7166eae47874f01b67.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4bcb0da8-3317-c6f8-e7ee-83a305345f2d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f8c6196c-c9ac-8ff7-30f3-fac695b8e898",
  "kind": "theorem",
  "lexical_name": "archimedeanValue_sub_le",
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
  "slug": "archimedeanvalue-sub-le--ceaf992a9116d2f2e427f547",
  "source": {
    "blob": "5d12d957f4a26218f547185916842920cc84b2a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 123,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant4453b0a91ea9a1d3f2e1d54122a31bb053046f17e1aaff7166eae47874f01b67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ceaf992a9116d2f2e427f5479935d5190d0e9dc737e708c5a19de58088a5d9f6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant4453b0a91ea9a1d3f2e1d54122a31bb053046f17e1aaff7166eae47874f01b67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f8c6196c-c9ac-8ff7-30f3-fac695b8e898`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 123–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem archimedeanValue_sub_le {f g : ℝ → ℝ}
    (hf : Integrable f volume) (hg : Integrable g volume)
    (hwf : Integrable (fun ξ ↦ logarithmicWeight ξ * Complex.normSq (sourceFourier f ξ)))
    (hwg : Integrable (fun ξ ↦ logarithmicWeight ξ * Complex.normSq (sourceFourier g ξ)))
    (hwe : Integrable (fun ξ ↦ logarithmicWeight ξ *
      Complex.normSq (sourceFourier (fun x ↦ f x - g x) ξ))) :
    |archimedeanValue f - archimedeanValue g| ≤
      (|archimedeanConstant| + 4) * logarithmicNorm (fun x ↦ f x - g x) *
        (logarithmicNorm f + logarithmicNorm g) := by
  have hfirst := weightedFourierNorm_memLp_two hf hwf
  have hsecond := weightedFourierNorm_memLp_two hg hwg
  have hfg : Integrable (fun x ↦ f x - g x) volume := hf.sub hg
  have herror := weightedFourierNorm_memLp_two hfg hwe
  have harchFirst := archimedean_integrable hf hwf
  have harchSecond := archimedean_integrable hg hwg
  have harchError : Integrable (fun ξ ↦
      (archimedeanMultiplier ξ * Complex.normSq (sourceFourier f ξ) -
        archimedeanMultiplier ξ * Complex.normSq (sourceFourier g ξ)) / (2 * Real.pi)) := by
    simpa only [Pi.sub_apply] using (harchFirst.sub harchSecond).div_const (2 * Real.pi)
  have hmajor : Integrable (fun ξ ↦
      (|archimedeanConstant| + 4) * weightedFourierNorm (fun x ↦ f x - g x) ξ *
        (weightedFourierNorm f ξ + weightedFourierNorm g ξ)) volume := by
    apply ((herror.integrable_mul (hfirst.add hsecond)).const_mul
      (|archimedeanConstant| + 4)).congr
    exact Filter.Eventually.of_forall fun ξ ↦ by
      simp only [Pi.mul_apply, Pi.add_apply]
      ring
  have hcs : (∫ ξ, weightedFourierNorm (fun x ↦ f x - g x) ξ *
      (weightedFourierNorm f ξ + weightedFourierNorm g ξ)) ≤
      logarithmicNorm (fun x ↦ f x - g x) * (logarithmicNorm f + logarithmicNorm g) := by
    calc
      _ = (∫ ξ, weightedFourierNorm (fun x ↦ f x - g x) ξ * weightedFourierNorm f ξ) +
          ∫ ξ, weightedFourierNorm (fun x ↦ f x - g x) ξ * weightedFourierNorm g ξ := by
        simp_rw [mul_add]
        exact integral_add (herror.integrable_mul hfirst) (herror.integrable_mul hsecond)
      _ ≤ lpNorm (weightedFourierNorm (fun x ↦ f x - g x)) 2 volume *
          lpNorm (weightedFourierNorm f) 2 volume +
          lpNorm (weightedFourierNorm (fun x ↦ f x - g x)) 2 volume *
          lpNorm (weightedFourierNorm g) 2 volume :=
        add_le_add ((le_abs_self _).trans (integral_mul_abs_le herror hfirst))
          ((le_abs_self _).trans (integral_mul_abs_le herror hsecond))
      _ = _ := by
        rw [lpNorm_weightedFourierNorm hfg hwe, lpNorm_weightedFourierNorm hf hwf,
          lpNorm_weightedFourierNorm hg hwg]
        ring
  have hidentity : archimedeanValue f - archimedeanValue g =
      ∫ ξ, (archimedeanMultiplier ξ * Complex.normSq (sourceFourier f ξ) -
        archimedeanMultiplier ξ * Complex.normSq (sourceFourier g ξ)) / (2 * Real.pi) := by
    rw [archimedeanValue, archimedeanValue, ← sub_div,
      ← integral_sub harchFirst harchSecond, integral_div]
  calc
    |archimedeanValue f - archimedeanValue g| =
        |∫ ξ, (archimedeanMultiplier ξ * Complex.normSq (sourceFourier f ξ) -
          archimedeanMultiplier ξ * Complex.normSq (sourceFourier g ξ)) / (2 * Real.pi)| :=
      congrArg abs hidentity
    _ ≤ ∫ ξ, ‖(archimedeanMultiplier ξ * Complex.normSq (sourceFourier f ξ) -
        archimedeanMultiplier ξ * Complex.normSq (sourceFourier g ξ)) / (2 * Real.pi)‖ := by
      simpa only [Real.norm_eq_abs] using norm_integral_le_integral_norm
        (fun ξ ↦ (archimedeanMultiplier ξ * Complex.normSq (sourceFourier f ξ) -
          archimedeanMultiplier ξ * Complex.normSq (sourceFourier g ξ)) / (2 * Real.pi))
    _ ≤ ∫ ξ, (|archimedeanConstant| + 4) * weightedFourierNorm (fun x ↦ f x - g x) ξ *
        (weightedFourierNorm f ξ + weightedFourierNorm g ξ) := by
      apply integral_mono harchError.norm hmajor
      intro ξ
      simpa only [Real.norm_eq_abs] using archimedean_difference_pointwise hf hg ξ
    _ = (|archimedeanConstant| + 4) * ∫ ξ, weightedFourierNorm (fun x ↦ f x - g x) ξ *
        (weightedFourierNorm f ξ + weightedFourierNorm g ξ) := by
      simp_rw [mul_assoc]
      rw [integral_const_mul]
    _ ≤ (|archimedeanConstant| + 4) *
        (logarithmicNorm (fun x ↦ f x - g x) * (logarithmicNorm f + logarithmicNorm g)) :=
      mul_le_mul_of_nonneg_left hcs (by positivity)
    _ = _ := by ring

end
end ZeroArchimedeanContinuity
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant4453b0a91ea9a1d3f2e1d54122a31bb053046f17e1aaff7166eae47874f01b67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant4453b0a91ea9a1d3f2e1d54122a31bb053046f17e1aaff7166eae47874f01b67.lean#L123).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d12d957f4a26218f547185916842920cc84b2a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
