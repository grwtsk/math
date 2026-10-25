# mkRecOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3b8dc38217b77816e61477e9c8c49ae16399f87a8b8d11b537ff8f6b548b784a",
  "kind": "def",
  "lexical_name": "mkRecOn",
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
  "slug": "mkrecon--cd8bd2171e4e78b0dfc0659a",
  "source": {
    "blob": "7dd94420dbd3ee022a56951d58f335569d842b6d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecOn/Variant51ee21754f21af0c3f0736a3b4ea8ffb7f47cda232c7a59c2d9e8f3e4f118895.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cd8bd2171e4e78b0dfc0659a260f4747f4a6b1a6eb6f41b9f20e7efb96031006",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecOn/Variant51ee21754f21af0c3f0736a3b4ea8ffb7f47cda232c7a59c2d9e8f3e4f118895.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3b8dc38217b77816e61477e9c8c49ae16399f87a8b8d11b537ff8f6b548b784a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkRecOn (n : Name) : MetaM Unit := do
  let .recInfo recInfo ← getConstInfo (mkRecName n)
    | throwError "{mkRecName n} not a recinfo"
  let decl ← forallTelescope recInfo.type fun xs t => do
    let e := .const recInfo.name (recInfo.levelParams.map (.param ·))
    let e := mkAppN e xs
    -- We reorder the parameters
    -- before: As Cs minor_premises indices major-premise
    -- fow:    As Cs indices major-premise minor-premises
    let AC_size := xs.size - recInfo.numMinors - recInfo.numIndices - 1
    let vs :=
      xs[*...AC_size] ++
      xs[(AC_size + recInfo.numMinors)...(AC_size + recInfo.numMinors + 1 + recInfo.numIndices)] ++
      xs[(AC_size)...(AC_size + recInfo.numMinors)]
    let type ← mkForallFVars vs t
    let value ← mkLambdaFVars vs e
    mkDefinitionValInferringUnsafe (mkRecOnName n) recInfo.levelParams type value .abbrev

  addDecl (.defnDecl decl)
  setReducibleAttribute decl.name
  modifyEnv fun env => markAuxRecursor env decl.name
  modifyEnv fun env => addProtected env decl.name

end Lean
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecOn/Variant51ee21754f21af0c3f0736a3b4ea8ffb7f47cda232c7a59c2d9e8f3e4f118895.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RecOn/Variant51ee21754f21af0c3f0736a3b4ea8ffb7f47cda232c7a59c2d9e8f3e4f118895.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7dd94420dbd3ee022a56951d58f335569d842b6d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
