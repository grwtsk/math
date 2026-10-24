# intValuation_eq_of_coe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e993026d-df96-4118-cf81-174659afdfd3",
  "kind": "theorem",
  "lexical_name": "intValuation_eq_of_coe",
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
  "slug": "intvaluation-eq-of-coe--733882a0e99c2e468381ea71",
  "source": {
    "blob": "679dd9c879da58e84b49b5d67a900242e38c5519",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 477,
    "line": 453,
    "path": "GRWTSK/Topology/GeneralTopology/LaurentSeries/Variant2f7129c9bd2f68015125619c3bdf005447c1b443850de195489ca9499eff4a7f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:733882a0e99c2e468381ea71460f67f1de34965820c4c3c277f17f31d62ebfda",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/LaurentSeries/Variant2f7129c9bd2f68015125619c3bdf005447c1b443850de195489ca9499eff4a7f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e993026d-df96-4118-cf81-174659afdfd3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 453–477.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem intValuation_eq_of_coe (P : K[X]) :
    (Polynomial.idealX K).intValuation P = (idealX K).intValuation (P : K⟦X⟧) := by
  by_cases hP : P = 0
  · rw [hP, Valuation.map_zero, Polynomial.coe_zero, Valuation.map_zero]
  rw [intValuation_if_neg _ hP, intValuation_if_neg _ <| (by simp [hP])]
  simp only [idealX_span, exp_neg, inv_inj, exp_inj, Nat.cast_inj]
  have span_ne_zero :
    (Ideal.span {P} : Ideal K[X]) ≠ 0 ∧ (Ideal.span {Polynomial.X} : Ideal K[X]) ≠ 0 := by
    simp only [Ideal.zero_eq_bot, ne_eq, Ideal.span_singleton_eq_bot, hP, Polynomial.X_ne_zero,
      not_false_iff, and_self_iff]
  have span_ne_zero' :
    (Ideal.span {↑P} : Ideal K⟦X⟧) ≠ 0 ∧ ((idealX K).asIdeal : Ideal K⟦X⟧) ≠ 0 := by
    simp only [Ideal.zero_eq_bot, ne_eq, Ideal.span_singleton_eq_bot, coe_eq_zero_iff, hP,
      not_false_eq_true, true_and, (idealX K).3]
  classical
  rw [Ideal.count_associates_factors_eq span_ne_zero.1
    (Ideal.span_singleton_prime Polynomial.X_ne_zero |>.mpr prime_X) span_ne_zero.2,
    Ideal.count_associates_factors_eq]
  on_goal 1 => convert! (normalized_count_X_eq_of_coe hP).symm
  exacts [Ideal.count_span_normalizedFactors_eq_of_normUnit hP Polynomial.normUnit_X prime_X,
    Ideal.count_span_normalizedFactors_eq_of_normUnit (by simp [hP]) normUnit_X X_prime,
    span_ne_zero'.1, (idealX K).isPrime, span_ne_zero'.2]

/-- The integral valuation of the power series `X : K⟦X⟧` equals `(ofAdd -1) : ℤᵐ⁰`. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/LaurentSeries/Variant2f7129c9bd2f68015125619c3bdf005447c1b443850de195489ca9499eff4a7f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/LaurentSeries/Variant2f7129c9bd2f68015125619c3bdf005447c1b443850de195489ca9499eff4a7f.lean#L453).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `679dd9c879da58e84b49b5d67a900242e38c5519` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
