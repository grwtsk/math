# quotient_integrand_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ded3fc4a-a5ba-2b9e-8e04-1c52301585d1",
  "kind": "theorem",
  "lexical_name": "quotient_integrand_norm_le",
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
  "slug": "quotient-integrand-norm-le--6aef0a2dd29359371148bda5",
  "source": {
    "blob": "4793a667b01d80b377a6c725ac8e8421d3cef98a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 367,
    "line": 334,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantc91c8e7bf049652c900d22b95b268d78cc16d8a5f3308c70188b186f39974e92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6aef0a2dd29359371148bda55d88b92b4e9e44c61dcff3c8fc5daced8617032c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantc91c8e7bf049652c900d22b95b268d78cc16d8a5f3308c70188b186f39974e92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ded3fc4a-a5ba-2b9e-8e04-1c52301585d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 334–367.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem quotient_integrand_norm_le (X : ℕ) (w : ℂ) (hw : 0 ≤ w.re)
    (x : ℝ) (hx : x ∈ Set.Ioc 1 (X : ℝ)) :
    ‖(mobiusReciprocalSum ⌊x⌋₊ : ℂ) *
      Complex.exp ((1 / 2 - w) * (Real.log x : ℂ)) / (x : ℂ)‖ ≤
        (1 + Real.log (X : ℝ)) / Real.sqrt x := by
  have hx0 : 0 < x := lt_trans zero_lt_one hx.1
  have hxlog : 0 ≤ Real.log x := Real.log_nonneg hx.1.le
  have hm : |mobiusReciprocalSum ⌊x⌋₊| ≤ 1 + Real.log (X : ℝ) :=
    (mobiusReciprocalSum_floor_abs_le x hx.1.le).trans
      (add_le_add le_rfl (Real.log_le_log hx0 hx.2))
  have hs : 0 < Real.sqrt x := Real.sqrt_pos.mpr hx0
  have hsq : Real.sqrt x * Real.sqrt x = x := Real.mul_self_sqrt hx0.le
  have he : Real.exp ((1 / 2 - w.re) * Real.log x) ≤ Real.sqrt x := by
    calc
      _ ≤ Real.exp ((1 / 2) * Real.log x) := by
        apply Real.exp_le_exp.mpr
        nlinarith
      _ = Real.sqrt x := by
        rw [Real.sqrt_eq_rpow, Real.rpow_def_of_pos hx0]
        congr 1
        ring
  rw [norm_div, norm_mul, Complex.norm_real, Complex.norm_real,
    Real.norm_eq_abs, Real.norm_eq_abs, abs_of_pos hx0, Complex.norm_exp]
  simp only [Complex.mul_re, Complex.sub_re, Complex.div_ofNat_re, Complex.one_re,
    Complex.ofReal_re, Complex.ofReal_im, mul_zero, sub_zero]
  calc
    |mobiusReciprocalSum ⌊x⌋₊| * Real.exp ((1 / 2 - w.re) * Real.log x) / x ≤
        (1 + Real.log (X : ℝ)) * Real.sqrt x / x :=
      div_le_div_of_nonneg_right (mul_le_mul hm he (Real.exp_pos _).le
        (le_trans (abs_nonneg _) hm)) hx0.le
    _ = _ := by
      apply (div_eq_div_iff hx0.ne' hs.ne').mpr
      rw [mul_assoc, hsq]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantc91c8e7bf049652c900d22b95b268d78cc16d8a5f3308c70188b186f39974e92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/CandidateLineBounds/Variantc91c8e7bf049652c900d22b95b268d78cc16d8a5f3308c70188b186f39974e92.lean#L334).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4793a667b01d80b377a6c725ac8e8421d3cef98a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
