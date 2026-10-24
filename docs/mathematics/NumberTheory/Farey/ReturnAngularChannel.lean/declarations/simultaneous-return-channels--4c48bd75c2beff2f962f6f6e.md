# simultaneous_return_channels

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e5de3f5-3ae0-0b11-2afa-bc9e1cbef173",
  "kind": "theorem",
  "lexical_name": "simultaneous_return_channels",
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
  "slug": "simultaneous-return-channels--4c48bd75c2beff2f962f6f6e",
  "source": {
    "blob": "1ee4f63dfe0975d9625d7b62dc549d8c63c810ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 147,
    "path": "GRWTSK/NumberTheory/Farey/ReturnAngularChannel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4c48bd75c2beff2f962f6f6eaa9e701eae0160651e6a19cd63a5e60ea6a2fb6d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Farey/ReturnAngularChannel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e5de3f5-3ae0-0b11-2afa-bc9e1cbef173`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem simultaneous_return_channels (n : ℕ) :
    returnMatrix ^ n * expandingProjector =
      (expandingEigenvalue ^ n) • expandingProjector ∧
    ((fun v : Fin 2 → ZMod 3 => modThreeReturn.mulVec v)^[n])
        (residueOrbit 0) =
      residueOrbit ((orbitNext)^[n] (0 : Fin 4)) ∧
    orbitPhase ((orbitNext)^[n] (0 : Fin 4)) = Complex.I ^ n :=
  ⟨expandingProjector_iterate n,
    modThreeReturn_orbit_iterate 0 n,
    initial_orbit_phase n⟩

/-- Complex observation of real spectral amplitude and arithmetic angular
phase; the observation itself is a declared choice, not an automatic
identification of these two representations. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Farey/ReturnAngularChannel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Farey/ReturnAngularChannel.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ee4f63dfe0975d9625d7b62dc549d8c63c810ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
