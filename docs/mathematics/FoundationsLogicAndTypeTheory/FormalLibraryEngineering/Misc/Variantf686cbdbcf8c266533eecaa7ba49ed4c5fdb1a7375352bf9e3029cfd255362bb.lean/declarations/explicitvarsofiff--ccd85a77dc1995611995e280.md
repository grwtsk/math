# explicitVarsOfIff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:917fb7843d3b97be1310afe82d13b14b71898c422ab7b6ffdcff8d2b650cd66b",
  "kind": "def",
  "lexical_name": "explicitVarsOfIff",
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
  "slug": "explicitvarsofiff--ccd85a77dc1995611995e280",
  "source": {
    "blob": "240605315812c204b41e2f22b2718769634065dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 232,
    "line": 219,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variantf686cbdbcf8c266533eecaa7ba49ed4c5fdb1a7375352bf9e3029cfd255362bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ccd85a77dc1995611995e28017bb5d91bfc31ff03aaab19611821397ee6c4aac",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variantf686cbdbcf8c266533eecaa7ba49ed4c5fdb1a7375352bf9e3029cfd255362bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:917fb7843d3b97be1310afe82d13b14b71898c422ab7b6ffdcff8d2b650cd66b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–232.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[env_linter disabled] def explicitVarsOfIff : Linter where
  noErrorsFound := "No explicit variables on both sides of iff"
  errorsFound := "EXPLICIT VARIABLES ON BOTH SIDES OF IFF"
  test declName := do
    if ← isAutoDecl declName then return none
    if Linter.isDeprecated (← getEnv) declName then return none
    forallTelescope (← getConstInfo declName).type fun args ty => do
      let some (lhs, rhs) := ty.iff? | return none
      let explicit ← args.filterM fun arg =>
        return (← getFVarLocalDecl arg).binderInfo.isExplicit &&
          lhs.containsFVar arg.fvarId! && rhs.containsFVar arg.fvarId!
      if explicit.isEmpty then return none
      addMessageContextFull m!"should be made implicit: {
        MessageData.joinSep (explicit.toList.map (m!"{·}")) ", "}"
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variantf686cbdbcf8c266533eecaa7ba49ed4c5fdb1a7375352bf9e3029cfd255362bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variantf686cbdbcf8c266533eecaa7ba49ed4c5fdb1a7375352bf9e3029cfd255362bb.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `240605315812c204b41e2f22b2718769634065dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
