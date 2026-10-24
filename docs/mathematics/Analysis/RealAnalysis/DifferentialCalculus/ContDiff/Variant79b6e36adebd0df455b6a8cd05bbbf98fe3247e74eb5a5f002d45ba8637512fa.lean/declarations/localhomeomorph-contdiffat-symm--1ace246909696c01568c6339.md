# LocalHomeomorph.contDiffAt_symm

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1bde16d9-2cca-42c7-3d10-4dbcf34beb58",
  "kind": "theorem",
  "lexical_name": "LocalHomeomorph.contDiffAt_symm",
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
  "slug": "localhomeomorph-contdiffat-symm--1ace246909696c01568c6339",
  "source": {
    "blob": "553658f7834248a1aec4dc8b24f9ab14e095928f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1861,
    "line": 1809,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Variant79b6e36adebd0df455b6a8cd05bbbf98fe3247e74eb5a5f002d45ba8637512fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ace246909696c01568c63397383038b84d342cf7fcdd49390d40f5c473ad914",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Variant79b6e36adebd0df455b6a8cd05bbbf98fe3247e74eb5a5f002d45ba8637512fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1bde16d9-2cca-42c7-3d10-4dbcf34beb58`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1809–1861.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem LocalHomeomorph.contDiffAt_symm [CompleteSpace E] (f : LocalHomeomorph E F)
    {f₀' : E ≃L[𝕜] F} {a : F} (ha : a ∈ f.target)
    (hf₀' : HasFDerivAt f (f₀' : E →L[𝕜] F) (f.symm a)) (hf : ContDiffAt 𝕜 n f (f.symm a)) :
    ContDiffAt 𝕜 n f.symm a := by
  -- We prove this by induction on `n`
  induction' n using ENat.nat_induction with n IH Itop
  · rw [contDiffAt_zero]
    exact ⟨f.target, IsOpen.mem_nhds f.open_target ha, f.continuous_invFun⟩
  · obtain ⟨f', ⟨u, hu, hff'⟩, hf'⟩ := contDiffAt_succ_iff_hasFDerivAt.mp hf
    apply contDiffAt_succ_iff_hasFDerivAt.mpr
    -- For showing `n.succ` times continuous differentiability (the main inductive step), it
    -- suffices to produce the derivative and show that it is `n` times continuously differentiable
    have eq_f₀' : f' (f.symm a) = f₀' := (hff' (f.symm a) (mem_of_mem_nhds hu)).unique hf₀'
    -- This follows by a bootstrapping formula expressing the derivative as a function of `f` itself
    refine' ⟨inverse ∘ f' ∘ f.symm, _, _⟩
    · -- We first check that the derivative of `f` is that formula
      have h_nhds : { y : E | ∃ e : E ≃L[𝕜] F, ↑e = f' y } ∈ 𝓝 (f.symm a) := by
        have hf₀' := f₀'.nhds
        rw [← eq_f₀'] at hf₀'
        exact hf'.continuousAt.preimage_mem_nhds hf₀'
      obtain ⟨t, htu, ht, htf⟩ := mem_nhds_iff.mp (Filter.inter_mem hu h_nhds)
      use f.target ∩ f.symm ⁻¹' t
      refine' ⟨IsOpen.mem_nhds _ _, _⟩
      · exact f.preimage_open_of_open_symm ht
      · exact mem_inter ha (mem_preimage.mpr htf)
      intro x hx
      obtain ⟨hxu, e, he⟩ := htu hx.2
      have h_deriv : HasFDerivAt f (e : E →L[𝕜] F) (f.symm x) := by
        rw [he]
        exact hff' (f.symm x) hxu
      convert f.hasFDerivAt_symm hx.1 h_deriv
      simp [← he]
    · -- Then we check that the formula, being a composition of `ContDiff` pieces, is
      -- itself `ContDiff`
      have h_deriv₁ : ContDiffAt 𝕜 n inverse (f' (f.symm a)) := by
        rw [eq_f₀']
        exact contDiffAt_map_inverse _
      have h_deriv₂ : ContDiffAt 𝕜 n f.symm a := by
        refine' IH (hf.of_le _)
        norm_cast
        exact Nat.le_succ n
      exact (h_deriv₁.comp _ hf').comp _ h_deriv₂
  · refine' contDiffAt_top.mpr _
    intro n
    exact Itop n (contDiffAt_top.mp hf n)
#align local_homeomorph.cont_diff_at_symm LocalHomeomorph.contDiffAt_symm

/-- If `f` is an `n` times continuously differentiable homeomorphism,
and if the derivative of `f` at each point is a continuous linear equivalence,
then `f.symm` is `n` times continuously differentiable.

This is one of the easy parts of the inverse function theorem: it assumes that we already have
an inverse function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Variant79b6e36adebd0df455b6a8cd05bbbf98fe3247e74eb5a5f002d45ba8637512fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ContDiff/Variant79b6e36adebd0df455b6a8cd05bbbf98fe3247e74eb5a5f002d45ba8637512fa.lean#L1809).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `553658f7834248a1aec4dc8b24f9ab14e095928f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
