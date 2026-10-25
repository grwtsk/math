# SimpHaveResult

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a72c444d9ae869de8b143e5e9add2511b108983432fc332f17f1e445c0313dad",
  "kind": "structure",
  "lexical_name": "SimpHaveResult",
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
  "slug": "simphaveresult--bfac8045302ca852dbaeed29",
  "source": {
    "blob": "3ea9e0bcbdb69927c2266dfc8468a69b9927cd1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 216,
    "line": 170,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveTelescope/Variant0e7dfb60344bf4734a6184a5521daf0604ea5df5c28ef0e8cb154272db7c8789.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bfac8045302ca852dbaeed29490d651ac83d219eaa5841d25db94bdaaa0ff7ef",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveTelescope/Variant0e7dfb60344bf4734a6184a5521daf0604ea5df5c28ef0e8cb154272db7c8789.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a72c444d9ae869de8b143e5e9add2511b108983432fc332f17f1e445c0313dad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–216.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private structure SimpHaveResult where
  /--
  The simplified expression in `(fun x => b) v` form. Note that it may contain loose bound variables.
  `simpHaveTelescope` attempts to minimize the quadratic overhead imposed
  by the locally nameless discipline in a sequence of `have` expressions.
  -/
  expr     : Expr
  /--
  The type of `expr`. It may contain loose bound variables like in the `expr` field.
  Used in proof construction.
  -/
  exprType : Expr
  /--
  The initial expression in `(fun x => b) v` form.
  -/
  exprInit   : Expr
  /--
  The expression `expr` in `have x := v; b` form.
  -/
  exprResult : Expr
  /--
  The proof that the simplified expression is equal to the input one.
  It may contain loose bound variables like in the `expr` field.
  -/
  proof    : Expr
  /--
  `modified := false` iff `expr` is structurally equal to the input expression.
  When false, `proof` is `Eq.refl`.
  -/
  modified : Bool

  /-
  Re-enters the telescope recorded in `info` using `withExistingLocalDecls` while simplifying according to `fixed`/`used`.
  Note that we must use the low-level `Expr` APIs because the expressions may contain loose bound variables.
  Note also that we don't enter the body's local context all at once, since we need to be sure that
  when we simplify values they have their correct local context.
  -/
  deriving Inhabited

variable {m} [Monad m] [MonadLiftT MetaM m] [MonadControlT MetaM m] [MonadSimp m]

/-
Re-enters the telescope recorded in `info` using `withExistingLocalDecls` while simplifying according to `fixed`/`used`.
Note that we must use the low-level `Expr` APIs because the expressions may contain loose bound variables.
Note also that we don't enter the body's local context all at once, since we need to be sure that
when we simplify values they have their correct local context.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveTelescope/Variant0e7dfb60344bf4734a6184a5521daf0604ea5df5c28ef0e8cb154272db7c8789.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveTelescope/Variant0e7dfb60344bf4734a6184a5521daf0604ea5df5c28ef0e8cb154272db7c8789.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ea9e0bcbdb69927c2266dfc8468a69b9927cd1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
