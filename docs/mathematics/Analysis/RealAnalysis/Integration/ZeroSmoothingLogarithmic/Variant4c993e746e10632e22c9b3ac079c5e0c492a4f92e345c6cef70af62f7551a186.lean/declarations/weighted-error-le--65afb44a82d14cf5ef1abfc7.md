# weighted_error_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0eba596fa99caed8888b176fe27f8acb9457ec0f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 62,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4c993e746e10632e22c9b3ac079c5e0c492a4f92e345c6cef70af62f7551a186.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:84c590fa-ebab-d7d7-902e-9343284a73cd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0193f86c-b79d-77e5-328e-7dd558f4eded",
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
  "slug": "weighted-error-le--65afb44a82d14cf5ef1abfc7",
  "source": {
    "blob": "0eba596fa99caed8888b176fe27f8acb9457ec0f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 62,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variant4c993e746e10632e22c9b3ac079c5e0c492a4f92e345c6cef70af62f7551a186.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65afb44a82d14cf5ef1abfc787647e75993c23632b9d4fe1a23798476b2097b8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variant4c993e746e10632e22c9b3ac079c5e0c492a4f92e345c6cef70af62f7551a186.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0193f86c-b79d-77e5-328e-7dd558f4eded`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–100.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variant4c993e746e10632e22c9b3ac079c5e0c492a4f92e345c6cef70af62f7551a186.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingLogarithmic/Variant4c993e746e10632e22c9b3ac079c5e0c492a4f92e345c6cef70af62f7551a186.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0eba596fa99caed8888b176fe27f8acb9457ec0f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
