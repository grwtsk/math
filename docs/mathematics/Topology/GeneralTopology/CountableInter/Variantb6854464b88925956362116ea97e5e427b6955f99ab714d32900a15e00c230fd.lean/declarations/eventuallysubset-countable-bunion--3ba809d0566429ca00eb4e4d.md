# EventuallySubset.countable_bUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e23749c7d2e55ce5ed83a21b279237a700d20a54",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 93,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b6/b6854464b88925956362116ea97e5e427b6955f99ab714d32900a15e00c230fd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:e94483ea-46e7-04a3-e46c-a0def09b41dc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d0372113-4763-c1d4-ae5b-be3334af1e18",
  "kind": "theorem",
  "lexical_name": "EventuallySubset.countable_bUnion",
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
  "slug": "eventuallysubset-countable-bunion--3ba809d0566429ca00eb4e4d",
  "source": {
    "blob": "e23749c7d2e55ce5ed83a21b279237a700d20a54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 93,
    "path": "GRWTSK/Topology/GeneralTopology/CountableInter/Variantb6854464b88925956362116ea97e5e427b6955f99ab714d32900a15e00c230fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ba809d0566429ca00eb4e4daa4f41b6237003ce3a7434e3647210b06ec4ba05",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CountableInter/Variantb6854464b88925956362116ea97e5e427b6955f99ab714d32900a15e00c230fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d0372113-4763-c1d4-ae5b-be3334af1e18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem EventuallySubset.countable_bUnion {ι : Type*} {S : Set ι} (hS : S.Countable)
    {s t : ∀ i ∈ S, Set α} (h : ∀ i hi, s i hi ≤ᶠ[l] t i hi) :
    ⋃ i ∈ S, s i ‹_› ≤ᶠ[l] ⋃ i ∈ S, t i ‹_› := by
  simp only [biUnion_eq_iUnion]
  have := hS.toEncodable
  exact EventuallySubset.countable_iUnion fun i => h i i.2

@[deprecated (since := "2026-03-03")] alias _root_.EventuallyLE.countable_bUnion :=
  EventuallySubset.countable_bUnion

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CountableInter/Variantb6854464b88925956362116ea97e5e427b6955f99ab714d32900a15e00c230fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CountableInter/Variantb6854464b88925956362116ea97e5e427b6955f99ab714d32900a15e00c230fd.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e23749c7d2e55ce5ed83a21b279237a700d20a54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
