# vertical_line_shift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6fc2474e-2d22-524a-aee2-2e510e580694",
  "kind": "theorem",
  "lexical_name": "vertical_line_shift",
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
  "slug": "vertical-line-shift--5fac1f546d840b40d0cbe125",
  "source": {
    "blob": "d46f9e1c7eddbb2134e8f3c282dcf3ff9334f8c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 504,
    "line": 435,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/VerticalLine/Variant516baed114065c665177653efcbc3155ed859af646ab544a261ea1b0f615aae6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5fac1f546d840b40d0cbe125aafc45d3dabf7b1e70e7999be584b059aca6aade",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/VerticalLine/Variant516baed114065c665177653efcbc3155ed859af646ab544a261ea1b0f615aae6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6fc2474e-2d22-524a-aee2-2e510e580694`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 435–504.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem vertical_line_shift {f : ℂ → ℂ} {a b : ℝ} (hab : a ≤ b)
    (hf : ∀ s : ℂ, a ≤ s.re → s.re ≤ b → DifferentiableAt ℂ f s)
    {φ : ℝ → ℝ} (hφ : Integrable φ)
    (hbound : ∀ (σ t : ℝ), a ≤ σ → σ ≤ b → ‖f (σ + t * I)‖ ≤ φ t)
    (hφtop : Filter.Tendsto φ Filter.atTop (nhds 0))
    (hφbot : Filter.Tendsto φ Filter.atBot (nhds 0)) :
    ∫ t : ℝ, f (b + t * I) = ∫ t : ℝ, f (a + t * I) := by
  -- integrability on the vertical lines
  have hint : ∀ σ : ℝ, a ≤ σ → σ ≤ b → Integrable (fun t : ℝ => f (σ + t * I)) := fun σ h1 h2 =>
    integrable_line (fun t => hf _ (by simp [h1]) (by simp [h2])) hφ (fun t => hbound σ t h1 h2)
  have hφnn : ∀ t, 0 ≤ φ t := fun t => (norm_nonneg _).trans (hbound a t le_rfl hab)
  -- Cauchy on the rectangles [a,b] × [−R, R]
  have hrect : ∀ R : ℝ, (∫ y in (-R)..R, f (b + y * I)) - (∫ y in (-R)..R, f (a + y * I))
      = -I * ((∫ x in a..b, f (x + R * I)) - (∫ x in a..b, f (x + (-R) * I))) := by
    intro R
    have hdiff : DifferentiableOn ℂ f (Set.uIcc a b ×ℂ Set.uIcc (-R) R) := by
      intro z hz
      rw [Set.uIcc_of_le hab] at hz
      exact (hf z hz.1.1 hz.1.2).differentiableWithinAt
    have H := Complex.integral_boundary_rect_eq_zero_of_differentiableOn f
      ((a : ℂ) + (-R : ℝ) * I) ((b : ℂ) + (R : ℝ) * I) (by simpa using hdiff)
    simp only [add_re, ofReal_re, mul_re, I_re, mul_zero, ofReal_im, I_im, mul_one, sub_self,
      add_zero, add_im, mul_im, zero_add, smul_eq_mul] at H
    have key : I * ((∫ y in (-R)..R, f (b + y * I)) - (∫ y in (-R)..R, f (a + y * I)))
        = (∫ x in a..b, f (x + R * I)) - (∫ x in a..b, f (x + (-R) * I)) := by
      push_cast at H ⊢
      linear_combination H
    calc (∫ y in (-R)..R, f (b + y * I)) - (∫ y in (-R)..R, f (a + y * I))
        = -(I * I) * ((∫ y in (-R)..R, f (b + y * I)) - (∫ y in (-R)..R, f (a + y * I))) := by
          rw [I_mul_I]; ring
      _ = -I * (I * ((∫ y in (-R)..R, f (b + y * I)) - (∫ y in (-R)..R, f (a + y * I)))) := by
          ring
      _ = _ := by rw [key]
  -- the horizontal sides are small
  have hsmall : ∀ R : ℝ, ‖(∫ y in (-R)..R, f (b + y * I)) - (∫ y in (-R)..R, f (a + y * I))‖
      ≤ (b - a) * (φ R + φ (-R)) := by
    intro R
    rw [hrect R, norm_mul, norm_neg, Complex.norm_I, one_mul]
    have h1 : ‖∫ x in a..b, f (x + R * I)‖ ≤ φ R * |b - a| :=
      intervalIntegral.norm_integral_le_of_norm_le_const fun x hx => by
        rw [Set.uIoc_of_le hab] at hx
        exact hbound x R hx.1.le hx.2
    have h2 : ‖∫ x in a..b, f (x + (-R) * I)‖ ≤ φ (-R) * |b - a| :=
      intervalIntegral.norm_integral_le_of_norm_le_const fun x hx => by
        rw [Set.uIoc_of_le hab] at hx
        have := hbound x (-R) hx.1.le hx.2
        simpa using this
    rw [abs_of_nonneg (by linarith)] at h1 h2
    calc ‖(∫ x in a..b, f (x + R * I)) - (∫ x in a..b, f (x + (-R) * I))‖
        ≤ ‖∫ x in a..b, f (x + R * I)‖ + ‖∫ x in a..b, f (x + (-R) * I)‖ := norm_sub_le _ _
      _ ≤ φ R * (b - a) + φ (-R) * (b - a) := add_le_add h1 h2
      _ = (b - a) * (φ R + φ (-R)) := by ring
  -- limits
  set g : ℝ → ℂ := fun R => (∫ y in (-R)..R, f (b + y * I)) - (∫ y in (-R)..R, f (a + y * I)) with hg
  have hlim1 : Filter.Tendsto g Filter.atTop (nhds ((∫ t : ℝ, f (b + t * I)) - (∫ t : ℝ, f (a + t * I)))) := by
    apply Filter.Tendsto.sub
    · exact intervalIntegral_tendsto_integral (hint b hab le_rfl) Filter.tendsto_neg_atTop_atBot Filter.tendsto_id
    · exact intervalIntegral_tendsto_integral (hint a le_rfl hab) Filter.tendsto_neg_atTop_atBot Filter.tendsto_id
  have hlim0 : Filter.Tendsto g Filter.atTop (nhds 0) := by
    rw [tendsto_zero_iff_norm_tendsto_zero]
    refine squeeze_zero (fun R => norm_nonneg _) (fun R => hsmall R) ?_
    have : Filter.Tendsto (fun R => (b - a) * (φ R + φ (-R))) Filter.atTop (nhds ((b - a) * (0 + 0))) :=
      (hφtop.add (hφbot.comp Filter.tendsto_neg_atTop_atBot)).const_mul _
    simpa using this
  have := tendsto_nhds_unique hlim1 hlim0
  exact sub_eq_zero.mp this


/-- paperFT of a continuous compactly supported function is entire (differentiation under the
integral sign); needed for all contour arguments (H = Hfn k analytic in s). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/VerticalLine/Variant516baed114065c665177653efcbc3155ed859af646ab544a261ea1b0f615aae6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/VerticalLine/Variant516baed114065c665177653efcbc3155ed859af646ab544a261ea1b0f615aae6.lean#L435).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d46f9e1c7eddbb2134e8f3c282dcf3ff9334f8c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
