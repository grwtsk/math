# tendsto_mulIndicator_biUnion_finset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b50bad7c89222d63f6c115624f30f8c35f2a33d8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 98,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7e/7e86dab99a8010a6e27e98781f2ce98c7370c0e96ea4c53ee2293fef03c48a02.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ab06eefd-fae3-b9b5-463f-362c18872271",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:34a1624f-a641-6fe6-0aae-8a935bcda914",
  "kind": "theorem",
  "lexical_name": "tendsto_mulIndicator_biUnion_finset",
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
  "slug": "tendsto-mulindicator-biunion-finset--48f06ee8d4e4dfd5aacbdecb",
  "source": {
    "blob": "b50bad7c89222d63f6c115624f30f8c35f2a33d8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 98,
    "path": "GRWTSK/Topology/GeneralTopology/IndicatorFunction/Variant7e86dab99a8010a6e27e98781f2ce98c7370c0e96ea4c53ee2293fef03c48a02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:48f06ee8d4e4dfd5aacbdecbf4f523fe5cfa3b17e855d073f52caac7402e20a1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/IndicatorFunction/Variant7e86dab99a8010a6e27e98781f2ce98c7370c0e96ea4c53ee2293fef03c48a02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34a1624f-a641-6fe6-0aae-8a935bcda914`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_mulIndicator_biUnion_finset {ι} [One β] (s : ι → Set α) (f : α → β) (a : α) :
    Tendsto (fun n : Finset ι => mulIndicator (⋃ i ∈ n, s i) f a) atTop
      (pure <| mulIndicator (iUnion s) f a) :=
  tendsto_pure.2 <| mulIndicator_biUnion_finset_eventuallyEq s f a

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/IndicatorFunction/Variant7e86dab99a8010a6e27e98781f2ce98c7370c0e96ea4c53ee2293fef03c48a02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/IndicatorFunction/Variant7e86dab99a8010a6e27e98781f2ce98c7370c0e96ea4c53ee2293fef03c48a02.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b50bad7c89222d63f6c115624f30f8c35f2a33d8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
