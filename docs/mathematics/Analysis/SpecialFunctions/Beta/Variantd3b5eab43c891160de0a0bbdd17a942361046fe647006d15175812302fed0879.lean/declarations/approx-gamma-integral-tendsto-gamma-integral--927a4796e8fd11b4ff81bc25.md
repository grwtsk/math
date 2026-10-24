# approx_Gamma_integral_tendsto_Gamma_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "19004bb83df9dbb84f2643aec6bec388982f15a8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 292,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d3/d3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2578c3b4-2edb-c41c-9ae7-018f624defae",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:16fcc822-0a13-5d6f-f098-483439c00f0f",
  "kind": "theorem",
  "lexical_name": "approx_Gamma_integral_tendsto_Gamma_integral",
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
  "slug": "approx-gamma-integral-tendsto-gamma-integral--927a4796e8fd11b4ff81bc25",
  "source": {
    "blob": "19004bb83df9dbb84f2643aec6bec388982f15a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 353,
    "line": 292,
    "path": "GRWTSK/Analysis/SpecialFunctions/Beta/Variantd3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:927a4796e8fd11b4ff81bc257ba469e44c489da79c48e6f9fc9e886f087d0e2c",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Beta/Variantd3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:16fcc822-0a13-5d6f-f098-483439c00f0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 292–353.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem approx_Gamma_integral_tendsto_Gamma_integral {s : ℂ} (hs : 0 < re s) :
    Tendsto (fun n : ℕ => ∫ x : ℝ in (0)..n, ↑((1 - x / n) ^ n) * (x : ℂ) ^ (s - 1)) atTop
      (𝓝 <| Gamma s) := by
  rw [Gamma_eq_integral hs]
  -- We apply dominated convergence to the following function, which we will show is uniformly
  -- bounded above by the Gamma integrand `exp (-x) * x ^ (re s - 1)`.
  let f : ℕ → ℝ → ℂ := fun n =>
    indicator (Ioc 0 (n : ℝ)) fun x : ℝ => ↑((1 - x / n) ^ n) * (x : ℂ) ^ (s - 1)
  -- integrability of f
  have f_ible : ∀ n : ℕ, Integrable (f n) (volume.restrict (Ioi 0)) := by
    intro n
    rw [integrable_indicator_iff (measurableSet_Ioc : MeasurableSet (Ioc (_ : ℝ) _)), IntegrableOn,
      Measure.restrict_restrict_of_subset Ioc_subset_Ioi_self, ← IntegrableOn, ←
      intervalIntegrable_iff_integrable_Ioc_of_le (by positivity : (0 : ℝ) ≤ n)]
    apply IntervalIntegrable.continuousOn_mul
    · refine' intervalIntegral.intervalIntegrable_cpow' _
      rwa [sub_re, one_re, ← zero_sub, sub_lt_sub_iff_right]
    · apply Continuous.continuousOn
      exact IsROrC.continuous_ofReal.comp -- Porting note: was `continuity`
        ((continuous_const.sub (continuous_id'.div_const ↑n)).pow n)
  -- pointwise limit of f
  have f_tends : ∀ x : ℝ, x ∈ Ioi (0 : ℝ) →
      Tendsto (fun n : ℕ => f n x) atTop (𝓝 <| ↑(Real.exp (-x)) * (x : ℂ) ^ (s - 1)) := by
    intro x hx
    apply Tendsto.congr'
    show ∀ᶠ n : ℕ in atTop, ↑((1 - x / n) ^ n) * (x : ℂ) ^ (s - 1) = f n x
    · refine' Eventually.mp (eventually_ge_atTop ⌈x⌉₊) (eventually_of_forall fun n hn => _)
      rw [Nat.ceil_le] at hn
      dsimp only
      rw [indicator_of_mem]
      exact ⟨hx, hn⟩
    · simp_rw [mul_comm]
      refine' (Tendsto.comp (continuous_ofReal.tendsto _) _).const_mul _
      convert tendsto_one_plus_div_pow_exp (-x) using 1
      ext1 n
      rw [neg_div, ← sub_eq_add_neg]; norm_cast
  -- let `convert` identify the remaining goals
  convert tendsto_integral_of_dominated_convergence _ (fun n => (f_ible n).1)
    (Real.GammaIntegral_convergent hs) _
    ((ae_restrict_iff' measurableSet_Ioi).mpr (ae_of_all _ f_tends)) using 1
  -- limit of f is the integrand we want
  · ext1 n
    rw [integral_indicator (measurableSet_Ioc : MeasurableSet (Ioc (_ : ℝ) _)),
      intervalIntegral.integral_of_le (by positivity : 0 ≤ (n : ℝ)),
      Measure.restrict_restrict_of_subset Ioc_subset_Ioi_self]
  -- f is uniformly bounded by the Gamma integrand
  · intro n
    refine' (ae_restrict_iff' measurableSet_Ioi).mpr (ae_of_all _ fun x hx => _)
    dsimp only
    rcases lt_or_le (n : ℝ) x with (hxn | hxn)
    · rw [indicator_of_not_mem (not_mem_Ioc_of_gt hxn), norm_zero,
        mul_nonneg_iff_right_nonneg_of_pos (exp_pos _)]
      exact rpow_nonneg_of_nonneg (le_of_lt hx) _
    · rw [indicator_of_mem (mem_Ioc.mpr ⟨mem_Ioi.mp hx, hxn⟩), norm_mul, Complex.norm_eq_abs,
        Complex.abs_of_nonneg
          (pow_nonneg (sub_nonneg.mpr <| div_le_one_of_le hxn <| by positivity) _),
        Complex.norm_eq_abs, abs_cpow_eq_rpow_re_of_pos hx, sub_re, one_re,
        mul_le_mul_right (rpow_pos_of_pos hx _)]
      exact one_sub_div_pow_le_exp_neg hxn
#align complex.approx_Gamma_integral_tendsto_Gamma_integral Complex.approx_Gamma_integral_tendsto_Gamma_integral

/-- Euler's limit formula for the complex Gamma function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Beta/Variantd3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Beta/Variantd3b5eab43c891160de0a0bbdd17a942361046fe647006d15175812302fed0879.lean#L292).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `19004bb83df9dbb84f2643aec6bec388982f15a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
