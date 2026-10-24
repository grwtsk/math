# condExp_ae_eq_restrict_of_measurableSpace_eq_on

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0033b846-0855-e46a-ab39-7aa395778b0a",
  "kind": "theorem",
  "lexical_name": "condExp_ae_eq_restrict_of_measurableSpace_eq_on",
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
  "slug": "condexp-ae-eq-restrict-of-measurablespace-eq-on--9384487b9ec154d8792fbd7d",
  "source": {
    "blob": "a94dab06d340338ba9a5d66a31345fd0d8284efe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 198,
    "line": 155,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Indicator/Variant45a5c2d7f218635753fd94c82aabde10aee2fbf1425c2ec15210b0e438fb46d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9384487b9ec154d8792fbd7dff035fc637080f2bd4e9e36380d9c27cf04d4392",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Indicator/Variant45a5c2d7f218635753fd94c82aabde10aee2fbf1425c2ec15210b0e438fb46d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0033b846-0855-e46a-ab39-7aa395778b0a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 155–198.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem condExp_ae_eq_restrict_of_measurableSpace_eq_on {m m₂ m0 : MeasurableSpace α}
    {μ : Measure α} (hm : m ≤ m0) (hm₂ : m₂ ≤ m0) [SigmaFinite (μ.trim hm)]
    [SigmaFinite (μ.trim hm₂)] (hs_m : MeasurableSet[m] s)
    (hs : ∀ t, MeasurableSet[m] (s ∩ t) ↔ MeasurableSet[m₂] (s ∩ t)) :
    μ[f|m] =ᵐ[μ.restrict s] μ[f|m₂] := by
  rw [ae_eq_restrict_iff_indicator_ae_eq (hm _ hs_m)]
  have hs_m₂ : MeasurableSet[m₂] s := by rwa [← Set.inter_univ s, ← hs Set.univ, Set.inter_univ]
  by_cases hf_int : Integrable f μ
  swap; · simp_rw [condExp_of_not_integrable hf_int]; rfl
  refine ((condExp_indicator hf_int hs_m).symm.trans ?_).trans (condExp_indicator hf_int hs_m₂)
  refine ae_eq_of_forall_setIntegral_eq_of_sigmaFinite' hm₂
    (fun s _ _ => integrable_condExp.integrableOn)
    (fun s _ _ => integrable_condExp.integrableOn) ?_ ?_
    stronglyMeasurable_condExp.aestronglyMeasurable
  swap
  · have : StronglyMeasurable[m] (μ[s.indicator f|m]) := stronglyMeasurable_condExp
    refine this.aestronglyMeasurable.of_measurableSpace_le_on hm hs_m (fun t => (hs t).mp) ?_
    exact condExp_ae_eq_restrict_zero hs_m.compl (indicator_ae_eq_restrict_compl (hm _ hs_m))
  intro t ht _
  have : ∫ x in t, (μ[s.indicator f|m]) x ∂μ = ∫ x in s ∩ t, (μ[s.indicator f|m]) x ∂μ := by
    rw [← integral_add_compl (hm _ hs_m) integrable_condExp.integrableOn]
    suffices ∫ x in sᶜ, (μ[s.indicator f|m]) x ∂μ.restrict t = 0 by
      rw [this, add_zero, Measure.restrict_restrict (hm _ hs_m)]
    rw [Measure.restrict_restrict (MeasurableSet.compl (hm _ hs_m))]
    suffices μ[s.indicator f|m] =ᵐ[μ.restrict sᶜ] 0 by
      rw [Set.inter_comm, ← Measure.restrict_restrict (hm₂ _ ht)]
      calc
        ∫ x : α in t, (μ[s.indicator f|m]) x ∂μ.restrict sᶜ =
            ∫ x : α in t, 0 ∂μ.restrict sᶜ := by
          refine setIntegral_congr_ae (hm₂ _ ht) ?_
          filter_upwards [this] with x hx _ using hx
        _ = 0 := integral_zero _ _
    refine condExp_ae_eq_restrict_zero hs_m.compl ?_
    exact indicator_ae_eq_restrict_compl (hm _ hs_m)
  have hst_m : MeasurableSet[m] (s ∩ t) := (hs _).mpr (hs_m₂.inter ht)
  simp_rw [this, setIntegral_condExp hm₂ (hf_int.indicator (hm _ hs_m)) ht,
    setIntegral_condExp hm (hf_int.indicator (hm _ hs_m)) hst_m, integral_indicator (hm _ hs_m),
    Measure.restrict_restrict (hm _ hs_m), ← Set.inter_assoc, Set.inter_self]

@[deprecated (since := "2025-01-21")]
alias condexp_ae_eq_restrict_of_measurableSpace_eq_on :=
  condExp_ae_eq_restrict_of_measurableSpace_eq_on

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Indicator/Variant45a5c2d7f218635753fd94c82aabde10aee2fbf1425c2ec15210b0e438fb46d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Indicator/Variant45a5c2d7f218635753fd94c82aabde10aee2fbf1425c2ec15210b0e438fb46d9.lean#L155).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a94dab06d340338ba9a5d66a31345fd0d8284efe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
