# wienerPinnedQOne_boundary_integral_from_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:40d288e7-ea62-e654-5775-41cc535a634a",
  "kind": "theorem",
  "lexical_name": "wienerPinnedQOne_boundary_integral_from_right",
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
  "slug": "wienerpinnedqone-boundary-integral-from-right--2f68a8b42dfb0f8f3ecdf62f",
  "source": {
    "blob": "63d37837b2c3798ea6a2a570d778d830d8d696bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 388,
    "line": 294,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaQOneBoundaryEstimates.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2f68a8b42dfb0f8f3ecdf62f07935029ed2508df7b8e62c1bf731abb5d207db3",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/WienerIkeharaQOneBoundaryEstimates.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40d288e7-ea62-e654-5775-41cc535a634a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wienerPinnedQOne_boundary_integral_from_right
    (ψ : ℝ → ℂ) (hψ : Continuous ψ)
    (hcompact : HasCompactSupport ψ)
    (T : ℝ) (hT : 1 ≤ T) :
    Tendsto
      (fun sigma : ℝ =>
        ∫ t : ℝ,
          wienerPinnedQOneAux
              ((sigma : ℂ) + (t : ℂ) * Complex.I) *
            ψ t * (T : ℂ) ^ ((t : ℂ) * Complex.I))
      (𝓝[>] (1 : ℝ))
      (nhds
        (∫ t : ℝ,
          wienerPinnedQOneAux
              (1 + (t : ℂ) * Complex.I) *
            ψ t * (T : ℂ) ^ ((t : ℂ) * Complex.I))) := by
  by_cases hEmpty : tsupport ψ = ∅
  · simp [tsupport_eq_empty_iff.mp hEmpty]
  obtain ⟨t₀, ht₀⟩ := Set.nonempty_iff_ne_empty.mpr hEmpty
  let S : Set ℂ := reProdIm (Set.Icc 1 2) (tsupport ψ)
  have hCompactS : IsCompact S := by
    refine Metric.isCompact_iff_isClosed_bounded.mpr ⟨?_, ?_⟩
    · exact isClosed_Icc.reProdIm (isClosed_tsupport ψ)
    · exact (Metric.isBounded_Icc 1 2).reProdIm hcompact.isBounded
  have hSRight : S ⊆ {s : ℂ | 1 ≤ s.re} :=
    fun z hz => (mem_reProdIm.mp hz).1.1
  have hGContinuousOn :
      ContinuousOn (‖wienerPinnedQOneAux ·‖) S :=
    (wienerPinnedQOneAux_continuousOn.mono hSRight).norm
  have hSNonempty : S.Nonempty := by
    refine ⟨1 + (t₀ : ℂ) * Complex.I, ?_⟩
    simp [S, mem_reProdIm, ht₀]
  obtain ⟨z, -, hMax⟩ :=
    hCompactS.exists_isMaxOn hSNonempty hGContinuousOn
  let M : ℝ := ‖wienerPinnedQOneAux z‖
  let bound (t : ℝ) : ℝ := M * ‖ψ t‖
  apply tendsto_integral_filter_of_dominated_convergence
    (bound := bound)
  · apply eventually_of_mem (U := Set.Icc 1 2)
        (Icc_mem_nhdsGT_of_mem (by simp))
    intro sigma hSigma
    apply Continuous.aestronglyMeasurable
    apply Continuous.mul
    · exact
        ((wienerPinnedQOneAux_continuousOn.comp_continuous
          (by fun_prop) (by simp [hSigma.1])).mul hψ)
    · apply Continuous.const_cpow (by fun_prop)
      simp
      linarith
  · apply eventually_of_mem (U := Set.Icc 1 2)
        (Icc_mem_nhdsGT_of_mem (by simp))
    intro sigma hSigma
    apply Eventually.of_forall
    intro t
    by_cases ht : t ∈ tsupport ψ
    · have hst :
          (sigma : ℂ) + (t : ℂ) * Complex.I ∈ S := by
        simp [S, mem_reProdIm, hSigma.1, hSigma.2, ht]
      have hAux :=
        (isMaxOn_iff.mp hMax) _ hst
      have hTC : (T : ℂ) ≠ 0 := by
        simp
        linarith
      have hArg : Complex.arg (T : ℂ) = 0 := by
        simp [arg_eq_zero_iff]
        linarith
      have hPow :
          ‖(T : ℂ) ^ ((t : ℂ) * Complex.I)‖ = 1 := by
        simp [norm_cpow_of_ne_zero hTC, hArg]
      simp_rw [norm_mul, hPow, mul_one]
      exact mul_le_mul_of_nonneg_right hAux (norm_nonneg _)
    · have hzero : ψ t = 0 := by
        have hnot : t ∉ Function.support ψ :=
          fun ht' => ht (subset_tsupport ψ ht')
        simpa [Function.mem_support] using hnot
      simp [hzero, bound]
  · have hBoundContinuous : Continuous bound := by
      dsimp [bound]
      fun_prop
    exact hBoundContinuous.integrable_of_hasCompactSupport
      (hcompact.norm.mul_left)
  · apply Eventually.of_forall
    intro t
    apply Tendsto.mul_const
    apply Tendsto.mul_const
    refine (wienerPinnedQOneAux_continuousOn
      (1 + (t : ℂ) * Complex.I) (by simp)).tendsto.comp ?_
    refine tendsto_nhdsWithin_iff.mpr ⟨?_, ?_⟩
    · exact ((continuous_ofReal.tendsto _).add
        tendsto_const_nhds).mono_left nhdsWithin_le_nhds
    · exact eventually_nhdsWithin_of_forall
        (fun sigma (hsigma : (1 : ℝ) < sigma) =>
          by simp [hsigma.le])

end GRWTSK.RiemannHypothesis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/WienerIkeharaQOneBoundaryEstimates.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaQOneBoundaryEstimates.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `63d37837b2c3798ea6a2a570d778d830d8d696bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
