# logDeriv_Gammaℝ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bda8a009-3e82-a6ec-7395-42843c538352",
  "kind": "theorem",
  "lexical_name": "logDeriv_Gammaℝ",
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
  "slug": "logderiv-gamma--ffc3b1bb56dbed67bb208230",
  "source": {
    "blob": "c20dea055a424677c5dc5552eb2c37eaf86bec60",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 61,
    "path": "GRWTSK/Analysis/SpecialFunctions/GammaRBracket/Variant1880d4945cdb80b384da161d915ef6f2517fd28645b589983cdf25d6cb2d999c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ffc3b1bb56dbed67bb2082309097b29cd57ff683b61960578e9708d38d53bebb",
  "verification": {
    "reference": "docs/verification/Analysis/SpecialFunctions/GammaRBracket/Variant1880d4945cdb80b384da161d915ef6f2517fd28645b589983cdf25d6cb2d999c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bda8a009-3e82-a6ec-7395-42843c538352`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem logDeriv_Gammaℝ {s : ℂ} (hs : 0 < s.re) :
    logDeriv Complex.Gammaℝ s = -((Real.log Real.pi : ℝ) : ℂ) / 2 + (1 / 2) * Complex.digamma (s / 2) := by
  have hπ : (Real.pi : ℂ) ≠ 0 := Complex.ofReal_ne_zero.mpr Real.pi_pos.ne'
  have hs2 : 0 < (s / 2).re := by simp; linarith
  have hGne : Complex.Gamma (s / 2) ≠ 0 := Complex.Gamma_ne_zero_of_re_pos hs2
  have hpow_ne : (Real.pi : ℂ) ^ (-s / 2) ≠ 0 := by
    rw [Complex.cpow_def_of_ne_zero hπ]; exact Complex.exp_ne_zero _
  -- Γℝ as a product of two functions
  have hfun : Complex.Gammaℝ = fun s => (fun s : ℂ => (Real.pi : ℂ) ^ (-s / 2)) s
      * (Complex.Gamma ∘ fun s : ℂ => s / 2) s := by
    funext s; rw [Complex.Gammaℝ_def]; rfl
  -- derivative of the power factor
  have hdpow : HasDerivAt (fun s : ℂ => (Real.pi : ℂ) ^ (-s / 2))
      ((Real.pi : ℂ) ^ (-s / 2) * Complex.log Real.pi * (-1 / 2)) s := by
    have h := ((hasDerivAt_id s).neg.div_const 2).const_cpow (c := (Real.pi : ℂ)) (Or.inl hπ)
    convert h using 1
    · funext x; simp
    · simp
  have hdiff_pow : DifferentiableAt ℂ (fun s : ℂ => (Real.pi : ℂ) ^ (-s / 2)) s :=
    hdpow.differentiableAt
  have hΓdiff : DifferentiableAt ℂ Complex.Gamma (s / 2) := by
    apply Complex.differentiableAt_Gamma
    intro m h
    have := congrArg Complex.re h
    simp at this
    have : (0:ℝ) ≤ m := Nat.cast_nonneg m
    linarith
  have hhalf : DifferentiableAt ℂ (fun s : ℂ => s / 2) s := differentiableAt_id.div_const 2
  have hdiff_G : DifferentiableAt ℂ (Complex.Gamma ∘ fun s : ℂ => s / 2) s := hΓdiff.comp s hhalf
  rw [hfun, logDeriv_mul s hpow_ne (by exact hGne) hdiff_pow hdiff_G,
    logDeriv_comp (g := fun s : ℂ => s / 2) (x := s) hΓdiff hhalf, ← Complex.digamma_def]
  -- the power factor's logDeriv
  have h1 : logDeriv (fun s : ℂ => (Real.pi : ℂ) ^ (-s / 2)) s = Complex.log Real.pi * (-1 / 2) := by
    rw [logDeriv_apply, hdpow.deriv]
    field_simp
  have h2 : deriv (fun s : ℂ => s / 2) s = 1 / 2 := by
    have : HasDerivAt (fun s : ℂ => s / 2) (1 / 2) s := by
      simpa using (hasDerivAt_id s).div_const 2
    exact this.deriv
  rw [h1, h2, (Complex.ofReal_log Real.pi_pos.le).symm]
  ring

/-- **The critical-line Γℝ bracket** is EF_lit's Γ-integrand: for real t,
logDeriv Γℝ(1/2+it) + logDeriv Γℝ(1/2−it) = Re ψ(1/4+it/2) − log π  (ψ = digamma;
Γℝ(s) = π^{−s/2}Γ(s/2), logDeriv Γℝ(s) = −(log π)/2 + ψ(s/2)/2, conj symmetry). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/SpecialFunctions/GammaRBracket/Variant1880d4945cdb80b384da161d915ef6f2517fd28645b589983cdf25d6cb2d999c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SpecialFunctions/GammaRBracket/Variant1880d4945cdb80b384da161d915ef6f2517fd28645b589983cdf25d6cb2d999c.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c20dea055a424677c5dc5552eb2c37eaf86bec60` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
