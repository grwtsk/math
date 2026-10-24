# stoppedValue_min_ae_eq_condExp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f687e432-76aa-ecd7-d162-55b07e8339e2",
  "kind": "theorem",
  "lexical_name": "stoppedValue_min_ae_eq_condExp",
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
  "slug": "stoppedvalue-min-ae-eq-condexp--3476700bb4b970fb34c9f228",
  "source": {
    "blob": "e47fa2ff16c1f1fd884c7d33518156945b81dc5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 213,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/OptionalSampling/Variant7fb208ee69e6683d74a7c170084592adcd138bd94838adf58ab72f676ff19213.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3476700bb4b970fb34c9f228ae56fb062e9f2f2cbbbe03a38ff56b36031d3486",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/OptionalSampling/Variant7fb208ee69e6683d74a7c170084592adcd138bd94838adf58ab72f676ff19213.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f687e432-76aa-ecd7-d162-55b07e8339e2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stoppedValue_min_ae_eq_condExp [SigmaFiniteFiltration μ ℱ] (h : Martingale f ℱ μ)
    (hτ : IsStoppingTime ℱ τ) (hσ : IsStoppingTime ℱ σ) {n : ι} (hτ_le : ∀ x, τ x ≤ n)
    [h_sf_min : SigmaFinite (μ.trim (hτ.min hσ).measurableSpace_le)] :
    (stoppedValue f fun x => min (σ x) (τ x)) =ᵐ[μ] μ[stoppedValue f τ|hσ.measurableSpace] := by
  refine
    (h.stoppedValue_ae_eq_condExp_of_le hτ (hσ.min hτ) (fun x => min_le_right _ _) hτ_le).trans ?_
  refine ae_of_ae_restrict_of_ae_restrict_compl {x | σ x ≤ τ x} ?_ ?_
  · exact condExp_min_stopping_time_ae_eq_restrict_le hσ hτ
  · suffices μ[stoppedValue f τ|(hσ.min hτ).measurableSpace] =ᵐ[μ.restrict {x | τ x ≤ σ x}]
        μ[stoppedValue f τ|hσ.measurableSpace] by
      rw [ae_restrict_iff' (hσ.measurableSpace_le _ (hσ.measurableSet_le_stopping_time hτ).compl)]
      rw [Filter.EventuallyEq, ae_restrict_iff'] at this
      swap; · exact hτ.measurableSpace_le _ (hτ.measurableSet_le_stopping_time hσ)
      filter_upwards [this] with x hx hx_mem
      simp only [Set.mem_compl_iff, Set.mem_setOf_eq, not_le] at hx_mem
      exact hx hx_mem.le
    apply Filter.EventuallyEq.trans _ ((condExp_min_stopping_time_ae_eq_restrict_le hτ hσ).trans _)
    · exact stoppedValue f τ
    · rw [IsStoppingTime.measurableSpace_min hσ, IsStoppingTime.measurableSpace_min hτ, inf_comm]
    · have h1 : μ[stoppedValue f τ|hτ.measurableSpace] = stoppedValue f τ := by
        apply condExp_of_stronglyMeasurable hτ.measurableSpace_le
        · exact Measurable.stronglyMeasurable <|
            measurable_stoppedValue h.adapted.progMeasurable_of_discrete hτ
        · exact integrable_stoppedValue ι hτ h.integrable hτ_le
      rw [h1]
      exact (condExp_stoppedValue_stopping_time_ae_eq_restrict_le h hτ hσ hτ_le).symm

@[deprecated (since := "2025-01-21")]
alias stoppedValue_min_ae_eq_condexp := stoppedValue_min_ae_eq_condExp

end SubsetOfNat

end Martingale

end MeasureTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/OptionalSampling/Variant7fb208ee69e6683d74a7c170084592adcd138bd94838adf58ab72f676ff19213.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/OptionalSampling/Variant7fb208ee69e6683d74a7c170084592adcd138bd94838adf58ab72f676ff19213.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e47fa2ff16c1f1fd884c7d33518156945b81dc5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
