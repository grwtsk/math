# mkRemainingProjections

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b060b384e700851467f25bfeb7df46e3a833b78b05ab9b52561671326afe4cd2",
  "kind": "def",
  "lexical_name": "mkRemainingProjections",
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
  "slug": "mkremainingprojections--619369bd08e4034d643f5a53",
  "source": {
    "blob": "d4e9e482af56c000ec44903583603375e1941536",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1499,
    "line": 1455,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant638ad9ddb1add1399eae43a3fb5091fd8daa01aef9075840d678725a1d078b9b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:619369bd08e4034d643f5a5377e6bf85e3689449cfc4e24cc23b052ecaa86dff",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant638ad9ddb1add1399eae43a3fb5091fd8daa01aef9075840d678725a1d078b9b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b060b384e700851467f25bfeb7df46e3a833b78b05ab9b52561671326afe4cd2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1455–1499.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def mkRemainingProjections (levelParams : List Name) (params : Array Expr) (view : StructView) : StructElabM (Array StructureParentInfo) := do
  let us := levelParams.map mkLevelParam
  let structType := mkAppN (Lean.mkConst view.declName us) params
  withLocalDeclD `self structType fun source => do
    /-
    Remark: copied parents might still be referring to the fvars of other parents. We need to replace these fvars with projection constants.
    For subobject parents, this has already been done by `mkProjections`.
    https://github.com/leanprover/lean4/issues/2611
    -/
    let mut fvarToConst : ExprMap Expr := {}
    -- First add all constructor projections to `fvarToConst`
    for field in (← get).fields do
      if field.kind.isInCtor then
        fvarToConst := fvarToConst.insert field.fvar <| mkApp (mkAppN (.const field.declName us) params) source
    -- Then add remaining fields to `fvarToConst`
    for field in (← get).fields do
      if !field.kind.isInCtor then
        if let some val ← pure field.projExpr? <||> field.fvar.fvarId!.getValue? then
          let val ← instantiateMVars val
          let val := val.replace (fvarToConst[·]?)
          -- No need to zeta delta reduce; `fvarToConst` has replaced such fvars.
          let val ← fieldNormalizeExpr val (zetaDelta := false)
          fvarToConst := fvarToConst.insert field.fvar val
          -- TODO(kmill): if it is a direct parent, try adding the coercion function from the environment and use that instead of `val`.
          -- (This should be evaluated to see if it is a good idea.)
        else
          throwError m!"Internal error in mkRemainingProjections: `{field.name}` has no value"

    let mut parentInfos := #[]
    for parent in (← get).parents do
      if parent.subobject then
        let some info ← findParentFieldInfo? parent.structName | unreachable!
        parentInfos := parentInfos.push { structName := parent.structName, subobject := true, projFn := info.declName }
      else
        let parent_type := (← instantiateMVars (← inferType parent.fvar)).replace (fvarToConst[·]?)
        let parent_type ← fieldNormalizeExpr parent_type (zetaDelta := false)
        let parent_value := fvarToConst[parent.fvar]!
        let parentInfo ← mkCoercionToCopiedParent levelParams params view source parent parent_type parent_value
        parentInfos := parentInfos.push parentInfo
    return parentInfos

/--
Precomputes the structure's resolution order.
Option `structure.strictResolutionOrder` controls whether to create a warning if the C3 algorithm failed.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant638ad9ddb1add1399eae43a3fb5091fd8daa01aef9075840d678725a1d078b9b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant638ad9ddb1add1399eae43a3fb5091fd8daa01aef9075840d678725a1d078b9b.lean#L1455).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4e9e482af56c000ec44903583603375e1941536` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
