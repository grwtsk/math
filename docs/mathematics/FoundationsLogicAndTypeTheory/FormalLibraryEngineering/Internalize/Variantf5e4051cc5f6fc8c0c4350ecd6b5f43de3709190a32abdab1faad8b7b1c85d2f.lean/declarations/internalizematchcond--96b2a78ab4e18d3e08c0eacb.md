# internalizeMatchCond

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5a9a05f186905de6dfd6ba746715b5a352e9a364a40a3e4f58a88883b775cfd8",
  "kind": "def",
  "lexical_name": "internalizeMatchCond",
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
  "slug": "internalizematchcond--96b2a78ab4e18d3e08c0eacb",
  "source": {
    "blob": "30785a5302abff1277a64edfeba73f2859bb7cb5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 217,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantf5e4051cc5f6fc8c0c4350ecd6b5f43de3709190a32abdab1faad8b7b1c85d2f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:96b2a78ab4e18d3e08c0eacb717247462615e63d2a8933082047fe60a8f75d75",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantf5e4051cc5f6fc8c0c4350ecd6b5f43de3709190a32abdab1faad8b7b1c85d2f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5a9a05f186905de6dfd6ba746715b5a352e9a364a40a3e4f58a88883b775cfd8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 217–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def internalizeMatchCond (matchCond : Expr) (generation : Nat) : GoalM Unit := do
  mkENode' matchCond generation (funCC := false)
  let (lhss, e') ← collectMatchCondLhssAndAbstract matchCond
  lhss.forM fun lhs => do internalize lhs generation; registerParent matchCond lhs
  propagateUp matchCond
  internalize e' generation
  trace_goal[grind.debug.matchCond.lambda] "(idx := {(← getENode e'.getAppFn).idx}) {e'.getAppFn}"
  trace_goal[grind.debug.matchCond.lambda] "auxiliary application{indentExpr e'}"
  pushEq matchCond e' (← mkEqRefl matchCond)
  internalizeSimpleMatchCondImp
where
  /--
  We say `MatchCond` is simple if its argument is an implication such as `x = 0 -> ...`
  If that is the case, we also internalize the implication to ensure grind can split on the antecedents.
  We added this extra case to make sure the user is not surprised by `grind` failing at
  ```
  example (x y : Nat)
      : 0 < match x, y with
            | 0, 0   => 1
            | _, _ => x + y := by -- x or y must be greater than 0
    grind
  ```
  We should try to find a better and more general approach for handling the example above.
  -/
  internalizeSimpleMatchCondImp : GoalM Unit := do
    let_expr Grind.MatchCond e := matchCond | return ()
    let .forallE _ d b _ := e | return ()
    if b.hasLooseBVars then return ()
    if (← isProp d) then
      internalize e generation
    pushEq matchCond e (← mkEqRefl matchCond)

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantf5e4051cc5f6fc8c0c4350ecd6b5f43de3709190a32abdab1faad8b7b1c85d2f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Internalize/Variantf5e4051cc5f6fc8c0c4350ecd6b5f43de3709190a32abdab1faad8b7b1c85d2f.lean#L217).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `30785a5302abff1277a64edfeba73f2859bb7cb5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
