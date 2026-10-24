# exponentialVolterra_sq_integral_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:648117f1-aa75-82e5-a4c8-cc50a11c73fb",
  "kind": "theorem",
  "lexical_name": "exponentialVolterra_sq_integral_le",
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
  "slug": "exponentialvolterra-sq-integral-le--eefeba45bf94044fd622fe07",
  "source": {
    "blob": "c5f602e924adac25ecc8d06c50e8990820da193d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 112,
    "path": "GRWTSK/Analysis/Integration/ExponentialVolterraL2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eefeba45bf94044fd622fe07851db82e49bf64264e34897348e829f448c17d6a",
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

Occurrence: `result:648117f1-aa75-82e5-a4c8-cc50a11c73fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 112–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exponentialVolterra_sq_integral_le {σ T : ℝ} {F : ℝ → ℝ}
    (hσ : 0 < σ) (hT : 0 ≤ T)
    (hF : IntervalIntegrable F volume 0 T)
    (hF2 : IntervalIntegrable (fun t : ℝ => F t ^ 2) volume 0 T) :
    (∫ t in (0 : ℝ)..T, exponentialVolterra σ F t ^ 2) ≤
      (∫ t in (0 : ℝ)..T, F t ^ 2) / σ ^ 2 := by
  let A : ℝ → ℝ := fun t => ∫ u in (0 : ℝ)..t, Real.exp (σ * u) * F u
  let V : ℝ → ℝ := fun t => Real.exp (-σ * t) * A t
  have hexpF : IntervalIntegrable (fun u : ℝ => Real.exp (σ * u) * F u) volume 0 T :=
    hF.continuousOn_mul (by fun_prop)
  have hA : AbsolutelyContinuousOnInterval A 0 T := by
    exact hexpF.absolutelyContinuousOnInterval_intervalIntegral left_mem_uIcc
  have hexp : AbsolutelyContinuousOnInterval (fun t : ℝ => Real.exp (-σ * t)) 0 T := by
    apply ContDiffOn.absolutelyContinuousOnInterval
    fun_prop
  have hV : AbsolutelyContinuousOnInterval V 0 T := hexp.mul hA
  have hV0 : V 0 = 0 := by simp [V, A]
  have hderiv : ∀ᵐ t ∂volume, t ∈ uIcc (0 : ℝ) T →
      HasDerivAt V (F t - σ * V t) t := by
    filter_upwards [hexpF.ae_hasDerivAt_integral] with t ht htu
    have hAderiv : HasDerivAt A (Real.exp (σ * t) * F t) t := ht htu 0 left_mem_uIcc
    have hexpderiv : HasDerivAt (fun x : ℝ => Real.exp (-σ * x))
        (-σ * Real.exp (-σ * t)) t := by
      convert (((hasDerivAt_id t).const_mul (-σ)).exp) using 1 <;>
        simp only [id_eq]
      all_goals ring
    have hprod := hexpderiv.mul hAderiv
    change HasDerivAt V
      ((-σ * Real.exp (-σ * t)) * A t +
        Real.exp (-σ * t) * (Real.exp (σ * t) * F t)) t at hprod
    have he : Real.exp (-σ * t) * Real.exp (σ * t) = 1 := by
      rw [← Real.exp_add]
      convert Real.exp_zero using 1
      ring
    have hrate :
        (-σ * Real.exp (-σ * t)) * A t +
            Real.exp (-σ * t) * (Real.exp (σ * t) * F t) =
          F t - σ * V t := by
      dsimp only [V]
      rw [← mul_assoc, he, one_mul]
      ring
    convert hprod using 1
    exact hrate.symm
  have hbound := sq_integral_le_of_damped_deriv hσ hT hV hV0 hderiv hF2
  calc
    (∫ t in (0 : ℝ)..T, exponentialVolterra σ F t ^ 2) =
        ∫ t in (0 : ℝ)..T, V t ^ 2 := by
      apply intervalIntegral.integral_congr
      intro t _ht
      change exponentialVolterra σ F t ^ 2 = V t ^ 2
      rw [exponentialVolterra_eq_damped_primitive]
    _ ≤ (∫ t in (0 : ℝ)..T, F t ^ 2) / σ ^ 2 := hbound

end GRWTSK.Analysis.Integration.ExponentialVolterraL2

#print axioms GRWTSK.Analysis.Integration.ExponentialVolterraL2.exponentialVolterra_sq_integral_le
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/RealAnalysis/Integration/ExponentialVolterraL2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Integration/ExponentialVolterraL2.lean#L112).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5f602e924adac25ecc8d06c50e8990820da193d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
