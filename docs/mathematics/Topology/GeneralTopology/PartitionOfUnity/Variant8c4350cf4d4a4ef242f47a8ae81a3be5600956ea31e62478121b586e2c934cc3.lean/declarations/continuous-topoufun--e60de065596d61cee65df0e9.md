# continuous_toPOUFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6176447c20a96de754c80bb6fa5b6e87cf521b06",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 546,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8c4350cf4d4a4ef242f47a8ae81a3be5600956ea31e62478121b586e2c934cc3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:aa434094-123d-f45f-9160-a728d6c4c107",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5fdf1703-2bb7-fb41-44d7-7d03e5635297",
  "kind": "theorem",
  "lexical_name": "continuous_toPOUFun",
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
  "slug": "continuous-topoufun--e60de065596d61cee65df0e9",
  "source": {
    "blob": "6176447c20a96de754c80bb6fa5b6e87cf521b06",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 559,
    "line": 546,
    "path": "GRWTSK/Topology/GeneralTopology/PartitionOfUnity/Variant8c4350cf4d4a4ef242f47a8ae81a3be5600956ea31e62478121b586e2c934cc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e60de065596d61cee65df0e95fb34d80b910e0d41ed4b5629376e4cc3ec98cca",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PartitionOfUnity/Variant8c4350cf4d4a4ef242f47a8ae81a3be5600956ea31e62478121b586e2c934cc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fdf1703-2bb7-fb41-44d7-7d03e5635297`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 546–559.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_toPOUFun (i : ι) : Continuous (f.toPOUFun i) := by
  refine (f i).continuous.mul <|
    continuous_finprod_cond (fun j _ => continuous_const.sub (f j).continuous) ?_
  simp only [mulSupport_one_sub]
  exact f.locallyFinite

/-- The partition of unity defined by a `BumpCovering`.

The partition of unity is given by the formula `g i x = f i x * ∏ᶠ j < i, (1 - f j x)`. In other
words, `g i x = ∏ᶠ j < i, (1 - f j x) - ∏ᶠ j ≤ i, (1 - f j x)`, so
`∑ᶠ i, g i x = 1 - ∏ᶠ j, (1 - f j x)`. If `x ∈ s`, then one of `f j x` equals one, hence the product
of `1 - f j x` vanishes, and `∑ᶠ i, g i x = 1`.

In order to avoid an assumption `LinearOrder ι`, we use `WellOrderingRel` instead of `(<)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PartitionOfUnity/Variant8c4350cf4d4a4ef242f47a8ae81a3be5600956ea31e62478121b586e2c934cc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PartitionOfUnity/Variant8c4350cf4d4a4ef242f47a8ae81a3be5600956ea31e62478121b586e2c934cc3.lean#L546).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6176447c20a96de754c80bb6fa5b6e87cf521b06` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
