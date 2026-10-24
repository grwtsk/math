# weighted_error_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:53249a63-0a24-7491-3f95-8a6652676ab8",
  "kind": "theorem",
  "lexical_name": "weighted_error_le",
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
  "slug": "weighted-error-le--fca49a67aaab061b25fcddd2",
  "source": {
    "blob": "8e594d37ab329630c1b9c47ec3660cc2b4730c82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 70,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variantc30d487bd3b7d104fd5523717bf48424e5d5f02d179b1ce3424fadea3d075dc2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fca49a67aaab061b25fcddd2091a875c21a3bf89203a8663cbf9d7ff27d6d467",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variantc30d487bd3b7d104fd5523717bf48424e5d5f02d179b1ce3424fadea3d075dc2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:53249a63-0a24-7491-3f95-8a6652676ab8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–108.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem weighted_error_le (A ε : ℝ) (hA : 1 ≤ A) (hε : 0 < ε) (ξ : ℝ) :
    logarithmicWeight ξ *
        Complex.normSq
          (sourceFourier (smoothedTest A ε hε) ξ - sourceFourier (actualTest A) ξ) ≤
      4 * (logarithmicWeight ξ *
        Complex.normSq (sourceFourier (actualTest A) ξ)) := by
  have hm := fourier_multiplier_norm_le_one ε hε ξ
  rw [source_fourier_smoothing A ε hA hε ξ]
  have heq :
      sourceFourier (actualTest A) ξ * multiplier ε hε (Complex.I * (ξ : ℂ)) -
          sourceFourier (actualTest A) ξ =
        sourceFourier (actualTest A) ξ *
          (multiplier ε hε (Complex.I * (ξ : ℂ)) - 1) := by
    ring
  rw [heq, Complex.normSq_eq_norm_sq, Complex.normSq_eq_norm_sq, norm_mul]
  have hm1 :
      ‖multiplier ε hε (Complex.I * (ξ : ℂ)) - 1‖ ≤ 2 := by
    calc
      ‖multiplier ε hε (Complex.I * (ξ : ℂ)) - 1‖ ≤
          ‖multiplier ε hε (Complex.I * (ξ : ℂ))‖ + ‖(1 : ℂ)‖ :=
        norm_sub_le _ _
      _ ≤ 1 + 1 := add_le_add hm (by norm_num)
      _ = 2 := by norm_num
  have hm1sq :
      ‖multiplier ε hε (Complex.I * (ξ : ℂ)) - 1‖ ^ 2 ≤ 4 := by
    nlinarith [sq_nonneg ‖multiplier ε hε (Complex.I * (ξ : ℂ)) - 1‖]
  have hw := logarithmicWeight_nonneg ξ
  calc
    logarithmicWeight ξ *
        (‖sourceFourier (actualTest A) ξ‖ *
          ‖multiplier ε hε (Complex.I * (ξ : ℂ)) - 1‖) ^ 2 =
      logarithmicWeight ξ * (‖sourceFourier (actualTest A) ξ‖ ^ 2 *
        ‖multiplier ε hε (Complex.I * (ξ : ℂ)) - 1‖ ^ 2) := by ring
    _ ≤ logarithmicWeight ξ * (‖sourceFourier (actualTest A) ξ‖ ^ 2 * 4) := by
      apply mul_le_mul_of_nonneg_left _ hw
      exact mul_le_mul_of_nonneg_left hm1sq (sq_nonneg _)
    _ = 4 * (logarithmicWeight ξ * ‖sourceFourier (actualTest A) ξ‖ ^ 2) := by
      ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variantc30d487bd3b7d104fd5523717bf48424e5d5f02d179b1ce3424fadea3d075dc2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variantc30d487bd3b7d104fd5523717bf48424e5d5f02d179b1ce3424fadea3d075dc2.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e594d37ab329630c1b9c47ec3660cc2b4730c82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
