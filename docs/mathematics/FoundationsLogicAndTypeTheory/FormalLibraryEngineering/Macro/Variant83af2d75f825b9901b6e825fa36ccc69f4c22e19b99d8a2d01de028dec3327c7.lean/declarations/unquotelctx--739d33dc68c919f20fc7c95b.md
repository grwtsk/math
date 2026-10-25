# unquoteLCtx

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8df94b78b3fb85f4203b63318f36ba481417fb1716a8cc7170e04f025d49c4eb",
  "kind": "def",
  "lexical_name": "unquoteLCtx",
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
  "slug": "unquotelctx--739d33dc68c919f20fc7c95b",
  "source": {
    "blob": "80dd26726f6355f44af9535c64e12a255ff5f39e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 355,
    "line": 315,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Macro/Variant83af2d75f825b9901b6e825fa36ccc69f4c22e19b99d8a2d01de028dec3327c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:739d33dc68c919f20fc7c95bebc5635d560ebfdbb09ef06ec5e327864214192c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Macro/Variant83af2d75f825b9901b6e825fa36ccc69f4c22e19b99d8a2d01de028dec3327c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8df94b78b3fb85f4203b63318f36ba481417fb1716a8cc7170e04f025d49c4eb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
meta def unquoteLCtx : UnquoteM Unit := do
  unquoteLevelLCtx
  for ldecl in (← getLCtx) do
    let fv := ldecl.toExpr
    let ty := ldecl.type
    let whnfTy ← withReducible <| whnf ty
    if whnfTy.isAppOfArity ``QuotedLevelDefEq 2 || whnfTy.isAppOfArity ``Level 0 then
      pure () -- see above
    if whnfTy.isAppOfArity ``Quoted 1 then
      let qTy := whnfTy.appArg!
      let newTy ← unquoteExpr qTy
      modify fun s => { s with
        unquoted := s.unquoted.mkLocalDecl
          ldecl.fvarId (addDollar ldecl.userName) newTy ldecl.binderInfo ldecl.kind
        exprBackSubst := s.exprBackSubst.insert fv (.quoted fv)
        exprSubst := s.exprSubst.insert fv fv
      }
    else if whnfTy.isAppOfArity ``QuotedDefEq 4 then
      let tyLevel ← unquoteLevel (whnfTy.getArg! 0)
      let ty ← unquoteExpr (whnfTy.getArg! 1)
      let lhs ← unquoteExpr (whnfTy.getArg! 2)
      let rhs ← unquoteExpr (whnfTy.getArg! 3)
      let eqTy := mkApp3 (.const ``Eq [tyLevel]) ty lhs rhs
      let unquoted := (← get).unquoted
      let unquoted := unquoted.mkLocalDecl
        ldecl.fvarId (addDollar ldecl.userName) eqTy ldecl.binderInfo ldecl.kind
      let unquoted := (← withUnquotedLCtx do makeDefEq lhs rhs).getD unquoted
      modify fun s => { s with
        unquoted
        exprBackSubst := s.exprBackSubst.insert fv (.unquoted (mkApp2 (.const ``Eq.refl [tyLevel]) ty lhs))
        -- exprSubst := s.exprSubst.insert fv fv
      }
    else
      let .succ u ← getLevel ty | pure ()
      let LOption.some inst ← trySynthInstance (mkApp (.const ``ToExpr [u]) ty) | pure ()
      modify fun s => { s with
        unquoted := s.unquoted.addDecl (ldecl.setUserName (addDollar ldecl.userName))
        exprBackSubst := s.exprBackSubst.insert fv (.quoted (mkApp3 (.const ``toExpr [u]) ty inst fv))
        exprSubst := s.exprSubst.insert fv fv
      }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Macro/Variant83af2d75f825b9901b6e825fa36ccc69f4c22e19b99d8a2d01de028dec3327c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Macro/Variant83af2d75f825b9901b6e825fa36ccc69f4c22e19b99d8a2d01de028dec3327c7.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80dd26726f6355f44af9535c64e12a255ff5f39e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
