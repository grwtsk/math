# mkHEqForExpectedType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:515e7c7efece20cd0be6e6bc46574dea5bb53a9bd755fcc45d442160e1f299ef",
  "kind": "def",
  "lexical_name": "mkHEqForExpectedType",
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
  "slug": "mkheqforexpectedtype--6a373806eeb4a3671623b4cf",
  "source": {
    "blob": "c6ed0521e7097a3aade6fa0ef779b2d8b50e38e5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 287,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant74404cfc5e7fda86459c76ab29da7d736f9bdb9b55d8e401eb636bf02e775398.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6a373806eeb4a3671623b4cf36c3e12cc8374b84039a1205e45db32044137f61",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant74404cfc5e7fda86459c76ab29da7d736f9bdb9b55d8e401eb636bf02e775398.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:515e7c7efece20cd0be6e6bc46574dea5bb53a9bd755fcc45d442160e1f299ef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkHEqForExpectedType (expectedType? : Option Expr) : MetaM Expr := do
  let u ← mkFreshLevelMVar
  let tya ← mkFreshExprMVar (mkSort u)
  let tyb ← mkFreshExprMVar (mkSort u)
  let heq := mkApp4 (mkConst ``HEq [u]) tya (← mkFreshExprMVar tya) tyb (← mkFreshExprMVar tyb)
  if let some expectedType := expectedType? then
    unless ← isDefEq expectedType heq do
      throwError m!"Type{indentD expectedType}\nis expected to be a `HEq`."
  return heq

/-- Ensures the expected type is an iff. Returns the iff.
This expression satisfies `Lean.Expr.iff?`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant74404cfc5e7fda86459c76ab29da7d736f9bdb9b55d8e401eb636bf02e775398.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant74404cfc5e7fda86459c76ab29da7d736f9bdb9b55d8e401eb636bf02e775398.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c6ed0521e7097a3aade6fa0ef779b2d8b50e38e5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
