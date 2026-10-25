# elabRegisterErrorExplanation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9261a07fd58fb00d141de12c3228f652fae382f71d2c6eb363f4edceafa83902",
  "kind": "def",
  "lexical_name": "elabRegisterErrorExplanation",
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
  "slug": "elabregistererrorexplanation--59154380ca65f658b4ca3d63",
  "source": {
    "blob": "1eeaf0e61c70b579d6e8bef1c98a2f2f0f2da148",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 98,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErrorExplanation/Variant36eff41627ab208bdbdadb4be937d780f4239e46055d15c5818e6caecbf4ced4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:59154380ca65f658b4ca3d6320e95d42917970552e8e0646810ceaca9d746357",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErrorExplanation/Variant36eff41627ab208bdbdadb4be937d780f4239e46055d15c5818e6caecbf4ced4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9261a07fd58fb00d141de12c3228f652fae382f71d2c6eb363f4edceafa83902`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 98–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_command_elab registerErrorExplanationStx] def elabRegisterErrorExplanation : CommandElab
| `(registerErrorExplanationStx| $_docStx register_error_explanation%$cmd $id:ident $t:term) => withRef cmd do
  unless (← getEnv).contains ``ErrorExplanation.Metadata do
    throwError "To use this command, add `import Lean.ErrorExplanation` to the header of this file"
  recordExtraModUseFromDecl ``ErrorExplanation.Metadata (isMeta := true)
  let tp := mkConst ``ErrorExplanation.Metadata
  let metadata ← runTermElabM <| fun _ => unsafe do
    let e ← elabTermEnsuringType t tp
    if e.hasSyntheticSorry then throwAbortTerm
    evalExpr ErrorExplanation.Metadata tp e
  let name := id.getId
  if name.isAnonymous then
    throwErrorAt id "Invalid name for error explanation: `{id}`"
  if name.hasMacroScopes then
    -- Use `id` rather than `name` for nicer rendering
    throwErrorAt id m!"Invalid name `{id}`: Error explanations cannot have inaccessible names. \
      This error often occurs when an error explanation is generated using a macro."
  if name.getNumParts != 2 then
    throwErrorAt id m!"Invalid name `{name}`: Error explanation names must have two components"
      ++ .note m!"The first component of an error explanation name identifies the package from \
        which the error originates, and the second identifies the error itself."
  if errorExplanationExt.getState (← getEnv) |>.contains name then
    throwErrorAt id m!"Cannot add explanation: An error explanation already exists for `{name}`"
  let (declLoc? : Option DeclarationLocation) ← do
    let map ← getFileMap
    let start := id.raw.getPos?.getD 0
    let fin := id.raw.getTailPos?.getD start
    pure <| some {
      module := (← getMainModule)
      range := .ofStringPositions map start fin
    }
  modifyEnv (errorExplanationExt.addEntry · (name, { doc := "", metadata, declLoc? }))
| _ => throwUnsupportedSyntax
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErrorExplanation/Variant36eff41627ab208bdbdadb4be937d780f4239e46055d15c5818e6caecbf4ced4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ErrorExplanation/Variant36eff41627ab208bdbdadb4be937d780f4239e46055d15c5818e6caecbf4ced4.lean#L98).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1eeaf0e61c70b579d6e8bef1c98a2f2f0f2da148` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
