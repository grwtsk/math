# right_half_plane_of_tendsto_zero_on_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9933a7bf-17ed-b24b-3781-5a0a55114b9f",
  "kind": "theorem",
  "lexical_name": "right_half_plane_of_tendsto_zero_on_real",
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
  "slug": "right-half-plane-of-tendsto-zero-on-real--bc9c55f9859bcd648d728841",
  "source": {
    "blob": "c0cdf4a4190b60d0374abfcdc146e6d93f4d2010",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 719,
    "line": 648,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant46deef59ea58a606881b27526c1165265e5290f5cb198b8ee5e205d1b90a3b84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bc9c55f9859bcd648d728841b8caa111a08cb4a6a1ac0084af284aab0ee772f6",
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

Occurrence: `result:9933a7bf-17ed-b24b-3781-5a0a55114b9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 648–719.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem right_half_plane_of_tendsto_zero_on_real (hd : DiffContOnCl ℂ f {z | 0 < z.re})
    (hexp : ∃ c < (2 : ℝ), ∃ B,
      f =O[cobounded ℂ ⊓ 𝓟 {z | 0 < z.re}] fun z => expR (B * ‖z‖ ^ c))
    (hre : Tendsto (fun x : ℝ => f x) atTop (𝓝 0)) (him : ∀ x : ℝ, ‖f (x * I)‖ ≤ C)
    (hz : 0 ≤ z.re) : ‖f z‖ ≤ C := by
  /- We are going to apply the Phragmen-Lindelöf principle in the first and fourth quadrants.
    The lemmas immediately imply that for any upper estimate `C'` on `‖f x‖`, `x : ℝ`, `0 ≤ x`,
    the number `max C C'` is an upper estimate on `f` in the whole right half-plane. -/
  revert z
  have hle : ∀ C', (∀ x : ℝ, 0 ≤ x → ‖f x‖ ≤ C') →
      ∀ z : ℂ, 0 ≤ z.re → ‖f z‖ ≤ max C C' := fun C' hC' z hz ↦ by
    rcases hexp with ⟨c, hc, B, hO⟩
    rcases le_total z.im 0 with h | h
    · refine quadrant_IV (hd.mono fun _ => And.left) ⟨c, hc, B, ?_⟩
          (fun x hx => (hC' x hx).trans <| le_max_right _ _)
          (fun x _ => (him x).trans (le_max_left _ _)) hz h
      exact hO.mono (inf_le_inf_left _ <| principal_mono.2 fun _ => And.left)
    · refine quadrant_I (hd.mono fun _ => And.left) ⟨c, hc, B, ?_⟩
          (fun x hx => (hC' x hx).trans <| le_max_right _ _)
          (fun x _ => (him x).trans (le_max_left _ _)) hz h
      exact hO.mono (inf_le_inf_left _ <| principal_mono.2 fun _ => And.left)
  -- Since `f` is continuous on `Ici 0` and `‖f x‖` tends to zero as `x → ∞`,
  -- the norm `‖f x‖` takes its maximum value at some `x₀ : ℝ`.
  obtain ⟨x₀, hx₀, hmax⟩ : ∃ x : ℝ, 0 ≤ x ∧ ∀ y : ℝ, 0 ≤ y → ‖f y‖ ≤ ‖f x‖ := by
    have hfc : ContinuousOn (fun x : ℝ => f x) (Ici 0) := by
      refine hd.continuousOn.comp continuous_ofReal.continuousOn fun x hx => ?_
      rwa [closure_setOf_lt_re]
    by_cases h₀ : ∀ x : ℝ, 0 ≤ x → f x = 0
    · refine ⟨0, le_rfl, fun y hy => ?_⟩; rw [h₀ y hy, h₀ 0 le_rfl]
    push_neg at h₀
    rcases h₀ with ⟨x₀, hx₀, hne⟩
    have hlt : ‖(0 : E)‖ < ‖f x₀‖ := by rwa [norm_zero, norm_pos_iff]
    suffices ∀ᶠ x : ℝ in cocompact ℝ ⊓ 𝓟 (Ici 0), ‖f x‖ ≤ ‖f x₀‖ by
      simpa only [exists_prop] using hfc.norm.exists_isMaxOn' isClosed_Ici hx₀ this
    rw [cocompact_eq_atBot_atTop, inf_sup_right, (disjoint_atBot_principal_Ici (0 : ℝ)).eq_bot,
      bot_sup_eq]
    exact (hre.norm.eventually <| ge_mem_nhds hlt).filter_mono inf_le_left
  rcases le_or_lt ‖f x₀‖ C with h | h
  ·-- If `‖f x₀‖ ≤ C`, then `hle` implies the required estimate
    simpa only [max_eq_left h] using hle _ hmax
  · -- Otherwise, `‖f z‖ ≤ ‖f x₀‖` for all `z` in the right half-plane due to `hle`.
    replace hmax : IsMaxOn (norm ∘ f) {z | 0 < z.re} x₀ := by
      rintro z (hz : 0 < z.re)
      simpa [max_eq_right h.le] using hle _ hmax _ hz.le
    -- Due to the maximum modulus principle applied to the closed ball of radius `x₀.re`,
    -- `‖f 0‖ = ‖f x₀‖`.
    have : ‖f 0‖ = ‖f x₀‖ := by
      apply norm_eq_norm_of_isMaxOn_of_ball_subset hd hmax
      -- move to a lemma?
      intro z hz
      rw [mem_ball, dist_zero_left, dist_eq, Complex.norm_of_nonneg hx₀] at hz
      rw [mem_setOf_eq]
      contrapose! hz
      calc
        x₀ ≤ x₀ - z.re := (le_sub_self_iff _).2 hz
        _ ≤ |x₀ - z.re| := le_abs_self _
        _ = |(z - x₀).re| := by rw [sub_re, ofReal_re, _root_.abs_sub_comm]
        _ ≤ ‖z - x₀‖ := abs_re_le_norm _
    -- Thus we have `C < ‖f x₀‖ = ‖f 0‖ ≤ C`. Contradiction completes the proof.
    refine (h.not_le <| this ▸ ?_).elim
    simpa using him 0

/-- **Phragmen-Lindelöf principle** in the right half-plane. Let `f : ℂ → E` be a function such that

* `f` is differentiable in the open right half-plane and is continuous on its closure;
* `‖f z‖` is bounded from above by `A * exp(B * ‖z‖ ^ c)` on the open right half-plane
  for some `c < 2`;
* `‖f z‖` is bounded from above by a constant `C` on the imaginary axis;
* `‖f x‖` is bounded from above by a constant for large real values of `x`.

Then `‖f z‖` is bounded from above by `C` on the closed right half-plane.
See also `PhragmenLindelof.right_half_plane_of_tendsto_zero_on_real` for a weaker version. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant46deef59ea58a606881b27526c1165265e5290f5cb198b8ee5e205d1b90a3b84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/PhragmenLindelof/Variant46deef59ea58a606881b27526c1165265e5290f5cb198b8ee5e205d1b90a3b84.lean#L648).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0cdf4a4190b60d0374abfcdc146e6d93f4d2010` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
