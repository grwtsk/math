# eq_zero_on_right_half_plane_of_superexponential_decay

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0378b6cac22f885a9ebd8bc29154c7e788f5a2b4",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 804,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bffe9658430c175d119d9773650e82dab8213ed8edbf233b2ac36525ea469b21.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0e413b6d-63b8-18d7-ea83-f80e3a4795e6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fb86815a-9f50-1432-6b8c-3f93c86b90ea",
  "kind": "theorem",
  "lexical_name": "eq_zero_on_right_half_plane_of_superexponential_decay",
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
  "slug": "eq-zero-on-right-half-plane-of-superexponential-decay--c270546bc13050bf1450261e",
  "source": {
    "blob": "0378b6cac22f885a9ebd8bc29154c7e788f5a2b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 860,
    "line": 804,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantbffe9658430c175d119d9773650e82dab8213ed8edbf233b2ac36525ea469b21.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c270546bc13050bf1450261e82c4efa4009b1a81498f620cd30846924baefb0c",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantbffe9658430c175d119d9773650e82dab8213ed8edbf233b2ac36525ea469b21.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fb86815a-9f50-1432-6b8c-3f93c86b90ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 804–860.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_zero_on_right_half_plane_of_superexponential_decay (hd : DiffContOnCl ℂ f {z | 0 < z.re})
    (hexp : ∃ c < (2 : ℝ), ∃ B,
      f =O[comap Complex.abs atTop ⊓ 𝓟 {z | 0 < z.re}] fun z => expR (B * abs z ^ c))
    (hre : SuperpolynomialDecay atTop expR fun x => ‖f x‖) (him : ∃ C, ∀ x : ℝ, ‖f (x * I)‖ ≤ C) :
    EqOn f 0 {z : ℂ | 0 ≤ z.re} := by
  rcases him with ⟨C, hC⟩
  -- Due to continuity, it suffices to prove the equality on the open right half-plane.
  suffices ∀ z : ℂ, 0 < z.re → f z = 0 by
    simpa only [closure_setOf_lt_re] using
      EqOn.of_subset_closure this hd.continuousOn continuousOn_const subset_closure Subset.rfl
  -- Consider $g_n(z)=e^{nz}f(z)$.
  set g : ℕ → ℂ → E := fun (n : ℕ) (z : ℂ) => exp z ^ n • f z
  have hg : ∀ n z, ‖g n z‖ = expR z.re ^ n * ‖f z‖ := fun n z ↦ by
    simp only [norm_smul, norm_eq_abs, Complex.abs_pow, abs_exp]
  intro z hz
  -- Since `e^{nz} → ∞` as `n → ∞`, it suffices to show that each `g_n` is bounded from above by `C`
  suffices H : ∀ n : ℕ, ‖g n z‖ ≤ C
  · contrapose! H
    simp only [hg]
    exact (((tendsto_pow_atTop_atTop_of_one_lt (Real.one_lt_exp_iff.2 hz)).atTop_mul
      (norm_pos_iff.2 H) tendsto_const_nhds).eventually (eventually_gt_atTop C)).exists
  intro n
  -- This estimate follows from the Phragmen-Lindelöf principle in the right half-plane.
  refine' right_half_plane_of_tendsto_zero_on_real ((differentiable_exp.pow n).diffContOnCl.smul hd)
    _ _ (fun y => _) hz.le
  · rcases hexp with ⟨c, hc, B, hO⟩
    refine' ⟨max c 1, max_lt hc one_lt_two, n + max B 0, .of_norm_left _⟩
    simp only [hg]
    refine' ((isBigO_refl (fun z : ℂ => expR z.re ^ n) _).mul hO.norm_left).trans (.of_bound 1 _)
    simp only [← Real.exp_nat_mul, ← Real.exp_add, Real.norm_of_nonneg (Real.exp_pos _).le,
      Real.exp_le_exp, add_mul, eventually_inf_principal, eventually_comap, one_mul]
    -- porting note: todo: `0 < z.re` is not used; where do we use it?
    filter_upwards [eventually_ge_atTop (1 : ℝ)] with r hr z hzr _; subst r
    refine' add_le_add (mul_le_mul_of_nonneg_left _ n.cast_nonneg) _
    · calc
        z.re ≤ abs z := re_le_abs _
        _ = abs z ^ (1 : ℝ) := (Real.rpow_one _).symm
        _ ≤ abs z ^ max c 1 := Real.rpow_le_rpow_of_exponent_le hr (le_max_right _ _)
    · exact mul_le_mul (le_max_left _ _) (Real.rpow_le_rpow_of_exponent_le hr (le_max_left _ _))
        (Real.rpow_nonneg_of_nonneg (Complex.abs.nonneg _) _) (le_max_right _ _)
  · rw [tendsto_zero_iff_norm_tendsto_zero]; simp only [hg]
    exact hre n
  · rw [hg, ofReal_mul_re, I_re, mul_zero, Real.exp_zero, one_pow, one_mul]
    exact hC y
#align phragmen_lindelof.eq_zero_on_right_half_plane_of_superexponential_decay PhragmenLindelof.eq_zero_on_right_half_plane_of_superexponential_decay

/-- **Phragmen-Lindelöf principle** in the right half-plane. Let `f g : ℂ → E` be functions such
that

* `f` and `g` are differentiable in the open right half-plane and are continuous on its closure;
* `‖f z‖` and `‖g z‖` are bounded from above by `A * exp(B * (abs z) ^ c)` on the open right
  half-plane for some `c < 2`;
* `‖f z‖` and `‖g z‖` are bounded from above by constants on the imaginary axis;
* `f x - g x`, `x : ℝ`, tends to zero superexponentially fast as `x → ∞`:
  for any natural `n`, `exp (n * x) * ‖f x - g x‖` tends to zero as `x → ∞`.

Then `f` is equal to `g` on the closed right half-plane. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantbffe9658430c175d119d9773650e82dab8213ed8edbf233b2ac36525ea469b21.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variantbffe9658430c175d119d9773650e82dab8213ed8edbf233b2ac36525ea469b21.lean#L804).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0378b6cac22f885a9ebd8bc29154c7e788f5a2b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
