# stoppedValue_ae_eq_condExp_of_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b5fc40ba-e239-be3d-816e-a52f565f36b3",
  "kind": "theorem",
  "lexical_name": "stoppedValue_ae_eq_condExp_of_le",
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
  "slug": "stoppedvalue-ae-eq-condexp-of-le--7bc8acb69b735e41002e47fe",
  "source": {
    "blob": "e47fa2ff16c1f1fd884c7d33518156945b81dc5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 176,
    "line": 153,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/OptionalSampling/Variant7fb208ee69e6683d74a7c170084592adcd138bd94838adf58ab72f676ff19213.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7bc8acb69b735e41002e47fe5542096459089a8df10a327af2cfae4d52b9a32f",
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

Occurrence: `result:b5fc40ba-e239-be3d-816e-a52f565f36b3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 153–176.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem stoppedValue_ae_eq_condExp_of_le [Countable ι] (h : Martingale f ℱ μ)
    (hτ : IsStoppingTime ℱ τ) (hσ : IsStoppingTime ℱ σ) (hσ_le_τ : σ ≤ τ) (hτ_le : ∀ x, τ x ≤ n)
    [SigmaFinite (μ.trim hσ.measurableSpace_le)] :
    stoppedValue f σ =ᵐ[μ] μ[stoppedValue f τ|hσ.measurableSpace] :=
  h.stoppedValue_ae_eq_condExp_of_le_of_countable_range hτ hσ hσ_le_τ hτ_le (Set.to_countable _)
    (Set.to_countable _)

@[deprecated (since := "2025-01-21")]
alias stoppedValue_ae_eq_condexp_of_le := stoppedValue_ae_eq_condExp_of_le

end FirstCountableTopology

section SubsetOfNat

/-! In the following results the index set verifies
`[LinearOrder ι] [LocallyFiniteOrder ι] [OrderBot ι]`, which means that it is order-isomorphic to
a subset of `ℕ`. `ι` is equipped with the discrete topology, which is also the order topology,
and is a measurable space with the Borel σ-algebra. -/


variable {ι : Type*} [LinearOrder ι] [LocallyFiniteOrder ι] [OrderBot ι] [TopologicalSpace ι]
  [DiscreteTopology ι] [MeasurableSpace ι] [BorelSpace ι] [MeasurableSpace E] [BorelSpace E]
  [SecondCountableTopology E] {ℱ : Filtration ι m} {τ σ : Ω → ι} {f : ι → Ω → E} {i : ι}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/OptionalSampling/Variant7fb208ee69e6683d74a7c170084592adcd138bd94838adf58ab72f676ff19213.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/OptionalSampling/Variant7fb208ee69e6683d74a7c170084592adcd138bd94838adf58ab72f676ff19213.lean#L153).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e47fa2ff16c1f1fd884c7d33518156945b81dc5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
