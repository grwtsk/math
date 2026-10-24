# actualCoefficientRows_eq_independentMain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:19c5a113-35ba-0950-41a9-c48189193bd0",
  "kind": "theorem",
  "lexical_name": "actualCoefficientRows_eq_independentMain",
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
  "slug": "actualcoefficientrows-eq-independentmain--b44f96592a7dae5c66e8a96c",
  "source": {
    "blob": "e41e5b071f23a939216d4b1a57925799215bff38",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 98,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceAdaptiveSignedCoefficientRows/Variant675b9c653f062972d590cce9b225f288f0aa9625b9be79b3bb5f97e838564d74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b44f96592a7dae5c66e8a96cca6913ab26e299a65266fc8079fed117a4f4fbae",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceAdaptiveSignedCoefficientRows/Variant675b9c653f062972d590cce9b225f288f0aa9625b9be79b3bb5f97e838564d74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19c5a113-35ba-0950-41a9-c48189193bd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCoefficientRows_eq_independentMain (A : ℝ) (hA : 1 ≤ A) :
    actualCoefficientRows A = adaptiveIndependentMain A := by
  let F : ℕ → ℝ := fun n => sourcePlainWeight A (n : ℝ)
  let G : ℕ → ℝ := fun n =>
    deriv (sourceCorrelation explicitSecondDerivative A) (Real.log n) / Real.sqrt n
  have hU := vaughanCutoff_le_sourceKernelCutoff A hA
  have hV : adaptiveMangoldtDepth A ≤ sourceKernelCutoff A := Nat.div_le_self _ _
  have hcf := truncatedConvolution_weighted_sum (sourceKernelCutoff A)
    (vaughanCutoff A) (adaptiveMangoldtDepth A) (adaptive_rectangle_le_cutoff A) F
  have hcg := truncatedConvolution_weighted_sum (sourceKernelCutoff A)
    (vaughanCutoff A) (adaptiveMangoldtDepth A) (adaptive_rectangle_le_cutoff A) G
  have hlf := closed_mask_weighted_sum (sourceKernelCutoff A) (adaptiveMangoldtDepth A)
    hV vonMangoldt F
  have hmf := closed_mask_weighted_sum (sourceKernelCutoff A) (vaughanCutoff A)
    hU (fun n => (moebius n : ℝ)) F
  have hmg := closed_mask_weighted_sum (sourceKernelCutoff A) (vaughanCutoff A)
    hU (fun n => (moebius n : ℝ)) G
  change (∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A), correlationCoefficient A n * F n) +
    (∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A), derivativeCoefficient A n * G n) = _
  unfold correlationCoefficient derivativeCoefficient
  simp only [add_mul, sub_mul, mul_assoc, Finset.sum_add_distrib,
    Finset.sum_sub_distrib, ← Finset.mul_sum]
  rw [hlf, hmf, hmg, hcf, hcg]
  unfold adaptiveIndependentMain
  have hj1 (d : ℕ) : sourceLogSamplingMainTerm A (d : ℝ) =
      samplingAlpha1 * F d + samplingAlpha2 * G d := by
    dsimp [F, G, sourcePlainWeight, sourceLogSamplingMainTerm]
    ring
  have hj0 (d m : ℕ) : sourcePlainSamplingMainTerm A ((d * m : ℕ) : ℝ) =
      samplingAlpha0 * F (d * m) + samplingAlpha1 * G (d * m) := by
    dsimp [F, G, sourcePlainWeight, sourcePlainSamplingMainTerm]
    ring
  simp_rw [hj1, hj0]
  simp only [mul_add, Finset.sum_add_distrib, Finset.mul_sum]
  have hflip (x y z : ℝ) : x * (y * z) = y * (x * z) := by ring
  simp_rw [hflip (samplingAlpha1), hflip (samplingAlpha2), hflip (samplingAlpha0)]
  ring

/-- Entire signed error in the same finite convolution coordinate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceAdaptiveSignedCoefficientRows/Variant675b9c653f062972d590cce9b225f288f0aa9625b9be79b3bb5f97e838564d74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceAdaptiveSignedCoefficientRows/Variant675b9c653f062972d590cce9b225f288f0aa9625b9be79b3bb5f97e838564d74.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e41e5b071f23a939216d4b1a57925799215bff38` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
