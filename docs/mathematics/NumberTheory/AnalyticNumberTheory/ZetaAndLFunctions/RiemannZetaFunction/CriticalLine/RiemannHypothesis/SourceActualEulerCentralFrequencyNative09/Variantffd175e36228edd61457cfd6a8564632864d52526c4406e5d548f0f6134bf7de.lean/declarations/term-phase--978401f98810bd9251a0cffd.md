# term_phase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e236246f-cf9f-7c8f-e5bf-1bf4d085651d",
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
  "slug": "term-phase--978401f98810bd9251a0cffd",
  "source": {
    "blob": "253b99f8cbc26d99c6cc5e0f84cbfdea07b21c21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 110,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerCentralFrequencyNative09/Variantffd175e36228edd61457cfd6a8564632864d52526c4406e5d548f0f6134bf7de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:978401f98810bd9251a0cffda68d085df7d7ce8c73178a3faa2df176edecebcc",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerCentralFrequencyNative09/Variantffd175e36228edd61457cfd6a8564632864d52526c4406e5d548f0f6134bf7de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e236246f-cf9f-7c8f-e5bf-1bf4d085651d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 110–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem term_phase (n : ℕ) (t : ℝ) (hn : n ≠ 0) :
    LSeries.term actualMangoldtCoefficients ((3 / 2 : ℂ) + (t : ℂ) * I) n =
      ((ArithmeticFunction.vonMangoldt n / (n : ℝ) ^ (3 / 2 : ℝ) : ℝ) : ℂ) *
        Complex.exp (I * ( - t * Real.log n : ℝ)) := by
  have hnR : 0 < (n : ℝ) := by exact_mod_cast Nat.pos_of_ne_zero hn
  rw [LSeries.term_of_ne_zero hn, actualMangoldtCoefficients,
    Complex.cpow_def_of_ne_zero (by exact_mod_cast hn)]
  have hlog : Complex.log (n : ℂ) = ((Real.log n : ℝ) : ℂ) := by
    exact (Complex.ofReal_log hnR.le).symm
  rw [hlog, Real.rpow_def_of_pos hnR, Complex.ofReal_div, Complex.ofReal_exp]
  simp only [div_eq_mul_inv, ← Complex.exp_neg]
  rw [mul_assoc, ← Complex.exp_add]
  congr 1
  congr 1
  push_cast
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerCentralFrequencyNative09/Variantffd175e36228edd61457cfd6a8564632864d52526c4406e5d548f0f6134bf7de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualEulerCentralFrequencyNative09/Variantffd175e36228edd61457cfd6a8564632864d52526c4406e5d548f0f6134bf7de.lean#L110).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `253b99f8cbc26d99c6cc5e0f84cbfdea07b21c21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
