# actualClosedPrimeHead_real_eq_band_storage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:da4b0fa3-641b-00c7-57c4-18eed45a39c2",
  "kind": "theorem",
  "lexical_name": "actualClosedPrimeHead_real_eq_band_storage",
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
  "slug": "actualclosedprimehead-real-eq-band-storage--f50b489ffb0472f77afb92f8",
  "source": {
    "blob": "40ccc358923369a8bc6204bc6fc7281767350ac5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 217,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualEulerBandGram/Variante608388167137a72f2c012dee8c00bf33d1ad3977dea8143e89e75c75de29206.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f50b489ffb0472f77afb92f8eae4af64325521346a263b5136653e49a31b0278",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualEulerBandGram/Variante608388167137a72f2c012dee8c00bf33d1ad3977dea8143e89e75c75de29206.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:da4b0fa3-641b-00c7-57c4-18eed45a39c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualClosedPrimeHead_real_eq_band_storage {A T : ℝ}
    (hA : 1 ≤ A) (hT : 0 ≤ T) :
    (actualClosedPrimeHead A (3 / 2) T).re =
      actualClosedPrimeRightMass A * ‖actualTiltBandState A T‖ ^ 2 -
        (1 / 2) * ∑ n ∈ Finset.range (⌊Real.exp (2 * A)⌋₊ + 1),
          (if n = 0 then 0 else ArithmeticFunction.vonMangoldt n /
            (n : ℝ) ^ (3 / 2 : ℝ)) *
            ‖actualTiltBandState A T -
              translation (Real.log n) (reflection (actualTiltBandState A T))‖ ^ 2 := by
  rw [actualClosedPrimeHead_eq_weighted_band_pairing hA hT]
  simp only [Complex.re_sum, Complex.mul_re, Complex.ofReal_re,
    Complex.ofReal_im, zero_mul, sub_zero]
  simp_rw [reflected_pairing_storage]
  unfold actualClosedPrimeRightMass
  rw [Finset.sum_mul, Finset.mul_sum, ← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro n _
  ring

end FormalResearch.RiemannHypothesis.SourceActualEulerBandGram
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualEulerBandGram/Variante608388167137a72f2c012dee8c00bf33d1ad3977dea8143e89e75c75de29206.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualEulerBandGram/Variante608388167137a72f2c012dee8c00bf33d1ad3977dea8143e89e75c75de29206.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40ccc358923369a8bc6204bc6fc7281767350ac5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
