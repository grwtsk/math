# classMean_two_insertions_error_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a8b41893-1121-7e3d-6bd5-fbcd6c591a17",
  "kind": "theorem",
  "lexical_name": "classMean_two_insertions_error_le",
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
  "slug": "classmean-two-insertions-error-le--b12d46242c640ae08b4d7341",
  "source": {
    "blob": "b5f80b70b49af1316f76b49a6cbfba65fdc5def4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 322,
    "line": 254,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedClassInsertion/Variant75ac315c9ee3f332a6dfcfe1764068733eb48c7361e3f0de8737404e47bf69fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b12d46242c640ae08b4d7341a0ffa7ee867cfb12192cc4bb17d76903461e3949",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedClassInsertion/Variant75ac315c9ee3f332a6dfcfe1764068733eb48c7361e3f0de8737404e47bf69fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a8b41893-1121-7e3d-6bd5-fbcd6c591a17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 254–322.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem classMean_two_insertions_error_le (A : ℝ) (u v : ℕ)
    (hA : 1 ≤ A) (hu : 1 ≤ u) (hv : 1 ≤ v)
    (hodd : Nat.Coprime 2 (u * v)) (hG : 8 ≤ ⌊Real.exp A⌋₊ / max u v) :
    let N := ⌊Real.exp A⌋₊
    let h := u * v
    let leftCutoff := N / max (2 * u) v
    let rightCutoff := N / max u (2 * v)
    let b := SquarefreeCount.finiteSquarefreeDensity (2 * h) (Nat.sqrt leftCutoff)
    let c := SquarefreeCount.finiteSquarefreeDensity (2 * h) (Nat.sqrt rightCutoff)
    |RatioClassVariation.classMean A u v + RatioClassVariation.classMean A (2 * u) v +
      RatioClassVariation.classMean A u (2 * v) -
        FiniteDensityInsertion.twoDensityFactor * RatioClassVariation.classMean A u v| ≤
      ((7 * Real.sqrt 2 / 12) *
        (1 / (Nat.sqrt leftCutoff : ℝ) + 1 / (Nat.sqrt rightCutoff : ℝ))) *
        (ThetaKernelEstimate.kernelBound A * (1 + A) / Real.sqrt (h : ℝ)) +
      (Real.sqrt 2 / 2) * (|b| + |c|) *
        ((KernelScaleComparison.scaleComparisonCoefficient A * Real.log 2 * (1 + A) +
          ThetaKernelEstimate.kernelBound A) / Real.sqrt (h : ℝ)) := by
  dsimp only
  let N := ⌊Real.exp A⌋₊
  let h := u * v
  let G := N / max u v
  let L := N / max (2 * u) v
  let R := N / max u (2 * v)
  let a := SquarefreeCount.finiteSquarefreeDensity h (Nat.sqrt G)
  let b := SquarefreeCount.finiteSquarefreeDensity (2 * h) (Nat.sqrt L)
  let c := SquarefreeCount.finiteSquarefreeDensity (2 * h) (Nat.sqrt R)
  let e := a - (Real.sqrt 2 / 2) * (b + c) - FiniteDensityInsertion.twoDensityFactor * a
  let B := (7 * Real.sqrt 2 / 12) * (1 / (Nat.sqrt L : ℝ) + 1 / (Nat.sqrt R : ℝ))
  let U := ThetaKernelEstimate.kernelBound A * (1 + A) / Real.sqrt (h : ℝ)
  let V := (KernelScaleComparison.scaleComparisonCoefficient A * Real.log 2 * (1 + A) +
    ThetaKernelEstimate.kernelBound A) / Real.sqrt (h : ℝ)
  let DL := classScaleDifference A h L + classKernelTail A h L G
  let DR := classScaleDifference A h R + classKernelTail A h R G
  have hh : 1 ≤ h := Nat.mul_pos hu hv
  have hcut : G ≤ N := Nat.div_le_self _ _
  have hL := RatioInsertionCutoffs.commonScale_two_left_bounds N u v hu
  have hR := RatioInsertionCutoffs.commonScale_two_right_bounds N u v hv
  have he : |e| ≤ B := RatioInsertionCutoffs.signed_two_density_both_cutoffs_error_le
    N u v hu hv hodd hG
  have hU : |classKernelSum A h G| ≤ U := classKernelSum_abs_le_source A h G hA hh hcut
  have hDL : |DL| ≤ V := classKernelSum_two_difference_abs_le A h L G hA hh hcut hL.2 hL.1
  have hDR : |DR| ≤ V := classKernelSum_two_difference_abs_le A h R G hA hh hcut hR.2 hR.1
  have hB : 0 ≤ B := by dsimp [B]; positivity
  have hs : 0 ≤ Real.sqrt (2 : ℝ) / 2 := by positivity
  have hμ : |(ArithmeticFunction.moebius h : ℝ)| ≤ 1 := by
    exact_mod_cast (ArithmeticFunction.abs_moebius_le_one (n := h))
  rw [classMean_two_insertions_eq A u v hu hv hodd]
  change |(ArithmeticFunction.moebius h : ℝ) *
    (e * classKernelSum A h G + (Real.sqrt 2 / 2) * b * DL +
      (Real.sqrt 2 / 2) * c * DR)| ≤ B * U + (Real.sqrt 2 / 2) * (|b| + |c|) * V
  rw [abs_mul]
  calc
    _ ≤ |e * classKernelSum A h G + (Real.sqrt 2 / 2) * b * DL +
        (Real.sqrt 2 / 2) * c * DR| := mul_le_of_le_one_left (abs_nonneg _) hμ
    _ ≤ |e * classKernelSum A h G| + |(Real.sqrt 2 / 2) * b * DL| +
        |(Real.sqrt 2 / 2) * c * DR| :=
      (abs_add_le _ _).trans (add_le_add (abs_add_le _ _) le_rfl)
    _ = |e| * |classKernelSum A h G| +
        (Real.sqrt 2 / 2) * |b| * |DL| + (Real.sqrt 2 / 2) * |c| * |DR| := by
      simp only [abs_mul, abs_of_nonneg hs]
    _ ≤ B * U + (Real.sqrt 2 / 2) * |b| * V + (Real.sqrt 2 / 2) * |c| * V := by
      exact add_le_add (add_le_add (mul_le_mul he hU (abs_nonneg _) hB)
        (mul_le_mul_of_nonneg_left hDL (by positivity)))
        (mul_le_mul_of_nonneg_left hDR (by positivity))
    _ = _ := by ring

end
end WeightedClassInsertionScratch
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedClassInsertion/Variant75ac315c9ee3f332a6dfcfe1764068733eb48c7361e3f0de8737404e47bf69fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedClassInsertion/Variant75ac315c9ee3f332a6dfcfe1764068733eb48c7361e3f0de8737404e47bf69fb.lean#L254).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b5f80b70b49af1316f76b49a6cbfba65fdc5def4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
