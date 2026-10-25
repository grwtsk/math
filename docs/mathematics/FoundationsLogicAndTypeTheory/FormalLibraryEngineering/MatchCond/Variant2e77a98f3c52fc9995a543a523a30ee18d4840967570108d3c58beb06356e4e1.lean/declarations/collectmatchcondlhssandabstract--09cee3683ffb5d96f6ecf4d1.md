# collectMatchCondLhssAndAbstract

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5412ae7d4ec01ad0d1acbcbf01d5f52c7d2b4b5726fbe04c52895831a54af58a",
  "kind": "def",
  "lexical_name": "collectMatchCondLhssAndAbstract",
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
  "slug": "collectmatchcondlhssandabstract--09cee3683ffb5d96f6ecf4d1",
  "source": {
    "blob": "2f1dee0c977f65769276c38be385990525ad6f92",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 201,
    "line": 169,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant2e77a98f3c52fc9995a543a523a30ee18d4840967570108d3c58beb06356e4e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:09cee3683ffb5d96f6ecf4d1c23e999face478e2c51ce23bdf53ce813d3a093d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant2e77a98f3c52fc9995a543a523a30ee18d4840967570108d3c58beb06356e4e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5412ae7d4ec01ad0d1acbcbf01d5f52c7d2b4b5726fbe04c52895831a54af58a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–201.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def collectMatchCondLhssAndAbstract (matchCond : Expr) : GoalM (Array Expr × Expr) := do
  let_expr Grind.MatchCond e := matchCond | return (#[], matchCond)
  let lhssαs := collectMatchCondLhss e
  let rec go (i : Nat) (xs : Array Expr) (tys : Array (Option Expr)) (tysxs : Array Expr) (args : Array Expr) : GoalM (Array Expr × Expr) := do
    if h : i < lhssαs.size then
      let (lhs, α?) := lhssαs[i]
      if let some α := α? then
        withLocalDeclD ((`ty).appendIndexAfter i) (← inferType α) fun ty =>
        withLocalDeclD ((`x).appendIndexAfter i) ty fun x =>
          go (i+1) (xs.push x) (tys.push ty) (tysxs.push ty |>.push x) (args.push α |>.push lhs)
      else
        withLocalDeclD ((`x).appendIndexAfter i) (← inferType lhs) fun x =>
          go (i+1) (xs.push x) (tys.push none) (tysxs.push x) (args.push lhs)
    else
      let rec replaceLhss (e : Expr) (i : Nat) : Expr := Id.run do
        let .forallE _ d b _ := e | return e
        if h : i < xs.size then
          if let some dNew := replaceLhs? d xs[i] tys[i]! then
            return e.updateForallE! dNew (replaceLhss b (i+1))
          else
            return e.updateForallE! d (replaceLhss b i)
        else
          return e
      let eAbst := replaceLhss e 0
      let eLam  ← mkLambdaFVars tysxs eAbst
      let e' := mkAppN eLam args
      return (args, ← shareCommon e')
  go 0 #[] #[] #[] #[]

/--
Helper function for `isSatisfied`.
See `isSatisfied`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant2e77a98f3c52fc9995a543a523a30ee18d4840967570108d3c58beb06356e4e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant2e77a98f3c52fc9995a543a523a30ee18d4840967570108d3c58beb06356e4e1.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f1dee0c977f65769276c38be385990525ad6f92` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
