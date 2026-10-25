# isSatisfied

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ed7366af5693963e1c904b803ddd3d74691442534fb73ecc6647799fad2164e9",
  "kind": "def",
  "lexical_name": "isSatisfied",
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
  "slug": "issatisfied--e0518ef2791b4e04132c24d6",
  "source": {
    "blob": "f747a7b07ad04a39d62959d53ab792797c8c4230",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 275,
    "line": 262,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant8f6a1724d863ff2759376901b77b5793afc5b4151e74c5876d10c42dbf708612.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e0518ef2791b4e04132c24d62b9605ea3ba85b48365363abc7f447df75a9d5dc",
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

Occurrence: `declaration:ed7366af5693963e1c904b803ddd3d74691442534fb73ecc6647799fad2164e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–275.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def isSatisfied (e : Expr) : GoalM Bool := do
  let_expr Grind.MatchCond e ← e | return false
  let mut e := e
  repeat
    let .forallE _ d b _ := e | break
    if (← isMatchCondFalseHyp d) then
      trace_goal[grind.debug.matchCond] "satifised{indentExpr e}\nthe following equality is false{indentExpr d}"
      return true
    e := b
  return false

-- TODO: we don't have support for offset equalities

/-- Constructs a proof for a satisfied `match`-expression condition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant8f6a1724d863ff2759376901b77b5793afc5b4151e74c5876d10c42dbf708612.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MatchCond/Variant8f6a1724d863ff2759376901b77b5793afc5b4151e74c5876d10c42dbf708612.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f747a7b07ad04a39d62959d53ab792797c8c4230` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
