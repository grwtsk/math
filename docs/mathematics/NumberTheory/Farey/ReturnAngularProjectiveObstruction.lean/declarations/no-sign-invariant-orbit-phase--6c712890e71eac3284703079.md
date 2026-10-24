# no_sign_invariant_orbit_phase

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c4f9d43d-b4c1-8e4e-ffc9-efe2b5716b3f",
  "kind": "theorem",
  "lexical_name": "no_sign_invariant_orbit_phase",
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
  "slug": "no-sign-invariant-orbit-phase--6c712890e71eac3284703079",
  "source": {
    "blob": "84de7d628e08d5c1d606f88a369898d59ace9528",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 71,
    "path": "GRWTSK/NumberTheory/Farey/ReturnAngularProjectiveObstruction.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6c712890e71eac32847030791abca1278698591b95dd4ddb05031b827f523484",
  "verification": {
    "reference": "docs/verification/NumberTheory/Farey/ReturnAngularProjectiveObstruction.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c4f9d43d-b4c1-8e4e-ffc9-efe2b5716b3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem no_sign_invariant_orbit_phase
    (readout : (Fin 2 → ZMod 3) → ℂ)
    (hSign : SignGaugeInvariant readout)
    (hOrbit : AgreesWithOrbitPhase readout) : False := by
  have heq : orbitPhase (2 : Fin 4) = orbitPhase (0 : Fin 4) := by
    calc
      orbitPhase (2 : Fin 4) = readout (residueOrbit (2 : Fin 4)) :=
        (hOrbit 2).symm
      _ = readout (-(residueOrbit (0 : Fin 4))) := by
        rw [residueOrbit_two_eq_neg_zero]
      _ = readout (residueOrbit (0 : Fin 4)) :=
        hSign (residueOrbit 0)
      _ = orbitPhase (0 : Fin 4) :=
        hOrbit 0
  exact orbitPhase_two_ne_zero heq

/-- Precise no-go: the selected quarter-turn phase cannot arise as the
restriction of a projective/sign-gauge-invariant complex observable.

This does not rule out phase-squared, sign-alternating projective
characters, a gauge-fixed oriented lift, or an enlarged representation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Farey/ReturnAngularProjectiveObstruction.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Farey/ReturnAngularProjectiveObstruction.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84de7d628e08d5c1d606f88a369898d59ace9528` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
