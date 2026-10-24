# term_phase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c39c14a8-2ca3-b38f-129d-e21ef51efc07",
  "kind": "theorem",
  "lexical_name": "term_phase",
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
  "slug": "term-phase--2fb267e80c1d3c153fc17ae3",
  "source": {
    "blob": "add97e8dd7054f0e4f265a6783bd5efe01b69b17",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 93,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerCentralFrequencyNative02/Variantc81b67ee8521b741652eaa9decab4d9a5b827b8456cc6fa8177c54957d23bb6e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2fb267e80c1d3c153fc17ae3d029cbca4faf51f2f2f439600011b92cc4db33fd",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerCentralFrequencyNative02/Variantc81b67ee8521b741652eaa9decab4d9a5b827b8456cc6fa8177c54957d23bb6e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c39c14a8-2ca3-b38f-129d-e21ef51efc07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem term_phase (n : ℕ) (t : ℝ) (hn : n ≠ 0) :
    LSeries.term actualMangoldtCoefficients ((3/2 : ℂ)+(t : ℂ)*I) n =
      ((ArithmeticFunction.vonMangoldt n / (n : ℝ)^(3/2 : ℝ) : ℝ) : ℂ) *
        Complex.exp (I*(-t*Real.log n : ℝ)) := by
  have hnR : 0 < (n : ℝ) := by exact_mod_cast Nat.pos_of_ne_zero hn
  rw [LSeries.term_of_ne_zero hn, actualMangoldtCoefficients,
    Complex.cpow_def_of_ne_zero (by exact_mod_cast hn),
    ← Complex.ofReal_log hnR.le]
  rw [Real.rpow_def_of_pos hnR]
  push_cast
  rw [div_eq_mul_inv, div_eq_mul_inv, ← Complex.exp_neg]
  have he : ((Real.log n : ℝ) : ℂ)*((3/2 : ℂ)+(t : ℂ)*I) =
      (((Real.log n*(3/2 : ℝ) : ℝ) : ℂ)) + I*(t*Real.log n : ℝ) := by
    push_cast
    ring
  rw [he, Complex.exp_add, mul_inv_rev, ← Complex.exp_neg]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerCentralFrequencyNative02/Variantc81b67ee8521b741652eaa9decab4d9a5b827b8456cc6fa8177c54957d23bb6e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerCentralFrequencyNative02/Variantc81b67ee8521b741652eaa9decab4d9a5b827b8456cc6fa8177c54957d23bb6e.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `add97e8dd7054f0e4f265a6783bd5efe01b69b17` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
