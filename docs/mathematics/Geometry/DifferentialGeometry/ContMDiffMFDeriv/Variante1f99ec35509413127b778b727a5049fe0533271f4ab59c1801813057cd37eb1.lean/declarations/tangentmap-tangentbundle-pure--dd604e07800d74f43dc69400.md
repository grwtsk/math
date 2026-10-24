# tangentMap_tangentBundle_pure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "559d4d74dc5cc61540c8e679e6929a4787b6f381",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 360,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e1f99ec35509413127b778b727a5049fe0533271f4ab59c1801813057cd37eb1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c3bfa77b-656c-15cd-8fac-60066f0eeb33",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0e4b5422-37f2-4552-4aef-7d2a887a04cb",
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
  "slug": "tangentmap-tangentbundle-pure--dd604e07800d74f43dc69400",
  "source": {
    "blob": "559d4d74dc5cc61540c8e679e6929a4787b6f381",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 400,
    "line": 360,
    "path": "GRWTSK/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variante1f99ec35509413127b778b727a5049fe0533271f4ab59c1801813057cd37eb1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd604e07800d74f43dc694001ee57ada532dd3e81be27d927bfad373b63c8bcf",
  "verification": {
    "reference": "docs/verification/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variante1f99ec35509413127b778b727a5049fe0533271f4ab59c1801813057cd37eb1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0e4b5422-37f2-4552-4aef-7d2a887a04cb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 360–400.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tangentMap_tangentBundle_pure [Is : IsManifold I 1 M]
    (p : TangentBundle I M) :
    tangentMap I I.tangent (zeroSection E (TangentSpace I)) p = ⟨⟨p.proj, 0⟩, ⟨p.2, 0⟩⟩ := by
  rcases p with ⟨x, v⟩
  have N : I.symm ⁻¹' (chartAt H x).target ∈ 𝓝 (I ((chartAt H x) x)) := by
    apply IsOpen.mem_nhds
    · apply (PartialHomeomorph.open_target _).preimage I.continuous_invFun
    · simp only [mfld_simps]
  have A : MDifferentiableAt I I.tangent (fun x => @TotalSpace.mk M E (TangentSpace I) x 0) x :=
    haveI : ContMDiff I (I.prod 𝓘(𝕜, E)) ⊤ (zeroSection E (TangentSpace I : M → Type _)) :=
      Bundle.contMDiff_zeroSection 𝕜 (TangentSpace I : M → Type _)
    this.mdifferentiableAt le_top
  have B : fderivWithin 𝕜 (fun x' : E ↦ (x', (0 : E))) (Set.range I) (I ((chartAt H x) x)) v
      = (v, 0) := by
    rw [fderivWithin_eq_fderiv, DifferentiableAt.fderiv_prodMk]
    · simp
    · exact differentiableAt_id'
    · exact differentiableAt_const _
    · exact ModelWithCorners.uniqueDiffWithinAt_image I
    · exact differentiableAt_id'.prodMk (differentiableAt_const _)
  simp +unfoldPartialApp only [Bundle.zeroSection, tangentMap, mfderiv, A,
    if_pos, chartAt, FiberBundle.chartedSpace_chartAt, TangentBundle.trivializationAt_apply,
    tangentBundleCore, Function.comp_def, ContinuousLinearMap.map_zero, mfld_simps]
  rw [← fderivWithin_inter N] at B
  rw [← fderivWithin_inter N, ← B]
  congr 1
  refine fderivWithin_congr (fun y hy => ?_) ?_
  · simp only [mfld_simps] at hy
    simp only [hy, Prod.mk_inj, mfld_simps]
  · simp only [Prod.mk_inj, mfld_simps]

end TangentBundle

namespace ContMDiffMap

-- These helpers for dot notation have been moved here from
-- `Mathlib/Geometry/Manifold/ContMDiffMap.lean` to avoid needing to import this file there.
-- (However as a consequence we import `Mathlib/Geometry/Manifold/ContMDiffMap.lean` here now.)
-- They could be moved to another file (perhaps a new file) if desired.
open scoped Manifold ContDiff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variante1f99ec35509413127b778b727a5049fe0533271f4ab59c1801813057cd37eb1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variante1f99ec35509413127b778b727a5049fe0533271f4ab59c1801813057cd37eb1.lean#L360).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `559d4d74dc5cc61540c8e679e6929a4787b6f381` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
