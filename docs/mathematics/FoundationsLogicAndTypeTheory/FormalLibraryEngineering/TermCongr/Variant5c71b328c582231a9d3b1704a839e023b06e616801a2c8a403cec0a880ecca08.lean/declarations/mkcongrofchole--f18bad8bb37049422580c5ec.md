# mkCongrOfCHole?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:79b2c438d0dd61bea234623dd9379e58f2496f677899e38c9381c8f6fa0290e5",
  "kind": "def",
  "lexical_name": "mkCongrOfCHole?",
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
  "slug": "mkcongrofchole--f18bad8bb37049422580c5ec",
  "source": {
    "blob": "5b3eb42aca3843e4bdf648ca4813ef2f45423496",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 532,
    "line": 503,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant5c71b328c582231a9d3b1704a839e023b06e616801a2c8a403cec0a880ecca08.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f18bad8bb37049422580c5ec33b6aae4932aa65b2fbbcb0a28ae174d9a3c5d84",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant5c71b328c582231a9d3b1704a839e023b06e616801a2c8a403cec0a880ecca08.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:79b2c438d0dd61bea234623dd9379e58f2496f677899e38c9381c8f6fa0290e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 503–532.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkCongrOfCHole? (mvarCounterSaved : Nat) (lhs rhs : Expr) : MetaM (Option CongrResult) := do
  match cHole? lhs mvarCounterSaved, cHole? rhs mvarCounterSaved with
  | some (isLhs1, val1, pf1), some (isLhs2, val2, pf2) =>
    trace[Elab.congr] "mkCongrOfCHole, both holes"
    unless isLhs1 == true do
      throwCongrEx lhs rhs "A RHS congruence hole leaked into the LHS"
    unless isLhs2 == false do
      throwCongrEx lhs rhs "A LHS congruence hole leaked into the RHS"
    -- Defeq checks to unify the lhs and rhs congruence holes.
    unless ← isDefEq (← inferType pf1) (← inferType pf2) do
      throwCongrEx lhs rhs "Elaborated types of congruence holes are not defeq."
    if let some (_, lhsVal, _, rhsVal) ← sides? (← inferType pf1) then
      unless ← isDefEq val1 lhsVal do
        throwError "Left-hand side of congruence hole is{indentD lhsVal}\n{""
          }but is expected to be{indentD val1}"
      unless ← isDefEq val2 rhsVal do
        throwError "Right-hand side of congruence hole is{indentD rhsVal}\n{""
          }but is expected to be{indentD val2}"
    return some <| CongrResult.mk' val1 val2 pf1
  | some .., none =>
    throwCongrEx lhs rhs "Right-hand side lost its congruence hole annotation."
  | none, some .. =>
    throwCongrEx lhs rhs "Left-hand side lost its congruence hole annotation."
  | none, none => return none

/-- Walks along both `lhs` and `rhs` simultaneously to create a congruence lemma between them.

Where they are desynchronized, we fall back to the base case (using `CongrResult.mkDefault'`)
since it's likely due to unification with the expected type,
from `_` placeholders or implicit arguments being filled in. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant5c71b328c582231a9d3b1704a839e023b06e616801a2c8a403cec0a880ecca08.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant5c71b328c582231a9d3b1704a839e023b06e616801a2c8a403cec0a880ecca08.lean#L503).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b3eb42aca3843e4bdf648ca4813ef2f45423496` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
