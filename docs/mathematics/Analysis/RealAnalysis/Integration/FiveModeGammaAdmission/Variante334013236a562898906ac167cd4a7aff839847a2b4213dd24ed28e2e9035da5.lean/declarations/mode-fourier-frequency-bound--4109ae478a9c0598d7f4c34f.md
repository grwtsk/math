# mode_fourier_frequency_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2c0eb929-907f-5bad-529b-00358e34c595",
  "kind": "theorem",
  "lexical_name": "mode_fourier_frequency_bound",
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
  "slug": "mode-fourier-frequency-bound--4109ae478a9c0598d7f4c34f",
  "source": {
    "blob": "cb668590d2589429a61784a727a2917cf4207abd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 102,
    "line": 86,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FiveModeGammaAdmission/Variante334013236a562898906ac167cd4a7aff839847a2b4213dd24ed28e2e9035da5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4109ae478a9c0598d7f4c34f2c9e06e3b47c37d08ce3728ee517053dea713a75",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FiveModeGammaAdmission/Variante334013236a562898906ac167cd4a7aff839847a2b4213dd24ed28e2e9035da5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2c0eb929-907f-5bad-529b-00358e34c595`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mode_fourier_frequency_bound (A : ℝ) (hA : 0 < A) (i : Fin 5) (ω : ℝ) :
    |ω| * ‖modeFourier A i ω‖ ≤ modeFrequencyBudget A i := by
  rw [show |ω| * ‖modeFourier A i ω‖ =
    ‖(Complex.I * (ω : ℂ)) * modeFourier A i ω‖ by simp]
  rw [mode_fourier_integration_by_parts A hA i ω]
  unfold modeFrequencyBudget
  apply (norm_sub_le _ _).trans
  apply add_le_add
  · apply (norm_sub_le _ _).trans
    simp [Complex.norm_exp]
  · apply (intervalIntegral.norm_integral_le_integral_norm (by linarith : -A ≤ A)).trans
    apply le_of_eq
    apply intervalIntegral.integral_congr
    intro x _
    simp [Complex.norm_exp]

/-- Finite Fourier square mass for each fixed radius, including frequency zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FiveModeGammaAdmission/Variante334013236a562898906ac167cd4a7aff839847a2b4213dd24ed28e2e9035da5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FiveModeGammaAdmission/Variante334013236a562898906ac167cd4a7aff839847a2b4213dd24ed28e2e9035da5.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cb668590d2589429a61784a727a2917cf4207abd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
