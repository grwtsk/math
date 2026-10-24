# QuotientMeasureEqMeasurePreimage.covolume_ne_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a9bb518e-89db-3541-11ca-e96a14d899a6",
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
  "slug": "quotientmeasureeqmeasurepreimage-covolume-ne-top--b8ef96d47aecc55c372c9221",
  "source": {
    "blob": "80045c94a7cb1b6ad5bfd47fad55bdb425cbf1a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 901,
    "line": 877,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FundamentalDomain/Variant4a844153021ca491f47c5227603bcfc8f6b126d67cd6f7a19d506527e6781d90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8ef96d47aecc55c372c92210e840d31ff560f4223e4620763ec80ab160eaf72",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FundamentalDomain/Variant4a844153021ca491f47c5227603bcfc8f6b126d67cd6f7a19d506527e6781d90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9bb518e-89db-3541-11ca-e96a14d899a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 877–901.

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


variable [Group G] [MulAction G α] [MeasureSpace α] [Countable G] [MeasurableSpace G]
  [SMulInvariantMeasure G α volume] [MeasurableSMul G α]

local notation "α_mod_G" => MulAction.orbitRel G α

local notation "π" => @Quotient.mk _ α_mod_G

/-- If a measure `μ` on a quotient satisfies `QuotientVolumeEqVolumePreimage` with respect to a
sigma-finite measure, then it is itself `SigmaFinite`. -/
@[to_additive MeasureTheory.instSigmaFiniteAddQuotientOrbitRelInstMeasurableSpaceToMeasurableSpace]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FundamentalDomain/Variant4a844153021ca491f47c5227603bcfc8f6b126d67cd6f7a19d506527e6781d90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FundamentalDomain/Variant4a844153021ca491f47c5227603bcfc8f6b126d67cd6f7a19d506527e6781d90.lean#L877).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80045c94a7cb1b6ad5bfd47fad55bdb425cbf1a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
