# QuotientMeasureEqMeasurePreimage.isFiniteMeasure_quotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b60d4c55-f7d2-b2d9-7220-59d098411d82",
  "kind": "theorem",
  "lexical_name": "QuotientMeasureEqMeasurePreimage.isFiniteMeasure_quotient",
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
  "slug": "quotientmeasureeqmeasurepreimage-isfinitemeasure-quotient--07c1820515dc902dd75d39e6",
  "source": {
    "blob": "6d63790ce1c96239f0d230135a22798c75606ee3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 881,
    "line": 866,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FundamentalDomain/Variantbdeee045851a63a5a582be1182a0debe0969fef15af33ac5a9abff3f8f33312a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:07c1820515dc902dd75d39e6c7cebbdc98ccc50de6e12ef9be2c0cc7d8df8972",
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

Occurrence: `result:b60d4c55-f7d2-b2d9-7220-59d098411d82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 866–881.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem QuotientMeasureEqMeasurePreimage.isFiniteMeasure_quotient
    (μ : Measure (Quotient α_mod_G)) [QuotientMeasureEqMeasurePreimage ν μ]
    [hasFun : HasFundamentalDomain G α ν] (h : covolume G α ν ≠ ∞) :
    IsFiniteMeasure μ := by
  obtain ⟨𝓕, h𝓕⟩ := hasFun.ExistsIsFundamentalDomain
  rw [h𝓕.projection_respects_measure (μ := μ)]
  have : Fact (ν 𝓕 < ∞) := by
    apply Fact.mk
    convert! Ne.lt_top h
    exact (h𝓕.covolume_eq_volume ν).symm
  infer_instance

/-- A finite measure `μ` on `α ⧸ G` satisfying `QuotientMeasureEqMeasurePreimage` has finite
covolume. -/
@[to_additive /-- A finite measure `μ` on the additive quotient of `α` by `G` satisfying
`AddQuotientMeasureEqMeasurePreimage` has finite covolume. -/]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FundamentalDomain/Variantbdeee045851a63a5a582be1182a0debe0969fef15af33ac5a9abff3f8f33312a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FundamentalDomain/Variantbdeee045851a63a5a582be1182a0debe0969fef15af33ac5a9abff3f8f33312a.lean#L866).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d63790ce1c96239f0d230135a22798c75606ee3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
