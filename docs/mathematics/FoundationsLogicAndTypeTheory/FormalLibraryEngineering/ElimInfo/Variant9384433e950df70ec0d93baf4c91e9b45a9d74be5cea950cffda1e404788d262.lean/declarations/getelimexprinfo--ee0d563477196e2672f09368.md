# getElimExprInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2350ba3e70c88440056d3fc7fa5351c122d57da7a306735d961c4047fed3253e",
  "kind": "def",
  "lexical_name": "getElimExprInfo",
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
  "slug": "getelimexprinfo--ee0d563477196e2672f09368",
  "source": {
    "blob": "6d04bc364fef41a70cb3841fe77e5401bd70cb32",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 65,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimInfo/Variant9384433e950df70ec0d93baf4c91e9b45a9d74be5cea950cffda1e404788d262.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ee0d563477196e2672f0936896cea825e900a3284497eb6b4733eadb2b526707",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimInfo/Variant9384433e950df70ec0d93baf4c91e9b45a9d74be5cea950cffda1e404788d262.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2350ba3e70c88440056d3fc7fa5351c122d57da7a306735d961c4047fed3253e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getElimExprInfo (elimExpr : Expr) (baseDeclName? : Option Name := none) : MetaM ElimInfo := do
  let elimType ← inferType elimExpr
  trace[Elab.induction] "eliminator{indentExpr elimExpr}\nhas type{indentExpr elimType}"
  forallTelescopeReducing elimType fun xs type => type.withApp fun motive motiveArgs => do
    unless motive.isFVar do
      throwError "Expected resulting type of eliminator to be an application of one of its parameters (the motive), but found{indentExpr type}"
    let targets  := motiveArgs.takeWhile (·.isFVar)
    let complexMotiveArgs := motiveArgs[targets.size...*]
    let motiveType ← inferType motive
    forallTelescopeReducing motiveType fun motiveParams motiveResultType => do
      unless motiveParams.size == motiveArgs.size do
        throwError "Expected {motiveArgs.size} parameters at motive type, got {motiveParams.size}:{indentExpr motiveType}"
      unless motiveResultType.isSort do
        throwError m!"Motive result type must be a sort, not{indentExpr motiveType}"
    let some motivePos ← pure (xs.idxOf? motive) |
      throwError "Unexpected eliminator type{indentExpr elimType}"
    let targetsPos ← targets.mapM fun target => do
      match xs.idxOf? target with
      | none => throwError "Unexpected eliminator type{indentExpr elimType}"
      | some targetPos => pure targetPos
    let mut altsInfo := #[]
    let env ← getEnv
    for h : i in *...xs.size do
      let x := xs[i]
      if x != motive && !targets.contains x then
        let xDecl ← x.fvarId!.getDecl
        if xDecl.binderInfo.isExplicit then
          let (numFields, provesMotive) := altArity motive 0 xDecl.type
          let name := xDecl.userName
          let declName? := do
            let base ← baseDeclName?
            let altDeclName := base ++ name
            if env.contains altDeclName then some altDeclName else none
          altsInfo := altsInfo.push { name, declName?, numFields, provesMotive }
    pure { elimExpr, elimType,  motivePos, targetsPos, altsInfo, numComplexMotiveArgs := complexMotiveArgs.size }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimInfo/Variant9384433e950df70ec0d93baf4c91e9b45a9d74be5cea950cffda1e404788d262.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ElimInfo/Variant9384433e950df70ec0d93baf4c91e9b45a9d74be5cea950cffda1e404788d262.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d04bc364fef41a70cb3841fe77e5401bd70cb32` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
