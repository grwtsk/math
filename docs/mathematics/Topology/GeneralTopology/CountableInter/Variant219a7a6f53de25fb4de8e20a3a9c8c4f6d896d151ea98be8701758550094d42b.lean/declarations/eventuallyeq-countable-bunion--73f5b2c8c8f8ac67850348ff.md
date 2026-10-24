# EventuallyEq.countable_bUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c2d546b66ef10c39d56219bc09a6b1ded967991e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 86,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/21/219a7a6f53de25fb4de8e20a3a9c8c4f6d896d151ea98be8701758550094d42b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a14c340a-1247-a2f2-382d-b50f06afe887",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e52912d9-18f7-a069-ad2d-cab739784136",
  "kind": "theorem",
  "lexical_name": "EventuallyEq.countable_bUnion",
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
  "slug": "eventuallyeq-countable-bunion--73f5b2c8c8f8ac67850348ff",
  "source": {
    "blob": "c2d546b66ef10c39d56219bc09a6b1ded967991e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 86,
    "path": "GRWTSK/Topology/GeneralTopology/CountableInter/Variant219a7a6f53de25fb4de8e20a3a9c8c4f6d896d151ea98be8701758550094d42b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73f5b2c8c8f8ac67850348ff9d8788f975da2ce13b0de83a6b97f02ae0534e77",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CountableInter/Variant219a7a6f53de25fb4de8e20a3a9c8c4f6d896d151ea98be8701758550094d42b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e52912d9-18f7-a069-ad2d-cab739784136`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem EventuallyEq.countable_bUnion {ι : Type*} {S : Set ι} (hS : S.Countable)
    {s t : ∀ i ∈ S, Set α} (h : ∀ i hi, s i hi =ᶠ[l] t i hi) :
    ⋃ i ∈ S, s i ‹_› =ᶠ[l] ⋃ i ∈ S, t i ‹_› :=
  (EventuallyLE.countable_bUnion hS fun i hi => (h i hi).le).antisymm
    (EventuallyLE.countable_bUnion hS fun i hi => (h i hi).symm.le)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CountableInter/Variant219a7a6f53de25fb4de8e20a3a9c8c4f6d896d151ea98be8701758550094d42b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CountableInter/Variant219a7a6f53de25fb4de8e20a3a9c8c4f6d896d151ea98be8701758550094d42b.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c2d546b66ef10c39d56219bc09a6b1ded967991e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
