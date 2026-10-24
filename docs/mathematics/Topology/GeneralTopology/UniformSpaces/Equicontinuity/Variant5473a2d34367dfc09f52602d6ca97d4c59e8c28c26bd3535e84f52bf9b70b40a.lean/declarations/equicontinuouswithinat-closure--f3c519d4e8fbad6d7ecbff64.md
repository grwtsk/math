# EquicontinuousWithinAt.closure'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "48fa4eba65d381f5e61ad0a9e10d755c06d02b2d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 773,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/54/5473a2d34367dfc09f52602d6ca97d4c59e8c28c26bd3535e84f52bf9b70b40a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0e2e812c-df93-d8dd-79a7-1663ac5e1764",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:55b17cdb-7b01-5010-2f4b-e2f410031f94",
  "kind": "theorem",
  "lexical_name": "EquicontinuousWithinAt.closure'",
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
  "slug": "equicontinuouswithinat-closure--f3c519d4e8fbad6d7ecbff64",
  "source": {
    "blob": "48fa4eba65d381f5e61ad0a9e10d755c06d02b2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 788,
    "line": 773,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Variant5473a2d34367dfc09f52602d6ca97d4c59e8c28c26bd3535e84f52bf9b70b40a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f3c519d4e8fbad6d7ecbff6446c2fc97f775151a0f62db6c79514a37aaebc120",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Variant5473a2d34367dfc09f52602d6ca97d4c59e8c28c26bd3535e84f52bf9b70b40a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:55b17cdb-7b01-5010-2f4b-e2f410031f94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 773–788.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem EquicontinuousWithinAt.closure' {A : Set Y} {u : Y → X → α} {S : Set X} {x₀ : X}
    (hA : EquicontinuousWithinAt (u ∘ (↑) : A → X → α) S x₀) (hu₁ : Continuous (S.domRestrict ∘ u))
    (hu₂ : Continuous (eval x₀ ∘ u)) :
    EquicontinuousWithinAt (u ∘ (↑) : closure A → X → α) S x₀ := by
  intro U hU
  rcases mem_uniformity_isClosed hU with ⟨V, hV, hVclosed, hVU⟩
  filter_upwards [hA V hV, eventually_mem_nhdsWithin] with x hx hxS
  rw [SetCoe.forall] at *
  change A ⊆ (fun f => (u f x₀, u f x)) ⁻¹' V at hx
  refine (closure_minimal hx <| hVclosed.preimage <| hu₂.prodMk ?_).trans (preimage_mono hVU)
  exact (continuous_apply ⟨x, hxS⟩).comp hu₁

/-- If a set of functions is equicontinuous at some `x₀`, the same is true for its closure in *any*
topology for which evaluation at any point is continuous. Since this will be applied to
`DFunLike` types, we state it for any topological space with a map to `X → α` satisfying the right
continuity conditions. See also `Set.EquicontinuousAt.closure` for a more familiar statement. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Variant5473a2d34367dfc09f52602d6ca97d4c59e8c28c26bd3535e84f52bf9b70b40a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Equicontinuity/Variant5473a2d34367dfc09f52602d6ca97d4c59e8c28c26bd3535e84f52bf9b70b40a.lean#L773).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48fa4eba65d381f5e61ad0a9e10d755c06d02b2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
