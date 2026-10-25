# withEqLhsRhs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cdbc51e9c00c8b90106333b3120c4b45c123b99b9ccf50c61cefc268e5ac6c17",
  "kind": "def",
  "lexical_name": "withEqLhsRhs",
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
  "slug": "witheqlhsrhs--0d7c530287fdb5c723d287b5",
  "source": {
    "blob": "bcf1cd5420f3834e9813fe62d965bf7ba6c70451",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 45,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqAttrib/Variant3c8db7227c2353bf1766ebfe2d164ae85600cd608b91a07232b0225a4a0095e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0d7c530287fdb5c723d287b5e01ceb00f58a08952afaa73af10d834f5b6a91ae",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqAttrib/Variant3c8db7227c2353bf1766ebfe2d164ae85600cd608b91a07232b0225a4a0095e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cdbc51e9c00c8b90106333b3120c4b45c123b99b9ccf50c61cefc268e5ac6c17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def withEqLhsRhs (type : Expr) (k : Expr → Expr → MetaM α) : MetaM α := do
  withTransparency .all do -- we want to look through defs in `info.type` all the way to `Eq`
    forallTelescopeReducing type fun _ type => do
      let type ← whnf type
      -- NB: The warning wording should work both for explicit uses of `@[defeq]` as well as the implicit `:= rfl`.
      let some (_, lhs, rhs) := type.eq? |
        throwError m!"Not a definitional equality: the conclusion should be an equality, but is{inlineExpr type}"
      k lhs rhs

/--
Validates that `declName` is a definitional equality at `.default`/`.all` transparency
(the legacy permissive check). Throws a diagnostic error if not. This is used both as
the validator for the `@[defeq]` and `@[backward_defeq]` attributes and as a building
block for `inferDefEqAttr`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqAttrib/Variant3c8db7227c2353bf1766ebfe2d164ae85600cd608b91a07232b0225a4a0095e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DefEqAttrib/Variant3c8db7227c2353bf1766ebfe2d164ae85600cd608b91a07232b0225a4a0095e5.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcf1cd5420f3834e9813fe62d965bf7ba6c70451` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
