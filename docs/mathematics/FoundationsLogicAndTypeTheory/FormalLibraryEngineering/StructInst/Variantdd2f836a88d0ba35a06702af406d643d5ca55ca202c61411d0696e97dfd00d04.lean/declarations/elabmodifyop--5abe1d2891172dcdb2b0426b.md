# elabModifyOp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:02a71cd52770f2b35e482f607db092be6ea93d8ad32386e2213074b6ecf43579",
  "kind": "def",
  "lexical_name": "elabModifyOp",
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
  "slug": "elabmodifyop--5abe1d2891172dcdb2b0426b",
  "source": {
    "blob": "5493e3d025e608ffc68d856f0b5b683431f64b09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 239,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInst/Variantdd2f836a88d0ba35a06702af406d643d5ca55ca202c61411d0696e97dfd00d04.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5abe1d2891172dcdb2b0426b865f091f6db9eb7959a21dd94e5f3d0785b12223",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInst/Variantdd2f836a88d0ba35a06702af406d643d5ca55ca202c61411d0696e97dfd00d04.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:02a71cd52770f2b35e482f607db092be6ea93d8ad32386e2213074b6ecf43579`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def elabModifyOp (stx modifyOp : Syntax) (sourcesView : SourcesView) (expectedType? : Option Expr) : TermElabM Expr := do
  unless sourcesView.explicit.size == 1 do
    throwError "invalid \{...} notation, exactly one explicit source is required when using '[<index>] := <value>' update notation"
  if let some implicit := sourcesView.implicit then
    throwErrorAt implicit "invalid \{...} notation, '[<index>] := <value>' update notation does not support ellipsis"
  let source := sourcesView.explicit[0]!
  let cont (val : Syntax) : TermElabM Expr := do
    let lval := modifyOp[0][0]
    let idx  := lval[1]
    let self := source.stx
    let stxNew ← `($(self).modifyOp (idx := $idx) (fun s => $val))
    trace[Elab.structInst.modifyOp] "{stx}\n===>\n{stxNew}"
    withMacroExpansion stx stxNew <| elabTerm stxNew expectedType?
  let rest := modifyOp[0][1]
  if rest.isNone then
    cont modifyOp[1][2][2]
  else
    let s ← `(s)
    let valFirst  := rest[0]
    let valFirst  := if valFirst.getKind == ``Lean.Parser.Term.structInstArrayRef then valFirst else valFirst[1]
    let restArgs  := rest.getArgs
    let valRest   := mkNullNode restArgs[1...restArgs.size]
    let valField  := modifyOp.setArg 0 <| mkNode ``Parser.Term.structInstLVal #[valFirst, valRest]
    let valSource := mkSourcesWithSyntax #[s]
    let val       := stx.setArg 1 valSource
    let val       := val.setArg 2 <| mkNode ``Parser.Term.structInstFields #[mkNullNode #[valField]]
    trace[Elab.structInst.modifyOp] "{stx}\nval: {val}"
    cont val

/--
A component of a left-hand side for a field appearing in structure instance syntax.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInst/Variantdd2f836a88d0ba35a06702af406d643d5ca55ca202c61411d0696e97dfd00d04.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StructInst/Variantdd2f836a88d0ba35a06702af406d643d5ca55ca202c61411d0696e97dfd00d04.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5493e3d025e608ffc68d856f0b5b683431f64b09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
