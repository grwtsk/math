# fourierModeValue_factor_phase_sub_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:177ab3b4-08cd-0fe1-4cad-4cc4c7af3526",
  "kind": "theorem",
  "lexical_name": "fourierModeValue_factor_phase_sub_one",
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
  "slug": "fouriermodevalue-factor-phase-sub-one--8147f46c7970ea17666f826c",
  "source": {
    "blob": "609c2965a5ad5ffcf85ca047484c95a1f3f402ba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26,
    "line": 16,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenOscillatoryResidual.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8147f46c7970ea17666f826c5005c64cc64b56f1d441969de41b159e9ce0993a",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenOscillatoryResidual.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:177ab3b4-08cd-0fe1-4cad-4cc4c7af3526`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–26.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fourierModeValue_factor_phase_sub_one
    {k : ℤ} (hk : k ≠ 0) (t : ℝ) :
    fourierModeValue k t =
      (1 : ℂ) / (-2 * Real.pi * Complex.I * k) *
        (fourier (-k) (t : AddCircle (1 : ℝ)) - 1) := by
  unfold fourierModeValue fourierModePrimitive
  have hz : fourier (-k) ((0 : ℝ) : AddCircle (1 : ℝ)) = 1 := by simp
  rw [hz]
  ring

/-- Harmonic quadrature residual for the constant part of phase-minus-one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenOscillatoryResidual.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenOscillatoryResidual.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `609c2965a5ad5ffcf85ca047484c95a1f3f402ba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
