# duplication_quarter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:15d0f646-2cb6-c227-eff8-a65e588b4bcd",
  "kind": "theorem",
  "lexical_name": "duplication_quarter",
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
  "slug": "duplication-quarter--128fb358f4fe9f57caa30b57",
  "source": {
    "blob": "2941a1587acbb643ac5401a9d1a090f447e14ad9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 71,
    "path": "GRWTSK/Analysis/SpecialFunctions/QuarterDigammaEndpoint/Variant7c345af212c444074270d18930a90c33c7f4d37d710d41ba7756a72482528cc1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:128fb358f4fe9f57caa30b571155619505de1429fe766de516e11e9863e69ce4",
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

Occurrence: `result:15d0f646-2cb6-c227-eff8-a65e588b4bcd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem duplication_quarter :
    Complex.digamma (1/4) + Complex.digamma (3/4) =
      2*Complex.digamma (1/2) - 2*Complex.log 2 := by
  have h1 := gamma_of_positive_nonzero (by norm_num : (0:ℝ) < 1/4)
  have h3 := gamma_of_positive_nonzero (by norm_num : (0:ℝ) < 3/4)
  have hh := gamma_of_positive_nonzero (by norm_num : (0:ℝ) < 1/2)
  have d1 := gamma_of_positive_differentiable (by norm_num : (0:ℝ) < 1/4)
  have d3 := gamma_of_positive_differentiable (by norm_num : (0:ℝ) < 3/4)
  have dh := gamma_of_positive_differentiable (by norm_num : (0:ℝ) < 1/2)
  norm_num only [Complex.ofReal_div, Complex.ofReal_one, Complex.ofReal_ofNat] at h1 h3 hh d1 d3 dh
  have dplus : DifferentiableAt ℂ (fun z : ℂ => Complex.Gamma (z+1/2)) (1/4) := by
    have dt : DifferentiableAt ℂ Complex.Gamma ((1/4:ℂ)+1/2) := by norm_num; exact d3
    exact dt.comp (1/4) (differentiableAt_id.add_const _)
  have dtwo : DifferentiableAt ℂ (fun z : ℂ => Complex.Gamma (2*z)) (1/4) := by
    have dt : DifferentiableAt ℂ Complex.Gamma (2*(1/4:ℂ)) := by norm_num; exact dh
    exact dt.comp (1/4) (differentiableAt_id.const_mul _)
  have hp : (2:ℂ)^(1-2*(1/4:ℂ)) ≠ 0 := Complex.cpow_ne_zero_iff.mpr (Or.inl (by norm_num))
  have hdp : HasDerivAt (fun z : ℂ => (2:ℂ)^(1-2*z))
      ((2:ℂ)^(1-2*(1/4:ℂ))*Complex.log 2 * (-2)) (1/4) := by
    simpa using (((hasDerivAt_id (1/4:ℂ)).const_mul (2:ℂ)).const_sub 1).const_cpow
      (c := (2:ℂ)) (Or.inl (by norm_num))
  have ht : logDeriv (fun z : ℂ => (2:ℂ)^(1-2*z)) (1/4) = -2*Complex.log 2 := by
    rw [logDeriv_apply, hdp.deriv]
    field_simp
  have hgplus : logDeriv (fun z : ℂ => Complex.Gamma (z+1/2)) (1/4) =
      Complex.digamma (3/4) := by
    change logDeriv (Complex.Gamma ∘ fun z : ℂ => z+1/2) (1/4) = _
    rw [logDeriv_comp (by norm_num; exact d3) (by fun_prop)]
    norm_num [Complex.digamma_def]
  have hgtwo : logDeriv (fun z : ℂ => Complex.Gamma (2*z)) (1/4) =
      2*Complex.digamma (1/2) := by
    change logDeriv (Complex.Gamma ∘ fun z : ℂ => 2*z) (1/4) = _
    rw [logDeriv_comp (by norm_num; exact dh) (by fun_prop)]
    norm_num [Complex.digamma_def]
    ring
  have he : (fun z : ℂ => Complex.Gamma z*Complex.Gamma (z+1/2)) =
      (fun z : ℂ => Complex.Gamma (2*z)*(2:ℂ)^(1-2*z)*(Real.sqrt Real.pi:ℂ)) :=
    funext Complex.Gamma_mul_Gamma_add_half
  have h := congrArg (fun f : ℂ → ℂ => logDeriv f (1/4)) he
  rw [logDeriv_mul (1/4) h1 (by norm_num; exact h3) d1 dplus, hgplus,
    logDeriv_mul_const (1/4) (Real.sqrt Real.pi:ℂ) (by
      exact Complex.ofReal_ne_zero.mpr (Real.sqrt_pos.mpr Real.pi_pos).ne'),
    logDeriv_mul (1/4) (by norm_num; exact hh) hp dtwo hdp.differentiableAt,
    ht, hgtwo] at h
  simpa only [Complex.digamma_def, sub_eq_add_neg, neg_mul] using h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/QuarterDigammaEndpoint/Variant7c345af212c444074270d18930a90c33c7f4d37d710d41ba7756a72482528cc1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/QuarterDigammaEndpoint/Variant7c345af212c444074270d18930a90c33c7f4d37d710d41ba7756a72482528cc1.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2941a1587acbb643ac5401a9d1a090f447e14ad9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
