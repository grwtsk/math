# heat_oddPart_harmonic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3dbbec92-e69d-7f51-7a6f-a55d697cefa2",
  "kind": "theorem",
  "lexical_name": "heat_oddPart_harmonic",
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
  "slug": "heat-oddpart-harmonic--66470c1c6ed04db3fe921c55",
  "source": {
    "blob": "7d5debf43b37d107dd84446f8c7ac43bb5d3a816",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 372,
    "line": 353,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralOrbit/Variant8926d0b43e40be19c8b8f62ebc576a21814236f1f81588e4f5f3367b56ffa51f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66470c1c6ed04db3fe921c550d6b6d7c07c8966da0e09add1428f05ba51133d8",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralOrbit/Variant8926d0b43e40be19c8b8f62ebc576a21814236f1f81588e4f5f3367b56ffa51f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3dbbec92-e69d-7f51-7a6f-a55d697cefa2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 353–372.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem heat_oddPart_harmonic
    (shell : SpectralOrbitShell A H)
    {time : ℝ} (time_nonnegative : 0 ≤ time)
    {state : H}
    (state_harmonic : shell.spectralProfile.dirac state = 0) :
    shell.spectral.heat time (shell.symmetry.oddPart state) =
      shell.symmetry.oddPart state := by
  have fixes :
      shell.spectral.heat time state = state :=
    shell.spectral.fixes_harmonic
      time_nonnegative state_harmonic
  have commuteAt :
      shell.spectral.heat time
          (shell.symmetry.involution state) =
        shell.symmetry.involution
          (shell.spectral.heat time state) :=
    DFunLike.congr_fun (shell.heat_commutes_involution time) state
  simp [ShellSymmetry.oddPart, fixes, commuteAt]

/-- Harmonic state has no activated odd residue. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../verification/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralOrbit/Variant8926d0b43e40be19c8b8f62ebc576a21814236f1f81588e4f5f3367b56ffa51f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/SpectralOrbit/Variant8926d0b43e40be19c8b8f62ebc576a21814236f1f81588e4f5f3367b56ffa51f.lean#L353).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d5debf43b37d107dd84446f8c7ac43bb5d3a816` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
