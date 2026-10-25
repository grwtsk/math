# insertEnterSyntax

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fab12a1664a5f57a217ebdc15c9b132e9e4d28553dd31b96ff88471d9dd35970",
  "kind": "def",
  "lexical_name": "insertEnterSyntax",
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
  "slug": "insertentersyntax--63b2f5b7b25c77065b5a47bf",
  "source": {
    "blob": "0094691cab4a7965b55931095b0bcd37be150d37",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 217,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variant551d43202664389b16dc0029833f8c2ed0d8f0795db788316cc8eb08242e303d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:63b2f5b7b25c77065b5a47bfef3f1c8a9f9d8b9f8acdd6cc34a630fe593d2151",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variant551d43202664389b16dc0029833f8c2ed0d8f0795db788316cc8eb08242e303d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fab12a1664a5f57a217ebdc15c9b132e9e4d28553dd31b96ff88471d9dd35970`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def insertEnterSyntax (locations : Array Lean.SubExpr.GoalsLocation) (goalType : Expr) :
    MetaM Syntax := do
  let some pos := locations[0]? | throwError "You must select something."
  let (expr, subexprPos, fvarUserName?) ← match pos with
  | ⟨_, .target subexprPos⟩ => pure (goalType, subexprPos, none)
  | ⟨_, .hypType fvarId subexprPos⟩ => do
    let expr ← fvarId.getType
    let userName ← fvarId.getUserName
    pure (expr, subexprPos, some userName)
  | _ => throwError "You must select something in the goal or in the type of a local hypothesis."
  let expr ← instantiateMVars expr
  -- generate list of commands for `enter`
  let path ← Path.ofSubExprPos expr subexprPos
  pathToStx (← `(conv| skip)) path fvarUserName?

/-- Return the text for the link in the conv widget that inserts the replacement,
and also return the replacement, and the range within the file to highlight after the
replacement is inserted. The highlighted range will always be the trailing `skip`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variant551d43202664389b16dc0029833f8c2ed0d8f0795db788316cc8eb08242e303d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variant551d43202664389b16dc0029833f8c2ed0d8f0795db788316cc8eb08242e303d.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0094691cab4a7965b55931095b0bcd37be150d37` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
