# elabCHole

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d52487d440f6302a2c197c9e41e9eb8d09e3673d7fed8826e0508b002a1d9c02",
  "kind": "def",
  "lexical_name": "elabCHole",
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
  "slug": "elabchole--a4132f65a3a63ef4fd54e3d6",
  "source": {
    "blob": "0623f8b1fc5d36eb06aa5771519f24d226b99e21",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 163,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Varianta91e44df2ebe9455dd5c526cce1556239157992f89bea61f045f2705e81f9a3f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a4132f65a3a63ef4fd54e3d6ccd91f445ca68377dad4fc299fa655dd286f994f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Varianta91e44df2ebe9455dd5c526cce1556239157992f89bea61f045f2705e81f9a3f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d52487d440f6302a2c197c9e41e9eb8d09e3673d7fed8826e0508b002a1d9c02`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 163–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def elabCHole (h : Syntax) (forLhs : Bool) (expectedType? : Option Expr) : Term.TermElabM Expr := do
  let pf ← Term.elabTerm h none
  let pfTy ← inferType pf
  -- Ensure that `pfTy` is a proposition
  unless ← isDefEq (← inferType pfTy) (.sort .zero) do
    throwError "Hole has type{indentD pfTy}\nbut is expected to be a Prop"
  if let some (_, lhs, _, rhs) := (← whnf pfTy).sides? then
    let val := if forLhs then lhs else rhs
    if let some expectedType := expectedType? then
      -- Propagate type hint:
      discard <| isDefEq expectedType (← inferType val)
    mkCHole forLhs val pf
  else
    -- Since `pf` doesn't yet have sides, we resort to the value and the proof being decoupled.
    -- These will be unified during congruence generation.
    mkCHole forLhs (← mkFreshExprMVar expectedType?) pf

/-- (Internal for `congr(...)`)
Elaborates to an expression satisfying `cHole?` that equals the LHS or RHS of `h`,
if the LHS or RHS is available after elaborating `h`. Uses the expected type as a hint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Varianta91e44df2ebe9455dd5c526cce1556239157992f89bea61f045f2705e81f9a3f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Varianta91e44df2ebe9455dd5c526cce1556239157992f89bea61f045f2705e81f9a3f.lean#L163).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0623f8b1fc5d36eb06aa5771519f24d226b99e21` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
