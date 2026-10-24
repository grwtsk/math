# selected_return_two_step_antipodal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:147b11b8-5cc3-0371-f190-12b60caf69b2",
  "kind": "theorem",
  "lexical_name": "selected_return_two_step_antipodal",
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
  "slug": "selected-return-two-step-antipodal--130899f6c568f8971525711f",
  "source": {
    "blob": "b061bd5a98174dbb31896e31f16d224321ac01bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 68,
    "path": "GRWTSK/NumberTheory/Farey/ProjectiveKoopmanEigenvalue.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:130899f6c568f8971525711f14b5278b35ce2af6fb7f42d23e264413e7df85a1",
  "verification": {
    "reference": "docs/verification/NumberTheory/Farey/ProjectiveKoopmanEigenvalue.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:147b11b8-5cc3-0371-f190-12b60caf69b2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem selected_return_two_step_antipodal :
    modThreeReturn.mulVec
        (modThreeReturn.mulVec (residueOrbit (0 : Fin 4))) =
      -(residueOrbit (0 : Fin 4)) := by
  calc
    modThreeReturn.mulVec
        (modThreeReturn.mulVec (residueOrbit (0 : Fin 4))) =
        modThreeReturn.mulVec (residueOrbit (orbitNext 0)) := by
          rw [modThreeReturn_orbit]
    _ = residueOrbit (orbitNext (orbitNext 0)) :=
          modThreeReturn_orbit (orbitNext 0)
    _ = -(residueOrbit (0 : Fin 4)) := by
          simpa [orbitNext] using residueOrbit_two_eq_neg_zero

/-- For a NONZERO projective/sign-invariant observation at the source
vector, a genuine eigenvalue of the full mod-three matrix action has
square one. No invertibility of the observation is asserted. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Farey/ProjectiveKoopmanEigenvalue.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Farey/ProjectiveKoopmanEigenvalue.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b061bd5a98174dbb31896e31f16d224321ac01bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
