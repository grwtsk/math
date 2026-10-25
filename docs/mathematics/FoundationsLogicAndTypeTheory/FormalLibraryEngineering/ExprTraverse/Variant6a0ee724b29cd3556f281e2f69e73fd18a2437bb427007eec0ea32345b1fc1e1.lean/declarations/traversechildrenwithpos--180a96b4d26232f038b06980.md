# traverseChildrenWithPos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a79ff4d9b3998cec39bd62102cda4fa6d3094206e4aaee3ff2c0d9f9fd35aa92",
  "kind": "def",
  "lexical_name": "traverseChildrenWithPos",
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
  "slug": "traversechildrenwithpos--180a96b4d26232f038b06980",
  "source": {
    "blob": "7426c2675a3279111a5d5125dacfe6e42b0e7795",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 65,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprTraverse/Variant6a0ee724b29cd3556f281e2f69e73fd18a2437bb427007eec0ea32345b1fc1e1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:180a96b4d26232f038b069804da7c27a11a26beeeebea820dd6588652fe60b2d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprTraverse/Variant6a0ee724b29cd3556f281e2f69e73fd18a2437bb427007eec0ea32345b1fc1e1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a79ff4d9b3998cec39bd62102cda4fa6d3094206e4aaee3ff2c0d9f9fd35aa92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def traverseChildrenWithPos (visit : Pos → Expr → M Expr) (p : Pos) (e: Expr) : M Expr :=
  match e with
  | Expr.forallE ..    => traverseForallWithPos   visit p e
  | Expr.lam ..        => traverseLambdaWithPos   visit p e
  | Expr.letE ..       => traverseLetWithPos      visit p e
  | Expr.app ..        => Expr.traverseAppWithPos visit p e
  | Expr.mdata _ b     => e.updateMData! <$> visit p b
  | Expr.proj _ _ b    => e.updateProj! <$> visit p.pushProj b
  | _                  => pure e

/-- Given an expression `fun (x₁ : α₁) ... (xₙ : αₙ) => b`, will run
`f` on each of the variable types `αᵢ` and `b` with the correct MetaM context,
replacing each expression with the output of `f` and creating a new lambda.
(that is, correctly instantiating bound variables and repackaging them after)  -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprTraverse/Variant6a0ee724b29cd3556f281e2f69e73fd18a2437bb427007eec0ea32345b1fc1e1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprTraverse/Variant6a0ee724b29cd3556f281e2f69e73fd18a2437bb427007eec0ea32345b1fc1e1.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7426c2675a3279111a5d5125dacfe6e42b0e7795` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
