# _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdClear.Variante8b564d13f8f6709866635743344bd7b90e241348c8044f8a8b497dd4abec8dd.Lean.MVarId.tryClearMany'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5427db85ce91c2c36e802f9db8a56b002ac19115dd2cd66a81cd83ac94aba24e",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdClear.Variante8b564d13f8f6709866635743344bd7b90e241348c8044f8a8b497dd4abec8dd.Lean.MVarId.tryClearMany'",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-rootl--9289b39b0235d7d638a6295e",
  "source": {
    "blob": "fd927858a494a0121b63e165a21848f484b77cb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 77,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Clear/Variantf896e438932e3f6277dd4b7dadd9d1c43a0a30613118022e145b87d5121281a0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9289b39b0235d7d638a6295e742e1c80cc1d2f1f2c60481a20c62cf5e0be9c50",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Clear/Variantf896e438932e3f6277dd4b7dadd9d1c43a0a30613118022e145b87d5121281a0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5427db85ce91c2c36e802f9db8a56b002ac19115dd2cd66a81cd83ac94aba24e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RootLeanMVarIdClear.Variante8b564d13f8f6709866635743344bd7b90e241348c8044f8a8b497dd4abec8dd.Lean.MVarId.tryClearMany' (goal : MVarId) (fvarIds : Array FVarId) :
    MetaM (MVarId × Array FVarId) :=
  goal.withContext do
    let fvarIds := (← getLCtx).sortFVarsByContextOrder fvarIds
    fvarIds.foldrM (init := (goal, Array.mkEmpty fvarIds.size))
      fun h (goal, cleared) => do
        let goal' ← goal.tryClear h
        let cleared := if goal == goal' then cleared else cleared.push h
        return (goal', cleared)

end Lean.Meta
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Clear/Variantf896e438932e3f6277dd4b7dadd9d1c43a0a30613118022e145b87d5121281a0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Clear/Variantf896e438932e3f6277dd4b7dadd9d1c43a0a30613118022e145b87d5121281a0.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd927858a494a0121b63e165a21848f484b77cb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
