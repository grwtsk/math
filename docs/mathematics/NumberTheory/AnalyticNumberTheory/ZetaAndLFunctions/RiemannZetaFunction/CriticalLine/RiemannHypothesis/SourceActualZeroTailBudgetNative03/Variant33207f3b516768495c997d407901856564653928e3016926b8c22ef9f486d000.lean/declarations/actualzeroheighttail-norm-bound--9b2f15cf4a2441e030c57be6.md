# actualZeroHeightTail_norm_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:45f82352-f65f-66d8-2016-b212c2d82d27",
  "kind": "theorem",
  "lexical_name": "actualZeroHeightTail_norm_bound",
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
  "slug": "actualzeroheighttail-norm-bound--9b2f15cf4a2441e030c57be6",
  "source": {
    "blob": "3b092007f4a7f16d0f049f30f11ed3bc35fb130d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 178,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroTailBudgetNative03/Variant33207f3b516768495c997d407901856564653928e3016926b8c22ef9f486d000.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b2f15cf4a2441e030c57be6ed55bf7c0a747c038dca6b115c544880187f3236",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroTailBudgetNative03/Variant33207f3b516768495c997d407901856564653928e3016926b8c22ef9f486d000.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:45f82352-f65f-66d8-2016-b212c2d82d27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 178–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualZeroHeightTail_norm_bound :
    ∃ A0 : ℝ, 1 ≤ A0 ∧ ∀ A R : ℝ, 1 ≤ A → 4 ≤ R →
      ‖actualZeroHeightTail A R‖ ≤
        2 * actualZeroTailWeightConstant * A0 * Real.exp A * (Real.log R + 2) /
          (A ^ 9 * R ^ 5) := by
  obtain ⟨A0, hA0, hcount⟩ := actualZeroSixTail_count_bound
  refine ⟨A0, hA0, fun A R hA hR => ?_⟩
  obtain ⟨hsm, hb⟩ := hcount R hR
  have hZ := source_normalization_pos A hA
  have hZl := actualBumpNormalization_lower A hA
  let coeff : ℝ := actualZeroTailWeightConstant * Real.exp A / A ^ 9
  have hc : 0 ≤ coeff := by dsimp [coeff, actualZeroTailWeightConstant]; positivity
  have hpoint (ρ : (zetaZeros zetaSeam).carrier) :
      ‖if R ≤ |(ρ : ℂ).im| then
        ((zetaZeros zetaSeam).mult ρ : ℂ) * actualInitialPrimeMellin A ρ else 0‖ ≤
      coeff * (if R ≤ |(ρ : ℂ).im| then
        ((zetaZeros zetaSeam).mult ρ : ℝ) / |(ρ : ℂ).im| ^ 6 else 0) := by
    by_cases hρ : R ≤ |(ρ : ℂ).im|
    · simp only [hρ, if_true, norm_mul, Complex.norm_natCast]
      have hw := actualInitialPrimeMellin_strip_norm_le A ρ hA
        ((zetaZeros zetaSeam).strip _ ρ.2) (show 1 ≤ |(ρ : ℂ).im| by linarith)
      have hn : ‖actualInitialPrimeMellin A ρ‖ ≤ coeff / |(ρ : ℂ).im| ^ 6 := by
        refine hw.trans ?_
        dsimp [coeff, actualZeroTailWeightConstant]
        have hh : (sourceNormalization A)⁻¹ ≤ (4096 / 109395 : ℝ)⁻¹ :=
          inv_anti₀ (by norm_num) hZl
        have hm := mul_le_mul_of_nonneg_right hh
          (show 0 ≤ 4 * (204288 : ℝ) ^ 2 * Real.exp A / (A ^ 9 * |(ρ : ℂ).im| ^ 6)
            by positivity)
        convert hm using 1 <;> ring
      have hh := mul_le_mul_of_nonneg_left hn
        (show 0 ≤ ((zetaZeros zetaSeam).mult ρ : ℝ) by positivity)
      convert hh using 1 <;> ring
    · simp only [hρ, if_false, norm_zero, mul_zero, le_refl]
  have ht := tsum_of_norm_bounded (hsm.mul_left coeff).hasSum hpoint
  unfold actualZeroHeightTail
  calc
    _ ≤ coeff * actualZeroSixTail R := by
      simpa only [tsum_mul_left, actualZeroSixTail] using ht
    _ ≤ coeff * (2 * A0 * (Real.log R + 2) / R ^ 5) :=
      mul_le_mul_of_nonneg_left hb hc
    _ = _ := by dsimp [coeff]; ring

end
end FormalResearch.RiemannHypothesis.SourceActualZeroTailBudget
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroTailBudgetNative03/Variant33207f3b516768495c997d407901856564653928e3016926b8c22ef9f486d000.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualZeroTailBudgetNative03/Variant33207f3b516768495c997d407901856564653928e3016926b8c22ef9f486d000.lean#L178).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3b092007f4a7f16d0f049f30f11ed3bc35fb130d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
