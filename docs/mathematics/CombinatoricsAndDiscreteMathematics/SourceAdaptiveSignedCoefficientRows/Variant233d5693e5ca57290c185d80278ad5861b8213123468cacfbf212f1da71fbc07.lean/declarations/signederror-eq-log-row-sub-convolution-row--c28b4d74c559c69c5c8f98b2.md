# signedError_eq_log_row_sub_convolution_row

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9983b73d-8143-62db-2aad-09d4bd79b79f",
  "kind": "theorem",
  "lexical_name": "signedError_eq_log_row_sub_convolution_row",
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
  "slug": "signederror-eq-log-row-sub-convolution-row--c28b4d74c559c69c5c8f98b2",
  "source": {
    "blob": "ba002e46e65cfe6c3c09264dcc13d886856dcbe2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 132,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/SourceAdaptiveSignedCoefficientRows/Variant233d5693e5ca57290c185d80278ad5861b8213123468cacfbf212f1da71fbc07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c28b4d74c559c69c5c8f98b230e599f3f903a0c09d5821bad5a0dbe1e734b97f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/SourceAdaptiveSignedCoefficientRows/Variant233d5693e5ca57290c185d80278ad5861b8213123468cacfbf212f1da71fbc07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9983b73d-8143-62db-2aad-09d4bd79b79f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem signedError_eq_log_row_sub_convolution_row (A : ℝ) :
    adaptiveSignedSamplingError A =
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), (moebius d : ℝ) *
        (adaptiveLogSample A d - sourceLogSamplingMainTerm A (d : ℝ))) -
      (∑ n ∈ Finset.Icc 1 (sourceKernelCutoff A),
        truncatedConvolution (vaughanCutoff A) (adaptiveMangoldtDepth A) n *
          convolutionSamplingError A n) := by
  have hp (d m : ℕ) : adaptivePlainSample A d m =
      sourcePlainKernel A ((d * m : ℕ) : ℝ) := by
    simp only [adaptivePlainSample, sourcePlainKernel, Nat.cast_mul]
  have hc := truncatedConvolution_weighted_sum (sourceKernelCutoff A)
    (vaughanCutoff A) (adaptiveMangoldtDepth A) (adaptive_rectangle_le_cutoff A)
    (convolutionSamplingError A)
  rw [hc]
  unfold adaptiveSignedSamplingError convolutionSamplingError
  simp_rw [hp]
  simp only [mul_sub, Finset.sum_sub_distrib]

/-- Direct exact actual residual: both coefficient rows remain paired with their signed error. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/SourceAdaptiveSignedCoefficientRows/Variant233d5693e5ca57290c185d80278ad5861b8213123468cacfbf212f1da71fbc07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/SourceAdaptiveSignedCoefficientRows/Variant233d5693e5ca57290c185d80278ad5861b8213123468cacfbf212f1da71fbc07.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba002e46e65cfe6c3c09264dcc13d886856dcbe2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
