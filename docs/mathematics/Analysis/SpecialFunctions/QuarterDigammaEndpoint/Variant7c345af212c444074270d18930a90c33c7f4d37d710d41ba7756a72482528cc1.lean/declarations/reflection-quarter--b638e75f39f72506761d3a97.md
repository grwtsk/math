# reflection_quarter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ab98de8d-9aa9-9eec-20fe-e8b9460f85c2",
  "kind": "theorem",
  "lexical_name": "reflection_quarter",
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
  "slug": "reflection-quarter--b638e75f39f72506761d3a97",
  "source": {
    "blob": "2941a1587acbb643ac5401a9d1a090f447e14ad9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 26,
    "path": "GRWTSK/Analysis/SpecialFunctions/QuarterDigammaEndpoint/Variant7c345af212c444074270d18930a90c33c7f4d37d710d41ba7756a72482528cc1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b638e75f39f72506761d3a97ce401bf2020e3d0d0ffb12d9fbcc24ff1c3b6953",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/QuarterDigammaEndpoint/Variant7c345af212c444074270d18930a90c33c7f4d37d710d41ba7756a72482528cc1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab98de8d-9aa9-9eec-20fe-e8b9460f85c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reflection_quarter :
    Complex.digamma (1/4) - Complex.digamma (3/4) = -(Real.pi : ℂ) := by
  have h1 := gamma_of_positive_nonzero (by norm_num : (0:ℝ) < 1/4)
  have h3 := gamma_of_positive_nonzero (by norm_num : (0:ℝ) < 3/4)
  have d1 := gamma_of_positive_differentiable (by norm_num : (0:ℝ) < 1/4)
  have d3 := gamma_of_positive_differentiable (by norm_num : (0:ℝ) < 3/4)
  norm_num only [Complex.ofReal_div, Complex.ofReal_one, Complex.ofReal_ofNat] at h1 h3 d1 d3
  have dg : DifferentiableAt ℂ (fun z : ℂ => Complex.Gamma (1-z)) (1/4) := by
    have dt : DifferentiableAt ℂ Complex.Gamma (1-(1/4:ℂ)) := by norm_num; exact d3
    exact dt.comp (1/4) ((differentiableAt_const (1:ℂ)).sub differentiableAt_id)
  have hg : logDeriv (fun z : ℂ => Complex.Gamma (1-z)) (1/4) =
      -Complex.digamma (3/4) := by
    change logDeriv (Complex.Gamma ∘ fun z : ℂ => 1-z) (1/4) = _
    rw [logDeriv_comp (by norm_num; exact d3) (by fun_prop)]
    norm_num [Complex.digamma_def, deriv_const_sub]
  have he : (fun z : ℂ => Complex.Gamma z*Complex.Gamma (1-z)) =
      (fun z : ℂ => (Real.pi:ℂ)/Complex.sin ((Real.pi:ℂ)*z)) :=
    funext Complex.Gamma_mul_Gamma_one_sub
  have h := congrArg (fun f : ℂ → ℂ => logDeriv f (1/4)) he
  rw [logDeriv_mul (1/4) h1 (by norm_num; exact h3) d1 dg, hg] at h
  have hs : Complex.sin ((Real.pi:ℂ)*(1/4)) ≠ 0 := by
    have hval : Complex.sin ((Real.pi:ℂ)*(1/4)) = (Real.sqrt 2 / 2 : ℝ) := by
      rw [show (Real.pi:ℂ)*(1/4) = ((Real.pi/4:ℝ):ℂ) by push_cast; ring,
        ← Complex.ofReal_sin, Real.sin_pi_div_four]
    rw [hval, Complex.ofReal_ne_zero]
    positivity
  have hcs : Complex.cos ((Real.pi:ℂ)*(1/4)) = Complex.sin ((Real.pi:ℂ)*(1/4)) := by
    rw [show (Real.pi:ℂ)*(1/4) = ((Real.pi/4:ℝ):ℂ) by push_cast; ring,
      ← Complex.ofReal_cos, ← Complex.ofReal_sin, Real.cos_pi_div_four, Real.sin_pi_div_four]
  have hd := (((Complex.hasDerivAt_sin ((Real.pi:ℂ)*(1/4))).comp (1/4)
    ((hasDerivAt_id (1/4:ℂ)).const_mul (Real.pi:ℂ))).inv hs).const_mul (Real.pi:ℂ)
  have hdd : deriv (fun z : ℂ => (Real.pi:ℂ)/Complex.sin ((Real.pi:ℂ)*z)) (1/4) =
      (Real.pi:ℂ)*(-(Complex.cos ((Real.pi:ℂ)*(1/4))*((Real.pi:ℂ)*1)) /
        Complex.sin ((Real.pi:ℂ)*(1/4))^2) := by
    simpa only [div_eq_mul_inv, Function.comp_def, Pi.inv_apply] using hd.deriv
  rw [logDeriv_apply (fun z : ℂ => (Real.pi:ℂ)/Complex.sin ((Real.pi:ℂ)*z)), hdd, hcs] at h
  have hp : (Real.pi:ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr Real.pi_ne_zero
  have hr : ((Real.pi:ℂ)*(-(Complex.sin ((Real.pi:ℂ)*(1/4))*((Real.pi:ℂ)*1)) /
      Complex.sin ((Real.pi:ℂ)*(1/4))^2)) /
      ((Real.pi:ℂ)/Complex.sin ((Real.pi:ℂ)*(1/4))) = -(Real.pi:ℂ) := by
    have hs' : Complex.sin ((Real.pi:ℂ)/4) ≠ 0 := by simpa only [mul_one_div] using hs
    field_simp [hs', hp]
  rw [hr] at h
  simpa only [Complex.digamma_def, sub_eq_add_neg] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/QuarterDigammaEndpoint/Variant7c345af212c444074270d18930a90c33c7f4d37d710d41ba7756a72482528cc1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/QuarterDigammaEndpoint/Variant7c345af212c444074270d18930a90c33c7f4d37d710d41ba7756a72482528cc1.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2941a1587acbb643ac5401a9d1a090f447e14ad9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
