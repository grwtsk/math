# actual_sixth_census_has_no_eventual_polynomial_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7bf4f329-4b25-e627-d043-7e68cd7df24e",
  "kind": "theorem",
  "lexical_name": "actual_sixth_census_has_no_eventual_polynomial_upper",
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
  "slug": "actual-sixth-census-has-no-eventual-polynomial-upper--ed381d124bf858fa2871985c",
  "source": {
    "blob": "98f35bbf918b355a2131d9a6c63579833bdfc9a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 61,
    "line": 29,
    "path": "GRWTSK/Analysis/ActualSixthCensusBarrier/Variantbaea64b3c7bcedc7a83c28560e13e4fce18b2b94b23adc62202b768136b5792b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ed381d124bf858fa2871985c10cef00b7cb2529ce707f38650bd0372bda93a5e",
  "verification": {
    "reference": "docs/verification/Analysis/ActualSixthCensusBarrier/Variantbaea64b3c7bcedc7a83c28560e13e4fce18b2b94b23adc62202b768136b5792b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7bf4f329-4b25-e627-d043-7e68cd7df24e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–61.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_sixth_census_has_no_eventual_polynomial_upper :
    ¬ EventuallyPolynomialUpper (fun A ↦ actualCensus A 6) := by
  rintro ⟨m, D, R, hD, _hR, hcap⟩
  have hevent : ∀ᶠ A : ℝ in atTop,
      (243 / 2) * (D + 15) * Real.exp (2 / 3) + 1 <
        Real.exp ((1 / 3) * A) / A ^ (m + 9) := by
    simpa only [Real.rpow_natCast] using
      (tendsto_exp_mul_div_rpow_atTop (m + 9 : ℕ) (1 / 3) (by norm_num)).eventually
        (eventually_gt_atTop ((243 / 2) * (D + 15) * Real.exp (2 / 3) + 1))
  obtain ⟨S, hS⟩ := eventually_atTop.mp hevent
  let A := max S (max R 8)
  have hA8 : 8 ≤ A := (le_max_right R 8).trans (le_max_right S _)
  have hA1 : 1 ≤ A := by linarith
  have hApos : 0 < A := by linarith
  have hAR : R ≤ A := (le_max_left R 8).trans (le_max_right S _)
  have hpow1 : 1 ≤ A ^ m := one_le_pow₀ hA1
  have hsmall := (actual_sixth_census_exponential_lower hA8).trans (hcap A hAR)
  have hupper : (2 / 243) * (Real.exp ((A - 2) / 3) / A ^ 9) ≤
      (D + 15) * A ^ m := by nlinarith
  rw [← mul_div_assoc] at hupper
  have hpaid := (div_le_iff₀ (pow_pos hApos 9)).mp hupper
  have hbig := (lt_div_iff₀ (pow_pos hApos (m + 9))).mp (hS A (le_max_left _ _))
  have heq : Real.exp ((1 / 3) * A) =
      Real.exp ((A - 2) / 3) * Real.exp (2 / 3) := by
    rw [← Real.exp_add]
    congr 1
    ring
  have hmult := mul_le_mul_of_nonneg_right hpaid (Real.exp_pos (2 / 3)).le
  rw [heq, pow_add] at hbig
  nlinarith [mul_pos (pow_pos hApos m) (pow_pos hApos 9)]

end
end GRWTSK.RiemannHypothesis.Conversation.ActualSixthCensusBarrier
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ActualSixthCensusBarrier/Variantbaea64b3c7bcedc7a83c28560e13e4fce18b2b94b23adc62202b768136b5792b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ActualSixthCensusBarrier/Variantbaea64b3c7bcedc7a83c28560e13e4fce18b2b94b23adc62202b768136b5792b.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98f35bbf918b355a2131d9a6c63579833bdfc9a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
