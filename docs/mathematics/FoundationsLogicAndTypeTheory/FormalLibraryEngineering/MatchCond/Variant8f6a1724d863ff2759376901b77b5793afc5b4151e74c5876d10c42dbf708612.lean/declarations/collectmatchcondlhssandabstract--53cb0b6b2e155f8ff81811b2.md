# collectMatchCondLhssAndAbstract

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7bed99505d30c46cd05acd46ee030666440fd323ef82376bf1fe90cbdcadb13a",
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
  "slug": "collectmatchcondlhssandabstract--53cb0b6b2e155f8ff81811b2",
  "source": {
    "blob": "f747a7b07ad04a39d62959d53ab792797c8c4230",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 177,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant8f6a1724d863ff2759376901b77b5793afc5b4151e74c5876d10c42dbf708612.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:53cb0b6b2e155f8ff81811b2882fa9876bc36d4ba54654bb06fd58cf30899ab2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant8f6a1724d863ff2759376901b77b5793afc5b4151e74c5876d10c42dbf708612.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7bed99505d30c46cd05acd46ee030666440fd323ef82376bf1fe90cbdcadb13a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–209.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant8f6a1724d863ff2759376901b77b5793afc5b4151e74c5876d10c42dbf708612.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant8f6a1724d863ff2759376901b77b5793afc5b4151e74c5876d10c42dbf708612.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f747a7b07ad04a39d62959d53ab792797c8c4230` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
