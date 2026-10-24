# inverse_power_sound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d6b06e47-1774-f9fe-bf7c-eec51438c52f",
  "kind": "theorem",
  "lexical_name": "inverse_power_sound",
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
  "slug": "inverse-power-sound--abf359797169616732dfa979",
  "source": {
    "blob": "135e1f73f9c69624c19b24a593586bd4e0f64267",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 37,
    "path": "GRWTSK/Analysis/ErrorBounds/RationalAtanhPower.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:abf359797169616732dfa979395c9c849abdaf20017b36a8d633f263fd806b76",
  "verification": {
    "reference": "docs/verification/Analysis/ErrorBounds/RationalAtanhPower.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d6b06e47-1774-f9fe-bf7c-eec51438c52f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inverse_power_sound {s : Coordinates} {t B : ℚ} {k n₂ nr bits squarings terms : ℕ}
    {tr : RationalExpTrace.Trace} (hs : 0 ≤ s.1)
    (hl : RationalAtanhLog.validScale t k = true)
    (he : RationalExpTrace.check (exponent s t k n₂ nr bits) B squarings terms tr = true) :
    Holds (output s t k n₂ nr bits B squarings terms tr) ((t : ℂ) ^ (-toComplex s)) := by
  let ell := RationalAtanhLog.enclosure t k n₂ nr bits
  have hc := RationalAtanhLog.enclosure_center hl n₂ nr bits
  have hcm : toComplex ell.mid = ((ell.mid.1 : ℝ) : ℂ) := by
    apply Complex.ext
    · rfl
    · change (ell.mid.2 : ℝ) = 0
      exact_mod_cast hc.2
  have hlog : |Real.log (t : ℝ) - (ell.mid.1 : ℝ)| ≤ (ell.rad : ℝ) := by
    have hh := RationalAtanhLog.enclosure_sound hl n₂ nr bits
    change ‖(Real.log (t : ℝ) : ℂ) - toComplex ell.mid‖ ≤ (ell.rad : ℝ) at hh
    simpa only [hcm, ← Complex.ofReal_sub, Complex.norm_real, Real.norm_eq_abs] using hh
  have ht : (1 : ℝ) ≤ t := by exact_mod_cast (RationalAtanhLog.scale_bounds hl).1
  have hnonneg : (0 : ℝ) ≤ ell.mid.1 := by exact_mod_cast hc.1
  have hray := GRWTSK.Analysis.Complex.IntervalMellinRangeReduction.norm_exp_ray_sub_le
    (a := -toComplex s) (by change -(s.1 : ℝ) ≤ 0; exact_mod_cast (neg_nonpos.mpr hs))
    (Real.log_nonneg ht) hnonneg
  have hinput : ‖Complex.exp (-toComplex s * (Real.log (t : ℝ) : ℂ)) -
      Complex.exp (-toComplex s * toComplex ell.mid)‖ ≤ (magnitude s : ℝ) * (ell.rad : ℝ) := by
    rw [hcm]
    apply hray.trans
    rw [norm_neg]
    exact mul_le_mul (norm_le_magnitude s) hlog (abs_nonneg _)
      (by exact_mod_cast magnitude_nonneg s)
  have hexp := checked_exp_outward_error bits he
  have hw : toComplex (exponent s t k n₂ nr bits) = -toComplex s * toComplex ell.mid := by
    simp only [exponent, toComplex_mul, toComplex_sub, toComplex_zero, zero_sub, ell]
  rw [hw] at hexp
  have hpow : (t : ℂ) ^ (-toComplex s) =
      Complex.exp (-toComplex s * (Real.log (t : ℝ) : ℂ)) := by
    have ht0 : (0 : ℝ) < t := zero_lt_one.trans_le ht
    have htc : (t : ℂ) ≠ 0 := by exact_mod_cast ht0.ne'
    have hcast : (t : ℂ) = ((t : ℝ) : ℂ) := by norm_cast
    rw [Complex.cpow_def_of_ne_zero htc, hcast, ← Complex.ofReal_log ht0.le, mul_comm]
  unfold Holds output
  rw [hpow]
  calc
    _ ≤ ‖Complex.exp (-toComplex s * (Real.log (t : ℝ) : ℂ)) -
        Complex.exp (-toComplex s * toComplex ell.mid)‖ +
        ‖Complex.exp (-toComplex s * toComplex ell.mid) -
          toComplex (RationalExpTrace.valueAt tr squarings)‖ := by
      simpa only [dist_eq_norm] using dist_triangle
        (Complex.exp (-toComplex s * (Real.log (t : ℝ) : ℂ)))
        (Complex.exp (-toComplex s * toComplex ell.mid))
        (toComplex (RationalExpTrace.valueAt tr squarings))
    _ ≤ (magnitude s : ℝ) * (ell.rad : ℝ) +
        (outwardPropagation bits (RationalExpTrace.seedTail B squarings terms + tr.seedRadius)
          (RationalExpTrace.radiusAt tr) squarings : ℝ) := add_le_add hinput hexp
    _ ≤ _ := by
      have hu := le_up bits (outwardPropagation bits
        (RationalExpTrace.seedTail B squarings terms + tr.seedRadius)
        (RationalExpTrace.radiusAt tr) squarings + magnitude s * ell.rad)
      have hq : magnitude s * ell.rad + outwardPropagation bits
          (RationalExpTrace.seedTail B squarings terms + tr.seedRadius)
          (RationalExpTrace.radiusAt tr) squarings ≤
          up bits (outwardPropagation bits
            (RationalExpTrace.seedTail B squarings terms + tr.seedRadius)
            (RationalExpTrace.radiusAt tr) squarings + magnitude s * ell.rad) := by
        linarith [hu]
      exact_mod_cast hq

end GRWTSK.Analysis.ErrorBounds.RationalAtanhPower
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ErrorBounds/RationalAtanhPower.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ErrorBounds/RationalAtanhPower.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `135e1f73f9c69624c19b24a593586bd4e0f64267` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
