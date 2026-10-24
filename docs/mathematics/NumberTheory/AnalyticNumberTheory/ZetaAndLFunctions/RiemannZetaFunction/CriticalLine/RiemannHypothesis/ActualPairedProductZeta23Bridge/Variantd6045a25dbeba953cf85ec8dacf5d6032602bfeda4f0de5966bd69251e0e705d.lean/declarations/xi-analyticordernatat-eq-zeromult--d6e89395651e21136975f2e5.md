# xi_analyticOrderNatAt_eq_zeroMult

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1db39db5-7170-30d9-1dac-c6d60dae1745",
  "kind": "theorem",
  "lexical_name": "xi_analyticOrderNatAt_eq_zeroMult",
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
  "slug": "xi-analyticordernatat-eq-zeromult--d6e89395651e21136975f2e5",
  "source": {
    "blob": "0b3879b0b3cf0d9db7a5e1c5c8e2975241e08258",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 62,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPairedProductZeta23Bridge/Variantd6045a25dbeba953cf85ec8dacf5d6032602bfeda4f0de5966bd69251e0e705d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d6e89395651e21136975f2e5c36c32155d8f876cc9f63209927b63ef6eb05216",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPairedProductZeta23Bridge/Variantd6045a25dbeba953cf85ec8dacf5d6032602bfeda4f0de5966bd69251e0e705d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1db39db5-7170-30d9-1dac-c6d60dae1745`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem xi_analyticOrderNatAt_eq_zeroMult {ρ : ℂ}
    (hρ : Zeta23.IsNontrivialZero ρ) :
    analyticOrderNatAt XiToeplitz.xi ρ = Zeta23.zeroMult ρ := by
  have hfr : NontrivialZetaZero ρ := (nontrivialZetaZero_iff_zeta23 ρ).mpr hρ
  have h0 : ρ ≠ 0 := hfr.ne_zero
  have h1 : ρ ≠ 1 := hfr.2.2
  have hev := xi_eventuallyEq_completed h0 h1
  have hΛ : AnalyticAt ℂ completedRiemannZeta ρ :=
    Zeta23.RvM.analyticAt_completedRiemannZeta h0 h1
  have hp : AnalyticAt ℂ (fun s : ℂ => s * (s - 1) / 2) ρ :=
    (by fun_prop : Differentiable ℂ (fun s : ℂ => s * (s - 1) / 2)).analyticAt ρ
  have hp0 : analyticOrderAt (fun s : ℂ => s * (s - 1) / 2) ρ = 0 :=
    hp.analyticOrderAt_eq_zero.mpr
      (div_ne_zero (mul_ne_zero h0 (sub_ne_zero.mpr h1)) two_ne_zero)
  have hmul := analyticOrderAt_mul hp hΛ
  rw [show ((fun s : ℂ => s * (s - 1) / 2) * completedRiemannZeta)
      = (fun s => (s * (s - 1) / 2) * completedRiemannZeta s) from rfl] at hmul
  unfold analyticOrderNatAt
  rw [analyticOrderAt_congr hev, hmul, hp0, zero_add]
  exact Zeta23.RvM.analyticOrderNatAt_completedRiemannZeta hρ.2.1 h1

/-- The canonical squared centered root.  This is the zero variable used by
`XiToeplitz.centeredSeries`; no square-root branch is chosen. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPairedProductZeta23Bridge/Variantd6045a25dbeba953cf85ec8dacf5d6032602bfeda4f0de5966bd69251e0e705d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualPairedProductZeta23Bridge/Variantd6045a25dbeba953cf85ec8dacf5d6032602bfeda4f0de5966bd69251e0e705d.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b3879b0b3cf0d9db7a5e1c5c8e2975241e08258` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
