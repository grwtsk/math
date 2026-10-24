# IsFundamentalDomain.covolume_eq_volume

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7b3b0246c7de95c6f2f9f04d8e60615abe127267",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 699,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ee/eece52df6e552dc627867dbb8f402b2092fc57d8151dbd24557c98d3db6a2b89.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bb8e9f4f-c13f-30fa-7810-d8960267f481",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:95274030-c07a-dfd5-0604-735928a48768",
  "kind": "lemma",
  "lexical_name": "IsFundamentalDomain.covolume_eq_volume",
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
  "slug": "isfundamentaldomain-covolume-eq-volume--8fe720fb60ef24413dc6f74e",
  "source": {
    "blob": "7b3b0246c7de95c6f2f9f04d8e60615abe127267",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 734,
    "line": 699,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FundamentalDomain/Varianteece52df6e552dc627867dbb8f402b2092fc57d8151dbd24557c98d3db6a2b89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8fe720fb60ef24413dc6f74e5bca8e8258215fd0c1f843f6d8acf1b2105a539a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FundamentalDomain/Varianteece52df6e552dc627867dbb8f402b2092fc57d8151dbd24557c98d3db6a2b89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95274030-c07a-dfd5-0604-735928a48768`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 699–734.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsFundamentalDomain.covolume_eq_volume (ν : Measure α) [Countable G]
    [MeasurableSpace G] [MeasurableSMul G α] [SMulInvariantMeasure G α ν] {s : Set α}
    (fund_dom_s : IsFundamentalDomain G s ν) : covolume G α ν = ν s := by
  dsimp [covolume]
  simp only [(fund_dom_s.hasFundamentalDomain ν), ↓reduceDIte]
  rw [fund_dom_s.measure_eq]
  exact (fund_dom_s.hasFundamentalDomain ν).ExistsIsFundamentalDomain.choose_spec

end HasFundamentalDomain

/-! ## `QuotientMeasureEqMeasurePreimage` typeclass

This typeclass describes a situation in which a measure `μ` on `α ⧸ G` can be computed by
taking a measure `ν` on `α` of the intersection of the pullback with a fundamental domain.

It's curious that in measure theory, measures can be pushed forward, while in geometry, volumes can
be pulled back. And yet here, we are describing a situation involving measures in a geometric way.

Another viewpoint is that if a set is small enough to fit in a single fundamental domain, then its
`ν` measure in `α` is the same as the `μ` measure of its pushforward in `α ⧸ G`.

-/

section QuotientMeasureEqMeasurePreimage

section additive

variable [AddGroup G] [AddAction G α] [MeasurableSpace α]

local notation "α_mod_G" => AddAction.orbitRel G α

local notation "π" => @Quotient.mk _ α_mod_G

/-- A measure `μ` on the `AddQuotient` of `α` mod `G` satisfies
  `AddQuotientMeasureEqMeasurePreimage` if: for any fundamental domain `t`, and any measurable
  subset `U` of the quotient, `μ U = volume ((π ⁻¹' U) ∩ t)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FundamentalDomain/Varianteece52df6e552dc627867dbb8f402b2092fc57d8151dbd24557c98d3db6a2b89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FundamentalDomain/Varianteece52df6e552dc627867dbb8f402b2092fc57d8151dbd24557c98d3db6a2b89.lean#L699).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b3b0246c7de95c6f2f9f04d8e60615abe127267` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
