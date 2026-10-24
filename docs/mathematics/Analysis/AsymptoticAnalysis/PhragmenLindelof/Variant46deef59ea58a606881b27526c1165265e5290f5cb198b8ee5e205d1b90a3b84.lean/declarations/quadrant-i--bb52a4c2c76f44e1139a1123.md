# quadrant_I

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:58798916-83da-f811-f178-65ddb5d6fced",
  "kind": "theorem",
  "lexical_name": "quadrant_I",
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
  "slug": "quadrant-i--bb52a4c2c76f44e1139a1123",
  "source": {
    "blob": "c0cdf4a4190b60d0374abfcdc146e6d93f4d2010",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 410,
    "line": 346,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant46deef59ea58a606881b27526c1165265e5290f5cb198b8ee5e205d1b90a3b84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb52a4c2c76f44e1139a11231876cce753d34b7cb9c2e14674e01f111b34eda4",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant46deef59ea58a606881b27526c1165265e5290f5cb198b8ee5e205d1b90a3b84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58798916-83da-f811-f178-65ddb5d6fced`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 346–410.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec theorem quadrant_I (hd : DiffContOnCl ℂ f (Ioi 0 ×ℂ Ioi 0))
    (hB : ∃ c < (2 : ℝ), ∃ B,
      f =O[cobounded ℂ ⊓ 𝓟 (Ioi 0 ×ℂ Ioi 0)] fun z => expR (B * ‖z‖ ^ c))
    (hre : ∀ x : ℝ, 0 ≤ x → ‖f x‖ ≤ C) (him : ∀ x : ℝ, 0 ≤ x → ‖f (x * I)‖ ≤ C) (hz_re : 0 ≤ z.re)
    (hz_im : 0 ≤ z.im) : ‖f z‖ ≤ C := by
  -- The case `z = 0` is trivial.
  rcases eq_or_ne z 0 with (rfl | hzne)
  · exact hre 0 le_rfl
  -- Otherwise, `z = e ^ ζ` for some `ζ : ℂ`, `0 < Im ζ < π / 2`.
  obtain ⟨ζ, hζ, rfl⟩ : ∃ ζ : ℂ, ζ.im ∈ Icc 0 (π / 2) ∧ exp ζ = z := by
    refine ⟨log z, ?_, exp_log hzne⟩
    rw [log_im]
    exact ⟨arg_nonneg_iff.2 hz_im, arg_le_pi_div_two_iff.2 (Or.inl hz_re)⟩
  -- We are going to apply `PhragmenLindelof.horizontal_strip` to `f ∘ Complex.exp` and `ζ`.
  change ‖(f ∘ exp) ζ‖ ≤ C
  have H : MapsTo exp (im ⁻¹' Ioo 0 (π / 2)) (Ioi 0 ×ℂ Ioi 0) := fun z hz ↦ by
    rw [mem_reProdIm, exp_re, exp_im, mem_Ioi, mem_Ioi]
    have : 0 < Real.cos z.im := Real.cos_pos_of_mem_Ioo ⟨by linarith [hz.1, hz.2], hz.2⟩
    have : 0 < Real.sin z.im :=
      Real.sin_pos_of_mem_Ioo ⟨hz.1, hz.2.trans (half_lt_self Real.pi_pos)⟩
    constructor <;> positivity
  refine horizontal_strip (hd.comp differentiable_exp.diffContOnCl H) ?_ ?_ ?_ hζ.1 hζ.2
  · -- The estimate `hB` on `f` implies the required estimate on
    -- `f ∘ exp` with the same `c` and `B' = max B 0`.
    rw [sub_zero, div_div_cancel₀ Real.pi_pos.ne']
    rcases hB with ⟨c, hc, B, hO⟩
    refine ⟨c, hc, max B 0, ?_⟩
    rw [← comap_comap, comap_abs_atTop, comap_sup, inf_sup_right]
    -- We prove separately the estimates as `ζ.re → ∞` and as `ζ.re → -∞`
    refine IsBigO.sup ?_ <| (hO.comp_tendsto <| tendsto_exp_comap_re_atTop.inf H.tendsto).trans <|
      .of_norm_eventuallyLE ?_
    · -- For the estimate as `ζ.re → -∞`, note that `f` is continuous within the first quadrant at
      -- zero, hence `f (exp ζ)` has a limit as `ζ.re → -∞`, `0 < ζ.im < π / 2`.
      have hc : ContinuousWithinAt f (Ioi 0 ×ℂ Ioi 0) 0 := by
        refine (hd.continuousOn _ ?_).mono subset_closure
        simp [closure_reProdIm, mem_reProdIm]
      refine ((hc.tendsto.comp <| tendsto_exp_comap_re_atBot.inf H.tendsto).isBigO_one ℝ).trans
        (isBigO_of_le _ fun w => ?_)
      rw [norm_one, Real.norm_of_nonneg (Real.exp_pos _).le, Real.one_le_exp_iff]
      positivity
    · -- For the estimate as `ζ.re → ∞`, we reuse the upper estimate on `f`
      simp only [EventuallyLE, eventually_inf_principal, eventually_comap, comp_apply, one_mul,
        Real.norm_of_nonneg (Real.exp_pos _).le, norm_exp, ← Real.exp_mul, Real.exp_le_exp]
      filter_upwards [eventually_ge_atTop 0] with x hx z hz _
      rw [hz, abs_of_nonneg hx, mul_comm _ c]
      gcongr; apply le_max_left
  · -- If `ζ.im = 0`, then `Complex.exp ζ` is a positive real number
    intro ζ hζ; lift ζ to ℝ using hζ
    rw [comp_apply, ← ofReal_exp]
    exact hre _ (Real.exp_pos _).le
  · -- If `ζ.im = π / 2`, then `Complex.exp ζ` is a purely imaginary number with positive `im`
    intro ζ hζ
    rw [← re_add_im ζ, hζ, comp_apply, exp_add_mul_I, ← ofReal_cos, ← ofReal_sin,
      Real.cos_pi_div_two, Real.sin_pi_div_two, ofReal_zero, ofReal_one, one_mul, zero_add, ←
      ofReal_exp]
    exact him _ (Real.exp_pos _).le

/-- **Phragmen-Lindelöf principle** in the first quadrant. Let `f : ℂ → E` be a function such that

* `f` is differentiable in the open first quadrant and is continuous on its closure;
* `‖f z‖` is bounded from above by `A * exp(B * ‖z‖ ^ c)` on the open first quadrant
  for some `A`, `B`, and `c < 2`;
* `f` is equal to zero on the boundary of the first quadrant.

Then `f` is equal to zero on the closed first quadrant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant46deef59ea58a606881b27526c1165265e5290f5cb198b8ee5e205d1b90a3b84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant46deef59ea58a606881b27526c1165265e5290f5cb198b8ee5e205d1b90a3b84.lean#L346).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0cdf4a4190b60d0374abfcdc146e6d93f4d2010` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
