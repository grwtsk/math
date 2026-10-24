# QuotientMeasureEqMeasurePreimage.unique

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f0d1d3fd-0185-d5c4-1967-44e83f2c7bb9",
  "kind": "lemma",
  "lexical_name": "QuotientMeasureEqMeasurePreimage.unique",
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
  "slug": "quotientmeasureeqmeasurepreimage-unique--9ab493fd5ba792dcca4d5a96",
  "source": {
    "blob": "80045c94a7cb1b6ad5bfd47fad55bdb425cbf1a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 792,
    "line": 783,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FundamentalDomain/Variant4a844153021ca491f47c5227603bcfc8f6b126d67cd6f7a19d506527e6781d90.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ab493fd5ba792dcca4d5a963a42e60a7784d6584338244f6fb11536ed14b464",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FundamentalDomain/Variant4a844153021ca491f47c5227603bcfc8f6b126d67cd6f7a19d506527e6781d90.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0d1d3fd-0185-d5c4-1967-44e83f2c7bb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 783–792.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma QuotientMeasureEqMeasurePreimage.unique
    [hasFun : HasFundamentalDomain G α ν] (μ μ' : Measure (Quotient α_mod_G))
    [QuotientMeasureEqMeasurePreimage ν μ] [QuotientMeasureEqMeasurePreimage ν μ'] :
    μ = μ' := by
  obtain ⟨𝓕, h𝓕⟩ := hasFun.ExistsIsFundamentalDomain
  rw [h𝓕.projection_respects_measure (μ := μ), h𝓕.projection_respects_measure (μ := μ')]

/-- The quotient map to `α ⧸ G` is measure-preserving between the restriction of `volume` to a
  fundamental domain in `α` and a related measure satisfying `QuotientMeasureEqMeasurePreimage`. -/
@[to_additive IsAddFundamentalDomain.measurePreserving_add_quotient_mk]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FundamentalDomain/Variant4a844153021ca491f47c5227603bcfc8f6b126d67cd6f7a19d506527e6781d90.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FundamentalDomain/Variant4a844153021ca491f47c5227603bcfc8f6b126d67cd6f7a19d506527e6781d90.lean#L783).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80045c94a7cb1b6ad5bfd47fad55bdb425cbf1a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
