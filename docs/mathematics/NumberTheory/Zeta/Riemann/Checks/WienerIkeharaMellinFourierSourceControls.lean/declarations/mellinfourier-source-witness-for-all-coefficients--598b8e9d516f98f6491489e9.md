# mellinFourier_source_witness_for_all_coefficients

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0f6d25b8-d525-ac6c-b501-c840a37f90ea",
  "kind": "theorem",
  "lexical_name": "mellinFourier_source_witness_for_all_coefficients",
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
  "slug": "mellinfourier-source-witness-for-all-coefficients--598b8e9d516f98f6491489e9",
  "source": {
    "blob": "2d9323421ef01fb690bbdec376c304f3953163b4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 29,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaMellinFourierSourceControls.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:598b8e9d516f98f6491489e98a274f1363978c0b030d4c13b858b12809765f55",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaMellinFourierSourceControls.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0f6d25b8-d525-ac6c-b501-c840a37f90ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mellinFourier_source_witness_for_all_coefficients
    (Ψ : ℝ → ℂ)
    (hsmooth : ContDiff ℝ ∞ Ψ)
    (hcompact : HasCompactSupport Ψ)
    (hplus : WienerPositiveSupport Ψ) :
    ∃ g : 𝓢(ℝ, ℂ),
      (∀ y : ℝ, 0 < y →
        (𝓕 g) ((1 / (2 * Real.pi)) * Real.log y) =
          (y : ℂ) * Ψ y) ∧
      (∀ (f : ℕ → ℂ) (T : ℝ), 0 < T →
        ∀ n : ℕ,
          wienerFourierCoefficient f g T n =
            f n * Ψ ((n : ℝ) / T) / (T : ℂ)) := by
  obtain ⟨g, hg⟩ :=
    wienerMellin_fourier_witness Ψ hsmooth hcompact hplus
  refine ⟨g, hg, ?_⟩
  intro f T hT n
  exact wienerFourierCoefficient_eq_smoothCoefficient
    f Ψ g hplus hg hT n

/-- At y=1 the correctly normalized Fourier frequency is zero.
The multiplier y is exactly one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaMellinFourierSourceControls.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaMellinFourierSourceControls.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d9323421ef01fb690bbdec376c304f3953163b4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
