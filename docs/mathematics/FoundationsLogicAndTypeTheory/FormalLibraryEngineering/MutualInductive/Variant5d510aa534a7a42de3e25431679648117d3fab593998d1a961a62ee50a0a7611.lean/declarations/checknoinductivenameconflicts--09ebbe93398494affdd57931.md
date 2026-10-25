# checkNoInductiveNameConflicts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a5046df94dacf1679de56bebd7305b2d1b59cb6192d121c77a230f2a9dc70c9e",
  "kind": "def",
  "lexical_name": "checkNoInductiveNameConflicts",
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
  "slug": "checknoinductivenameconflicts--09ebbe93398494affdd57931",
  "source": {
    "blob": "2f896ef31359aad0ee273d30032f02e843781076",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1629,
    "line": 1609,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant5d510aa534a7a42de3e25431679648117d3fab593998d1a961a62ee50a0a7611.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:09ebbe93398494affdd579311206efdb21f80e7053ce9c5bf7a2d0eb9efa9ab6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant5d510aa534a7a42de3e25431679648117d3fab593998d1a961a62ee50a0a7611.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a5046df94dacf1679de56bebd7305b2d1b59cb6192d121c77a230f2a9dc70c9e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1609–1629.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def checkNoInductiveNameConflicts (elabs : Array InductiveElabStep1) (isCoinductive : Bool := false) : CommandElabM Unit := do
  let throwErrorsAt (init cur : Syntax) (msg : MessageData) : CommandElabM Unit := do
    logErrorAt init msg
    throwErrorAt cur msg
  -- Maps names of inductive types to `true` and those of constructors to `false`, along with syntax refs
  let mut uniqueNames : Std.HashMap Name (Bool × Syntax) := {}
  let declString := if isCoinductive then "coinductive predicate" else "inductive type"
  trace[Elab.inductive] "declString: {declString}"
  for { view, .. } in elabs do
    let typeDeclName := privateToUserName view.declName
    if let some (prevNameIsType, prevRef) := uniqueNames[typeDeclName]? then
      let declKinds := if prevNameIsType then "multiple " ++ declString ++ "s" else "an " ++ declString ++ " and a constructor"
      throwErrorsAt prevRef view.declId m!"Cannot define {declKinds} with the same name `{typeDeclName}`"
    uniqueNames := uniqueNames.insert typeDeclName (true, view.declId)
    for ctor in view.ctors do
      let ctorName := privateToUserName ctor.declName
      if let some (prevNameIsType, prevRef) := uniqueNames[ctorName]? then
        let declKinds := if prevNameIsType then "an {declString} and a constructor" else "multiple constructors"
        throwErrorsAt prevRef ctor.declId m!"Cannot define {declKinds} with the same name `{ctorName}`"
      uniqueNames := uniqueNames.insert ctorName (false, ctor.declId)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant5d510aa534a7a42de3e25431679648117d3fab593998d1a961a62ee50a0a7611.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MutualInductive/Variant5d510aa534a7a42de3e25431679648117d3fab593998d1a961a62ee50a0a7611.lean#L1609).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f896ef31359aad0ee273d30032f02e843781076` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
