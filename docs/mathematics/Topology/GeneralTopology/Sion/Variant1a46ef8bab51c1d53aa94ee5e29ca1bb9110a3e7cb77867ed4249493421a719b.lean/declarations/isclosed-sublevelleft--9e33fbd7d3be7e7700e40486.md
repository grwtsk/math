# isClosed_sublevelLeft

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ddcfb8abece24797f880719f1a12a51e23dfd148",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 113,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1a/1a46ef8bab51c1d53aa94ee5e29ca1bb9110a3e7cb77867ed4249493421a719b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5f2786b9-137d-27a5-3c21-48a649c582ba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5940a5f4-d2b8-2cf7-4447-a30a0d90fd55",
  "kind": "theorem",
  "lexical_name": "isClosed_sublevelLeft",
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
  "slug": "isclosed-sublevelleft--9e33fbd7d3be7e7700e40486",
  "source": {
    "blob": "ddcfb8abece24797f880719f1a12a51e23dfd148",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 113,
    "path": "GRWTSK/Topology/GeneralTopology/Sion/Variant1a46ef8bab51c1d53aa94ee5e29ca1bb9110a3e7cb77867ed4249493421a719b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9e33fbd7d3be7e7700e40486e35c6c42637022f4d96dfd5d0dcd943b94bb970f",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Sion/Variant1a46ef8bab51c1d53aa94ee5e29ca1bb9110a3e7cb77867ed4249493421a719b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5940a5f4-d2b8-2cf7-4447-a30a0d90fd55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isClosed_sublevelLeft [TopologicalSpace E]
    (hfy : ∀ y ∈ Y, LowerSemicontinuousOn (fun x : E => f x y) X)
    (b : β) (y : Y) :
    IsClosed (sublevelLeft X f b y) := by
  specialize hfy y.val y.prop
  rw [← lowerSemicontinuous_restrict_iff, lowerSemicontinuous_iff_isClosed_preimage] at hfy
  exact hfy b

/-- From the quasi-convexity of `f (·, y)`, deduce that `sublevelLeft` is connected -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Sion/Variant1a46ef8bab51c1d53aa94ee5e29ca1bb9110a3e7cb77867ed4249493421a719b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Sion/Variant1a46ef8bab51c1d53aa94ee5e29ca1bb9110a3e7cb77867ed4249493421a719b.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddcfb8abece24797f880719f1a12a51e23dfd148` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
