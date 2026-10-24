# Convex.toWeakSpace_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d84e977-462a-52b0-23a6-3492359bf03e",
  "kind": "theorem",
  "lexical_name": "Convex.toWeakSpace_closure",
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
  "slug": "convex-toweakspace-closure--6c71dc5db7f043ce06543c7d",
  "source": {
    "blob": "53106b46e0496c86a0df2dce6bae4d3bb6f3db9d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 44,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/WeakSpace/Variante5505b78260fc66bb05d785f474ce80f7be9728eb78778d6a53850521272a8bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c71dc5db7f043ce06543c7d168b6c29bba5daaddfc6d0beaeaf5b9278c0f356",
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

Occurrence: `result:2d84e977-462a-52b0-23a6-3492359bf03e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Convex.toWeakSpace_closure {s : Set E} (hs : Convex ℝ s) :
    (toWeakSpace 𝕜 E) '' (closure s) = closure (toWeakSpace 𝕜 E '' s) := by
  refine le_antisymm (map_continuous <| toWeakSpaceCLM 𝕜 E).continuousOn.image_closure
    (Set.compl_subset_compl.mp fun x hx ↦ ?_)
  obtain ⟨x, -, rfl⟩ := (toWeakSpace 𝕜 E).toEquiv.image_compl (closure s) |>.symm.subset hx
  have : ContinuousSMul ℝ E := IsScalarTower.continuousSMul 𝕜
  obtain ⟨f, u, hus, hux⟩ := RCLike.geometric_hahn_banach_closed_point (𝕜 := 𝕜)
    hs.closure isClosed_closure (by simpa using hx)
  let f' : WeakSpace 𝕜 E →L[𝕜] 𝕜 :=
    { toLinearMap := (f : E →ₗ[𝕜] 𝕜).comp ((toWeakSpace 𝕜 E).symm : WeakSpace 𝕜 E →ₗ[𝕜] E)
      cont := WeakBilin.eval_continuous (topDualPairing 𝕜 E).flip _ }
  have hux' : u < RCLike.reCLM.comp (f'.restrictScalars ℝ) (toWeakSpace 𝕜 E x) := by simpa [f']
  have hus' : closure (toWeakSpace 𝕜 E '' s) ⊆
      {y | RCLike.reCLM.comp (f'.restrictScalars ℝ) y ≤ u} := by
    refine closure_minimal ?_ <| isClosed_le (by fun_prop) (by fun_prop)
    rintro - ⟨y, hy, rfl⟩
    simpa [f'] using (hus y <| subset_closure hy).le
  exact (hux'.not_le <| hus' ·)

/-- If `e : E →ₗ[𝕜] F` is a linear map between locally convex spaces, and `f ∘ e` is continuous
for every continuous linear functional `f : F →L[𝕜] 𝕜`, then `e` commutes with the closure on
convex sets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/WeakSpace/Variante5505b78260fc66bb05d785f474ce80f7be9728eb78778d6a53850521272a8bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/WeakSpace/Variante5505b78260fc66bb05d785f474ce80f7be9728eb78778d6a53850521272a8bf.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53106b46e0496c86a0df2dce6bae4d3bb6f3db9d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
