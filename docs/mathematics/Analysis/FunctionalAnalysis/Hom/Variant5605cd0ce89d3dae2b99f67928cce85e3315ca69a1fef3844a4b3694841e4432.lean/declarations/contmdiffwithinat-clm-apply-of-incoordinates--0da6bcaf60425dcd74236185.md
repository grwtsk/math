# ContMDiffWithinAt.clm_apply_of_inCoordinates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5f2da5c7-9460-4ca2-83e5-79d921b12eb7",
  "kind": "lemma",
  "lexical_name": "ContMDiffWithinAt.clm_apply_of_inCoordinates",
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
  "slug": "contmdiffwithinat-clm-apply-of-incoordinates--0da6bcaf60425dcd74236185",
  "source": {
    "blob": "054dc88186226735ca61ceebce8be5b4e6874df7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 146,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Hom/Variant5605cd0ce89d3dae2b99f67928cce85e3315ca69a1fef3844a4b3694841e4432.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0da6bcaf60425dcd742361852d797bd4be034e43c12f28abe08a7025cd2d8564",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Hom/Variant5605cd0ce89d3dae2b99f67928cce85e3315ca69a1fef3844a4b3694841e4432.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5f2da5c7-9460-4ca2-83e5-79d921b12eb7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ContMDiffWithinAt.clm_apply_of_inCoordinates
    (hϕ : ContMDiffWithinAt IM 𝓘(𝕜, F₁ →L[𝕜] F₂) n
      (fun m ↦ inCoordinates F₁ E₁ F₂ E₂ (b₁ m₀) (b₁ m) (b₂ m₀) (b₂ m) (ϕ m)) s m₀)
    (hv : ContMDiffWithinAt IM (IB₁.prod 𝓘(𝕜, F₁)) n (fun m ↦ (v m : TotalSpace F₁ E₁)) s m₀)
    (hb₂ : ContMDiffWithinAt IM IB₂ n b₂ s m₀) :
    ContMDiffWithinAt IM (IB₂.prod 𝓘(𝕜, F₂)) n (fun m ↦ (ϕ m (v m) : TotalSpace F₂ E₂)) s m₀ := by
  rw [← contMDiffWithinAt_insert_self] at hϕ hv hb₂ ⊢
  rw [contMDiffWithinAt_totalSpace] at hv ⊢
  refine ⟨hb₂, ?_⟩
  apply (ContMDiffWithinAt.clm_apply hϕ hv.2).congr_of_eventuallyEq_of_mem ?_ (mem_insert m₀ s)
  have A : ∀ᶠ m in 𝓝[insert m₀ s] m₀, b₁ m ∈ (trivializationAt F₁ E₁ (b₁ m₀)).baseSet := by
    apply hv.1.continuousWithinAt
    apply (trivializationAt F₁ E₁ (b₁ m₀)).open_baseSet.mem_nhds
    exact FiberBundle.mem_baseSet_trivializationAt' (b₁ m₀)
  have A' : ∀ᶠ m in 𝓝[insert m₀ s] m₀, b₂ m ∈ (trivializationAt F₂ E₂ (b₂ m₀)).baseSet := by
    apply hb₂.continuousWithinAt
    apply (trivializationAt F₂ E₂ (b₂ m₀)).open_baseSet.mem_nhds
    exact FiberBundle.mem_baseSet_trivializationAt' (b₂ m₀)
  filter_upwards [A, A'] with m hm h'm
  rw [inCoordinates_eq hm h'm]
  simp only [coe_comp', ContinuousLinearEquiv.coe_coe, Trivialization.continuousLinearEquivAt_apply,
    Trivialization.continuousLinearEquivAt_symm_apply, Function.comp_apply]
  congr
  rw [Trivialization.symm_apply_apply_mk (trivializationAt F₁ E₁ (b₁ m₀)) hm (v m)]

/-- Consider a `C^n` map `v : M → E₁` to a vector bundle, over a basemap `b₁ : M → B₁`, and
another basemap `b₂ : M → B₂`. Given linear maps `ϕ m : E₁ (b₁ m) → E₂ (b₂ m)` depending smoothly
on `m`, one can apply `ϕ m` to `g m`, and the resulting map is `C^n`.

Note that the smoothness of `ϕ` can not be always be stated as smoothness of a map into a manifold,
as the pullback bundles `b₁ *ᵖ E₁` and `b₂ *ᵖ E₂` only make sense when `b₁` and `b₂` are globally
smooth, but we want to apply this lemma with only local information. Therefore, we formulate it
using smoothness of `ϕ` read in coordinates.

Version for `ContMDiffAt`. We also give a version for `ContMDiffWithinAt`, but no version for
`ContMDiffOn` or `ContMDiff` as our assumption, written in coordinates, only makes sense around
a point.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Hom/Variant5605cd0ce89d3dae2b99f67928cce85e3315ca69a1fef3844a4b3694841e4432.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Hom/Variant5605cd0ce89d3dae2b99f67928cce85e3315ca69a1fef3844a4b3694841e4432.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `054dc88186226735ca61ceebce8be5b4e6874df7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
