# sq_integral_le_of_damped_deriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7bcedc2c-abff-a1b3-d324-3e9d5869abf6",
  "kind": "theorem",
  "lexical_name": "sq_integral_le_of_damped_deriv",
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
  "slug": "sq-integral-le-of-damped-deriv--d948c5fb638ca421e8a78482",
  "source": {
    "blob": "c5f602e924adac25ecc8d06c50e8990820da193d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 111,
    "line": 45,
    "path": "GRWTSK/Analysis/Integration/ExponentialVolterraL2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d948c5fb638ca421e8a784826e2b058f7f301b14246e43bbf68187cb9f79bb62",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/ExponentialVolterraL2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7bcedc2c-abff-a1b3-d324-3e9d5869abf6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–111.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sq_integral_le_of_damped_deriv {σ T : ℝ} {F V : ℝ → ℝ}
    (hσ : 0 < σ) (hT : 0 ≤ T)
    (hV : AbsolutelyContinuousOnInterval V 0 T) (hV0 : V 0 = 0)
    (hderiv : ∀ᵐ t ∂volume, t ∈ uIcc (0 : ℝ) T →
      HasDerivAt V (F t - σ * V t) t)
    (hF2 : IntervalIntegrable (fun t : ℝ => F t ^ 2) volume 0 T) :
    (∫ t in (0 : ℝ)..T, V t ^ 2) ≤
      (∫ t in (0 : ℝ)..T, F t ^ 2) / σ ^ 2 := by
  have hV2 : AbsolutelyContinuousOnInterval (fun t : ℝ => V t ^ 2) 0 T := by
    have heq : V * V = fun t : ℝ => V t ^ 2 := by
      funext t
      simp [pow_two]
    rw [← heq]
    exact hV.mul hV
  have hV2int : IntervalIntegrable (fun t : ℝ => V t ^ 2) volume 0 T :=
    hV2.continuousOn.intervalIntegrable
  have hright : IntervalIntegrable
      (fun t : ℝ => F t ^ 2 / σ - σ * V t ^ 2) volume 0 T :=
    hF2.div_const σ |>.sub (hV2int.const_mul σ)
  have hmono : (∫ t in (0 : ℝ)..T, deriv (fun x : ℝ => V x ^ 2) t) ≤
      ∫ t in (0 : ℝ)..T, (F t ^ 2 / σ - σ * V t ^ 2) := by
    apply intervalIntegral.integral_mono_ae_restrict hT
      hV2.intervalIntegrable_deriv hright
    have hderiv' : ∀ᵐ t ∂volume.restrict (Icc (0 : ℝ) T),
        t ∈ uIcc (0 : ℝ) T → HasDerivAt V (F t - σ * V t) t :=
      hderiv.filter_mono (ae_mono Measure.restrict_le_self)
    filter_upwards [ae_restrict_mem measurableSet_Icc, hderiv'] with t htu ht
    have htu' : t ∈ uIcc (0 : ℝ) T := by
      simpa only [uIcc_of_le hT] using htu
    have hbase := ht htu'
    have hmul := hbase.mul hbase
    have hd : HasDerivAt (fun x : ℝ => V x ^ 2)
        (2 * V t * (F t - σ * V t)) t := by
      have heq : V * V = fun x : ℝ => V x ^ 2 := by
        funext x
        simp [pow_two]
      rw [← heq]
      convert hmul using 1
      all_goals first | rfl | ring
    have hd' : deriv (fun x : ℝ => V x ^ 2) t =
        2 * V t * (F t - σ * V t) := hd.deriv
    rw [hd']
    have hsquare : 0 ≤ (F t - σ * V t) ^ 2 / σ :=
      div_nonneg (sq_nonneg _) hσ.le
    have halgebra :
        F t ^ 2 / σ - σ * V t ^ 2 -
            2 * V t * (F t - σ * V t) =
          (F t - σ * V t) ^ 2 / σ := by
      field_simp [ne_of_gt hσ]
      ring
    linarith
  rw [hV2.integral_deriv_eq_sub, hV0, zero_pow (by norm_num : (2 : ℕ) ≠ 0), sub_zero,
    intervalIntegral.integral_sub (hF2.div_const σ) (hV2int.const_mul σ),
    intervalIntegral.integral_div, intervalIntegral.integral_const_mul] at hmono
  have hscaled : (∫ t in (0 : ℝ)..T, V t ^ 2) * σ ^ 2 ≤
      ∫ t in (0 : ℝ)..T, F t ^ 2 := by
    have hVT : 0 ≤ V T ^ 2 := sq_nonneg _
    have hfirst : σ * (∫ t in (0 : ℝ)..T, V t ^ 2) ≤
        (∫ t in (0 : ℝ)..T, F t ^ 2) / σ := by
      linarith
    have := (le_div_iff₀ hσ).mp hfirst
    nlinarith
  exact (le_div_iff₀ (sq_pos_of_pos hσ)).2 hscaled

/-- The finite exponential Volterra operator has squared `L²` norm at most
`σ⁻²` times the squared source norm.  Both hypotheses are finite-interval
conditions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/RealAnalysis/Integration/ExponentialVolterraL2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Integration/ExponentialVolterraL2.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5f602e924adac25ecc8d06c50e8990820da193d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
