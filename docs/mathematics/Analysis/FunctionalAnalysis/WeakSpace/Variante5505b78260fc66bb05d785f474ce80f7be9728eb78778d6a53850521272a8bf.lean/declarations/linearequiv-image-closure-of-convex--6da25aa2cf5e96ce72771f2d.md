# LinearEquiv.image_closure_of_convex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0e3f0ec7-b0b9-2c4d-ae33-1575cfc6fb3a",
  "kind": "theorem",
  "lexical_name": "LinearEquiv.image_closure_of_convex",
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
  "slug": "linearequiv-image-closure-of-convex--6da25aa2cf5e96ce72771f2d",
  "source": {
    "blob": "53106b46e0496c86a0df2dce6bae4d3bb6f3db9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 82,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/WeakSpace/Variante5505b78260fc66bb05d785f474ce80f7be9728eb78778d6a53850521272a8bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6da25aa2cf5e96ce72771f2dfa6427e00874415c71e3885cfc68bdf7bb6e6d88",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/WeakSpace/Variante5505b78260fc66bb05d785f474ce80f7be9728eb78778d6a53850521272a8bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e3f0ec7-b0b9-2c4d-ae33-1575cfc6fb3a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LinearEquiv.image_closure_of_convex {s : Set E} (hs : Convex ℝ s) (e : E ≃ₗ[𝕜] F)
    (he₁ : ∀ f : F →L[𝕜] 𝕜, Continuous (e.dualMap f))
    (he₂ : ∀ f : E →L[𝕜] 𝕜, Continuous (e.symm.dualMap f)) :
    e '' (closure s) = closure (e '' s) := by
  refine le_antisymm ((e : E →ₗ[𝕜] F).image_closure_of_convex hs he₁) ?_
  simp only [Set.le_eq_subset, ← Set.image_subset_image_iff e.symm.injective]
  simpa [Set.image_image]
    using (e.symm : F →ₗ[𝕜] E).image_closure_of_convex (hs.linear_image (e : E →ₗ[𝕜] F)) he₂

/-- If `e` is a linear isomorphism between two locally convex spaces, and `e` induces (via
precomposition) an isomorphism between their continuous duals, then `e` commutes with the closure
on convex sets.

The hypotheses hold automatically for `e := toWeakSpace 𝕜 E`, see `Convex.toWeakSpace_closure`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/WeakSpace/Variante5505b78260fc66bb05d785f474ce80f7be9728eb78778d6a53850521272a8bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/WeakSpace/Variante5505b78260fc66bb05d785f474ce80f7be9728eb78778d6a53850521272a8bf.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53106b46e0496c86a0df2dce6bae4d3bb6f3db9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
