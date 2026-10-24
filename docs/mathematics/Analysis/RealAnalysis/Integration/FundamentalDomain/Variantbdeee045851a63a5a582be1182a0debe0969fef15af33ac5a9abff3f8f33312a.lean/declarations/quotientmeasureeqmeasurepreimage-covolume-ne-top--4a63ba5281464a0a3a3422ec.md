# QuotientMeasureEqMeasurePreimage.covolume_ne_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1d15cf2a-c78d-0602-ebc2-8100c1fe47fd",
  "kind": "theorem",
  "lexical_name": "QuotientMeasureEqMeasurePreimage.covolume_ne_top",
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
  "slug": "quotientmeasureeqmeasurepreimage-covolume-ne-top--4a63ba5281464a0a3a3422ec",
  "source": {
    "blob": "6d63790ce1c96239f0d230135a22798c75606ee3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 908,
    "line": 882,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FundamentalDomain/Variantbdeee045851a63a5a582be1182a0debe0969fef15af33ac5a9abff3f8f33312a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a63ba5281464a0a3a3422ec6e6e240482122d471ea750d6ea1cd3a460dc1a86",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FundamentalDomain/Variantbdeee045851a63a5a582be1182a0debe0969fef15af33ac5a9abff3f8f33312a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1d15cf2a-c78d-0602-ebc2-8100c1fe47fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 882–908.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem QuotientMeasureEqMeasurePreimage.covolume_ne_top
    (μ : Measure (Quotient α_mod_G)) [QuotientMeasureEqMeasurePreimage ν μ] [IsFiniteMeasure μ] :
    covolume G α ν < ∞ := by
  by_cases hasFun : HasFundamentalDomain G α ν
  · obtain ⟨𝓕, h𝓕⟩ := hasFun.ExistsIsFundamentalDomain
    have H : μ univ < ∞ := IsFiniteMeasure.measure_univ_lt_top
    rw [h𝓕.projection_respects_measure_apply (μ := μ) MeasurableSet.univ] at H
    simpa [h𝓕.covolume_eq_volume ν] using H
  · simp [covolume, hasFun]

end QuotientMeasureEqMeasurePreimage

section QuotientMeasureEqMeasurePreimage


variable [Group G] [MulAction G α] [MeasureSpace α] [Countable G]
  [SMulInvariantMeasure G α volume] [MeasurableConstSMul G α]

local notation "α_mod_G" => MulAction.orbitRel G α

local notation "π" => @Quotient.mk _ α_mod_G

/-- If a measure `μ` on a quotient satisfies `QuotientMeasureEqMeasurePreimage` with respect to a
sigma-finite measure, then it is itself `SigmaFinite`. -/
@[to_additive MeasureTheory.instSigmaFiniteAddQuotientOrbitRelInstMeasurableSpaceToMeasurableSpace
/-- If a measure `μ` on a quotient satisfies `AddQuotientMeasureEqMeasurePreimage` with respect to a
sigma-finite measure, then it is itself `SigmaFinite`. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FundamentalDomain/Variantbdeee045851a63a5a582be1182a0debe0969fef15af33ac5a9abff3f8f33312a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FundamentalDomain/Variantbdeee045851a63a5a582be1182a0debe0969fef15af33ac5a9abff3f8f33312a.lean#L882).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d63790ce1c96239f0d230135a22798c75606ee3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
