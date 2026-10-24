# properPrimePowerContribution_measurable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:12299475-498c-03af-1c5e-06bac9623df6",
  "kind": "theorem",
  "lexical_name": "properPrimePowerContribution_measurable",
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
  "slug": "properprimepowercontribution-measurable--578b2259f946747091b8f0c0",
  "source": {
    "blob": "48dfb0cb8e392348d6c7937b6c19910172ee724d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 31,
    "path": "GRWTSK/Analysis/MeasureTheory/ProperPowerRemainderLaplaceAudit/Variant04f66ed7bf5cc1e62b1324618f6ef528e5db9d07078280cc49499da3f9542e30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:578b2259f946747091b8f0c02cddaad60acd8faffae0daf3c8d42c422b56d2f2",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ProperPowerRemainderLaplaceAudit/Variant04f66ed7bf5cc1e62b1324618f6ef528e5db9d07078280cc49499da3f9542e30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:12299475-498c-03af-1c5e-06bac9623df6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem properPrimePowerContribution_measurable : Measurable properPrimePowerContribution := by
  have hC (n : ℕ) : Measurable (fun A => sourceCorrelation explicitSecondDerivative A (Real.log n)) :=
    sourceCorrelation_measurable.comp (measurable_id.prodMk measurable_const)
  have hs : Measurable (fun p : ℝ × ℕ =>
      ∑ n ∈ Finset.Icc 2 p.2,
        if (n : ℝ) < Real.exp (2 * p.1) then
          if ¬n.Prime then ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) *
            sourceCorrelation explicitSecondDerivative p.1 (Real.log n) else 0
        else 0) := by
    apply measurable_from_prod_countable_left
    intro N
    change Measurable (fun A => ∑ n ∈ Finset.Icc 2 N, _)
    apply Finset.measurable_sum
    intro n _
    apply Measurable.ite
      (measurableSet_lt measurable_const ((measurable_const.mul measurable_id).exp))
    · by_cases hn : n.Prime
      · simp only [hn, not_true_eq_false, if_false]
        exact measurable_const
      · simp only [hn, not_false_eq_true, if_true]
        exact measurable_const.mul (hC n)
    · exact measurable_const
  have hc : Measurable (fun A : ℝ => (A, ⌊Real.exp (2 * A)⌋₊)) :=
    measurable_id.prodMk ((measurable_const.mul measurable_id).exp.nat_floor)
  have he := hs.comp hc
  convert he using 1
  funext A
  simp only [properPrimePowerContribution, Cutoff.primeIndices, Finset.sum_filter,
    Function.comp_apply]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ProperPowerRemainderLaplaceAudit/Variant04f66ed7bf5cc1e62b1324618f6ef528e5db9d07078280cc49499da3f9542e30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ProperPowerRemainderLaplaceAudit/Variant04f66ed7bf5cc1e62b1324618f6ef528e5db9d07078280cc49499da3f9542e30.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48dfb0cb8e392348d6c7937b6c19910172ee724d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
