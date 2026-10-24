# actualInitialPrimeContour_eq_strict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8de57553-8a75-aa84-f321-c6fc2b6bc058",
  "kind": "theorem",
  "lexical_name": "actualInitialPrimeContour_eq_strict",
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
  "slug": "actualinitialprimecontour-eq-strict--6715892cb51a396e53e29cd7",
  "source": {
    "blob": "271de331d04905bfb510ae24edaa70defba4cf77",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 91,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualInitialPrimeContour/Variantf63e96a072c78a6c3a05fc7dbd3ed1c62b35c7a58e359cd143feef6bbae54c7d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6715892cb51a396e53e29cd7502032252628c12cc5cd8000a7507268a8e49162",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualInitialPrimeContour/Variantf63e96a072c78a6c3a05fc7dbd3ed1c62b35c7a58e359cd143feef6bbae54c7d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8de57553-8a75-aa84-f321-c6fc2b6bc058`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualInitialPrimeContour_eq_strict (A c : ℝ) (hA : 1 ≤ A) (hc : 1 < c) :
    (1 / (2 * Real.pi) : ℂ) * ∫ t : ℝ,
      actualInitialPrimeMellin A ((c : ℂ) + (t : ℂ) * Complex.I) *
        (-deriv riemannZeta ((c : ℂ) + (t : ℂ) * Complex.I) /
          riemannZeta ((c : ℂ) + (t : ℂ) * Complex.I)) =
    (primePowerContribution explicitSecondDerivative A : ℂ) := by
  have hp := Zeta23.WeilEF.prime_side_line
    (actualInitialPrimeKernel_contDiff A hA)
    (actualInitialPrimeKernel_hasCompactSupport A hA) (c := c) hc
  rw [actualInitialPrime_tsum_eq_strict A hA] at hp
  rw [← hp]
  congr 1
  apply integral_congr_ae
  filter_upwards [] with t
  rw [actualInitialPrimeMellin_eq_Hfn]
  simp only [logDeriv, Pi.div_apply, neg_div]

end
end FormalResearch.RiemannHypothesis.SourceActualInitialPrimeContour
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualInitialPrimeContour/Variantf63e96a072c78a6c3a05fc7dbd3ed1c62b35c7a58e359cd143feef6bbae54c7d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualInitialPrimeContour/Variantf63e96a072c78a6c3a05fc7dbd3ed1c62b35c7a58e359cd143feef6bbae54c7d.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `271de331d04905bfb510ae24edaa70defba4cf77` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
