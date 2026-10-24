# actualPolynomialWeightedCriticalVariation_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:10e570af-e663-ecbc-2a9c-8e2d743e35a7",
  "kind": "theorem",
  "lexical_name": "actualPolynomialWeightedCriticalVariation_intervalIntegrable",
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
  "slug": "actualpolynomialweightedcriticalvariation-intervalintegrable--e2b911d582edf3b26b937c98",
  "source": {
    "blob": "4c5e65afba1f0c24c84364d80d38e4e86265fc3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 36,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPolynomialWeightedCriticalVariation/Variant3cc64e1e8ebbaa0b51081cef0001799b2b4b8b105bf77cbb06973db6a18cddb4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2b911d582edf3b26b937c984054a44df0e7addea63fc0cf079418096ce53996",
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

Occurrence: `result:10e570af-e663-ecbc-2a9c-8e2d743e35a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualPolynomialWeightedCriticalVariation_intervalIntegrable
    {A : ℝ} (hA : 1 ≤ A) :
    IntervalIntegrable (fun t => |deriv (criticalPrimeTest A) t| / (1 + t) ^ 2)
      volume 0 (2 * A) := by
  have hp : 0 < A := by linarith
  have hi : ContinuousOn
      (fun t => |deriv (criticalPrimeTest A) t| / (1 + t) ^ 2)
      (uIcc 0 (2 * A)) := by
    apply (criticalPrimeTest_contDiff A hp).continuous_deriv_one.abs.continuousOn.div
      (by fun_prop : Continuous (fun t : ℝ => (1 + t) ^ 2)).continuousOn
    intro t ht
    rw [uIcc_of_le (by linarith : (0 : ℝ) ≤ 2 * A)] at ht
    exact ne_of_gt (pow_pos (by linarith [ht.1] : 0 < 1 + t) 2)
  exact hi.intervalIntegrable

/-- The exact source variation lower bound survives polynomial weighting. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPolynomialWeightedCriticalVariation/Variant3cc64e1e8ebbaa0b51081cef0001799b2b4b8b105bf77cbb06973db6a18cddb4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPolynomialWeightedCriticalVariation/Variant3cc64e1e8ebbaa0b51081cef0001799b2b4b8b105bf77cbb06973db6a18cddb4.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c5e65afba1f0c24c84364d80d38e4e86265fc3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
