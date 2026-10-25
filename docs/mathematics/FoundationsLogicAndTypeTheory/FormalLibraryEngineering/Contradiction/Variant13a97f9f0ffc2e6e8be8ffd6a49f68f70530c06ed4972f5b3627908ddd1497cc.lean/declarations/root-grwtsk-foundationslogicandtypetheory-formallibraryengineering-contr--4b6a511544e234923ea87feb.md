# _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ContradictionConfig.Variantf3a692210f565fccf9f83e27653b9ba4bd94dfc186fa1fae1104df9be9c57c6f.Lean.MVarId.contradictionCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b85d98d1d3c2d5f3ae1c2f2b34429c5797033d143c92a954484e86f565b91f03",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ContradictionConfig.Variantf3a692210f565fccf9f83e27653b9ba4bd94dfc186fa1fae1104df9be9c57c6f.Lean.MVarId.contradictionCore",
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
  "slug": "root-grwtsk-foundationslogicandtypetheory-formallibraryengineering-contr--4b6a511544e234923ea87feb",
  "source": {
    "blob": "db6543db78507c677c443e56d1aa8ff48922a74d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 166,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contradiction/Variant13a97f9f0ffc2e6e8be8ffd6a49f68f70530c06ed4972f5b3627908ddd1497cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4b6a511544e234923ea87feba5fbcc26505f2924722f5f953c3c767903d55533",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contradiction/Variant13a97f9f0ffc2e6e8be8ffd6a49f68f70530c06ed4972f5b3627908ddd1497cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b85d98d1d3c2d5f3ae1c2f2b34429c5797033d143c92a954484e86f565b91f03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 166–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ContradictionConfig.Variantf3a692210f565fccf9f83e27653b9ba4bd94dfc186fa1fae1104df9be9c57c6f.Lean.MVarId.contradictionCore (mvarId : MVarId) (config : Contradiction.Config) : MetaM Bool := do
  mvarId.withContext do
    mvarId.checkNotAssigned `contradiction
    if (← nestedFalseElim mvarId) then
      return true
    for localDecl in (← getLCtx) do
      unless localDecl.isImplementationDetail do
        -- (h : ¬ p) (h' : p)
        if let some p ← matchNot? localDecl.type then
          if let some pFVarId ← findLocalDeclWithType? p then
            -- We use `False.elim` because `p`'s type may be Type
            mvarId.assign (← mkFalseElim (← mvarId.getType) (mkApp localDecl.toExpr (mkFVar pFVarId)))
            return true
        -- (h : Nat.hasNotBit mask i) where that bit is set
        if let some prf ← refutableHasNotBit? localDecl.type then
          mvarId.assign (← mkAbsurd (← mvarId.getType) prf localDecl.toExpr)
          return true
        -- (h : x ≠ x)
        if let some (_, lhs, rhs) ← matchNe? localDecl.type then
          if (← isDefEq lhs rhs) then
            mvarId.assign (← mkAbsurd (←  mvarId.getType) (← mkEqRefl lhs) localDecl.toExpr)
            return true
        let mut isEq := false
        -- (h : ctor₁ ... = ctor₂ ...)
        if let some (_, lhs, rhs) ← matchEq? localDecl.type then
          isEq := true
          if let some lhsCtor ← matchConstructorApp? lhs then
          if let some rhsCtor ← matchConstructorApp? rhs then
          if lhsCtor.name != rhsCtor.name then
            mvarId.assign (← mkNoConfusion (← mvarId.getType) localDecl.toExpr)
            return true
        let mut isHEq := false
        -- (h : ctor₁ ... ≍ ctor₂ ...)
        if let some (α, lhs, β, rhs) ← matchHEq? localDecl.type then
          isHEq := true
          if let some lhsCtor ← matchConstructorApp? lhs then
          if let some rhsCtor ← matchConstructorApp? rhs then
          if lhsCtor.name != rhsCtor.name then
            if (← isDefEq α β) then
              mvarId.assign (← mkNoConfusion (← mvarId.getType) (← mkEqOfHEq localDecl.toExpr))
              return true
        -- (h : p) s.t. `decide p` evaluates to `false`
        if config.useDecide && !localDecl.type.hasFVar then
          let type ← instantiateMVars localDecl.type
          if !type.hasMVar && !type.hasFVar then
            try
              let d ← mkDecide localDecl.type
              let r ← withDefault <| whnf d
              if r.isConstOf ``false then
                let hn := mkAppN (mkConst ``of_decide_eq_false) <| d.getAppArgs.push (← mkEqRefl d)
                mvarId.assign (← mkAbsurd (← mvarId.getType) localDecl.toExpr hn)
                return true
            catch _ =>
              pure ()
        -- "generalized" diseq
        if config.genDiseq && isGenDiseq localDecl.type then
          if (← processGenDiseq mvarId localDecl) then
            return true
        -- (h : <empty-inductive-type>)
        if config.emptyType && !isEq && !isHEq then
          -- We do not use `elimEmptyInductive` for equality, since `cases h` produces a huge proof
          -- when `(h : 10000 = 10001)`. TODO: `cases` add a threshold at `cases`
          if (← elimEmptyInductive mvarId localDecl.fvarId config.searchFuel) then
            return true
    return false

/--
Try to close the goal using "contradictions" such as
- Contradictory hypotheses `h₁ : p` and `h₂ : ¬ p`.
- Contradictory disequality `h : x ≠ x`.
- Contradictory bit mask test: `h : Nat.hasNotBit mask i` where that bit is set
- Contradictory equality between different constructors, e.g., `h : List.nil = List.cons x xs`.
- Empty inductive types, e.g., `x : Fin 0`.
- Decidable propositions that evaluate to false, i.e., a hypothesis `h : p` s.t. `decide p` reduces to `false`.
  This is only tried if `Config.useDecide = true`.

Throw exception if goal failed to be closed.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contradiction/Variant13a97f9f0ffc2e6e8be8ffd6a49f68f70530c06ed4972f5b3627908ddd1497cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Contradiction/Variant13a97f9f0ffc2e6e8be8ffd6a49f68f70530c06ed4972f5b3627908ddd1497cc.lean#L166).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db6543db78507c677c443e56d1aa8ff48922a74d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
