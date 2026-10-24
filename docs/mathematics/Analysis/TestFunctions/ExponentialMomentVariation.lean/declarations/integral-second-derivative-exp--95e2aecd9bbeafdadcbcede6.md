# integral_second_derivative_exp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:66627a59-ca3e-a042-eea2-750cdc6cd948",
  "kind": "theorem",
  "lexical_name": "integral_second_derivative_exp",
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
  "slug": "integral-second-derivative-exp--95e2aecd9bbeafdadcbcede6",
  "source": {
    "blob": "349ab72f75cd0252e42b1aa152a62622da7ce6c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 25,
    "path": "GRWTSK/Analysis/TestFunctions/ExponentialMomentVariation.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95e2aecd9bbeafdadcbcede61c27a7300a321140ab3a23e4466ba373513fc020",
  "verification": {
    "reference": "docs/verification/Analysis/TestFunctions/ExponentialMomentVariation.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:66627a59-ca3e-a042-eea2-750cdc6cd948`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_second_derivative_exp {h : ℝ → ℝ}
    (hh : ContDiff ℝ ∞ h) (hc : HasCompactSupport h) (c : ℝ) :
    (∫ t, Real.exp (c * t) * deriv (deriv h) t) =
      c ^ 2 * ∫ t, Real.exp (c * t) * h t := by
  have hh' : ContDiff ℝ ∞ (deriv h) := (contDiff_infty_iff_deriv.mp hh).2
  have hh'' : ContDiff ℝ ∞ (deriv (deriv h)) := (contDiff_infty_iff_deriv.mp hh').2
  have he : Continuous (fun t ↦ Real.exp (c * t)) := by fun_prop
  have he' : Continuous (fun t ↦ c * Real.exp (c * t)) := continuous_const.mul he
  have hi0 : Integrable (fun t ↦ Real.exp (c * t) * h t) :=
    (he.mul hh.continuous).integrable_of_hasCompactSupport hc.mul_left
  have hi1 : Integrable (fun t ↦ Real.exp (c * t) * deriv h t) :=
    (he.mul hh'.continuous).integrable_of_hasCompactSupport hc.deriv.mul_left
  have hi2 : Integrable (fun t ↦ Real.exp (c * t) * deriv (deriv h) t) :=
    (he.mul hh''.continuous).integrable_of_hasCompactSupport hc.deriv.deriv.mul_left
  have hic0 : Integrable (fun t ↦ (c * Real.exp (c * t)) * h t) :=
    (he'.mul hh.continuous).integrable_of_hasCompactSupport hc.mul_left
  have hic1 : Integrable (fun t ↦ (c * Real.exp (c * t)) * deriv h t) :=
    (he'.mul hh'.continuous).integrable_of_hasCompactSupport hc.deriv.mul_left
  have hexp (t : ℝ) : HasDerivAt (fun u ↦ Real.exp (c * u))
      (c * Real.exp (c * t)) t := by
    simpa only [id_eq, mul_one, mul_comm] using ((hasDerivAt_id t).const_mul c).exp
  have h1 := integral_mul_deriv_eq_deriv_mul_of_integrable
    (fun t _ ↦ hexp t)
    (fun t _ ↦ ((contDiff_infty_iff_deriv.mp hh).1 t).hasDerivAt) hi1 hic0 hi0
  have h2 := integral_mul_deriv_eq_deriv_mul_of_integrable
    (fun t _ ↦ hexp t)
    (fun t _ ↦ ((contDiff_infty_iff_deriv.mp hh').1 t).hasDerivAt) hi2 hic1 hi1
  simp_rw [mul_assoc] at h1 h2
  rw [integral_const_mul] at h1 h2
  rw [h2, h1]
  ring

/-- The differential variation annihilates both prescribed real exponential poles. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/TestFunctions/ExponentialMomentVariation.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/TestFunctions/ExponentialMomentVariation.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `349ab72f75cd0252e42b1aa152a62622da7ce6c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
