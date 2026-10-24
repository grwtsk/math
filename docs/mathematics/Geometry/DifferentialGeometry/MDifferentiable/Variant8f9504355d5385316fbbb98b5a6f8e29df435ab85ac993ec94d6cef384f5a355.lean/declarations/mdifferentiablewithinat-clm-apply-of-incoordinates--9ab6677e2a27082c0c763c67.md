# MDifferentiableWithinAt.clm_apply_of_inCoordinates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b8dd4fae-1b44-3afc-173e-33176748a663",
  "kind": "lemma",
  "lexical_name": "MDifferentiableWithinAt.clm_apply_of_inCoordinates",
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
  "slug": "mdifferentiablewithinat-clm-apply-of-incoordinates--9ab6677e2a27082c0c763c67",
  "source": {
    "blob": "efc9af6dff7b308a2044e2f33f26b8e58896bb93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 146,
    "line": 109,
    "path": "GRWTSK/Geometry/DifferentialGeometry/MDifferentiable/Variant8f9504355d5385316fbbb98b5a6f8e29df435ab85ac993ec94d6cef384f5a355.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ab6677e2a27082c0c763c67264709dd7ed96b6fbf653f844c8cc61184f3515d",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/MDifferentiable/Variant8f9504355d5385316fbbb98b5a6f8e29df435ab85ac993ec94d6cef384f5a355.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8dd4fae-1b44-3afc-173e-33176748a663`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–146.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma MDifferentiableWithinAt.clm_apply_of_inCoordinates
    (hϕ : MDifferentiableWithinAt IM 𝓘(𝕜, F₁ →L[𝕜] F₂)
      (fun m ↦ inCoordinates F₁ E₁ F₂ E₂ (b₁ m₀) (b₁ m) (b₂ m₀) (b₂ m) (ϕ m)) s m₀)
    (hv : MDifferentiableWithinAt IM (IB₁.prod 𝓘(𝕜, F₁)) (fun m ↦ (v m : TotalSpace F₁ E₁)) s m₀)
    (hb₂ : MDifferentiableWithinAt IM IB₂ b₂ s m₀) :
    MDifferentiableWithinAt IM (IB₂.prod 𝓘(𝕜, F₂))
      (fun m ↦ (ϕ m (v m) : TotalSpace F₂ E₂)) s m₀ := by
  rw [mdifferentiableWithinAt_totalSpace] at hv ⊢
  refine ⟨hb₂, ?_⟩
  apply (MDifferentiableWithinAt.clm_apply hϕ hv.2).congr_of_eventuallyEq_insert
  have A : ∀ᶠ m in 𝓝[insert m₀ s] m₀, b₁ m ∈ (trivializationAt F₁ E₁ (b₁ m₀)).baseSet := by
    apply hv.1.insert.continuousWithinAt
    apply (trivializationAt F₁ E₁ (b₁ m₀)).open_baseSet.mem_nhds
    exact FiberBundle.mem_baseSet_trivializationAt' (b₁ m₀)
  have A' : ∀ᶠ m in 𝓝[insert m₀ s] m₀, b₂ m ∈ (trivializationAt F₂ E₂ (b₂ m₀)).baseSet := by
    apply hb₂.insert.continuousWithinAt
    apply (trivializationAt F₂ E₂ (b₂ m₀)).open_baseSet.mem_nhds
    exact FiberBundle.mem_baseSet_trivializationAt' (b₂ m₀)
  filter_upwards [A, A'] with m hm h'm
  rw [inCoordinates_eq hm h'm]
  simp only [coe_comp', ContinuousLinearEquiv.coe_coe, Trivialization.continuousLinearEquivAt_apply,
    Trivialization.continuousLinearEquivAt_symm_apply, Function.comp_apply]
  congr
  rw [Trivialization.symm_apply_apply_mk (trivializationAt F₁ E₁ (b₁ m₀)) hm (v m)]

/-- Consider a differentiable map `v : M → E₁` to a vector bundle, over a basemap `b₁ : M → B₁`, and
another basemap `b₂ : M → B₂`. Given linear maps `ϕ m : E₁ (b₁ m) → E₂ (b₂ m)` depending
differentiably on `m`, one can apply `ϕ m` to `g m`, and the resulting map is differentiable.

Note that the differentiability of `ϕ` can not be always be stated as differentiability of a map
into a manifold, as the pullback bundles `b₁ *ᵖ E₁` and `b₂ *ᵖ E₂` only make sense when `b₁`
and `b₂` are globally smooth, but we want to apply this lemma with only local information.
Therefore, we formulate it using differentiability of `ϕ` read in coordinates.

Version for `MDifferentiableAt`. We also give a version for `MDifferentiableWithinAt`,
but no version for `MDifferentiableOn` or `MDifferentiable` as our assumption, written
in coordinates, only makes sense around a point.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/MDifferentiable/Variant8f9504355d5385316fbbb98b5a6f8e29df435ab85ac993ec94d6cef384f5a355.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/MDifferentiable/Variant8f9504355d5385316fbbb98b5a6f8e29df435ab85ac993ec94d6cef384f5a355.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `efc9af6dff7b308a2044e2f33f26b8e58896bb93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
