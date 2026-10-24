# logDeriv_Gammaℝ_offreal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fbde72e8-1bde-0865-fe2e-0fa9fb4d0e0e",
  "kind": "theorem",
  "lexical_name": "logDeriv_Gammaℝ_offreal",
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
  "slug": "logderiv-gamma-offreal--03f5e0a219185a35af9d8ce9",
  "source": {
    "blob": "a0f7bda568b05342598acbd68ddba122a04e5816",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 38,
    "path": "GRWTSK/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:03f5e0a219185a35af9d8ce986b5ca4c7acdcf0f804152f1e02c081e4c80b6d9",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fbde72e8-1bde-0865-fe2e-0fa9fb4d0e0e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logDeriv_Gammaℝ_offreal {s : ℂ} (hs : s.im ≠ 0) :
    logDeriv Complex.Gammaℝ s = -(Real.log Real.pi : ℂ) / 2 + (1 / 2 : ℂ) * Complex.digamma (s / 2) := by
  have hπ : (Real.pi : ℂ) ≠ 0 := by exact_mod_cast Real.pi_ne_zero
  have e : Complex.Gammaℝ = fun s : ℂ => (Real.pi : ℂ) ^ (-s / 2) * Complex.Gamma (s / 2) := by
    funext s; rw [Complex.Gammaℝ_def]
  have hf : (fun s : ℂ => (Real.pi : ℂ) ^ (-s / 2)) s ≠ 0 := by
    simp only [ne_eq, cpow_eq_zero_iff, hπ, false_and, not_false_eq_true]
  have hg : (fun s : ℂ => Complex.Gamma (s / 2)) s ≠ 0 :=
    Complex.Gamma_ne_zero (Hardy.half_ne_neg_nat hs)
  have hdf : DifferentiableAt ℂ (fun s : ℂ => (Real.pi : ℂ) ^ (-s / 2)) s :=
    DifferentiableAt.const_cpow (by fun_prop) (Or.inl hπ)
  have hΓ : DifferentiableAt ℂ Complex.Gamma (s / 2) :=
    Complex.differentiableAt_Gamma _ (Hardy.half_ne_neg_nat hs)
  have hdg : DifferentiableAt ℂ (fun s : ℂ => Complex.Gamma (s / 2)) s := hΓ.comp s (by fun_prop)
  rw [e, logDeriv_mul (f := fun s : ℂ => (Real.pi : ℂ) ^ (-s / 2))
    (g := fun s : ℂ => Complex.Gamma (s / 2)) s hf hg hdf hdg]
  have h1 : logDeriv (fun s : ℂ => (Real.pi : ℂ) ^ (-s / 2)) s = -(Real.log Real.pi : ℂ) / 2 := by
    have hder : HasDerivAt (fun s : ℂ => (Real.pi : ℂ) ^ (-s / 2))
        ((Real.pi : ℂ) ^ (-s / 2) * Complex.log Real.pi * (-1 / 2)) s := by
      have : HasDerivAt (fun s : ℂ => -s / 2) (-1 / 2 : ℂ) s := by
        simpa using ((hasDerivAt_id s).neg.div_const (2 : ℂ))
      exact this.const_cpow (Or.inl hπ)
    rw [logDeriv_apply, hder.deriv]
    have hne : (Real.pi : ℂ) ^ (-s / 2) ≠ 0 := hf
    rw [Complex.ofReal_log Real.pi_pos.le]
    field_simp
  have h2 : logDeriv (fun s : ℂ => Complex.Gamma (s / 2)) s = (1 / 2 : ℂ) * Complex.digamma (s / 2) := by
    have := logDeriv_comp (f := Complex.Gamma) (g := fun s : ℂ => s / 2) (x := s) hΓ (by fun_prop)
    rw [show (Complex.Gamma ∘ fun s : ℂ => s / 2) = fun s => Complex.Gamma (s / 2) from rfl] at this
    rw [this, Complex.digamma_def]
    have : deriv (fun s : ℂ => s / 2) s = 1 / 2 := by
      rw [deriv_div_const, deriv_id'']
    rw [this]; ring
  rw [h1, h2]

/-- L₋(s) = 1/s + 1/(s−1) + ¼[ψ(s/2) − ψ((1−s)/2)] off the real axis. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/ZeroFree/Variant07a3e051e569407764f25ce99b627d777947c874c8c303015d6a617bb7b885ce.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0f7bda568b05342598acbd68ddba122a04e5816` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
