# EventuallyEqSet.countable_bInter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d7f160d-9c70-704a-a63e-c5743d277689",
  "kind": "theorem",
  "lexical_name": "EventuallyEqSet.countable_bInter",
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
  "slug": "eventuallyeqset-countable-binter--dd6b6c8643b8527f6f82f278",
  "source": {
    "blob": "424619ce91905de4b5cc4db86a61e4605b0b040b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 173,
    "line": 146,
    "path": "GRWTSK/Topology/GeneralTopology/CountableInter/Variant354001b965f75ffdaae1ca365450f9662f8e5c6785e600ba4d5c38b62f3ecb10.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd6b6c8643b8527f6f82f278964c83110041650dba400b0f1d0e1d2b775e9ab9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CountableInter/Variant354001b965f75ffdaae1ca365450f9662f8e5c6785e600ba4d5c38b62f3ecb10.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d7f160d-9c70-704a-a63e-c5743d277689`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–173.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem EventuallyEqSet.countable_bInter {ι : Type*} {S : Set ι} (hS : S.Countable)
    {s t : ∀ i ∈ S, Set α} (h : ∀ i hi, s i hi =ᶠ[l] t i hi) :
    ⋂ i ∈ S, s i ‹_› =ᶠ[l] ⋂ i ∈ S, t i ‹_› :=
  (EventuallySubset.countable_bInter hS fun i hi => (h i hi).subset).antisymm
    (EventuallySubset.countable_bInter hS fun i hi => (h i hi).symm.subset)

@[deprecated (since := "2026-03-03")] alias _root_.EventuallyEq.countable_bInter :=
  EventuallyEqSet.countable_bInter

@[deprecated (since := "2026-08-14")]
alias EventuallyLE.countable_iUnion := EventuallySubset.countable_iUnion
@[deprecated (since := "2026-08-14")]
alias EventuallyEq.countable_iUnion := EventuallyEqSet.countable_iUnion
@[deprecated (since := "2026-08-14")]
alias EventuallyLE.countable_bUnion := EventuallySubset.countable_bUnion
@[deprecated (since := "2026-08-14")]
alias EventuallyEq.countable_bUnion := EventuallyEqSet.countable_bUnion
@[deprecated (since := "2026-08-14")]
alias EventuallyLE.countable_iInter := EventuallySubset.countable_iInter
@[deprecated (since := "2026-08-14")]
alias EventuallyEq.countable_iInter := EventuallyEqSet.countable_iInter
@[deprecated (since := "2026-08-14")]
alias EventuallyLE.countable_bInter := EventuallySubset.countable_bInter
@[deprecated (since := "2026-08-14")]
alias EventuallyEq.countable_bInter := EventuallyEqSet.countable_bInter

/-- Construct a filter with countable intersection property. This constructor deduces
`Filter.univ_sets` and `Filter.inter_sets` from the countable intersection property. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CountableInter/Variant354001b965f75ffdaae1ca365450f9662f8e5c6785e600ba4d5c38b62f3ecb10.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CountableInter/Variant354001b965f75ffdaae1ca365450f9662f8e5c6785e600ba4d5c38b62f3ecb10.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `424619ce91905de4b5cc4db86a61e4605b0b040b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
