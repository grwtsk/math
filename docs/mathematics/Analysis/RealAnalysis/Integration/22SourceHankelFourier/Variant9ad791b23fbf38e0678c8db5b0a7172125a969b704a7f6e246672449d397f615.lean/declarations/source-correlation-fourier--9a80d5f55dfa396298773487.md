# source_correlation_fourier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "11f3fb9d46676b6f0fd716d314d356ed7f772daa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 105,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9a/9ad791b23fbf38e0678c8db5b0a7172125a969b704a7f6e246672449d397f615.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:82008442-eb8d-cef6-d949-b35d85c67125",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cfad2dbd-47ff-7414-2823-ae3ae22fa8a9",
  "kind": "theorem",
  "lexical_name": "source_correlation_fourier",
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
  "slug": "source-correlation-fourier--9a80d5f55dfa396298773487",
  "source": {
    "blob": "11f3fb9d46676b6f0fd716d314d356ed7f772daa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 105,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/22SourceHankelFourier/Variant9ad791b23fbf38e0678c8db5b0a7172125a969b704a7f6e246672449d397f615.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9a80d5f55dfa39629877348744a9b446fd337bc7099ddf263f05a5ea4fe902ac",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/22SourceHankelFourier/Variant9ad791b23fbf38e0678c8db5b0a7172125a969b704a7f6e246672449d397f615.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cfad2dbd-47ff-7414-2823-ae3ae22fa8a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_correlation_fourier {A : ℝ} (hA : 1 ≤ A) (t : ℝ) :
    sourceCorrelation explicitSecondDerivative A t =
      (1 / (2 * Real.pi)) *
        ∫ ξ : ℝ, Real.cos (ξ * t) * sourceFourierSquare A ξ := by
  have h := standard_correlation_cosine_integral hA t
  simp_rw [standardFourier_eq_sourceFourier] at h
  calc
    sourceCorrelation explicitSecondDerivative A t =
        ∫ ξ : ℝ, Real.cos (2 * Real.pi * ξ * t) *
          sourceFourierSquare A (-(2 * Real.pi) * ξ) := h.symm
    _ = ∫ ξ : ℝ, Real.cos ((-(2 * Real.pi) * ξ) * t) *
          sourceFourierSquare A (-(2 * Real.pi) * ξ) := by
      apply integral_congr_ae
      filter_upwards [] with ξ
      have he : (-(2 * Real.pi) * ξ) * t = -(2 * Real.pi * ξ * t) := by ring
      rw [he, Real.cos_neg]
    _ = (1 / (2 * Real.pi)) *
        ∫ ξ : ℝ, Real.cos (ξ * t) * sourceFourierSquare A ξ := by
      rw [Measure.integral_comp_mul_left
        (fun ξ : ℝ ↦ Real.cos (ξ * t) * sourceFourierSquare A ξ) (-(2 * Real.pi))]
      simp only [smul_eq_mul, abs_inv, abs_neg, abs_of_pos (by positivity : 0 < 2 * Real.pi),
        one_div]

/-- A finite arithmetic row with the literal positive angular-frequency phase. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/22SourceHankelFourier/Variant9ad791b23fbf38e0678c8db5b0a7172125a969b704a7f6e246672449d397f615.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/22SourceHankelFourier/Variant9ad791b23fbf38e0678c8db5b0a7172125a969b704a7f6e246672449d397f615.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `11f3fb9d46676b6f0fd716d314d356ed7f772daa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
