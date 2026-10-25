# wrapSimpDischarger

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:18cb79a3790c9208dc41e98745a0e7275733505e2a9151ef0d6aee830415d5de",
  "kind": "def",
  "lexical_name": "wrapSimpDischarger",
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
  "slug": "wrapsimpdischarger--e9ea59a0ae1fd9c31bc56e71",
  "source": {
    "blob": "65ac7a35fd00b608c1e9e5713b11debb2ec0843a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 23,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DischargerAsTactic/Variant0e5b5418556da24fe68af2d535a8fdf7a986eec3e959c896b6e51e0a13cb6677.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e9ea59a0ae1fd9c31bc56e71b1751b6d69298f15dd504a8ea3c0367e0e9ca97f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DischargerAsTactic/Variant0e5b5418556da24fe68af2d535a8fdf7a986eec3e959c896b6e51e0a13cb6677.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:18cb79a3790c9208dc41e98745a0e7275733505e2a9151ef0d6aee830415d5de`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def wrapSimpDischarger (dis : Simp.Discharge) : TacticM Unit := do
  let eS : Lean.Meta.Simp.State := {}
  let eC : Lean.Meta.Simp.Context := ← Simp.mkContext {}
  let eM : Lean.Meta.Simp.Methods := {}
  let (some a, _) ← liftM <| StateRefT'.run (ReaderT.run (ReaderT.run (dis <| ← getMainTarget)
    eM.toMethodsRef) eC) eS | failure
  (← getMainGoal).assignIfDefEq a
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DischargerAsTactic/Variant0e5b5418556da24fe68af2d535a8fdf7a986eec3e959c896b6e51e0a13cb6677.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DischargerAsTactic/Variant0e5b5418556da24fe68af2d535a8fdf7a986eec3e959c896b6e51e0a13cb6677.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65ac7a35fd00b608c1e9e5713b11debb2ec0843a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
