# toMessageData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e85c3a655d7e359b3b275656bcf78260139d836d3ce34484747fe952221b0b0b",
  "kind": "def",
  "lexical_name": "toMessageData",
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
  "slug": "tomessagedata--b23a2d58955cffe0172be70b",
  "source": {
    "blob": "54f58ea856f670e5ecf3e6a12e85d85bf379ce83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 905,
    "line": 875,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variante7e76c43171153813528112672058e544df3ac4708abd99682b8262641c5d34e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b23a2d58955cffe0172be70b19958a4e3ccef94f39428aa008430d3fb73f572c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variante7e76c43171153813528112672058e544df3ac4708abd99682b8262641c5d34e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e85c3a655d7e359b3b275656bcf78260139d836d3ce34484747fe952221b0b0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 875–905.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toMessageData (e : Kernel.Exception) (opts : Options) : MessageData :=
  match e with
  | unknownConstant env constName       => mkCtx env {} opts m!"(kernel) unknown constant '{constName}'"
  | alreadyDeclared env constName       => mkCtx env {} opts m!"(kernel) constant has already been declared '{.ofConstName constName true}'"
  | declTypeMismatch env decl givenType =>
    mkCtx env {} opts <|
    let process (n : Name) (expectedType : Expr) : MessageData :=
      m!"(kernel) declaration type mismatch, '{n}' has type{indentExpr givenType}\nbut it is expected to have type{indentExpr expectedType}";
    match decl with
    | Declaration.defnDecl { name := n, type := type, .. } => process n type
    | Declaration.thmDecl { name := n, type := type, .. }  => process n type
    | _ => "(kernel) declaration type mismatch" -- TODO fix type checker, type mismatch for mutual decls does not have enough information
  | declHasMVars env constName _        => mkCtx env {} opts m!"(kernel) declaration has metavariables '{.ofConstName constName true}'"
  | declHasFVars env constName e        => mkCtx env {} opts m!"(kernel) declaration has free variables '{.ofConstName constName true}', expression: {indentExpr e}"
  | funExpected env lctx e              => mkCtx env lctx opts m!"(kernel) function expected{indentExpr e}"
  | typeExpected env lctx e             => mkCtx env lctx opts m!"(kernel) type expected{indentExpr e}"
  | letTypeMismatch  env lctx n _ _     => mkCtx env lctx opts m!"(kernel) let-declaration type mismatch '{n}'"
  | exprTypeMismatch env lctx e _       => mkCtx env lctx opts m!"(kernel) type mismatch at{indentExpr e}"
  | appTypeMismatch  env lctx e fnType argType =>
    mkCtx env lctx opts m!"(kernel) application type mismatch{indentExpr e}\nargument has type{indentExpr argType}\nbut function has type{indentExpr fnType}"
  | invalidProj env lctx e              => mkCtx env lctx opts m!"(kernel) invalid projection{indentExpr e}"
  | thmTypeIsNotProp env constName type => mkCtx env {} opts m!"(kernel) type of theorem '{.ofConstName constName true}' is not a proposition{indentExpr type}"
  | other msg                           => m!"(kernel) {msg}"
  | deterministicTimeout                => "(kernel) deterministic timeout"
  | excessiveMemory                     => "(kernel) excessive memory consumption detected"
  | deepRecursion                       => "(kernel) deep recursion detected, use `set_option maxRecDepth <num>` to increase the limit"
  | interrupted                         => "(kernel) interrupted"

end Kernel.Exception

/-- Helper functions for creating a `MessageData` with the given header and elements. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variante7e76c43171153813528112672058e544df3ac4708abd99682b8262641c5d34e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variante7e76c43171153813528112672058e544df3ac4708abd99682b8262641c5d34e.lean#L875).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54f58ea856f670e5ecf3e6a12e85d85bf379ce83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
