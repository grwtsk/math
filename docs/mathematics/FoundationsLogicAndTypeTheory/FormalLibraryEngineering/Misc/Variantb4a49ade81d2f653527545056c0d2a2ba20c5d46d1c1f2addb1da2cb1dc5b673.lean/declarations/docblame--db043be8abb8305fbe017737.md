# docBlame

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:66d7a57d74a2117aa8a5884c0848f983f7c3ca8175f6ddbec61efa25a1a24825",
  "kind": "def",
  "lexical_name": "docBlame",
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
  "slug": "docblame--db043be8abb8305fbe017737",
  "source": {
    "blob": "3d8119d4c054b4784160342ba65cef7f9a44c80c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 93,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variantb4a49ade81d2f653527545056c0d2a2ba20c5d46d1c1f2addb1da2cb1dc5b673.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:db043be8abb8305fbe0177376b19ec3d86bc8ebbd4ae40733c07ffcb65efde57",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variantb4a49ade81d2f653527545056c0d2a2ba20c5d46d1c1f2addb1da2cb1dc5b673.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:66d7a57d74a2117aa8a5884c0848f983f7c3ca8175f6ddbec61efa25a1a24825`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[env_linter] def docBlame : Linter where
  noErrorsFound := "No definitions are missing documentation."
  errorsFound := "DEFINITIONS ARE MISSING DOCUMENTATION STRINGS:"
  test declName := do
    -- leanprover/lean4#12263: isGlobalInstance was removed, use isInstance instead
    if (← isPrivateOrAutoDecl declName) || (← isInstance declName) then
      return none -- FIXME: scoped/local instances should also not be linted
    if let .str p _ := declName then
      if ← isInstance p then
        -- auxillary functions for instances should not be linted
        return none
    if let .str _ s := declName then
      if s == "parenthesizer" || s == "formatter" || s == "delaborator" || s == "quot" then
      return none
    let kind ← match ← getConstInfo declName with
      | .axiomInfo .. => pure "axiom"
      | .opaqueInfo .. => pure "constant"
      | .defnInfo info =>
          -- leanprover/lean4#2575: Prop projections are generated as `def`s
          if ← isProjectionFn declName <&&> isProp info.type then
            return none
          pure "definition"
      | .inductInfo .. => pure "inductive"
      | _ => return none
    let (none) ← findDocString? (← getEnv) declName | return none
    return m!"{kind} missing documentation string"

/-- A linter for checking theorem doc strings. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variantb4a49ade81d2f653527545056c0d2a2ba20c5d46d1c1f2addb1da2cb1dc5b673.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Misc/Variantb4a49ade81d2f653527545056c0d2a2ba20c5d46d1c1f2addb1da2cb1dc5b673.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d8119d4c054b4784160342ba65cef7f9a44c80c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
