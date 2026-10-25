# PhaseRealization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9dec824d56872384a2b2e76e6ace080e33f709d591f4b4497d88d962270240ae",
  "kind": "structure",
  "lexical_name": "PhaseRealization",
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
  "slug": "phaserealization--df3791e5b11647bd07585866",
  "source": {
    "blob": "fb24bab80834ae91a0df379708570923806342b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 71,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AngleRatio/Variant75ec9db4b1b7515be53f63df3410911c150bca4b72dcec3d2cc35d40f139e35f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:df3791e5b11647bd075858663b9b81cc950f054c1850d111f3a9624e3511daa8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AngleRatio/Variant75ec9db4b1b7515be53f63df3410911c150bca4b72dcec3d2cc35d40f139e35f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9dec824d56872384a2b2e76e6ace080e33f709d591f4b4497d88d962270240ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PhaseRealization (F : DirectionFrame) (Target : Type u) where
  phase : F.Direction → Target
  unitCircleSound : Prop
  unitCircleProof : unitCircleSound
  fullTurnSound : Prop
  fullTurnProof : fullTurnSound
  oppositeIsHalfTurn : Prop
  oppositeIsHalfTurnProof : oppositeIsHalfTurn

end PrismaticGeometry
end Cube
end Boolean
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AngleRatio/Variant75ec9db4b1b7515be53f63df3410911c150bca4b72dcec3d2cc35d40f139e35f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AngleRatio/Variant75ec9db4b1b7515be53f63df3410911c150bca4b72dcec3d2cc35d40f139e35f.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb24bab80834ae91a0df379708570923806342b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
