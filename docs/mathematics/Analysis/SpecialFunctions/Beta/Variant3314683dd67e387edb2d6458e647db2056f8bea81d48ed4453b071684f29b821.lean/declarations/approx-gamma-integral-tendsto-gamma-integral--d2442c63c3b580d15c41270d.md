# approx_Gamma_integral_tendsto_Gamma_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "795b650d48b4382711449f1728e1f1260a5828b3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 277,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/33/3314683dd67e387edb2d6458e647db2056f8bea81d48ed4453b071684f29b821.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4c0e2875-d479-86f1-7a57-1017cd2a586a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:111f3f55-cef6-de03-7e82-35eecfbd91ed",
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
  "slug": "approx-gamma-integral-tendsto-gamma-integral--d2442c63c3b580d15c41270d",
  "source": {
    "blob": "795b650d48b4382711449f1728e1f1260a5828b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 277,
    "path": "GRWTSK/Analysis/SpecialFunctions/Beta/Variant3314683dd67e387edb2d6458e647db2056f8bea81d48ed4453b071684f29b821.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d2442c63c3b580d15c41270d1f4232aff99465cf508c5b7219913461be175b42",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/Beta/Variant3314683dd67e387edb2d6458e647db2056f8bea81d48ed4453b071684f29b821.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:111f3f55-cef6-de03-7e82-35eecfbd91ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 277–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem approx_Gamma_integral_tendsto_Gamma_integral {s : ℂ} (hs : 0 < re s) :
    Tendsto (fun n : ℕ => ∫ x : ℝ in (0)..n, ((1 - x / n) ^ n : ℝ) * (x : ℂ) ^ (s - 1)) atTop
      (𝓝 <| Gamma s) := by
  rw [Gamma_eq_integral hs]
  -- We apply dominated convergence to the following function, which we will show is uniformly
  -- bounded above by the Gamma integrand `exp (-x) * x ^ (re s - 1)`.
  let f : ℕ → ℝ → ℂ := fun n =>
    indicator (Ioc 0 (n : ℝ)) fun x : ℝ => ((1 - x / n) ^ n : ℝ) * (x : ℂ) ^ (s - 1)
  -- integrability of f
  have f_ible : ∀ n : ℕ, Integrable (f n) (volume.restrict (Ioi 0)) := by
    intro n
    rw [integrable_indicator_iff (measurableSet_Ioc : MeasurableSet (Ioc (_ : ℝ) _)), IntegrableOn,
      Measure.restrict_restrict_of_subset Ioc_subset_Ioi_self, ← IntegrableOn, ←
      intervalIntegrable_iff_integrableOn_Ioc_of_le (by positivity : (0 : ℝ) ≤ n)]
    apply IntervalIntegrable.continuousOn_mul
    · refine intervalIntegral.intervalIntegrable_cpow' ?_
      rwa [sub_re, one_re, ← zero_sub, sub_lt_sub_iff_right]
    · apply Continuous.continuousOn
      continuity
  -- pointwise limit of f
  have f_tends : ∀ x : ℝ, x ∈ Ioi (0 : ℝ) →
      Tendsto (fun n : ℕ => f n x) atTop (𝓝 <| ↑(Real.exp (-x)) * (x : ℂ) ^ (s - 1)) := by
    intro x hx
    apply Tendsto.congr'
    · show ∀ᶠ n : ℕ in atTop, ↑((1 - x / n) ^ n) * (x : ℂ) ^ (s - 1) = f n x
      filter_upwards [eventually_ge_atTop ⌈x⌉₊] with n hn
      rw [Nat.ceil_le] at hn
      dsimp only [f]
      rw [indicator_of_mem]
      exact ⟨hx, hn⟩
    · simp_rw [mul_comm]
      refine (Tendsto.comp (continuous_ofReal.tendsto _) ?_).const_mul _
      convert Real.tendsto_one_add_div_pow_exp (-x) using 1
      ext1 n
      rw [neg_div, ← sub_eq_add_neg]
  -- let `convert` identify the remaining goals
  convert tendsto_integral_of_dominated_convergence _ (fun n => (f_ible n).1)
    (Real.GammaIntegral_convergent hs) _
    ((ae_restrict_iff' measurableSet_Ioi).mpr (ae_of_all _ f_tends)) using 1
  -- limit of f is the integrand we want
  · ext1 n
    rw [MeasureTheory.integral_indicator (measurableSet_Ioc : MeasurableSet (Ioc (_ : ℝ) _)),
      intervalIntegral.integral_of_le (by positivity : 0 ≤ (n : ℝ)),
      Measure.restrict_restrict_of_subset Ioc_subset_Ioi_self]
  -- f is uniformly bounded by the Gamma integrand
  · intro n
    rw [ae_restrict_iff' measurableSet_Ioi]
    filter_upwards with x hx
    dsimp only [f]
    rcases lt_or_le (n : ℝ) x with (hxn | hxn)
    · rw [indicator_of_notMem (notMem_Ioc_of_gt hxn), norm_zero,
        mul_nonneg_iff_right_nonneg_of_pos (exp_pos _)]
      exact rpow_nonneg (le_of_lt hx) _
    · rw [indicator_of_mem (mem_Ioc.mpr ⟨mem_Ioi.mp hx, hxn⟩), norm_mul, Complex.norm_of_nonneg
          (pow_nonneg (sub_nonneg.mpr <| div_le_one_of_le₀ hxn <| by positivity) _),
          norm_cpow_eq_rpow_re_of_pos hx, sub_re, one_re, mul_le_mul_right (rpow_pos_of_pos hx _)]
      exact one_sub_div_pow_le_exp_neg hxn

/-- Euler's limit formula for the complex Gamma function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/Beta/Variant3314683dd67e387edb2d6458e647db2056f8bea81d48ed4453b071684f29b821.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/Beta/Variant3314683dd67e387edb2d6458e647db2056f8bea81d48ed4453b071684f29b821.lean#L277).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `795b650d48b4382711449f1728e1f1260a5828b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
