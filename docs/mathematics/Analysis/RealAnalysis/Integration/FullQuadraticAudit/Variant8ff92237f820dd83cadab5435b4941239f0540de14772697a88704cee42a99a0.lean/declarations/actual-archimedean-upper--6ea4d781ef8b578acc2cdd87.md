# actual_archimedean_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7b095a7-f73a-7e8a-3185-e5f425e743f9",
  "kind": "theorem",
  "lexical_name": "actual_archimedean_upper",
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
  "slug": "actual-archimedean-upper--6ea4d781ef8b578acc2cdd87",
  "source": {
    "blob": "f1c502404cc4589f5ad7dd0e406decd666af5820",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 168,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FullQuadraticAudit/Variant8ff92237f820dd83cadab5435b4941239f0540de14772697a88704cee42a99a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ea4d781ef8b578acc2cdd87b42493f7664facfa6910501ff2102b72a83732c4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FullQuadraticAudit/Variant8ff92237f820dd83cadab5435b4941239f0540de14772697a88704cee42a99a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7b095a7-f73a-7e8a-3185-e5f425e743f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_archimedean_upper (A : ℝ) (hA : 1 ≤ A) :
    archimedeanValue explicitSecondDerivative A ≤
      archimedeanMultiplier 0 + 4 + 2 * secondMomentBound := by
  have hi := ((spectralDensity_integrable A hA).const_mul
    (archimedeanMultiplier 0 + 4)).add
      ((spectral_density_second_moment_integrable A hA).const_mul 2)
  have h := integral_mono (PrimePowerPhaseDefect.actual_archimedeanDensity_integrable A hA) hi
    (fun ξ ↦ show archimedeanMultiplier ξ * spectralDensity A ξ ≤
      (archimedeanMultiplier 0 + 4) * spectralDensity A ξ +
        2 * (ξ ^ 2 * spectralDensity A ξ) by
      nlinarith [mul_le_mul_of_nonneg_right (archimedean_multiplier_upper ξ)
        (spectralDensity_nonneg A ξ)])
  simp only [Pi.add_apply] at h
  rw [integral_add ((spectralDensity_integrable A hA).const_mul _)
    ((spectral_density_second_moment_integrable A hA).const_mul 2), integral_const_mul,
    integral_const_mul, spectralDensity_integral A hA, mul_one] at h
  rw [archimedean_value_eq_density_integral]
  linarith [actual_second_moment_le A hA]

/-- Both bounds concern the Gamma contribution, not the full signed quadratic form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FullQuadraticAudit/Variant8ff92237f820dd83cadab5435b4941239f0540de14772697a88704cee42a99a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FullQuadraticAudit/Variant8ff92237f820dd83cadab5435b4941239f0540de14772697a88704cee42a99a0.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f1c502404cc4589f5ad7dd0e406decd666af5820` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
