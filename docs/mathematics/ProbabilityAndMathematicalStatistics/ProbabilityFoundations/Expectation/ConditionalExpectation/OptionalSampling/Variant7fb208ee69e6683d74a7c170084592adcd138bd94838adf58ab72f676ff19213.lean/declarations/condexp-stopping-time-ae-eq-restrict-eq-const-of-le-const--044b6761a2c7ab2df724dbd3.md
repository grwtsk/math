# condExp_stopping_time_ae_eq_restrict_eq_const_of_le_const

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7e47c10b-3f04-3d99-f091-c5582c4e88bf",
  "kind": "theorem",
  "lexical_name": "condExp_stopping_time_ae_eq_restrict_eq_const_of_le_const",
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
  "slug": "condexp-stopping-time-ae-eq-restrict-eq-const-of-le-const--044b6761a2c7ab2df724dbd3",
  "source": {
    "blob": "e47fa2ff16c1f1fd884c7d33518156945b81dc5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 69,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/OptionalSampling/Variant7fb208ee69e6683d74a7c170084592adcd138bd94838adf58ab72f676ff19213.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:044b6761a2c7ab2df724dbd3345e779ddfe9082a1c477852f6647dc66ff91bcf",
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

Occurrence: `result:7e47c10b-3f04-3d99-f091-c5582c4e88bf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem condExp_stopping_time_ae_eq_restrict_eq_const_of_le_const (h : Martingale f ℱ μ)
    (hτ : IsStoppingTime ℱ τ) (hτ_le : ∀ x, τ x ≤ n)
    [SigmaFinite (μ.trim (hτ.measurableSpace_le_of_le hτ_le))] (i : ι) :
    μ[f n|hτ.measurableSpace] =ᵐ[μ.restrict {x | τ x = i}] f i := by
  by_cases hin : i ≤ n
  · refine Filter.EventuallyEq.trans ?_ (ae_restrict_of_ae (h.condExp_ae_eq hin))
    refine condExp_ae_eq_restrict_of_measurableSpace_eq_on (hτ.measurableSpace_le_of_le hτ_le)
      (ℱ.le i) (hτ.measurableSet_eq' i) fun t => ?_
    rw [Set.inter_comm _ t, IsStoppingTime.measurableSet_inter_eq_iff]
  · suffices {x : Ω | τ x = i} = ∅ by simp [this]; norm_cast
    ext1 x
    simp only [Set.mem_setOf_eq, Set.mem_empty_iff_false, iff_false]
    rintro rfl
    exact hin (hτ_le x)

@[deprecated (since := "2025-01-21")]
alias condexp_stopping_time_ae_eq_restrict_eq_const_of_le_const :=
  condExp_stopping_time_ae_eq_restrict_eq_const_of_le_const

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/OptionalSampling/Variant7fb208ee69e6683d74a7c170084592adcd138bd94838adf58ab72f676ff19213.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/OptionalSampling/Variant7fb208ee69e6683d74a7c170084592adcd138bd94838adf58ab72f676ff19213.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e47fa2ff16c1f1fd884c7d33518156945b81dc5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
