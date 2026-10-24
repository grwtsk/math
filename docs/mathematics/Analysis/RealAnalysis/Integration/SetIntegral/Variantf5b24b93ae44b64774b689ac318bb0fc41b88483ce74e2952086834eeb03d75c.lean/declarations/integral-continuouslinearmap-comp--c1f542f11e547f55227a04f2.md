# integral_continuousLinearMap_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9c95feeb-2d57-4789-ed10-e8c659b8f81f",
  "kind": "theorem",
  "lexical_name": "integral_continuousLinearMap_comp",
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
  "slug": "integral-continuouslinearmap-comp--c1f542f11e547f55227a04f2",
  "source": {
    "blob": "7c73e89f84ce475e59e63393bd479f8e5c8ce97d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 422,
    "line": 394,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SetIntegral/Variantf5b24b93ae44b64774b689ac318bb0fc41b88483ce74e2952086834eeb03d75c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c1f542f11e547f55227a04f2e758d146847baad2f585814a07ab4058fb40ad5b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SetIntegral/Variantf5b24b93ae44b64774b689ac318bb0fc41b88483ce74e2952086834eeb03d75c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9c95feeb-2d57-4789-ed10-e8c659b8f81f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 394–422.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_continuousLinearMap_comp
    {f : X → H} {C : H →L[ℝ] E} (hf : Integrable f μ.variation) :
    ∫ᵛ y, C (f y) ∂[B; μ] = ∫ᵛ y, f y ∂[B ∘L C; μ] := by
  by_cases hG : CompleteSpace G; swap
  · simp [integral_of_not_completeSpace hG]
  apply hf.induction (P := fun f ↦ ∫ᵛ y, C (f y) ∂[B; μ] = ∫ᵛ y, f y ∂[B ∘L C; μ])
  · intro c s hs hc
    have : IsFiniteMeasure (μ.variation.restrict s) := ⟨by simpa⟩
    rw [integral_indicator_const _ hs]
    have : (fun y ↦ C (s.indicator (fun x ↦ c) y)) = s.indicator (fun x ↦ C c) := by
      ext; simp only [indicator]; grind
    simp_rw [this]
    rw [integral_indicator_const _ hs]
    rfl
  · intro f g _ f_int g_int hf hg
    simp only [Pi.add_apply, _root_.map_add]
    rw [integral_fun_add (C.integrable_comp f_int) (C.integrable_comp g_int), hf, hg,
      integral_fun_add f_int g_int]
  · apply isClosed_eq
    · have I (f : Lp H 1 μ.variation) : ∫ᵛ x, C (f x) ∂[B; μ] = ∫ᵛ x, (C.compLp f) x ∂[B; μ] :=
        (integral_congr_ae (coeFn_compLp _ _)).symm
      simp_rw [I]
      exact continuous_integral.comp (C.compLpL 1 μ.variation).continuous
    · exact continuous_integral
  · intro f g hfg _ hf
    have : ∀ᵐ x ∂μ.variation, C (f x) = C (g x) := by
      filter_upwards [hfg] with x hx using by simp [hx]
    rw [← integral_congr_ae hfg, ← integral_congr_ae this, hf]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SetIntegral/Variantf5b24b93ae44b64774b689ac318bb0fc41b88483ce74e2952086834eeb03d75c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SetIntegral/Variantf5b24b93ae44b64774b689ac318bb0fc41b88483ce74e2952086834eeb03d75c.lean#L394).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c73e89f84ce475e59e63393bd479f8e5c8ce97d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
