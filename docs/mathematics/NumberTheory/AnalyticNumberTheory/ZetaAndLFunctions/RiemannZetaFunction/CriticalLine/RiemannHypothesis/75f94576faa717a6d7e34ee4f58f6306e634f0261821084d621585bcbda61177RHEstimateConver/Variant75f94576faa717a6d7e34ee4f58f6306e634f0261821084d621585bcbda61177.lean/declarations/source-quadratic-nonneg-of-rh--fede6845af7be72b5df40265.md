# source_quadratic_nonneg_of_rh

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f940d9cd31772daf659a205134ac8f57620b1f87",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 45,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/75f94576faa717a6d7e34ee4f58f6306e634f0261821084d621585bcbda61177.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ae8a493f-b442-d7ba-d044-b72ea1e8a92a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:dde22843-cb26-4a6f-082f-d0885966e7b1",
  "kind": "theorem",
  "lexical_name": "source_quadratic_nonneg_of_rh",
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
  "slug": "source-quadratic-nonneg-of-rh--fede6845af7be72b5df40265",
  "source": {
    "blob": "f940d9cd31772daf659a205134ac8f57620b1f87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 45,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/75f94576faa717a6d7e34ee4f58f6306e634f0261821084d621585bcbda61177RHEstimateConver/Variant75f94576faa717a6d7e34ee4f58f6306e634f0261821084d621585bcbda61177.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fede6845af7be72b5df402658f70d19d8bf340f29ceacb980c475bf9e4718f1b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/75f94576faa717a6d7e34ee4f58f6306e634f0261821084d621585bcbda61177RHEstimateConver/Variant75f94576faa717a6d7e34ee4f58f6306e634f0261821084d621585bcbda61177.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dde22843-cb26-4a6f-082f-d0885966e7b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_quadratic_nonneg_of_rh (hRH : _root_.RiemannHypothesis)
    (A : ℝ) (hA : 1 ≤ A) :
    0 ≤ sourceQuadraticValue Realization.explicitSecondDerivative A := by
  obtain ⟨_, _, hs, hscale, hform⟩ := ZeroSide.Assembly.zero_side_identity A hA
  have hi (o : ZeroOccurrence) : (bilateralTransform A (shiftedValue o)).im = 0 :=
    actual_transform_im_zero A hA _ (shifted_value_re_zero_of_rh hRH o)
  have hn : 0 ≤ (∑' o : ZeroOccurrence, bilateralTransform A (shiftedValue o) ^ 2).re := by
    rw [Complex.re_tsum hs]
    apply tsum_nonneg
    intro o
    simp only [pow_two, Complex.mul_re, hi o, mul_zero, sub_zero]
    exact mul_self_nonneg _
  have he := congrArg Complex.re (hscale.trans hform)
  simp only [Complex.ofReal_re] at he
  rw [← he] at hn
  exact (mul_nonneg_iff_of_pos_left (source_normalization_pos A hA)).mp hn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/75f94576faa717a6d7e34ee4f58f6306e634f0261821084d621585bcbda61177RHEstimateConver/Variant75f94576faa717a6d7e34ee4f58f6306e634f0261821084d621585bcbda61177.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/75f94576faa717a6d7e34ee4f58f6306e634f0261821084d621585bcbda61177RHEstimateConver/Variant75f94576faa717a6d7e34ee4f58f6306e634f0261821084d621585bcbda61177.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f940d9cd31772daf659a205134ac8f57620b1f87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
