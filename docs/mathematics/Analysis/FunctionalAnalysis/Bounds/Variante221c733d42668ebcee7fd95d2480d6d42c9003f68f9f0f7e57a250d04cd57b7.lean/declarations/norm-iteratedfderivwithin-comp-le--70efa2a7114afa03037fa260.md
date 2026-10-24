# norm_iteratedFDerivWithin_comp_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4a6bd8e6fced117ea3d6e3dba00b6699dd52cb2f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 446,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e2/e221c733d42668ebcee7fd95d2480d6d42c9003f68f9f0f7e57a250d04cd57b7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a0d76bab-956a-cd73-b59c-4a2676c3a724",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9109841a-be2f-2c11-ed06-aaaf497f65d4",
  "kind": "theorem",
  "lexical_name": "norm_iteratedFDerivWithin_comp_le",
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
  "slug": "norm-iteratedfderivwithin-comp-le--70efa2a7114afa03037fa260",
  "source": {
    "blob": "4a6bd8e6fced117ea3d6e3dba00b6699dd52cb2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 498,
    "line": 446,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/Bounds/Variante221c733d42668ebcee7fd95d2480d6d42c9003f68f9f0f7e57a250d04cd57b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70efa2a7114afa03037fa2604f1d5343b9b6b07a6ee30c3f67ba0bebd8003511",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/Bounds/Variante221c733d42668ebcee7fd95d2480d6d42c9003f68f9f0f7e57a250d04cd57b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9109841a-be2f-2c11-ed06-aaaf497f65d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 446–498.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_iteratedFDerivWithin_comp_le {g : F → G} {f : E → F} {n : ℕ} {s : Set E} {t : Set F}
    {x : E} {N : ℕ∞ω} (hg : ContDiffOn 𝕜 N g t) (hf : ContDiffOn 𝕜 N f s) (hn : n ≤ N)
    (ht : UniqueDiffOn 𝕜 t) (hs : UniqueDiffOn 𝕜 s) (hst : MapsTo f s t) (hx : x ∈ s) {C : ℝ}
    {D : ℝ} (hC : ∀ i, i ≤ n → ‖iteratedFDerivWithin 𝕜 i g t (f x)‖ ≤ C)
    (hD : ∀ i, 1 ≤ i → i ≤ n → ‖iteratedFDerivWithin 𝕜 i f s x‖ ≤ D ^ i) :
    ‖iteratedFDerivWithin 𝕜 n (g ∘ f) s x‖ ≤ n ! * C * D ^ n := by
  /- We reduce the bound to the case where all spaces live in the same universe (in which we
    already have proved the result), by using linear isometries between the spaces and their `ULift`
    to a common universe. These linear isometries preserve the norm of the iterated derivative. -/
  let Fu : Type max uF uG := ULift.{uG, uF} F
  let Gu : Type max uF uG := ULift.{uF, uG} G
  have isoF : Fu ≃ₗᵢ[𝕜] F := LinearIsometryEquiv.ulift 𝕜 F
  have isoG : Gu ≃ₗᵢ[𝕜] G := LinearIsometryEquiv.ulift 𝕜 G
  -- lift `f` and `g` to versions `fu` and `gu` on the lifted spaces.
  let fu : E → Fu := isoF.symm ∘ f
  let gu : Fu → Gu := isoG.symm ∘ g ∘ isoF
  let tu := isoF ⁻¹' t
  have htu : UniqueDiffOn 𝕜 tu := isoF.toContinuousLinearEquiv.uniqueDiffOn_preimage_iff.2 ht
  have hstu : MapsTo fu s tu := fun y hy ↦ by
    simpa only [fu, tu, mem_preimage, comp_apply, LinearIsometryEquiv.apply_symm_apply] using hst hy
  have Ffu : isoF (fu x) = f x := by
    simp only [fu, comp_apply, LinearIsometryEquiv.apply_symm_apply]
  -- All norms are preserved by the lifting process.
  have hfu : ContDiffOn 𝕜 n fu s := isoF.symm.contDiff.comp_contDiffOn (hf.of_le hn)
  have hgu : ContDiffOn 𝕜 n gu tu :=
    isoG.symm.contDiff.comp_contDiffOn
      ((hg.of_le hn).comp_continuousLinearMap (isoF : Fu →L[𝕜] F))
  have Nfu : ∀ i, ‖iteratedFDerivWithin 𝕜 i fu s x‖ = ‖iteratedFDerivWithin 𝕜 i f s x‖ := fun i ↦ by
    rw [LinearIsometryEquiv.norm_iteratedFDerivWithin_comp_left _ _ hs hx]
  simp_rw [← Nfu] at hD
  have Ngu : ∀ i,
      ‖iteratedFDerivWithin 𝕜 i gu tu (fu x)‖ = ‖iteratedFDerivWithin 𝕜 i g t (f x)‖ := fun i ↦ by
    rw [LinearIsometryEquiv.norm_iteratedFDerivWithin_comp_left _ _ htu (hstu hx)]
    rw [LinearIsometryEquiv.norm_iteratedFDerivWithin_comp_right _ _ ht, Ffu]
    rw [Ffu]
    exact hst hx
  simp_rw [← Ngu] at hC
  have Nfgu :
      ‖iteratedFDerivWithin 𝕜 n (g ∘ f) s x‖ = ‖iteratedFDerivWithin 𝕜 n (gu ∘ fu) s x‖ := by
    have : gu ∘ fu = isoG.symm ∘ g ∘ f := by
      ext x
      simp only [fu, gu, comp_apply,
        LinearIsometryEquiv.apply_symm_apply]
    rw [this, LinearIsometryEquiv.norm_iteratedFDerivWithin_comp_left _ _ hs hx]
  -- deduce the required bound from the one for `gu ∘ fu`.
  rw [Nfgu]
  exact norm_iteratedFDerivWithin_comp_le_aux hgu hfu htu hs hstu hx hC hD

/-- If the derivatives of `g` at `f x` are bounded by `C`, and the `i`-th derivative
of `f` at `x` is bounded by `D^i` for all `1 ≤ i ≤ n`, then the `n`-th derivative
of `g ∘ f` is bounded by `n! * C * D^n`.

Version with the iterated derivative of `g` only bounded on the range of `f`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/Bounds/Variante221c733d42668ebcee7fd95d2480d6d42c9003f68f9f0f7e57a250d04cd57b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/Bounds/Variante221c733d42668ebcee7fd95d2480d6d42c9003f68f9f0f7e57a250d04cd57b7.lean#L446).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a6bd8e6fced117ea3d6e3dba00b6699dd52cb2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
