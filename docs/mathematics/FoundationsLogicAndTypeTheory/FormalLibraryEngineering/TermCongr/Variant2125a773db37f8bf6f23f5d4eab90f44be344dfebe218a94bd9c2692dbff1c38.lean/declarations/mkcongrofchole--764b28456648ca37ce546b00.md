# mkCongrOfCHole?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1e874d2dd82e989654b5089244fd75fc710bf0da052be71e22b97be6fab14e78",
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
  "slug": "mkcongrofchole--764b28456648ca37ce546b00",
  "source": {
    "blob": "48c2c2ac2291f3db25e5541b52945c4d78ce245d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 455,
    "line": 426,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant2125a773db37f8bf6f23f5d4eab90f44be344dfebe218a94bd9c2692dbff1c38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:764b28456648ca37ce546b00a6603ee711eea21375ec82a76d98be2937e73194",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant2125a773db37f8bf6f23f5d4eab90f44be344dfebe218a94bd9c2692dbff1c38.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1e874d2dd82e989654b5089244fd75fc710bf0da052be71e22b97be6fab14e78`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 426–455.

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
    if let some (_, lhsVal, _, rhsVal) := (← whnf <| ← inferType pf1).sides? then
      unless ← isDefEq val1 lhsVal do
        throwError "Left-hand side of congruence hole is{indentD lhsVal}\n\
          but is expected to be{indentD val1}"
      unless ← isDefEq val2 rhsVal do
        throwError "Right-hand side of congruence hole is{indentD rhsVal}\n\
          but is expected to be{indentD val2}"
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

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant2125a773db37f8bf6f23f5d4eab90f44be344dfebe218a94bd9c2692dbff1c38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant2125a773db37f8bf6f23f5d4eab90f44be344dfebe218a94bd9c2692dbff1c38.lean#L426).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48c2c2ac2291f3db25e5541b52945c4d78ce245d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
