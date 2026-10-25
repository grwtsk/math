# checkAltNames

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7010472a87b137af9c020af9c614be0e85c54b4eeedb2d8d7e5b584b8307d918",
  "kind": "def",
  "lexical_name": "checkAltNames",
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
  "slug": "checkaltnames--b7fe755934ebb5ff065ea2c6",
  "source": {
    "blob": "e1ac382d587c03dd137dad0d3b17273cb7572b72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 324,
    "line": 291,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantfa1f80bda01ad66c748ad9421997c9660569c3854328a495946fa10671cd65e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b7fe755934ebb5ff065ea2c643a093c76f1b96c647770b80e428509e268e4af0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantfa1f80bda01ad66c748ad9421997c9660569c3854328a495946fa10671cd65e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7010472a87b137af9c020af9c614be0e85c54b4eeedb2d8d7e5b584b8307d918`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 291–324.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def checkAltNames (alts : Array Alt) (altsSyntax : Array Syntax) : TacticM Unit := do
  let mut seenNames : Array Name := #[]
  let mut invalidNames : Array (Syntax × Name) := #[]
  for h : i in *...altsSyntax.size do
    let altStx := altsSyntax[i]
    if isAltWildcard altStx && i != altsSyntax.size - 1 then
      withRef altStx <| throwError "Invalid occurrence of the wildcard alternative `| _ => ...`: It must be the last alternative"
    if let some altName := getAltName? altStx then
      if altName != `_ then
        if seenNames.contains altName then
          throwOrLogErrorAt altStx m!"Duplicate alternative name `{altName}`"
        else
          seenNames := seenNames.push altName
          unless alts.any (·.name == altName) do
            invalidNames := invalidNames.push (altStx, altName)
    else
      invalidNames := invalidNames.push (altStx, .anonymous)
  unless invalidNames.isEmpty do
    let unhandledAlts := alts.filter fun alt => !seenNames.contains alt.name
    let unhandledAltsMessages := unhandledAlts.map (m!"`{·.name}`")
    let msg :=
      if unhandledAlts.isEmpty then
        m!"There are no unhandled alternatives"
      else
        m!"Expected {.orList unhandledAltsMessages.toList}"
    for (altStx, altName) in invalidNames do
      if altName.isAnonymous then
        throwOrLogErrorAt altStx m!"Missing alternative name: {msg}"
      else
        throwOrLogErrorAt altStx m!"Invalid alternative name `{altName}`: {msg}"

/-- Given the goal `altMVarId` for a given alternative that introduces `numFields` new variables,
    return the number of explicit variables. Recall that when the `@` is not used, only the explicit variables can
    be named by the user. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantfa1f80bda01ad66c748ad9421997c9660569c3854328a495946fa10671cd65e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Induction/Variantfa1f80bda01ad66c748ad9421997c9660569c3854328a495946fa10671cd65e4.lean#L291).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1ac382d587c03dd137dad0d3b17273cb7572b72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
