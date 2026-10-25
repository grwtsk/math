# mkSizeOfFn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7800e32cfb7382505d3042cc94e65632689aa0657253dad1c60e7528710b3eb0",
  "kind": "def",
  "lexical_name": "mkSizeOfFn",
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
  "slug": "mksizeoffn--83fdb17054d558f9345e6ab9",
  "source": {
    "blob": "0faca0128fc0bcfc46156f3d678ddc6618e6ec7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 166,
    "line": 126,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant2d9ea458f26d4dbbaaadde4da136f578e7d4859c9a5058aee0d049669dd3c66d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:83fdb17054d558f9345e6ab93bf97a743eec0fe02ecdeae326a78a2435f7a088",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant2d9ea458f26d4dbbaaadde4da136f578e7d4859c9a5058aee0d049669dd3c66d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7800e32cfb7382505d3042cc94e65632689aa0657253dad1c60e7528710b3eb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 126–166.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def mkSizeOfFn (recName : Name) (declName : Name): MetaM Unit := do
  trace[Meta.sizeOf] "recName: {recName}"
  let recInfo : RecursorVal ← getConstInfoRec recName
  forallTelescopeReducing recInfo.type fun xs _ =>
    let levelParams := recInfo.levelParams.tail! -- universe parameters for declaration being defined
    let params := xs[*...recInfo.numParams]
    let motiveFVars := xs[recInfo.numParams...(recInfo.numParams + recInfo.numMotives)]
    let minorFVars := xs[recInfo.getFirstMinorIdx...(recInfo.getFirstMinorIdx + recInfo.numMinors)]
    let indices := xs[recInfo.getFirstIndexIdx...(recInfo.getFirstIndexIdx + recInfo.numIndices)]
    let major := xs[recInfo.getMajorIdx]!
    let nat := mkConst ``Nat
    mkLocalInstances params fun localInsts =>
    mkSizeOfMotives motiveFVars fun motives => do
      let us := Level.one :: levelParams.map mkLevelParam -- universe level parameters for `rec`-application
      let recFn := mkConst recName us
      let val := mkAppN recFn (params ++ motives)
      forallBoundedTelescope (← inferType val) recInfo.numMinors fun minorFVars' _ =>
      mkSizeOfMinors motiveFVars minorFVars minorFVars' fun minors => do
        withInstImplicitAsImplicit params do
          let sizeOfParams := params ++ localInsts ++ indices ++ #[major]
          let sizeOfType ← mkForallFVars sizeOfParams nat
          let val := mkAppN val (minors ++ indices ++ #[major])
          let sizeOfValue ← mkLambdaFVars sizeOfParams val
          trace[Meta.sizeOf] "declName: {declName}"
          trace[Meta.sizeOf] "type: {sizeOfType}"
          trace[Meta.sizeOf] "val: {sizeOfValue}"
          addDecl <| Declaration.defnDecl {
            name        := declName
            levelParams := levelParams
            type        := sizeOfType
            value       := sizeOfValue
            safety      := DefinitionSafety.safe
            hints       := ReducibilityHints.abbrev
          }
          enableRealizationsForConst declName

/--
  Create `sizeOf` functions for all inductive datatypes in the mutual inductive declaration containing `typeName`
  The resulting array contains the generated functions names. The `NameMap` maps recursor names into the generated function names.
  There is a function for each element of the mutual inductive declaration, and for auxiliary recursors for nested inductive types.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant2d9ea458f26d4dbbaaadde4da136f578e7d4859c9a5058aee0d049669dd3c66d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SizeOf/Variant2d9ea458f26d4dbbaaadde4da136f578e7d4859c9a5058aee0d049669dd3c66d.lean#L126).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0faca0128fc0bcfc46156f3d678ddc6618e6ec7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
