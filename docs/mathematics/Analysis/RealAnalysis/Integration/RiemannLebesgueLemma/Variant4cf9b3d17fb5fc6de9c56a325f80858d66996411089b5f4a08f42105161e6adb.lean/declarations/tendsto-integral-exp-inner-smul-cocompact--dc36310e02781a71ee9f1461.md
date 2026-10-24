# tendsto_integral_exp_inner_smul_cocompact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fad173ca-9a3a-dd26-e0d0-10bef07fb4ee",
  "kind": "theorem",
  "lexical_name": "tendsto_integral_exp_inner_smul_cocompact",
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
  "slug": "tendsto-integral-exp-inner-smul-cocompact--dc36310e02781a71ee9f1461",
  "source": {
    "blob": "3cbe58cea49e0870ffdd8c94ae206a743ca5d704",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 258,
    "line": 227,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant4cf9b3d17fb5fc6de9c56a325f80858d66996411089b5f4a08f42105161e6adb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc36310e02781a71ee9f1461c40604132353ff9e9e69ceb9f4ef28d7b1325b0e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant4cf9b3d17fb5fc6de9c56a325f80858d66996411089b5f4a08f42105161e6adb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fad173ca-9a3a-dd26-e0d0-10bef07fb4ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 227–258.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tendsto_integral_exp_inner_smul_cocompact :
    Tendsto (fun w : V => ∫ v, e[-⟪v, w⟫] • f v) (cocompact V) (𝓝 0) := by
  by_cases hfi : Integrable f; swap
  · convert tendsto_const_nhds (a := (0 : E)) with w
    apply integral_undef
    rwa [← fourier_integrand_integrable w]
  refine' Metric.tendsto_nhds.mpr fun ε hε => _
  obtain ⟨g, hg_supp, hfg, hg_cont, -⟩ :=
    hfi.exists_hasCompactSupport_integral_sub_le (div_pos hε two_pos)
  refine'
    ((Metric.tendsto_nhds.mp
            (tendsto_integral_exp_inner_smul_cocompact_of_continuous_compact_support hg_cont
              hg_supp))
          _ (div_pos hε two_pos)).mp
      (eventually_of_forall fun w hI => _)
  rw [dist_eq_norm] at hI ⊢
  have : ‖(∫ v, e[-⟪v, w⟫] • f v) - ∫ v, e[-⟪v, w⟫] • g v‖ ≤ ε / 2 := by
    refine' le_trans _ hfg
    simp_rw [←
      integral_sub ((fourier_integrand_integrable w).mp hfi)
        ((fourier_integrand_integrable w).mp (hg_cont.integrable_of_hasCompactSupport hg_supp)),
      ← smul_sub, ← Pi.sub_apply]
    exact
      VectorFourier.norm_fourierIntegral_le_integral_norm e volume
        (BilinForm.toLin bilinFormOfRealInner) (f - g) w
  replace := add_lt_add_of_le_of_lt this hI
  rw [add_halves] at this
  refine' ((le_of_eq _).trans (norm_add_le _ _)).trans_lt this
  simp only [sub_zero, sub_add_cancel]
#align tendsto_integral_exp_inner_smul_cocompact tendsto_integral_exp_inner_smul_cocompact

/-- The Riemann-Lebesgue lemma for functions on `ℝ`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant4cf9b3d17fb5fc6de9c56a325f80858d66996411089b5f4a08f42105161e6adb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RiemannLebesgueLemma/Variant4cf9b3d17fb5fc6de9c56a325f80858d66996411089b5f4a08f42105161e6adb.lean#L227).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3cbe58cea49e0870ffdd8c94ae206a743ca5d704` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
