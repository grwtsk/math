# uniform_energy_constant_atThreshold

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f8d713d-1013-42b6-3a1f-6abbec63664f",
  "kind": "theorem",
  "lexical_name": "uniform_energy_constant_atThreshold",
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
  "slug": "uniform-energy-constant-atthreshold--f777c302c29e31cd97ac8d2c",
  "source": {
    "blob": "2f36b892e40998d0c900fb474617b9677ae19e96",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 109,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/GradedDyadicEnergyHalfPlane.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f777c302c29e31cd97ac8d2cbab867edc3373773273c5f41c8903063f6f7062b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/GradedDyadicEnergyHalfPlane.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f8d713d-1013-42b6-3a1f-6abbec63664f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem uniform_energy_constant_atThreshold
    {ρ : ℝ} (hE : AllDyadicEnergyAtThreshold ρ)
    {η : ℝ} (hη : 0 < η) :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ j,
      augmentedEnergy (dyadicScale j) ≤
        C * Real.exp
          ((-2 * (1 - ρ) + η) *
            Real.log (dyadicScale j : ℝ)) := by
  obtain ⟨C, hC, j₀, hbound⟩ := hE η hη
  apply extend_eventual_bound
    (fun j => augmentedEnergy (dyadicScale j))
    (fun j =>
      Real.exp
        ((-2 * (1 - ρ) + η) *
          Real.log (dyadicScale j : ℝ)))
    (fun j => augmentedEnergy_nonneg _)
    (fun j => Real.exp_pos _)
    hC j₀
  intro j hj
  have hx : (0 : ℝ) < dyadicScale j := by
    exact_mod_cast dyadicScale_pos j
  simpa only [Real.rpow_eq_pow, Real.rpow_def_of_pos hx, mul_comm] using hbound j hj

/-- Exact exponent after Mellin dilation and square-root energy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/GradedDyadicEnergyHalfPlane.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/GradedDyadicEnergyHalfPlane.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f36b892e40998d0c900fb474617b9677ae19e96` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
