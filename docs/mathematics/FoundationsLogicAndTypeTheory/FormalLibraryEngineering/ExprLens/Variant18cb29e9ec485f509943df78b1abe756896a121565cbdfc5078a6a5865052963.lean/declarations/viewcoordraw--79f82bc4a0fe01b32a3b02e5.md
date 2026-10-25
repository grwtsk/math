# viewCoordRaw

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f1d2d3a1d66913f58bcf6e6f6c3752cbb8ed495346f111bba52f65328391d195",
  "kind": "def",
  "lexical_name": "viewCoordRaw",
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
  "slug": "viewcoordraw--79f82bc4a0fe01b32a3b02e5",
  "source": {
    "blob": "e4b7f5f1840f2bad13dd577c9bcb45f23129a89e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 138,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprLens/Variant18cb29e9ec485f509943df78b1abe756896a121565cbdfc5078a6a5865052963.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:79f82bc4a0fe01b32a3b02e5b710f6169375600df8d688b363816dc6e7567857",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprLens/Variant18cb29e9ec485f509943df78b1abe756896a121565cbdfc5078a6a5865052963.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f1d2d3a1d66913f58bcf6e6f6c3752cbb8ed495346f111bba52f65328391d195`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def viewCoordRaw (e : Expr) (n : Nat) : M Expr := do
  match e, n with
  | e,                3 => throwError "Can't viewRaw the type of {e}"
  | .app f _,         0 => pure f
  | .app _ a,         1 => pure a
  | .lam _ y _ _,     0 => pure y
  | .lam _ _ b _,     1 => pure b
  | .forallE _ y _ _, 0 => pure y
  | .forallE _ _ b _, 1 => pure b
  | .letE _ y _ _ _,  0 => pure y
  | .letE _ _ a _ _,  1 => pure a
  | .letE _ _ _ b _,  2 => pure b
  | .proj _ _ b,      0 => pure b
  | .mdata _ a,       n => viewCoordRaw a n
  | e,                c => throwError "Bad coordinate {c} for {e}"

/-- Given a valid `SubExpr`, return the raw current expression without performing any instantiation.
If the given `SubExpr` has a type subexpression coordinate, then throw an error.

This is a cheaper version of `Lean.Meta.viewSubexpr` and can be used to quickly view the
subexpression at a position. Note that because the resulting expression may contain
loose bound variables it can't be used in any `MetaM` methods. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprLens/Variant18cb29e9ec485f509943df78b1abe756896a121565cbdfc5078a6a5865052963.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExprLens/Variant18cb29e9ec485f509943df78b1abe756896a121565cbdfc5078a6a5865052963.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4b7f5f1840f2bad13dd577c9bcb45f23129a89e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
