# stoppedValue_min_ae_eq_condExp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a7e835b53348336fdb5c7de5c9e46df49945f1dd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 205,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/19/196e41d7ed0c0f53b3493ebb43ca9fa4bec82b9c2c02928ff4399024f4425735.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cecd29ef-8205-49fc-80fa-b71a38ea7384",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:11491a3e-85b0-47b0-d8e0-b0383db15253",
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
  "slug": "stoppedvalue-min-ae-eq-condexp--99107bdefc46b5e0b144e03d",
  "source": {
    "blob": "a7e835b53348336fdb5c7de5c9e46df49945f1dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 205,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/OptionalSampling/Variant196e41d7ed0c0f53b3493ebb43ca9fa4bec82b9c2c02928ff4399024f4425735.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99107bdefc46b5e0b144e03deda0bdb3bbd435b3ca1f85e8564f624aa097f559",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/OptionalSampling/Variant196e41d7ed0c0f53b3493ebb43ca9fa4bec82b9c2c02928ff4399024f4425735.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11491a3e-85b0-47b0-d8e0-b0383db15253`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 205–239.

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

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/OptionalSampling/Variant196e41d7ed0c0f53b3493ebb43ca9fa4bec82b9c2c02928ff4399024f4425735.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/OptionalSampling/Variant196e41d7ed0c0f53b3493ebb43ca9fa4bec82b9c2c02928ff4399024f4425735.lean#L205).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7e835b53348336fdb5c7de5c9e46df49945f1dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
