# actual_zeta_logDeriv_on_line_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cafe2839c6d75c2c93d5817170d2b5d2321ce4bd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 47,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e9/e9fd107dff3f9f21a323e4cee2aba41a3855beb7df757cb66c3d79e2e35777bd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:d72d11eb-4243-5a2d-c750-dcf384b5b083",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:90a0cbbe-2add-a9a4-9a18-c6878b7ed4f1",
  "kind": "theorem",
  "lexical_name": "actual_zeta_logDeriv_on_line_norm_le",
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
  "slug": "actual-zeta-logderiv-on-line-norm-le--8c957f392e87b29a1a77b9c4",
  "source": {
    "blob": "cafe2839c6d75c2c93d5817170d2b5d2321ce4bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 69,
    "line": 47,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRightBumpTailNative01/Variante9fd107dff3f9f21a323e4cee2aba41a3855beb7df757cb66c3d79e2e35777bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c957f392e87b29a1a77b9c4d6066ed3b3c98201103043882a76476dccf0f825",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRightBumpTailNative01/Variante9fd107dff3f9f21a323e4cee2aba41a3855beb7df757cb66c3d79e2e35777bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:90a0cbbe-2add-a9a4-9a18-c6878b7ed4f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–69.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_zeta_logDeriv_on_line_norm_le (c t : ℝ) (hc : 1 < c) :
    ‖-deriv riemannZeta ((c : ℂ) + (t : ℂ) * Complex.I) /
        riemannZeta ((c : ℂ) + (t : ℂ) * Complex.I)‖ ≤ actualRightLineMass c := by
  have hs : 1 < ((c : ℂ) + (t : ℂ) * Complex.I).re := by simpa using hc
  rw [← ArithmeticFunction.LSeries_vonMangoldt_eq_deriv_riemannZeta_div hs]
  change ‖∑' n, LSeries.term actualMangoldtCoefficients
    ((c : ℂ) + (t : ℂ) * Complex.I) n‖ ≤ _
  have hn : Summable (fun n => ‖LSeries.term actualMangoldtCoefficients
      ((c : ℂ) + (t : ℂ) * Complex.I) n‖) := by
    simpa only [actualMangoldtCoefficients, LSeriesSummable] using
      (ArithmeticFunction.LSeriesSummable_vonMangoldt hs).norm
  calc
    _ ≤ ∑' n, ‖LSeries.term actualMangoldtCoefficients
        ((c : ℂ) + (t : ℂ) * Complex.I) n‖ := norm_tsum_le_tsum_norm hn
    _ = _ := by
      unfold actualRightLineMass
      congr 1
      funext n
      simp only [LSeries.norm_term_eq, Complex.add_re, Complex.ofReal_re,
        Complex.mul_re, Complex.I_re, Complex.I_im, Complex.ofReal_im, mul_zero,
        zero_mul, sub_zero, add_zero]

/-- The prescribed #381 ordinary-square contour density, with the actual initial Dirichlet source. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRightBumpTailNative01/Variante9fd107dff3f9f21a323e4cee2aba41a3855beb7df757cb66c3d79e2e35777bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRightBumpTailNative01/Variante9fd107dff3f9f21a323e4cee2aba41a3855beb7df757cb66c3d79e2e35777bd.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cafe2839c6d75c2c93d5817170d2b5d2321ce4bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
