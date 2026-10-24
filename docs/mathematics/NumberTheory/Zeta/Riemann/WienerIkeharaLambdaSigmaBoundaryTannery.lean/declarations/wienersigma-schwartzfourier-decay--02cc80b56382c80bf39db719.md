# wienerSigma_SchwartzFourier_decay

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dabb3131-bd46-7de2-4ec7-7b91cfa3c343",
  "kind": "theorem",
  "lexical_name": "wienerSigma_SchwartzFourier_decay",
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
  "slug": "wienersigma-schwartzfourier-decay--02cc80b56382c80bf39db719",
  "source": {
    "blob": "2bbb6efef7e9364f21b79e43b2aef3f171de7946",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 115,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaSigmaBoundaryTannery.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:02cc80b56382c80bf39db719a8e62f3c417f9417dbef9d18aec1bd7377cc3435",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaSigmaBoundaryTannery.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dabb3131-bd46-7de2-4ec7-7b91cfa3c343`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wienerSigma_SchwartzFourier_decay
    (g : 𝓢(ℝ, ℂ)) :
    ∃ C : ℝ, 0 ≤ C ∧
      ∀ u : ℝ,
        ‖(𝓕 (g : ℝ → ℂ)) u‖ ≤ C / (1 + u ^ 2) := by
  let H : 𝓢(ℝ, ℂ) := 𝓕 g
  obtain ⟨C₀, hC₀, h₀⟩ := H.decay 0 0
  obtain ⟨C₂, hC₂, h₂⟩ := H.decay 2 0
  refine ⟨C₀ + C₂, by positivity, ?_⟩
  intro u
  have hz : ‖H u‖ ≤ C₀ := by
    simpa only [pow_zero, one_mul, norm_iteratedFDeriv_zero] using h₀ u
  have hsq : u ^ 2 * ‖H u‖ ≤ C₂ := by
    simpa only [norm_iteratedFDeriv_zero, Real.norm_eq_abs, sq_abs]
      using h₂ u
  have hbound :
      (1 + u ^ 2) * ‖H u‖ ≤ C₀ + C₂ := by
    nlinarith
  have hpositive : (0 : ℝ) < 1 + u ^ 2 := by positivity
  have hfinal : ‖H u‖ ≤ (C₀ + C₂) / (1 + u ^ 2) :=
    (le_div_iff₀ hpositive).2 (by
      simpa [mul_comm] using hbound)
  simpa only [H, SchwartzMap.fourier_coe] using hfinal

/-- At sigma=1 the L-series term norm multiplied by the exact
Fourier Cauchy weight is literally wienerLambdaLogKernel(T,n).
This handles n=0 separately instead of using log(0) as if ordinary
division by zero were defined. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaSigmaBoundaryTannery.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaSigmaBoundaryTannery.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2bbb6efef7e9364f21b79e43b2aef3f171de7946` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
