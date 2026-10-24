# quarter_digamma_le_one_sub_three

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6ad4e561-b14c-6a2e-c65e-b6a7f53eee02",
  "kind": "theorem",
  "lexical_name": "quarter_digamma_le_one_sub_three",
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
  "slug": "quarter-digamma-le-one-sub-three--9ba6b0b21b9045881745e6e7",
  "source": {
    "blob": "5168f744ff03c8c7a3a0c684799a4ec81ed17152",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 24,
    "path": "GRWTSK/Analysis/SpecialFunctions/FiveModeGammaConstant/Variant47070b7a888a0289af822c5e1b15138478d4f277b189c60fcf0535dddb8f2c68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ba6b0b21b9045881745e6e73fa63559be419d634318fdbdc2781bdc598e4b6e",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/FiveModeGammaConstant/Variant47070b7a888a0289af822c5e1b15138478d4f277b189c60fcf0535dddb8f2c68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ad4e561-b14c-6a2e-c65e-b6a7f53eee02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quarter_digamma_le_one_sub_three :
    (Complex.digamma (1/4)).re ≤ (Complex.digamma 1).re - 3 := by
  have hs (n : ℕ) :
      (3 : ℝ) ≤ ∑ j ∈ Finset.range (n+1),
        ((1 / (1/4+(j : ℝ))) - 1/(1+(j : ℝ))) := by
    have hn (j : ℕ) :
        (0 : ℝ) ≤ 1/(1/4+(j : ℝ)) - 1/(1+(j : ℝ)) := by
      apply sub_nonneg.mpr
      exact one_div_le_one_div_of_le (by positivity) (by linarith)
    have ht := Finset.single_le_sum (fun j _ => hn j)
      (show 0 ∈ Finset.range (n+1) by simp)
    norm_num at ht ⊢
    exact ht
  have hfinite (n : ℕ) (hn : n ≠ 0) :
      (logDeriv (fun w => Complex.GammaSeq w n) (1/4)).re ≤
        (logDeriv (fun w => Complex.GammaSeq w n) 1).re - 3 := by
    rw [logDeriv_gammaSeq (by norm_num : 0 < (1/4 : ℂ).re) hn,
      logDeriv_gammaSeq (by norm_num : 0 < (1 : ℂ).re) hn]
    simp only [Complex.sub_re, Complex.re_sum]
    have he (a : ℝ) (j : ℕ) : (((a : ℂ)+(j : ℂ))⁻¹).re = 1/(a+(j : ℝ)) := by
      have hc : (a : ℂ)+(j : ℂ) = ((a+(j : ℝ) : ℝ) : ℂ) := by push_cast; rfl
      rw [hc, ← Complex.ofReal_inv]
      simp only [Complex.ofReal_re, one_div]
    simp_rw [show (1/4 : ℂ) = ((1/4 : ℝ) : ℂ) by norm_num,
      show (1 : ℂ) = ((1 : ℝ) : ℂ) by rfl, he]
    have hh := hs n
    rw [Finset.sum_sub_distrib] at hh
    linarith
  have hq := (Complex.continuous_re.continuousAt.tendsto.comp
    (logDeriv_tendsto_of_derivative_limit euler_derivative_limit
      (z := (1/4 : ℂ)) (by norm_num)))
  have h1 := (Complex.continuous_re.continuousAt.tendsto.comp
    (logDeriv_tendsto_of_derivative_limit euler_derivative_limit
      (z := (1 : ℂ)) (by norm_num))).sub_const 3
  exact le_of_tendsto_of_tendsto hq h1
    ((eventually_ne_atTop 0).mono fun n hn => hfinite n hn)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/FiveModeGammaConstant/Variant47070b7a888a0289af822c5e1b15138478d4f277b189c60fcf0535dddb8f2c68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/FiveModeGammaConstant/Variant47070b7a888a0289af822c5e1b15138478d4f277b189c60fcf0535dddb8f2c68.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5168f744ff03c8c7a3a0c684799a4ec81ed17152` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
