# reflectedUnit_logDeriv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eeec4f98-39c2-e165-4db8-02239209fab2",
  "kind": "theorem",
  "lexical_name": "reflectedUnit_logDeriv",
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
  "slug": "reflectedunit-logderiv--06f665afea20ccef2038a4f0",
  "source": {
    "blob": "78ceb9569e89f20c2868e9dd6e6e6b459a3bd5f8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 56,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/LeftLogDerivative.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:06f665afea20ccef2038a4f01d010c37576f416aaec9f9d3019e358084140e17",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/LeftLogDerivative.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eeec4f98-39c2-e165-4db8-02239209fab2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem reflectedUnit_logDeriv {s : ℂ} (hs : s.re < 0) :
    logDeriv reflectedUnit s = Complex.log (2 * (Real.pi : ℂ)) -
      Complex.digamma (1 - s) - logDeriv riemannZeta (1 - s) := by
  have hw : 0 < (1 - s).re := by simp only [Complex.sub_re, Complex.one_re]; linarith
  have hw1 : 1 - s ≠ (1 : ℂ) := by
    intro he; have hr := congrArg Complex.re he; simp at hr; linarith
  have hG := Complex.Gamma_ne_zero (ne_neg_nat_of_re_pos (1 - s) hw)
  have hZ : riemannZeta (1 - s) ≠ 0 :=
    riemannZeta_ne_zero_of_one_lt_re (by
      simp only [Complex.sub_re, Complex.one_re]; linarith)
  have dG : HasDerivAt (fun u : ℂ => Complex.Gamma (1 - u))
      (-deriv Complex.Gamma (1 - s)) s := by
    simpa only [Function.comp_def, id_eq, mul_neg_one] using ((Complex.differentiableAt_Gamma (1 - s)
      (ne_neg_nat_of_re_pos _ hw)).hasDerivAt.comp s ((hasDerivAt_id s).const_sub 1))
  have dZ : HasDerivAt (fun u : ℂ => riemannZeta (1 - u))
      (-deriv riemannZeta (1 - s)) s := by
    simpa only [Function.comp_def, id_eq, mul_neg_one] using (differentiableAt_riemannZeta hw1).hasDerivAt.comp s
      ((hasDerivAt_id s).const_sub 1)
  have dE := (((hasDerivAt_id s).sub_const 1).const_mul
    (Complex.log (2 * (Real.pi : ℂ)))).cexp
  have dU := ((dE.const_mul 2).mul dG).mul dZ
  change HasDerivAt reflectedUnit _ s at dU
  rw [logDeriv_apply, dU.deriv, Complex.digamma_def, logDeriv_apply, logDeriv_apply]
  unfold reflectedUnit
  simp only [Pi.mul_apply, id_eq]
  field_simp [hG, hZ, Complex.exp_ne_zero]; ring

/-- All reflected terms, including the reflected zeta derivative, are retained. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/LeftLogDerivative.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/LeftLogDerivative.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `78ceb9569e89f20c2868e9dd6e6e6b459a3bd5f8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
