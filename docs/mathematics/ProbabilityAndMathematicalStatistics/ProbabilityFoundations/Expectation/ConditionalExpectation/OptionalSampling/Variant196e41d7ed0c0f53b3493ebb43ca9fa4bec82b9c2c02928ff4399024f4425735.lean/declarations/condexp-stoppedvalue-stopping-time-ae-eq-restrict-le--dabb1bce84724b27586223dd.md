# condExp_stoppedValue_stopping_time_ae_eq_restrict_le

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
      "line": 169,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/19/196e41d7ed0c0f53b3493ebb43ca9fa4bec82b9c2c02928ff4399024f4425735.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e275e6a3-db22-3fd9-05ca-fe5ae1159b92",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2a31e39c-8d37-af1c-0079-c1d88818226a",
  "kind": "theorem",
  "lexical_name": "condExp_stoppedValue_stopping_time_ae_eq_restrict_le",
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
  "slug": "condexp-stoppedvalue-stopping-time-ae-eq-restrict-le--dabb1bce84724b27586223dd",
  "source": {
    "blob": "a7e835b53348336fdb5c7de5c9e46df49945f1dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 169,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/OptionalSampling/Variant196e41d7ed0c0f53b3493ebb43ca9fa4bec82b9c2c02928ff4399024f4425735.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dabb1bce84724b27586223ddeb205917d8b76f5a0b6e6ffa8a9efb26f9a99bdb",
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

Occurrence: `result:2a31e39c-8d37-af1c-0079-c1d88818226a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem condExp_stoppedValue_stopping_time_ae_eq_restrict_le (h : Martingale f ℱ μ)
    (hτ : IsStoppingTime ℱ τ) (hσ : IsStoppingTime ℱ σ) [SigmaFinite (μ.trim hσ.measurableSpace_le)]
    (hτ_le : ∀ x, τ x ≤ i) :
    μ[stoppedValue f τ|hσ.measurableSpace] =ᵐ[μ.restrict {x : Ω | τ x ≤ σ x}] stoppedValue f τ := by
  rw [ae_eq_restrict_iff_indicator_ae_eq
    (hτ.measurableSpace_le _ (hτ.measurableSet_le_stopping_time hσ))]
  refine (condExp_indicator (integrable_stoppedValue ι hτ h.integrable hτ_le)
    (hτ.measurableSet_stopping_time_le hσ)).symm.trans ?_
  have h_int :
      Integrable ({ω : Ω | τ ω ≤ σ ω}.indicator (stoppedValue (fun n : ι => f n) τ)) μ := by
    refine (integrable_stoppedValue ι hτ h.integrable hτ_le).indicator ?_
    exact hτ.measurableSpace_le _ (hτ.measurableSet_le_stopping_time hσ)
  have h_meas : AEStronglyMeasurable[hσ.measurableSpace]
      ({ω : Ω | τ ω ≤ σ ω}.indicator (stoppedValue (fun n : ι => f n) τ)) μ := by
    refine StronglyMeasurable.aestronglyMeasurable ?_
    refine StronglyMeasurable.stronglyMeasurable_of_measurableSpace_le_on
      (hτ.measurableSet_le_stopping_time hσ) ?_ ?_ ?_
    · intro t ht
      rw [Set.inter_comm _ t] at ht ⊢
      rw [hτ.measurableSet_inter_le_iff hσ, IsStoppingTime.measurableSet_min_iff hτ hσ] at ht
      exact ht.2
    · refine StronglyMeasurable.indicator ?_ (hτ.measurableSet_le_stopping_time hσ)
      refine Measurable.stronglyMeasurable ?_
      exact measurable_stoppedValue h.adapted.progMeasurable_of_discrete hτ
    · intro x hx
      simp only [hx, Set.indicator_of_notMem, not_false_iff]
  exact condExp_of_aestronglyMeasurable' hσ.measurableSpace_le h_meas h_int

@[deprecated (since := "2025-01-21")]
alias condexp_stoppedValue_stopping_time_ae_eq_restrict_le :=
  condExp_stoppedValue_stopping_time_ae_eq_restrict_le

/-- **Optional Sampling theorem**. If `τ` is a bounded stopping time and `σ` is another stopping
time, then the value of a martingale `f` at the stopping time `min τ σ` is almost everywhere equal
to the conditional expectation of `f` stopped at `τ` with respect to the σ-algebra generated
by `σ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/OptionalSampling/Variant196e41d7ed0c0f53b3493ebb43ca9fa4bec82b9c2c02928ff4399024f4425735.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/OptionalSampling/Variant196e41d7ed0c0f53b3493ebb43ca9fa4bec82b9c2c02928ff4399024f4425735.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a7e835b53348336fdb5c7de5c9e46df49945f1dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
