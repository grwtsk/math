# wienerMellin_fourier_witness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7b8942ea-af87-c673-0250-f0cbde583317",
  "kind": "theorem",
  "lexical_name": "wienerMellin_fourier_witness",
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
  "slug": "wienermellin-fourier-witness--c805b74fcb4f34b23c24e300",
  "source": {
    "blob": "c3fafc90b62748e4a8dc319333e5938b4d4139a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 171,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaMellinFourierSource.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c805b74fcb4f34b23c24e3009fd64e7ce60f3e786c84c9e5469cdc82cf3f3e72",
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

Occurrence: `result:7b8942ea-af87-c673-0250-f0cbde583317`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 171–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wienerMellin_fourier_witness
    (Ψ : ℝ → ℂ)
    (hsmooth : ContDiff ℝ ∞ Ψ)
    (hcompact : HasCompactSupport Ψ)
    (hplus : WienerPositiveSupport Ψ) :
    ∃ g : 𝓢(ℝ, ℂ),
      ∀ y : ℝ, 0 < y →
        (𝓕 g) ((1 / (2 * Real.pi)) * Real.log y) =
          (y : ℂ) * Ψ y := by
  let H : 𝓢(ℝ, ℂ) :=
    wienerMellinSchwartz Ψ hsmooth hcompact hplus
  refine ⟨𝓕⁻ H, ?_⟩
  intro y hy
  have hFourier : 𝓕 (𝓕⁻ H) = H :=
    FourierTransform.fourier_fourierInv_eq H
  rw [hFourier]
  change
    (Real.exp (2 * Real.pi *
        ((1 / (2 * Real.pi)) * Real.log y)) : ℂ) *
      Ψ (Real.exp (2 * Real.pi *
        ((1 / (2 * Real.pi)) * Real.log y))) =
        (y : ℂ) * Ψ y
  have htwoPi : (2 * Real.pi : ℝ) ≠ 0 := by positivity
  have hlogArg :
      2 * Real.pi * ((1 / (2 * Real.pi)) * Real.log y) =
        Real.log y := by
    field_simp [htwoPi]
  rw [hlogArg, Real.exp_log hy]

/-- Source-safe Fourier-weighted coefficient: the zero term is
defined separately because the logarithm of 0/T is inadmissible. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/WienerIkeharaMellinFourierSource.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaMellinFourierSource.lean#L171).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3fafc90b62748e4a8dc319333e5938b4d4139a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
