# actual_sixth_census_two_eventual_positive_constants

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ccfbe934-3f50-b5f9-6149-dcdab783023c",
  "kind": "theorem",
  "lexical_name": "actual_sixth_census_two_eventual_positive_constants",
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
  "slug": "actual-sixth-census-two-eventual-positive-constants--8f1e18a2be2e414570f571f6",
  "source": {
    "blob": "ac073defd5ee3f5d5897294cd67dd1ed70970fb4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 79,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthCensusOrder/Variant6096763e15d34f278393f47119d69e68402456f34d493e01afafac4f586bc055.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8f1e18a2be2e414570f571f6d8d7a31ef40fd96780337ddb9c8db4325c24bd52",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthCensusOrder/Variant6096763e15d34f278393f47119d69e68402456f34d493e01afafac4f586bc055.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ccfbe934-3f50-b5f9-6149-dcdab783023c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_sixth_census_two_eventual_positive_constants :
    ∃ c K R : ℝ, 0 < c ∧ 0 < K ∧ 8 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      c * (Real.exp (A / 3) / A ^ 9) ≤ actualCensus A 6 ∧
        actualCensus A 6 ≤ K * (Real.exp (A / 3) / A ^ 9) := by
  let c : ℝ := (1 / 243) * Real.exp (-2 / 3)
  let K : ℝ := max 1 (upperConstant (1 / 6)) / 6 + 15
  have hc : 0 < c := by dsimp only [c]; positivity
  have hK : 0 < K := by
    have hmax : 1 ≤ max 1 (upperConstant (1 / 6)) := le_max_left _ _
    dsimp only [K]
    linarith
  have hevent : ∀ᶠ A : ℝ in atTop,
      max 1 (15 / c) ≤ Real.exp (A / 3) / A ^ 9 := by
    simpa only [Real.rpow_natCast, one_div_mul_eq_div] using
      (tendsto_exp_mul_div_rpow_atTop (9 : ℕ) (1 / 3) (by norm_num)).eventually
        (eventually_ge_atTop (max 1 (15 / c)))
  obtain ⟨S, hS⟩ := eventually_atTop.mp hevent
  refine ⟨c, K, max S 8, hc, hK, le_max_right _ _, ?_⟩
  intro A hAR
  have hA8 : 8 ≤ A := (le_max_right S 8).trans hAR
  have hApos : 0 < A := by linarith
  have hp := hS A ((le_max_left S 8).trans hAR)
  have hp1 : 1 ≤ Real.exp (A / 3) / A ^ 9 := (le_max_left _ _).trans hp
  have hp15 : 15 / c ≤ Real.exp (A / 3) / A ^ 9 := (le_max_right _ _).trans hp
  have hpaid : 15 ≤ c * (Real.exp (A / 3) / A ^ 9) := by
    have h := (div_le_iff₀ hc).mp hp15
    nlinarith
  constructor
  · have hl := actual_sixth_census_exponential_lower hA8
    have heq : (2 / 243 : ℝ) * (Real.exp ((A - 2) / 3) / A ^ 9) =
        2 * c * (Real.exp (A / 3) / A ^ 9) := by
      dsimp only [c]
      have he : Real.exp ((A - 2) / 3) = Real.exp (-2 / 3) * Real.exp (A / 3) := by
        rw [← Real.exp_add]
        congr 1
        ring
      rw [he]
      ring
    rw [heq] at hl
    nlinarith
  · have hu := actual_sixth_census_complete_upper hA8
    dsimp only [K]
    nlinarith

end
end GRWTSK.RiemannHypothesis.Conversation.ActualSixthCensusOrder
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthCensusOrder/Variant6096763e15d34f278393f47119d69e68402456f34d493e01afafac4f586bc055.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualSixthCensusOrder/Variant6096763e15d34f278393f47119d69e68402456f34d493e01afafac4f586bc055.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac073defd5ee3f5d5897294cd67dd1ed70970fb4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
