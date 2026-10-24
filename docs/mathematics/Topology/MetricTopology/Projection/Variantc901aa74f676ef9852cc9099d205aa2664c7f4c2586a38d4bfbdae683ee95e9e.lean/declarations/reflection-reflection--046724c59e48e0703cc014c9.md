# reflection_reflection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "007a4cce831fe69c7063e0469906e165e1b4f970",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 443,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c9/c901aa74f676ef9852cc9099d205aa2664c7f4c2586a38d4bfbdae683ee95e9e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:04750cb4-1720-e454-8759-d201dcbcac1c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:db7152af-489f-1354-d480-40b8b1b62706",
  "kind": "theorem",
  "lexical_name": "reflection_reflection",
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
  "slug": "reflection-reflection--046724c59e48e0703cc014c9",
  "source": {
    "blob": "007a4cce831fe69c7063e0469906e165e1b4f970",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 453,
    "line": 443,
    "path": "GRWTSK/Topology/MetricTopology/Projection/Variantc901aa74f676ef9852cc9099d205aa2664c7f4c2586a38d4bfbdae683ee95e9e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:046724c59e48e0703cc014c9273a8fe470b5c7982722eab984bc7499910c4edb",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Projection/Variantc901aa74f676ef9852cc9099d205aa2664c7f4c2586a38d4bfbdae683ee95e9e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:db7152af-489f-1354-d480-40b8b1b62706`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 443–453.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reflection_reflection (s : AffineSubspace ℝ P) [Nonempty s]
    [s.direction.HasOrthogonalProjection] (p : P) : reflection s (reflection s p) = p := by
  have : ∀ a : s, ∀ b : V, s.direction.orthogonalProjection b = 0 →
      reflection s (reflection s (b +ᵥ (a : P))) = b +ᵥ (a : P) := by
    intro _ _ h
    simp [reflection, h]
  rw [← vsub_vadd p (orthogonalProjection s p)]
  exact this (orthogonalProjection s p) _ (orthogonalProjection_vsub_orthogonalProjection s p)

/-- Reflection is its own inverse. -/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Projection/Variantc901aa74f676ef9852cc9099d205aa2664c7f4c2586a38d4bfbdae683ee95e9e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Projection/Variantc901aa74f676ef9852cc9099d205aa2664c7f4c2586a38d4bfbdae683ee95e9e.lean#L443).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `007a4cce831fe69c7063e0469906e165e1b4f970` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
