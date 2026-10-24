# right_half_plane_of_bounded_on_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4b03e503-4ae7-8092-71c3-6a44f1e0c2fe",
  "kind": "theorem",
  "lexical_name": "right_half_plane_of_bounded_on_real",
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
  "slug": "right-half-plane-of-bounded-on-real--d439834edf741075d4a88339",
  "source": {
    "blob": "c0cdf4a4190b60d0374abfcdc146e6d93f4d2010",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 762,
    "line": 720,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant46deef59ea58a606881b27526c1165265e5290f5cb198b8ee5e205d1b90a3b84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d439834edf741075d4a883397913db5fabda94487df7fd5d22d9c641358b3dbe",
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

Occurrence: `result:4b03e503-4ae7-8092-71c3-6a44f1e0c2fe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 720–762.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem right_half_plane_of_bounded_on_real (hd : DiffContOnCl ℂ f {z | 0 < z.re})
    (hexp : ∃ c < (2 : ℝ), ∃ B,
      f =O[cobounded ℂ ⊓ 𝓟 {z | 0 < z.re}] fun z => expR (B * ‖z‖ ^ c))
    (hre : IsBoundedUnder (· ≤ ·) atTop fun x : ℝ => ‖f x‖) (him : ∀ x : ℝ, ‖f (x * I)‖ ≤ C)
    (hz : 0 ≤ z.re) : ‖f z‖ ≤ C := by
  -- For each `ε < 0`, the function `fun z ↦ exp (ε * z) • f z` satisfies assumptions of
  -- `right_half_plane_of_tendsto_zero_on_real`, hence `‖exp (ε * z) • f z‖ ≤ C` for all `ε < 0`.
  -- Taking the limit as `ε → 0`, we obtain the required inequality.
  suffices ∀ᶠ ε : ℝ in 𝓝[<] 0, ‖exp (ε * z) • f z‖ ≤ C by
    refine le_of_tendsto (Tendsto.mono_left ?_ nhdsWithin_le_nhds) this
    apply ((continuous_ofReal.mul continuous_const).cexp.smul continuous_const).norm.tendsto'
    simp
  filter_upwards [self_mem_nhdsWithin] with ε ε₀; change ε < 0 at ε₀
  set g : ℂ → E := fun z => exp (ε * z) • f z; change ‖g z‖ ≤ C
  replace hd : DiffContOnCl ℂ g {z : ℂ | 0 < z.re} :=
    (differentiable_id.const_mul _).cexp.diffContOnCl.smul hd
  have hgn : ∀ z, ‖g z‖ = expR (ε * z.re) * ‖f z‖ := fun z ↦ by
    rw [norm_smul, norm_exp, re_ofReal_mul]
  refine right_half_plane_of_tendsto_zero_on_real hd ?_ ?_ (fun y => ?_) hz
  · rcases hexp with ⟨c, hc, B, hO⟩
    refine ⟨c, hc, B, .trans (.of_bound' ?_) hO⟩
    refine eventually_inf_principal.2 <| Eventually.of_forall fun z hz => ?_
    rw [hgn]
    refine mul_le_of_le_one_left (norm_nonneg _) (Real.exp_le_one_iff.2 ?_)
    exact mul_nonpos_of_nonpos_of_nonneg ε₀.le (le_of_lt hz)
  · simp_rw [g, ← ofReal_mul, ← ofReal_exp, coe_smul]
    have h₀ : Tendsto (fun x : ℝ => expR (ε * x)) atTop (𝓝 0) :=
      Real.tendsto_exp_atBot.comp (tendsto_const_nhds.neg_mul_atTop ε₀ tendsto_id)
    exact h₀.zero_smul_isBoundedUnder_le hre
  · rw [hgn, re_ofReal_mul, I_re, mul_zero, mul_zero, Real.exp_zero,
      one_mul]
    exact him y

/-- **Phragmen-Lindelöf principle** in the right half-plane. Let `f : ℂ → E` be a function such that

* `f` is differentiable in the open right half-plane and is continuous on its closure;
* `‖f z‖` is bounded from above by `A * exp(B * ‖z‖ ^ c)` on the open right half-plane
  for some `c < 2`;
* `‖f z‖` is bounded from above by a constant on the imaginary axis;
* `f x`, `x : ℝ`, tends to zero superexponentially fast as `x → ∞`:
  for any natural `n`, `exp (n * x) * ‖f x‖` tends to zero as `x → ∞`.

Then `f` is equal to zero on the closed right half-plane. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant46deef59ea58a606881b27526c1165265e5290f5cb198b8ee5e205d1b90a3b84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant46deef59ea58a606881b27526c1165265e5290f5cb198b8ee5e205d1b90a3b84.lean#L720).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0cdf4a4190b60d0374abfcdc146e6d93f4d2010` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
