# condExp_restrict_ae_eq_restrict

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:76d45745-b94e-73a9-0b4e-1ccd51968842",
  "kind": "theorem",
  "lexical_name": "condExp_restrict_ae_eq_restrict",
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
  "slug": "condexp-restrict-ae-eq-restrict--30c1399a6fa67c053caa1760",
  "source": {
    "blob": "a94dab06d340338ba9a5d66a31345fd0d8284efe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 124,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Indicator/Variant45a5c2d7f218635753fd94c82aabde10aee2fbf1425c2ec15210b0e438fb46d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:30c1399a6fa67c053caa176001d354fdf7a21c419f005a929ea60551f4bbe3e9",
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

Occurrence: `result:76d45745-b94e-73a9-0b4e-1ccd51968842`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem condExp_restrict_ae_eq_restrict (hm : m ≤ m0) [SigmaFinite (μ.trim hm)]
    (hs_m : MeasurableSet[m] s) (hf_int : Integrable f μ) :
    (μ.restrict s)[f|m] =ᵐ[μ.restrict s] μ[f|m] := by
  have : SigmaFinite ((μ.restrict s).trim hm) := by rw [← restrict_trim hm _ hs_m]; infer_instance
  rw [ae_eq_restrict_iff_indicator_ae_eq (hm _ hs_m)]
  refine EventuallyEq.trans ?_ (condExp_indicator hf_int hs_m)
  refine ae_eq_condExp_of_forall_setIntegral_eq hm (hf_int.indicator (hm _ hs_m)) ?_ ?_ ?_
  · intro t ht _
    rw [← integrable_indicator_iff (hm _ ht), Set.indicator_indicator, Set.inter_comm, ←
      Set.indicator_indicator]
    suffices h_int_restrict : Integrable (t.indicator ((μ.restrict s)[f|m])) (μ.restrict s) by
      rw [integrable_indicator_iff (hm _ hs_m), IntegrableOn]
      exact h_int_restrict
    exact integrable_condExp.indicator (hm _ ht)
  · intro t ht _
    calc
      ∫ x in t, s.indicator ((μ.restrict s)[f|m]) x ∂μ =
          ∫ x in t, ((μ.restrict s)[f|m]) x ∂μ.restrict s := by
        rw [integral_indicator (hm _ hs_m), Measure.restrict_restrict (hm _ hs_m),
          Measure.restrict_restrict (hm _ ht), Set.inter_comm]
      _ = ∫ x in t, f x ∂μ.restrict s := setIntegral_condExp hm hf_int.integrableOn ht
      _ = ∫ x in t, s.indicator f x ∂μ := by
        rw [integral_indicator (hm _ hs_m), Measure.restrict_restrict (hm _ hs_m),
          Measure.restrict_restrict (hm _ ht), Set.inter_comm]
  · exact (stronglyMeasurable_condExp.indicator hs_m).aestronglyMeasurable

@[deprecated (since := "2025-01-21")]
alias condexp_restrict_ae_eq_restrict := condExp_restrict_ae_eq_restrict

/-- If the restriction to an `m`-measurable set `s` of a σ-algebra `m` is equal to the restriction
to `s` of another σ-algebra `m₂` (hypothesis `hs`), then `μ[f | m] =ᵐ[μ.restrict s] μ[f | m₂]`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Indicator/Variant45a5c2d7f218635753fd94c82aabde10aee2fbf1425c2ec15210b0e438fb46d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/ConditionalExpectation/Indicator/Variant45a5c2d7f218635753fd94c82aabde10aee2fbf1425c2ec15210b0e438fb46d9.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a94dab06d340338ba9a5d66a31345fd0d8284efe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
