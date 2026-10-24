# ContinuousWithinAt.clm_apply_of_inCoordinates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8cfda231-9ead-f9bf-243f-4befde094dc6",
  "kind": "lemma",
  "lexical_name": "ContinuousWithinAt.clm_apply_of_inCoordinates",
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
  "slug": "continuouswithinat-clm-apply-of-incoordinates--5a53a3b9256e2f9a65bbfa46",
  "source": {
    "blob": "3993c8dae956b9a125f3a0e350bd97dba3fe97cf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 382,
    "line": 346,
    "path": "GRWTSK/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a53a3b9256e2f9a65bbfa468c1034f220a0ee3d92300f2b0fd19e9e46090062",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8cfda231-9ead-f9bf-243f-4befde094dc6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 346–382.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ContinuousWithinAt.clm_apply_of_inCoordinates
    (hϕ : ContinuousWithinAt
      (fun m ↦ inCoordinates F₁ E₁ F₂ E₂ (b₁ m₀) (b₁ m) (b₂ m₀) (b₂ m) (ϕ m)) s m₀)
    (hv : ContinuousWithinAt (fun m ↦ (v m : TotalSpace F₁ E₁)) s m₀)
    (hb₂ : ContinuousWithinAt b₂ s m₀) :
    ContinuousWithinAt (fun m ↦ (ϕ m (v m) : TotalSpace F₂ E₂)) s m₀ := by
  rw [← continuousWithinAt_insert_self] at hϕ hv hb₂ ⊢
  rw [FiberBundle.continuousWithinAt_totalSpace] at hv ⊢
  refine ⟨hb₂, ?_⟩
  apply (ContinuousWithinAt.clm_apply hϕ hv.2).congr_of_eventuallyEq_of_mem ?_ (mem_insert m₀ s)
  have A : ∀ᶠ m in 𝓝[insert m₀ s] m₀, b₁ m ∈ (trivializationAt F₁ E₁ (b₁ m₀)).baseSet := by
    apply hv.1
    apply (trivializationAt F₁ E₁ (b₁ m₀)).open_baseSet.mem_nhds
    exact FiberBundle.mem_baseSet_trivializationAt' (b₁ m₀)
  have A' : ∀ᶠ m in 𝓝[insert m₀ s] m₀, b₂ m ∈ (trivializationAt F₂ E₂ (b₂ m₀)).baseSet := by
    apply hb₂
    apply (trivializationAt F₂ E₂ (b₂ m₀)).open_baseSet.mem_nhds
    exact FiberBundle.mem_baseSet_trivializationAt' (b₂ m₀)
  filter_upwards [A, A'] with m hm h'm using by simp [inCoordinates_eq hm h'm, hm]


/-- Consider a continuous map `v : M → E₁` to a vector bundle, over a base map `b₁ : M → B₁`, and
another basemap `b₂ : M → B₂`. Given linear maps `ϕ m : E₁ (b₁ m) → E₂ (b₂ m)` depending
continuously on `m`, one can apply `ϕ m` to `g m`, and the resulting map is continuous.

Note that the continuity of `ϕ` cannot be always be stated as continuity of a map into a bundle,
as the pullback bundles `b₁ *ᵖ E₁` and `b₂ *ᵖ E₂` only have a nice topology when `b₁` and `b₂` are
globally continuous, but we want to apply this lemma with only local information. Therefore, we
formulate it using continuity of `ϕ` read in coordinates.

Version for `ContinuousAt`. We also give a version for `ContinuousWithinAt`, but no version for
`ContinuousOn` or `Continuous` as our assumption, written in coordinates, only makes sense around
a point.

For a version with `B₁ = B₂` and `b₁ = b₂`, in which continuity can be expressed without
`inCoordinates`, see `ContinuousWithinAt.clm_bundle_apply`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Hom/Variant1e6ae8b3c8f5e299eabbea5c3166ea4cfa0e6af1999c9d3fbd631b1f5130eed0.lean#L346).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3993c8dae956b9a125f3a0e350bd97dba3fe97cf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
