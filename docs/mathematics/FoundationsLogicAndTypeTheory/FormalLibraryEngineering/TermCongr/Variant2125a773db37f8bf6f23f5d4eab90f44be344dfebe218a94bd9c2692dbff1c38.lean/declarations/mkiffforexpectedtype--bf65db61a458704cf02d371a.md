# mkIffForExpectedType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cb250b7d590e896094c534bd29879ff5d03653881eb656b248fc04a82bcf8073",
  "kind": "def",
  "lexical_name": "mkIffForExpectedType",
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
  "slug": "mkiffforexpectedtype--bf65db61a458704cf02d371a",
  "source": {
    "blob": "48c2c2ac2291f3db25e5541b52945c4d78ce245d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 230,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant2125a773db37f8bf6f23f5d4eab90f44be344dfebe218a94bd9c2692dbff1c38.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bf65db61a458704cf02d371a562e01fdf4ed7a93994b2709a6e2d2085dec8a6b",
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

Occurrence: `declaration:cb250b7d590e896094c534bd29879ff5d03653881eb656b248fc04a82bcf8073`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 230–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkIffForExpectedType (expectedType? : Option Expr) : MetaM Expr := do
  let a ← mkFreshExprMVar (Expr.sort .zero)
  let b ← mkFreshExprMVar (Expr.sort .zero)
  let iff := mkApp2 (Expr.const `Iff []) a b
  if let some expectedType := expectedType? then
    unless ← isDefEq expectedType iff do
      throwError m!"Type{indentD expectedType}\nis expected to be an `Iff`."
  return iff

/-- Make sure that the expected type of `pf` is an iff by unification. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant2125a773db37f8bf6f23f5d4eab90f44be344dfebe218a94bd9c2692dbff1c38.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermCongr/Variant2125a773db37f8bf6f23f5d4eab90f44be344dfebe218a94bd9c2692dbff1c38.lean#L230).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48c2c2ac2291f3db25e5541b52945c4d78ce245d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
