# continuous_logDeriv_Gammaℝ_line

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:61e3facb-211c-e6c5-4355-bdd9e8ad18a3",
  "kind": "theorem",
  "lexical_name": "continuous_logDeriv_Gammaℝ_line",
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
  "slug": "continuous-logderiv-gamma-line--f09e51800d76cb89156fa91a",
  "source": {
    "blob": "fddabb897516dcc6a4eb0928590a25c5e6feea4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 191,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FullLine/Variant88ec2fc87f50d6a12936b9cbdd2d909940f1443acb88590ade185dd1a7cf8df9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f09e51800d76cb89156fa91aa8f4334e0443e3e54b714c57f8b66cf3f41b9ce0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FullLine/Variant88ec2fc87f50d6a12936b9cbdd2d909940f1443acb88590ade185dd1a7cf8df9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:61e3facb-211c-e6c5-4355-bdd9e8ad18a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem continuous_logDeriv_Gammaℝ_line {σ : ℝ} (hσ0 : 0 < σ) (hσ2 : σ ≤ 3 / 2) :
    Continuous (fun t : ℝ => logDeriv Complex.Gammaℝ ((σ : ℂ) + t * I)) := by
  have hfun : (fun t : ℝ => logDeriv Complex.Gammaℝ ((σ : ℂ) + t * I))
      = fun t : ℝ => -((Real.log Real.pi : ℝ) : ℂ) / 2
        + (1 / 2) * Complex.digamma (((σ : ℂ) + t * I) / 2) := by
    funext t
    exact logDeriv_Gammaℝ (by simp; exact hσ0)
  rw [hfun]
  refine continuous_const.add (continuous_const.mul ?_)
  refine continuous_iff_continuousAt.mpr fun t => ?_
  have hz : ((σ : ℂ) + t * I) / 2 ∈ Complex.integerComplement := by
    rintro ⟨n, hn⟩
    have hre := congrArg Complex.re hn
    have him := congrArg Complex.im hn
    simp at hre him
    -- σ/2 ∈ (0, 3/4] is not an integer
    have h1 : (0 : ℝ) < n := by rw [hre]; linarith
    have h2 : (n : ℝ) < 1 := by rw [hre]; linarith
    have : (0 : ℤ) < n := by exact_mod_cast h1
    have : n < (1 : ℤ) := by exact_mod_cast h2
    omega
  show ContinuousAt (Complex.digamma ∘ fun t : ℝ => ((σ : ℂ) + t * I) / 2) t
  exact ContinuousAt.comp (g := Complex.digamma) (f := fun t : ℝ => ((σ : ℂ) + t * I) / 2)
    (Zeta23.Stirling.differentiableAt_digamma hz).continuousAt
    (by fun_prop : Continuous fun t : ℝ => ((σ : ℂ) + t * I) / 2).continuousAt

/-- generic: a continuous `φ` with `‖φ(t)‖ ≤ C/(1+t²)` times `Γℝ'/Γℝ(σ+it)`, `1/2 ≤ σ ≤ 3/2`,
is integrable (digamma growth ≪ log(2+|t|) on the strip). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FullLine/Variant88ec2fc87f50d6a12936b9cbdd2d909940f1443acb88590ade185dd1a7cf8df9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FullLine/Variant88ec2fc87f50d6a12936b9cbdd2d909940f1443acb88590ade185dd1a7cf8df9.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fddabb897516dcc6a4eb0928590a25c5e6feea4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
