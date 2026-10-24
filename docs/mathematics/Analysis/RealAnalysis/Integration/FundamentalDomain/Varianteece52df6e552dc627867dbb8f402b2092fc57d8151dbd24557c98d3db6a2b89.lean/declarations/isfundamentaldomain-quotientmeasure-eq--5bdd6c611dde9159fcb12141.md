# IsFundamentalDomain.quotientMeasure_eq

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
      "line": 636,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ee/eece52df6e552dc627867dbb8f402b2092fc57d8151dbd24557c98d3db6a2b89.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6ff519d0-b755-86cb-2b19-6a57613e5cec",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:68597848-43a5-ebf6-fa0c-0e72700881ff",
  "kind": "lemma",
  "lexical_name": "IsFundamentalDomain.quotientMeasure_eq",
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
  "slug": "isfundamentaldomain-quotientmeasure-eq--5bdd6c611dde9159fcb12141",
  "source": {
    "blob": "7b3b0246c7de95c6f2f9f04d8e60615abe127267",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 667,
    "line": 636,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FundamentalDomain/Varianteece52df6e552dc627867dbb8f402b2092fc57d8151dbd24557c98d3db6a2b89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5bdd6c611dde9159fcb1214162fc9fd446e34ba10b709189f0cde87b2f6903d6",
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

Occurrence: `result:68597848-43a5-ebf6-fa0c-0e72700881ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 636–667.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsFundamentalDomain.quotientMeasure_eq [Countable G] [MeasurableSpace G] {s t : Set α}
    [SMulInvariantMeasure G α μ] [MeasurableSMul G α] (fund_dom_s : IsFundamentalDomain G s μ)
    (fund_dom_t : IsFundamentalDomain G t μ) :
    (μ.restrict s).map π = (μ.restrict t).map π := by
  ext U meas_U
  rw [measure_map_restrict_apply (meas_U := meas_U), measure_map_restrict_apply (meas_U := meas_U)]
  apply MeasureTheory.IsFundamentalDomain.measure_set_eq fund_dom_s fund_dom_t
  · exact measurableSet_quotient.mp meas_U
  · intro g
    ext x
    have : Quotient.mk α_mod_G (g • x) = Quotient.mk α_mod_G x := by
      apply Quotient.sound
      use g
    simp only [mem_preimage, this]

end FundamentalDomainMeasure

/-! ## `HasFundamentalDomain` typeclass

We define `HasFundamentalDomain` in order to be able to define the `covolume` of a quotient of `α`
by a group `G`, which under reasonable conditions does not depend on the choice of fundamental
domain. Even though any "sensible" action should have a fundamental domain, this is a rather
delicate question which was recently addressed by Misha Kapovich: https://arxiv.org/abs/2301.05325

TODO: Formalize the existence of a Dirichlet domain as in Kapovich's paper.

-/

section HasFundamentalDomain

/-- We say a quotient of `α` by `G` `HasAddFundamentalDomain` if there is a measurable set
  `s` for which `IsAddFundamentalDomain G s` holds. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FundamentalDomain/Varianteece52df6e552dc627867dbb8f402b2092fc57d8151dbd24557c98d3db6a2b89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FundamentalDomain/Varianteece52df6e552dc627867dbb8f402b2092fc57d8151dbd24557c98d3db6a2b89.lean#L636).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7b3b0246c7de95c6f2f9f04d8e60615abe127267` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
