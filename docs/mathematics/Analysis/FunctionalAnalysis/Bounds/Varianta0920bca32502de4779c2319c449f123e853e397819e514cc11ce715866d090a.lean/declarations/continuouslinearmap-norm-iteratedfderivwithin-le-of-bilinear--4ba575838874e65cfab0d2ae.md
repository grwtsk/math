# ContinuousLinearMap.norm_iteratedFDerivWithin_le_of_bilinear

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a9cf3a38-1bbc-b44e-39bc-9f8c92ba830b",
  "kind": "theorem",
  "lexical_name": "ContinuousLinearMap.norm_iteratedFDerivWithin_le_of_bilinear",
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
  "slug": "continuouslinearmap-norm-iteratedfderivwithin-le-of-bilinear--4ba575838874e65cfab0d2ae",
  "source": {
    "blob": "e3e0719a513f23401ea0440813da91afcece7937",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 133,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Bounds/Varianta0920bca32502de4779c2319c449f123e853e397819e514cc11ce715866d090a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4ba575838874e65cfab0d2aedafbd72645509a408b14eca30769bbf9db11ce0d",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Bounds/Varianta0920bca32502de4779c2319c449f123e853e397819e514cc11ce715866d090a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9cf3a38-1bbc-b44e-39bc-9f8c92ba830b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ContinuousLinearMap.norm_iteratedFDerivWithin_le_of_bilinear (B : E →L[𝕜] F →L[𝕜] G)
    {f : D → E} {g : D → F} {N : WithTop ℕ∞} {s : Set D} {x : D} (hf : ContDiffOn 𝕜 N f s)
    (hg : ContDiffOn 𝕜 N g s) (hs : UniqueDiffOn 𝕜 s) (hx : x ∈ s) {n : ℕ} (hn : n ≤ N) :
    ‖iteratedFDerivWithin 𝕜 n (fun y => B (f y) (g y)) s x‖ ≤
      ‖B‖ * ∑ i ∈ Finset.range (n + 1), (n.choose i : ℝ) * ‖iteratedFDerivWithin 𝕜 i f s x‖ *
        ‖iteratedFDerivWithin 𝕜 (n - i) g s x‖ := by
  /- We reduce the bound to the case where all spaces live in the same universe (in which we
    already have proved the result), by using linear isometries between the spaces and their `ULift`
    to a common universe. These linear isometries preserve the norm of the iterated derivative. -/
  let Du : Type max uD uE uF uG := ULift.{max uE uF uG, uD} D
  let Eu : Type max uD uE uF uG := ULift.{max uD uF uG, uE} E
  let Fu : Type max uD uE uF uG := ULift.{max uD uE uG, uF} F
  let Gu : Type max uD uE uF uG := ULift.{max uD uE uF, uG} G
  have isoD : Du ≃ₗᵢ[𝕜] D := LinearIsometryEquiv.ulift 𝕜 D
  have isoE : Eu ≃ₗᵢ[𝕜] E := LinearIsometryEquiv.ulift 𝕜 E
  have isoF : Fu ≃ₗᵢ[𝕜] F := LinearIsometryEquiv.ulift 𝕜 F
  have isoG : Gu ≃ₗᵢ[𝕜] G := LinearIsometryEquiv.ulift 𝕜 G
  -- lift `f` and `g` to versions `fu` and `gu` on the lifted spaces.
  let fu : Du → Eu := isoE.symm ∘ f ∘ isoD
  let gu : Du → Fu := isoF.symm ∘ g ∘ isoD
  -- lift the bilinear map `B` to a bilinear map `Bu` on the lifted spaces.
  let Bu₀ : Eu →L[𝕜] Fu →L[𝕜] G := ((B.comp (isoE : Eu →L[𝕜] E)).flip.comp (isoF : Fu →L[𝕜] F)).flip
  let Bu : Eu →L[𝕜] Fu →L[𝕜] Gu :=
   ContinuousLinearMap.compL 𝕜 Eu (Fu →L[𝕜] G) (Fu →L[𝕜] Gu)
    (ContinuousLinearMap.compL 𝕜 Fu G Gu (isoG.symm : G →L[𝕜] Gu)) Bu₀
  have hBu : Bu = ContinuousLinearMap.compL 𝕜 Eu (Fu →L[𝕜] G) (Fu →L[𝕜] Gu)
      (ContinuousLinearMap.compL 𝕜 Fu G Gu (isoG.symm : G →L[𝕜] Gu)) Bu₀ := rfl
  have Bu_eq : (fun y => Bu (fu y) (gu y)) = isoG.symm ∘ (fun y => B (f y) (g y)) ∘ isoD := by
    ext1 y
    simp [Du, Eu, Fu, Gu, hBu, Bu₀, fu, gu]
  -- All norms are preserved by the lifting process.
  have Bu_le : ‖Bu‖ ≤ ‖B‖ := by
    refine ContinuousLinearMap.opNorm_le_bound _ (norm_nonneg B) fun y => ?_
    refine ContinuousLinearMap.opNorm_le_bound _ (by positivity) fun x => ?_
    simp only [Du, Eu, Fu, Gu, hBu, Bu₀, compL_apply, coe_comp', Function.comp_apply,
      ContinuousLinearEquiv.coe_coe, LinearIsometryEquiv.coe_coe, flip_apply,
      LinearIsometryEquiv.norm_map]
    calc
      ‖B (isoE y) (isoF x)‖ ≤ ‖B (isoE y)‖ * ‖isoF x‖ := ContinuousLinearMap.le_opNorm _ _
      _ ≤ ‖B‖ * ‖isoE y‖ * ‖isoF x‖ := by gcongr; apply ContinuousLinearMap.le_opNorm
      _ = ‖B‖ * ‖y‖ * ‖x‖ := by simp only [LinearIsometryEquiv.norm_map]
  let su := isoD ⁻¹' s
  have hsu : UniqueDiffOn 𝕜 su := isoD.toContinuousLinearEquiv.uniqueDiffOn_preimage_iff.2 hs
  let xu := isoD.symm x
  have hxu : xu ∈ su := by
    simpa only [xu, su, Set.mem_preimage, LinearIsometryEquiv.apply_symm_apply] using hx
  have xu_x : isoD xu = x := by simp only [xu, LinearIsometryEquiv.apply_symm_apply]
  have hfu : ContDiffOn 𝕜 n fu su :=
    isoE.symm.contDiff.comp_contDiffOn
      ((hf.of_le hn).comp_continuousLinearMap (isoD : Du →L[𝕜] D))
  have hgu : ContDiffOn 𝕜 n gu su :=
    isoF.symm.contDiff.comp_contDiffOn
      ((hg.of_le hn).comp_continuousLinearMap (isoD : Du →L[𝕜] D))
  have Nfu : ∀ i, ‖iteratedFDerivWithin 𝕜 i fu su xu‖ = ‖iteratedFDerivWithin 𝕜 i f s x‖ := by
    intro i
    rw [LinearIsometryEquiv.norm_iteratedFDerivWithin_comp_left _ _ hsu hxu]
    rw [LinearIsometryEquiv.norm_iteratedFDerivWithin_comp_right _ _ hs, xu_x]
    rwa [← xu_x] at hx
  have Ngu : ∀ i, ‖iteratedFDerivWithin 𝕜 i gu su xu‖ = ‖iteratedFDerivWithin 𝕜 i g s x‖ := by
    intro i
    rw [LinearIsometryEquiv.norm_iteratedFDerivWithin_comp_left _ _ hsu hxu]
    rw [LinearIsometryEquiv.norm_iteratedFDerivWithin_comp_right _ _ hs, xu_x]
    rwa [← xu_x] at hx
  have NBu :
    ‖iteratedFDerivWithin 𝕜 n (fun y => Bu (fu y) (gu y)) su xu‖ =
      ‖iteratedFDerivWithin 𝕜 n (fun y => B (f y) (g y)) s x‖ := by
    rw [Bu_eq]
    rw [LinearIsometryEquiv.norm_iteratedFDerivWithin_comp_left _ _ hsu hxu]
    rw [LinearIsometryEquiv.norm_iteratedFDerivWithin_comp_right _ _ hs, xu_x]
    rwa [← xu_x] at hx
  -- state the bound for the lifted objects, and deduce the original bound from it.
  have : ‖iteratedFDerivWithin 𝕜 n (fun y => Bu (fu y) (gu y)) su xu‖ ≤
      ‖Bu‖ * ∑ i ∈ Finset.range (n + 1), (n.choose i : ℝ) * ‖iteratedFDerivWithin 𝕜 i fu su xu‖ *
        ‖iteratedFDerivWithin 𝕜 (n - i) gu su xu‖ :=
    Bu.norm_iteratedFDerivWithin_le_of_bilinear_aux hfu hgu hsu hxu
  simp only [Nfu, Ngu, NBu] at this
  exact this.trans (mul_le_mul_of_nonneg_right Bu_le (by positivity))

/-- Bounding the norm of the iterated derivative of `B (f x) (g x)` in terms of the
iterated derivatives of `f` and `g` when `B` is bilinear:
`‖D^n (x ↦ B (f x) (g x))‖ ≤ ‖B‖ ∑_{k ≤ n} n.choose k ‖D^k f‖ ‖D^{n-k} g‖` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Bounds/Varianta0920bca32502de4779c2319c449f123e853e397819e514cc11ce715866d090a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Bounds/Varianta0920bca32502de4779c2319c449f123e853e397819e514cc11ce715866d090a.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3e0719a513f23401ea0440813da91afcece7937` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
