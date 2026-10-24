# actualPolynomialWeightedCriticalVariation_ge_exponential

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5fae9d7a-b6fe-473a-24ee-ccf19268f4e4",
  "kind": "theorem",
  "lexical_name": "actualPolynomialWeightedCriticalVariation_ge_exponential",
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
  "slug": "actualpolynomialweightedcriticalvariation-ge-exponential--ab686031105f23fe1e451392",
  "source": {
    "blob": "4c5e65afba1f0c24c84364d80d38e4e86265fc3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 52,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPolynomialWeightedCriticalVariation/Variant3cc64e1e8ebbaa0b51081cef0001799b2b4b8b105bf77cbb06973db6a18cddb4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab686031105f23fe1e45139209cfc3ae70a418d2b6db3f08b6b45abb7200be23",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPolynomialWeightedCriticalVariation/Variant3cc64e1e8ebbaa0b51081cef0001799b2b4b8b105bf77cbb06973db6a18cddb4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fae9d7a-b6fe-473a-24ee-ccf19268f4e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPolynomialWeightedCriticalVariation_ge_exponential
    {A : ℝ} (hA : 1 ≤ A) :
    ((7 / 4 : ℝ) * Real.exp (A / 80) - 1) / (1 + 2 * A) ^ 2 ≤
      actualPolynomialWeightedCriticalVariation A := by
  have hp : 0 < A := by linarith
  have hi := (criticalPrimeTest_contDiff A hp).continuous_deriv_one.abs.intervalIntegrable
    (μ := volume) 0 (2 * A)
  have hw := actualPolynomialWeightedCriticalVariation_intervalIntegrable hA
  have hm : (∫ t in 0..2 * A, |deriv (criticalPrimeTest A) t| / (1 + 2 * A) ^ 2) ≤
      actualPolynomialWeightedCriticalVariation A := by
    apply intervalIntegral.integral_mono_on (by linarith) (hi.div_const _) hw
    intro t ht
    apply div_le_div_of_nonneg_left (abs_nonneg _) (by positivity)
    nlinarith [ht.1, ht.2]
  rw [intervalIntegral.integral_div_const] at hm
  exact (div_le_div_of_nonneg_right
    (criticalPrimeTest_variation_ge_early_exponential hA) (sq_nonneg _)).trans hm

/-- A simpler polynomial denominator still gives an actual exponential lower budget. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPolynomialWeightedCriticalVariation/Variant3cc64e1e8ebbaa0b51081cef0001799b2b4b8b105bf77cbb06973db6a18cddb4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPolynomialWeightedCriticalVariation/Variant3cc64e1e8ebbaa0b51081cef0001799b2b4b8b105bf77cbb06973db6a18cddb4.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c5e65afba1f0c24c84364d80d38e4e86265fc3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
