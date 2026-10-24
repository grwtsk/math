# wienerMellin_exp_tail_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:21a326e6-ea2d-3ad3-8958-60ced10bc9a4",
  "kind": "theorem",
  "lexical_name": "wienerMellin_exp_tail_integral",
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
  "slug": "wienermellin-exp-tail-integral--35b79b7e0e646bf2243526cd",
  "source": {
    "blob": "c3fafc90b62748e4a8dc319333e5938b4d4139a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 283,
    "line": 244,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaMellinFourierSource.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35b79b7e0e646bf2243526cdeb3af34b0974af6aecace8c7e07f0dad15c2ba2f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/WienerIkeharaMellinFourierSource.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21a326e6-ea2d-3ad3-8958-60ced10bc9a4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 244–283.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wienerMellin_exp_tail_integral
    {Ψ : ℝ → ℂ}
    (hsmooth : ContDiff ℝ ∞ Ψ)
    (hcompact : HasCompactSupport Ψ)
    (hplus : WienerPositiveSupport Ψ)
    {T : ℝ} (hT : 0 < T) :
    (∫ u in Set.Ioi (-Real.log T),
      (Real.exp u : ℂ) * Ψ (Real.exp u)) =
        ∫ y in Set.Ioi (T⁻¹), Ψ y := by
  have hf :
      ContinuousOn Real.exp (Set.Ici (-Real.log T)) := by
    fun_prop
  have hft : Tendsto Real.exp atTop atTop :=
    Real.tendsto_exp_atTop
  have hderiv (u : ℝ) (_hu : u ∈ Set.Ioi (-Real.log T)) :
      HasDerivWithinAt Real.exp (Real.exp u)
        (Set.Ioi u) u :=
    (Real.hasDerivAt_exp u).hasDerivWithinAt
  have hΨcont :
      ContinuousOn Ψ (Real.exp '' Set.Ioi (-Real.log T)) :=
    hsmooth.continuous.continuousOn
  have hΨint :
      IntegrableOn Ψ (Real.exp '' Set.Ici (-Real.log T))
        volume :=
    (hsmooth.continuous.integrable_of_hasCompactSupport
      hcompact).integrableOn
  have hcompInt :
      IntegrableOn
        (fun u : ℝ => Real.exp u • (Ψ ∘ Real.exp) u)
        (Set.Ici (-Real.log T)) volume := by
    refine ((Real.continuous_exp.smul
      (hsmooth.continuous.comp Real.continuous_exp)).integrable_of_hasCompactSupport
      ?_).integrableOn
    change HasCompactSupport (Real.exp • (Ψ ∘ Real.exp))
    exact (wiener_exp_pullback_compact hcompact hplus).smul_left
  have h := MeasureTheory.integral_deriv_smul_comp_Ioi
    hf hft hderiv hΨcont hΨint hcompInt
  simpa [Real.exp_neg, Real.exp_log hT] using h

end GRWTSK.RiemannHypothesis
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/WienerIkeharaMellinFourierSource.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaMellinFourierSource.lean#L244).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3fafc90b62748e4a8dc319333e5938b4d4139a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
