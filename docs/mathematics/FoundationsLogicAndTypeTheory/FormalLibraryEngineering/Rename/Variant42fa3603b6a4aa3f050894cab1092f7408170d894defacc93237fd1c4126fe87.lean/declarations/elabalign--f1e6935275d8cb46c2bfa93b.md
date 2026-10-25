# elabAlign

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0df735aff0b3c40534a44fec708e0f162e9269405a8dd59665b95338dd8effd0",
  "kind": "def",
  "lexical_name": "elabAlign",
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
  "slug": "elabalign--f1e6935275d8cb46c2bfa93b",
  "source": {
    "blob": "6328045e557c0144399a728ab2249f9943575720",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 147,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rename/Variant42fa3603b6a4aa3f050894cab1092f7408170d894defacc93237fd1c4126fe87.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f1e6935275d8cb46c2bfa93bd969c5ff6534818f6baebaa6b624d2eb469604dc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rename/Variant42fa3603b6a4aa3f050894cab1092f7408170d894defacc93237fd1c4126fe87.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0df735aff0b3c40534a44fec708e0f162e9269405a8dd59665b95338dd8effd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[command_elab align] def elabAlign : CommandElab
  | `(#align $id3:ident $id4:ident) => do
    if (← getInfoState).enabled then
      addCompletionInfo <| CompletionInfo.id id4 id4.getId (danglingDot := false) {} none
      let c := removeX id4.getId
      if (← getEnv).contains c then
        addConstInfo id4 c none
      else if align.precheck.get (← getOptions) then
        let note := "(add `set_option align.precheck false` to suppress this message)"
        let inner := match ← try some <$> resolveGlobalConstWithInfos id4 catch _ => pure none with
        | none => m!""
        | some cs => m!" Did you mean:\n\n{
            ("\n":MessageData).joinSep (cs.map fun c' => m!"  #align {id3} {c'}")
          }\n\n#align inputs have to be fully qualified.{""
          } (Double check the lean 3 name too, we can't check that!)"
        throwErrorAt id4 "Declaration {c} not found.{inner}\n{note}"
      if Linter.getLinterValue linter.uppercaseLean3 (← getOptions) then
        if id3.getId.anyS suspiciousLean3Name then
          Linter.logLint linter.uppercaseLean3 id3 $
            "Lean 3 names are usually lowercase. This might be a typo.\n" ++
            "If the Lean 3 name is correct, then above this line, add:\n" ++
            "set_option linter.uppercaseLean3 false in\n"
    withRef id3 <| ensureUnused id3.getId
    liftCoreM <| addNameAlignment id3.getId id4.getId
  | _ => throwUnsupportedSyntax

/--
`#noalign lean_3.def_name` will record that `lean_3.def_name` has been marked for non-porting.
This information is used by the [mathport](https://github.com/leanprover-community/mathport)
utility, which will remove the declaration from the corresponding mathport file, and later
uses of the definition will be replaced by `sorry`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rename/Variant42fa3603b6a4aa3f050894cab1092f7408170d894defacc93237fd1c4126fe87.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rename/Variant42fa3603b6a4aa3f050894cab1092f7408170d894defacc93237fd1c4126fe87.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6328045e557c0144399a728ab2249f9943575720` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
