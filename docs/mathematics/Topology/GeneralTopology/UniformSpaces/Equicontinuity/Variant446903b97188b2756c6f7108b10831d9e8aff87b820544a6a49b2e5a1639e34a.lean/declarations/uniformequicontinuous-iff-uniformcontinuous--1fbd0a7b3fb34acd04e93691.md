# uniformEquicontinuous_iff_uniformContinuous

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fc7b2e8d7367ebd0e1b957b6d6402ec15a662f5c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 519,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/44/446903b97188b2756c6f7108b10831d9e8aff87b820544a6a49b2e5a1639e34a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ed8df121-305f-19d6-9dfc-9ce4b7521738",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e76c3245-d539-f24e-123a-b036ed385996",
  "kind": "theorem",
  "lexical_name": "uniformEquicontinuous_iff_uniformContinuous",
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
  "slug": "uniformequicontinuous-iff-uniformcontinuous--1fbd0a7b3fb34acd04e93691",
  "source": {
    "blob": "fc7b2e8d7367ebd0e1b957b6d6402ec15a662f5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 527,
    "line": 519,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Variant446903b97188b2756c6f7108b10831d9e8aff87b820544a6a49b2e5a1639e34a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1fbd0a7b3fb34acd04e9369118d7fced02995c636f1bbc80aee70ae8b735104d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Variant446903b97188b2756c6f7108b10831d9e8aff87b820544a6a49b2e5a1639e34a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e76c3245-d539-f24e-123a-b036ed385996`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 519–527.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniformEquicontinuous_iff_uniformContinuous {F : ι → β → α} :
    UniformEquicontinuous F ↔ UniformContinuous (ofFun ∘ Function.swap F : β → ι →ᵤ α) := by
  rw [UniformContinuous, (UniformFun.hasBasis_uniformity ι α).tendsto_right_iff]
  rfl

/-- A family `𝓕 : ι → β → α` is uniformly equicontinuous on `S` iff the function
`swap 𝓕 : β → ι → α` is uniformly continuous on `S`
*when `ι → α` is equipped with the uniform structure of uniform convergence*. This is very useful
for developing the equicontinuity API, but it should not be used directly for other purposes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Variant446903b97188b2756c6f7108b10831d9e8aff87b820544a6a49b2e5a1639e34a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Variant446903b97188b2756c6f7108b10831d9e8aff87b820544a6a49b2e5a1639e34a.lean#L519).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc7b2e8d7367ebd0e1b957b6d6402ec15a662f5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
