# Convex.locPathConnectedSpace

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4ca4ca0adf7dcfdd8baed1c0decdce193a11d196",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 105,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f640b6e4c4bff19eb518e41f94430db7db1d11f2e32cdcce28dbd52f3ca20f55.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:275e9bff-b923-5477-4b60-f0a5f470b3e1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:41126216-d4a3-a0db-ef43-26b819ccfc15",
  "kind": "theorem",
  "lexical_name": "Convex.locPathConnectedSpace",
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
  "slug": "convex-locpathconnectedspace--f0ce1f320e3129ab52aa4957",
  "source": {
    "blob": "4ca4ca0adf7dcfdd8baed1c0decdce193a11d196",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 105,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/LocallyConvex/Variantf640b6e4c4bff19eb518e41f94430db7db1d11f2e32cdcce28dbd52f3ca20f55.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f0ce1f320e3129ab52aa495778494c8c57d09b20203750b959be67e27d1a6807",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/LocallyConvex/Variantf640b6e4c4bff19eb518e41f94430db7db1d11f2e32cdcce28dbd52f3ca20f55.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41126216-d4a3-a0db-ef43-26b819ccfc15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Convex.locPathConnectedSpace [Module ℝ E] [ContinuousSMul ℝ E] [LocallyConvexSpace ℝ E]
    {S : Set E} (hS : Convex ℝ S) : LocPathConnectedSpace S := by
  refine ⟨fun x ↦ ⟨fun s ↦ ⟨fun hs ↦ ?_, fun ⟨t, ht⟩ ↦ mem_of_superset ht.1.1 ht.2⟩⟩⟩
  let ⟨t, ht⟩ := (mem_nhds_subtype S x s).mp hs
  let ⟨t', ht'⟩ := (LocallyConvexSpace.convex_basis (𝕜 := ℝ) x.1).mem_iff.mp ht.1
  refine ⟨(↑) ⁻¹' t', ⟨?_, ?_⟩, (preimage_mono ht'.2).trans ht.2⟩
  · exact continuousAt_subtype_val.preimage_mem_nhds ht'.1.1
  · refine Subtype.preimage_coe_self_inter _ _ ▸ IsPathConnected.preimage_coe ?_ inter_subset_left
    exact (hS.inter ht'.1.2).isPathConnected ⟨x, x.2, mem_of_mem_nhds ht'.1.1⟩

end Module

section LinearOrderedField

variable (𝕜 E : Type*) [Field 𝕜] [LinearOrder 𝕜] [IsStrictOrderedRing 𝕜]
  [AddCommGroup E] [Module 𝕜 E] [TopologicalSpace E]
  [IsTopologicalAddGroup E] [ContinuousConstSMul 𝕜 E]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/LocallyConvex/Variantf640b6e4c4bff19eb518e41f94430db7db1d11f2e32cdcce28dbd52f3ca20f55.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/LocallyConvex/Variantf640b6e4c4bff19eb518e41f94430db7db1d11f2e32cdcce28dbd52f3ca20f55.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4ca4ca0adf7dcfdd8baed1c0decdce193a11d196` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
