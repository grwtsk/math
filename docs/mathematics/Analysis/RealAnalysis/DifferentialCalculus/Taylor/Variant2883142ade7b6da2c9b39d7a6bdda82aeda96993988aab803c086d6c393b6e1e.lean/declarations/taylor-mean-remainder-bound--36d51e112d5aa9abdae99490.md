# taylor_mean_remainder_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:80fe52cd-00a4-2a1e-0c25-d404615477c9",
  "kind": "theorem",
  "lexical_name": "taylor_mean_remainder_bound",
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
  "slug": "taylor-mean-remainder-bound--36d51e112d5aa9abdae99490",
  "source": {
    "blob": "89d1aaeaac5c145b051f05b0f9986d60868db26f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 369,
    "line": 327,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant2883142ade7b6da2c9b39d7a6bdda82aeda96993988aab803c086d6c393b6e1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:36d51e112d5aa9abdae99490220bd71c8f925602aa56c0f23daac588a965a09b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant2883142ade7b6da2c9b39d7a6bdda82aeda96993988aab803c086d6c393b6e1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:80fe52cd-00a4-2a1e-0c25-d404615477c9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–369.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem taylor_mean_remainder_bound {f : ℝ → E} {a b C x : ℝ} {n : ℕ} (hab : a ≤ b)
    (hf : ContDiffOn ℝ (n + 1) f (Icc a b)) (hx : x ∈ Icc a b)
    (hC : ∀ y ∈ Icc a b, ‖iteratedDerivWithin (n + 1) f (Icc a b) y‖ ≤ C) :
    ‖f x - taylorWithinEval f n (Icc a b) a x‖ ≤ C * (x - a) ^ (n + 1) / n ! := by
  rcases eq_or_lt_of_le hab with (rfl | h)
  · rw [Icc_self, mem_singleton_iff] at hx
    simp [hx]
  -- The nth iterated derivative is differentiable
  have hf' : DifferentiableOn ℝ (iteratedDerivWithin n f (Icc a b)) (Icc a b) :=
    hf.differentiableOn_iteratedDerivWithin (WithTop.coe_lt_coe.mpr n.lt_succ_self)
      (uniqueDiffOn_Icc h)
  -- We can uniformly bound the derivative of the Taylor polynomial
  have h' : ∀ (y : ℝ) (_ : y ∈ Ico a x),
      ‖((n ! : ℝ)⁻¹ * (x - y) ^ n) • iteratedDerivWithin (n + 1) f (Icc a b) y‖ ≤
        (n ! : ℝ)⁻¹ * |x - a| ^ n * C := by
    rintro y ⟨hay, hyx⟩
    rw [norm_smul, Real.norm_eq_abs]
    -- Estimate the iterated derivative by `C`
    refine' mul_le_mul _ (hC y ⟨hay, hyx.le.trans hx.2⟩) (by positivity) (by positivity)
    -- The rest is a trivial calculation
    rw [abs_mul, abs_pow, abs_inv, Nat.abs_cast]
    -- Porting note: was `mono* with 0 ≤ (n ! : ℝ)⁻¹; any_goals positivity; linarith [hx.1, hyx]`
    gcongr
    rw [abs_of_nonneg, abs_of_nonneg] <;> linarith
  -- Apply the mean value theorem for vector valued functions:
  have A : ∀ t ∈ Icc a x, HasDerivWithinAt (fun y => taylorWithinEval f n (Icc a b) y x)
      (((↑n !)⁻¹ * (x - t) ^ n) • iteratedDerivWithin (n + 1) f (Icc a b) t) (Icc a x) t := by
    intro t ht
    have I : Icc a x ⊆ Icc a b := Icc_subset_Icc_right hx.2
    exact (has_deriv_within_taylorWithinEval_at_Icc x h (I ht) hf.of_succ hf').mono I
  have := norm_image_sub_le_of_norm_deriv_le_segment' A h' x (right_mem_Icc.2 hx.1)
  simp only [taylorWithinEval_self] at this
  refine' this.trans_eq _
  -- The rest is a trivial calculation
  rw [abs_of_nonneg (sub_nonneg.mpr hx.1)]
  ring
#align taylor_mean_remainder_bound taylor_mean_remainder_bound

/-- **Taylor's theorem** with a polynomial bound on the remainder

We assume that `f` is `n+1`-times continuously differentiable on the closed set `Icc a b`.
There exists a constant `C` such that for all `x ∈ Icc a b` the difference of `f` and its `n`-th
Taylor polynomial can be estimated by `C * (x - a)^(n+1)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant2883142ade7b6da2c9b39d7a6bdda82aeda96993988aab803c086d6c393b6e1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Taylor/Variant2883142ade7b6da2c9b39d7a6bdda82aeda96993988aab803c086d6c393b6e1e.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `89d1aaeaac5c145b051f05b0f9986d60868db26f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
