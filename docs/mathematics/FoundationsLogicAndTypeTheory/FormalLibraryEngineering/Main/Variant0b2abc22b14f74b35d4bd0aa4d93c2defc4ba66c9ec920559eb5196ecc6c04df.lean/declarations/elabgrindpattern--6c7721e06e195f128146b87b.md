# elabGrindPattern

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2ddfda8b970d81fa317eec1f0cd7aedcda01205a64f2073b7ee4203c753b37d1",
  "kind": "def",
  "lexical_name": "elabGrindPattern",
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
  "slug": "elabgrindpattern--6c7721e06e195f128146b87b",
  "source": {
    "blob": "93798e57a87dfaf7967adb2e3d16f3091a812a55",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 32,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0b2abc22b14f74b35d4bd0aa4d93c2defc4ba66c9ec920559eb5196ecc6c04df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6c7721e06e195f128146b87bd09cc1696e8b3bfea602a492392b34341df0f639",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0b2abc22b14f74b35d4bd0aa4d93c2defc4ba66c9ec920559eb5196ecc6c04df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2ddfda8b970d81fa317eec1f0cd7aedcda01205a64f2073b7ee4203c753b37d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabGrindPattern : CommandElab := fun stx => do
  match stx with
  | `(grind_pattern $[[ $attr?:ident ]]? $thmName:ident => $terms,* $[$cnstrs?:grindPatternCnstrs]?) => go attr? thmName terms cnstrs? .global
  | `(scoped grind_pattern $[[ $attr?:ident ]]? $thmName:ident => $terms,* $[$cnstrs?:grindPatternCnstrs]?) => go attr? thmName terms cnstrs? .scoped
  | `(local grind_pattern $[[ $attr?:ident ]]? $thmName:ident => $terms,* $[$cnstrs?:grindPatternCnstrs]?) => go attr? thmName terms cnstrs? .local
  | _ => throwUnsupportedSyntax
where
  findLHS (xs : Array Expr) (lhs : Syntax) : TermElabM (LocalDecl × Nat) := do
    let lhsId := lhs.getId
    let mut i := 0
    for x in xs do
      let xDecl ← x.fvarId!.getDecl
      if xDecl.userName == lhsId then
        return (xDecl, xs.size - i - 1)
      i := i + 1
    throwErrorAt lhs "invalid constraint, `{lhsId}` is not local variable of the theorem"

  elabCnstrRHS (xs : Array Expr) (rhs : Syntax) (expectedType : Expr) : TermElabM Grind.CnstrRHS := do
    /-
    **Note**: We need better sanity checking here.
    We must check whether the type of `rhs` is type correct with respect to
    an arbitrary instantiation of `xs`. That is, we should use meta-variables
    in the check. It is incorrect to use `xDecl.type`. For example, suppose the
    type of `xDecl` is `α → β` where `α` and `β` are variables in `xs` occurring before
    `xDecl`, and `rhsExpr` is `some : ?m → ?m`. The types `α → β =?= ?m → ?m` are
    not definitionally equal, but `?α → ?β =?= ?m → ?m` are.
    -/
    let rhsExpr ← Term.elabTerm rhs expectedType
    Term.synthesizeSyntheticMVars (postpone := .no) (ignoreStuckTC := true)
    let rhsExpr ← instantiateMVars rhsExpr
    if rhsExpr.hasSyntheticSorry then
      throwErrorAt rhs "invalid constraint, rhs contains a synthetic `sorry`"
    let rhsExpr := rhsExpr.eta
    let { paramNames := levelNames, mvars, expr := rhs } ← abstractMVars rhsExpr
    let numMVars := mvars.size
    let rhs := rhs.abstract xs
    return { levelNames, numMVars, expr := rhs }

  elabProp (xs : Array Expr) (term : Syntax) : TermElabM Expr := do
    let e ← Term.elabTermAndSynthesize term (Expr.sort 0)
    let e ← instantiateMVars e
    if e.hasSyntheticSorry then
      throwErrorAt term "invalid proposition, it contains a synthetic `sorry`"
    if e.hasMVar then
      throwErrorAt term "invalid proposition, it contains metavariables{indentExpr e}"
    return e.abstract xs

  elabNotDefEq (xs : Array Expr) (lhs rhs : Syntax) : TermElabM Grind.EMatchTheoremConstraint := do
    let (localDecl, lhsBVarIdx) ← findLHS xs lhs
    let rhs ← elabCnstrRHS xs rhs localDecl.type
    return .notDefEq lhsBVarIdx rhs

  elabDefEq (xs : Array Expr) (lhs rhs : Syntax) : TermElabM Grind.EMatchTheoremConstraint := do
    let (localDecl, lhsBVarIdx) ← findLHS xs lhs
    let rhs ← elabCnstrRHS xs rhs localDecl.type
    return .defEq lhsBVarIdx rhs

  elabCnstrs (xs : Array Expr) (cnstrs? : Option (TSyntax ``Parser.Command.grindPatternCnstrs))
      : TermElabM (List (Grind.EMatchTheoremConstraint)) := do
    let some cnstrs := cnstrs? | return []
    let cnstrs := cnstrs.raw[1].getArgs
    cnstrs.toList.mapM fun cnstr => do
      let kind := cnstr.getKind
      if kind == ``notDefEq then
        elabNotDefEq xs cnstr[0] cnstr[2]
      else if kind == ``defEq then
        elabDefEq xs cnstr[0] cnstr[2]
      else if kind == ``genLt then
        return .genLt cnstr[2].toNat
      else if kind == ``sizeLt then
        let (_, lhs) ← findLHS xs cnstr[1]
        return .sizeLt lhs cnstr[3].toNat
      else if kind == ``depthLt then
        let (_, lhs) ← findLHS xs cnstr[1]
        return .depthLt lhs cnstr[3].toNat
      else if kind == ``maxInsts then
        return .maxInsts cnstr[2].toNat
      else if kind == ``isValue then
        let (_, lhs) ← findLHS xs cnstr[1]
        return .isValue lhs false
      else if kind == ``isStrictValue then
        let (_, lhs) ← findLHS xs cnstr[1]
        return .isValue lhs true
      else if kind == ``notValue then
        let (_, lhs) ← findLHS xs cnstr[1]
        return .notValue lhs false
      else if kind == ``notStrictValue then
        let (_, lhs) ← findLHS xs cnstr[1]
        return .notValue lhs true
      else if kind == ``isGround then
        let (_, lhs) ← findLHS xs cnstr[1]
        return .isGround lhs
      else if kind == ``Parser.Command.GrindCnstr.check then
        return .check (← elabProp xs cnstr[1])
      else if kind == ``Parser.Command.GrindCnstr.guard then
        return .guard (← elabProp xs cnstr[1])
      else
        throwErrorAt cnstr "unexpected constraint"

  go (attrName? : Option (TSyntax `ident)) (thmName : TSyntax `ident) (terms : Syntax.TSepArray `term ",")
      (cnstrs? : Option (TSyntax ``Parser.Command.grindPatternCnstrs))
      (kind : AttributeKind) : CommandElabM Unit := liftTermElabM do
    let attrName := if let some attrName := attrName? then attrName.getId else `grind
    let some ext ← Grind.getExtension? attrName | throwError "unknown `grind` attribute `{attrName}`"
    let declName ← realizeGlobalConstNoOverloadWithInfo thmName
    let info ← getConstVal declName
    forallTelescope info.type fun xs _ => do
      let patterns ← terms.getElems.mapM fun term => do
        let pattern ← Term.elabTerm term none
        synthesizeSyntheticMVarsUsingDefault
        let pattern ← instantiateMVars pattern
        let pattern ← Grind.preprocessPattern pattern
        return pattern.abstract xs
      let cnstrs ← elabCnstrs xs cnstrs?
      ext.addEMatchTheorem declName xs.size patterns.toList .user kind cnstrs (minIndexable := false)

open Command in
@[builtin_command_elab Lean.Parser.resetGrindAttrs]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0b2abc22b14f74b35d4bd0aa4d93c2defc4ba66c9ec920559eb5196ecc6c04df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variant0b2abc22b14f74b35d4bd0aa4d93c2defc4ba66c9ec920559eb5196ecc6c04df.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93798e57a87dfaf7967adb2e3d16f3091a812a55` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
