# tangentMap_tangentBundle_pure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3ba07e05f39d0f635cb34837afe54a28fd14fcab",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 564,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b3/b30fe651381370b70c8726f1a7f1191fc5f8ca9b305ebb221f58998bc9aaeb76.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f40f75b1-512a-7fb5-5daf-6e9d036fe8b8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6a83dea3-0e74-48dd-aace-8bf8178e9d07",
  "kind": "theorem",
  "lexical_name": "tangentMap_tangentBundle_pure",
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
  "slug": "tangentmap-tangentbundle-pure--b27941e5155620a52af1cb8f",
  "source": {
    "blob": "3ba07e05f39d0f635cb34837afe54a28fd14fcab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 604,
    "line": 564,
    "path": "GRWTSK/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantb30fe651381370b70c8726f1a7f1191fc5f8ca9b305ebb221f58998bc9aaeb76.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b27941e5155620a52af1cb8f9e8ca97a10c10fa70cc40a2bd1c1ee7d3bdea96c",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantb30fe651381370b70c8726f1a7f1191fc5f8ca9b305ebb221f58998bc9aaeb76.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6a83dea3-0e74-48dd-aace-8bf8178e9d07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 564–604.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tangentMap_tangentBundle_pure (p : TangentBundle I M) :
    tangentMap I I.tangent (zeroSection E (TangentSpace I)) p = ⟨⟨p.proj, 0⟩, ⟨p.2, 0⟩⟩ := by
  rcases p with ⟨x, v⟩
  have N : I.symm ⁻¹' (chartAt H x).target ∈ 𝓝 (I ((chartAt H x) x)) := by
    apply IsOpen.mem_nhds
    apply (LocalHomeomorph.open_target _).preimage I.continuous_invFun
    simp only [mfld_simps]
  have A : MDifferentiableAt I I.tangent (fun x => @TotalSpace.mk M E (TangentSpace I) x 0) x :=
    haveI : Smooth I (I.prod 𝓘(𝕜, E)) (zeroSection E (TangentSpace I : M → Type _)) :=
      Bundle.smooth_zeroSection 𝕜 (TangentSpace I : M → Type _)
    this.mdifferentiableAt
  have B :
    fderivWithin 𝕜 (fun x' : E => (x', (0 : E))) (Set.range I) (I ((chartAt H x) x)) v = (v, 0)
  · rw [fderivWithin_eq_fderiv, DifferentiableAt.fderiv_prod]
    · simp
    · exact differentiableAt_id'
    · exact differentiableAt_const _
    · exact ModelWithCorners.unique_diff_at_image I
    · exact differentiableAt_id'.prod (differentiableAt_const _)
  simp only [Bundle.zeroSection, tangentMap, mfderiv, A, if_pos, chartAt,
    FiberBundle.chartedSpace_chartAt, TangentBundle.trivializationAt_apply, tangentBundleCore,
    Function.comp, ContinuousLinearMap.map_zero, mfld_simps]
  rw [← fderivWithin_inter N] at B
  rw [← fderivWithin_inter N, ← B]
  congr 1
  refine' fderivWithin_congr (fun y hy => _) _
  · simp only [mfld_simps] at hy
    simp only [hy, Prod.mk.inj_iff, mfld_simps]
  · simp only [Prod.mk.inj_iff, mfld_simps]
#align tangent_bundle.tangent_map_tangent_bundle_pure TangentBundle.tangentMap_tangentBundle_pure

end TangentBundle

namespace ContMDiffMap

-- These helpers for dot notation have been moved here from `geometry.manifold.cont_mdiff_map`
-- to avoid needing to import `geometry.manifold.cont_mdiff_mfderiv` there.
-- (However as a consequence we import `geometry.manifold.cont_mdiff_map` here now.)
-- They could be moved to another file (perhaps a new file) if desired.
open scoped Manifold

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantb30fe651381370b70c8726f1a7f1191fc5f8ca9b305ebb221f58998bc9aaeb76.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variantb30fe651381370b70c8726f1a7f1191fc5f8ca9b305ebb221f58998bc9aaeb76.lean#L564).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ba07e05f39d0f635cb34837afe54a28fd14fcab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
