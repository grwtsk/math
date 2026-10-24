# LinearMap.image_closure_of_convex

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1349af4c-ecd7-f3c3-874b-3b9eee3ae050",
  "kind": "theorem",
  "lexical_name": "LinearMap.image_closure_of_convex",
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
  "slug": "linearmap-image-closure-of-convex--175791d6dac5ca72d6f2e1e2",
  "source": {
    "blob": "53106b46e0496c86a0df2dce6bae4d3bb6f3db9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 66,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/WeakSpace/Variante5505b78260fc66bb05d785f474ce80f7be9728eb78778d6a53850521272a8bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:175791d6dac5ca72d6f2e1e27759033516765f00c2c61ae1b3fb77120735b615",
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

Occurrence: `result:1349af4c-ecd7-f3c3-874b-3b9eee3ae050`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LinearMap.image_closure_of_convex {s : Set E} (hs : Convex ℝ s) (e : E →ₗ[𝕜] F)
    (he : ∀ f : F →L[𝕜] 𝕜, Continuous (e.dualMap f)) :
    e '' (closure s) ⊆ closure (e '' s) := by
  suffices he' : Continuous (toWeakSpace 𝕜 F <| e <| (toWeakSpace 𝕜 E).symm ·) by
    have h_convex : Convex ℝ (e '' s) := hs.linear_image (F := F) e
    rw [← Set.image_subset_image_iff (toWeakSpace 𝕜 F).injective, h_convex.toWeakSpace_closure 𝕜]
    simpa only [Set.image_image, ← hs.toWeakSpace_closure 𝕜, LinearEquiv.symm_apply_apply]
      using he'.continuousOn.image_closure (s := toWeakSpace 𝕜 E '' s)
  exact WeakBilin.continuous_of_continuous_eval _ fun f ↦
    WeakBilin.eval_continuous _ { toLinearMap := e.dualMap f : E →L[𝕜] 𝕜 }

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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/WeakSpace/Variante5505b78260fc66bb05d785f474ce80f7be9728eb78778d6a53850521272a8bf.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53106b46e0496c86a0df2dce6bae4d3bb6f3db9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
