# mkToExprBody

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8af0bc349dcd7cf9f671c66d565119dbfd3a85363a529d0665c9bb7d2b2d2d5b",
  "kind": "def",
  "lexical_name": "mkToExprBody",
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
  "slug": "mktoexprbody--69a97f3980710e3e85c52dd2",
  "source": {
    "blob": "0d73d5cc2ef8bf693ed8883a0f765bef7c10b609",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 118,
    "line": 68,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variantc3bc6d235b5a47b7563168e82b70842dfe8d1521da10ef0c3650f2643922c2df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:69a97f3980710e3e85c52dd2bfb0811649472fea88cb8e793680d259d984cac1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variantc3bc6d235b5a47b7563168e82b70842dfe8d1521da10ef0c3650f2643922c2df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8af0bc349dcd7cf9f671c66d565119dbfd3a85363a529d0665c9bb7d2b2d2d5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkToExprBody (header : Header) (indVal : InductiveVal) (auxFunName : Name) (levelInsts : Array Term) :
    TermElabM Term := do
  let discrs ← mkDiscrs header indVal
  let alts ← mkAlts
  `(match $[$discrs],* with $alts:matchAlt*)
where
  /-- Create the `match` cases, one per constructor. -/
  mkAlts : TermElabM (Array (TSyntax ``matchAlt)) := do
    let levels ← levelInsts.mapM fun inst => `($(inst).toLevel)
    let mut alts := #[]
    for ctorName in indVal.ctors do
      let ctorInfo ← getConstInfoCtor ctorName
      let alt ← forallTelescopeReducing ctorInfo.type fun xs _ => do
        let mut patterns := #[]
        -- add `_` pattern for indices, before the constructor's pattern
        for _ in *...indVal.numIndices do
          patterns := patterns.push (← `(_))
        let mut ctorArgs := #[]
        let mut rhsArgs : Array Term := #[]
        let mkArg (x : Expr) (a : Term) : TermElabM Term := do
          if (← inferType x).isAppOf indVal.name then
            `($(mkIdent auxFunName) $levelInsts* $a)
          else if ← Meta.isType x then
            ``(toTypeExpr $a)
          else
            ``(toExpr $a)
        -- add `_` pattern for inductive parameters, which are inaccessible
        for i in *...ctorInfo.numParams do
          let a := mkIdent header.argNames[i]!
          ctorArgs := ctorArgs.push (← `(_))
          rhsArgs := rhsArgs.push <| ← mkArg xs[i]! a
        for i in *...ctorInfo.numFields do
          let a := mkIdent (← mkFreshUserName `a)
          ctorArgs := ctorArgs.push a
          rhsArgs := rhsArgs.push <| ← mkArg xs[ctorInfo.numParams + i]! a
        patterns := patterns.push (← `(@$(mkIdent ctorName):ident $ctorArgs:term*))
        let rhs : Term ← mkAppNTerm (← ``(Expr.const $(quote ctorInfo.name) [$levels,*])) rhsArgs
        `(matchAltExpr| | $[$patterns:term],* => $rhs)
      alts := alts.push alt
    return alts

/--
For nested and mutually recursive inductive types, we define `partial` instances,
and the strategy is to have local `ToExpr` instances in scope for the body of each instance.
This way, each instance can freely use `toExpr` and `toTypeExpr` for each of the types in `ctx`.

This is a modified copy of `Lean.Elab.Deriving.mkLocalInstanceLetDecls`,
since we need to include the `toTypeExpr` field in the `letDecl`
Note that, for simplicity, each instance gets its own definition of each others' `toTypeExpr` fields.
These are very simple fields, so avoiding the duplication is not worth it.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variantc3bc6d235b5a47b7563168e82b70842dfe8d1521da10ef0c3650f2643922c2df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variantc3bc6d235b5a47b7563168e82b70842dfe8d1521da10ef0c3650f2643922c2df.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d73d5cc2ef8bf693ed8883a0f765bef7c10b609` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
