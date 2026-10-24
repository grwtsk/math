# IsCompact.uniformContinuousOn_of_continuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "52d90e44852c4b95b9d0f36b17ea523013cf2768",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 49,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bfb79da59c3164cc81af57221eaeb6c9abd25bb635e97ee810f2a1bac58f36c0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f81a060f-f273-3252-8e62-6e5cfafbeda4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:86d056b4-43a7-6815-8e0b-9a156b8d2b12",
  "kind": "theorem",
  "lexical_name": "IsCompact.uniformContinuousOn_of_continuous",
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
  "slug": "iscompact-uniformcontinuouson-of-continuous--1ca7e8049a55efa6fde74bab",
  "source": {
    "blob": "52d90e44852c4b95b9d0f36b17ea523013cf2768",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 49,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/HeineCantor/Variantbfb79da59c3164cc81af57221eaeb6c9abd25bb635e97ee810f2a1bac58f36c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ca7e8049a55efa6fde74babd88c153953db666fa5f42da41d6faa5a09bf12c4",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/HeineCantor/Variantbfb79da59c3164cc81af57221eaeb6c9abd25bb635e97ee810f2a1bac58f36c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86d056b4-43a7-6815-8e0b-9a156b8d2b12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 49–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsCompact.uniformContinuousOn_of_continuous {s : Set α} {f : α → β} (hs : IsCompact s)
    (hf : ContinuousOn f s) : UniformContinuousOn f s := by
  rw [uniformContinuousOn_iff_restrict]
  rw [isCompact_iff_compactSpace] at hs
  rw [continuousOn_iff_continuous_domRestrict] at hf
  exact CompactSpace.uniformContinuous_of_continuous hf

/-- If `s` is compact and `f` is continuous at all points of `s`, then `f` is
"uniformly continuous at the set `s`", i.e. `f x` is close to `f y` whenever `x ∈ s` and `y` is
close to `x` (even if `y` is not itself in `s`, so this is a stronger assertion than
`UniformContinuousOn s`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/HeineCantor/Variantbfb79da59c3164cc81af57221eaeb6c9abd25bb635e97ee810f2a1bac58f36c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/HeineCantor/Variantbfb79da59c3164cc81af57221eaeb6c9abd25bb635e97ee810f2a1bac58f36c0.lean#L49).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52d90e44852c4b95b9d0f36b17ea523013cf2768` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
