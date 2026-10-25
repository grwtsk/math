# toExprExpr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a889f01c8d4c86038fce665c8c08dd097092e0573886f2df64b037c8892c5cbf",
  "kind": "def",
  "lexical_name": "toExprExpr",
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
  "slug": "toexprexpr--6646d8bc85daa45408566f4f",
  "source": {
    "blob": "6396d46178cc9ac32cbd7e8e50470968aa40fd91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 52,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant38d45a05204b5d71898c765f2ee62b8d2e9a616c3dfbecff10065912bbd4ddb9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6646d8bc85daa45408566f4fd717b5c3495688868c6b29b6674880ae033abfb2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant38d45a05204b5d71898c765f2ee62b8d2e9a616c3dfbecff10065912bbd4ddb9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a889f01c8d4c86038fce665c8c08dd097092e0573886f2df64b037c8892c5cbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toExprExpr : Expr → Expr
  | bvar n        => mkApp (.const ``bvar []) (mkNatLit n)
  | fvar n        => mkApp (.const ``fvar []) (toExpr n)
  | mvar n        => mkApp (.const ``mvar []) (toExpr n)
  | sort l        => mkApp (.const ``sort []) (toExpr l)
  | const n ls    => mkApp2 (.const ``const []) (toExpr n) (toExpr ls)
  | app f x       => mkApp2 (.const ``app []) (toExprExpr f) (toExprExpr x)
  | lam x d b c     => mkApp4 (.const ``lam []) (toExpr x) (toExprExpr d) (toExprExpr b) (toExpr c)
  | forallE x d b c => mkApp4 (.const ``forallE []) (toExpr x) (toExprExpr d) (toExprExpr b) (toExpr c)
  | letE x t v b c  => mkApp5 (.const ``letE []) (toExpr x) (toExprExpr t) (toExprExpr v) (toExprExpr b) (toExpr c)
  | lit l         => mkApp (.const ``lit []) (toExpr l)
  | mdata md e    => mkApp2 (.const ``mdata []) (toExpr md) (toExprExpr e)
  | proj s i e    => mkApp3 (.const ``proj []) (toExpr s) (mkNatLit i) (toExprExpr e)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant38d45a05204b5d71898c765f2ee62b8d2e9a616c3dfbecff10065912bbd4ddb9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToExpr/Variant38d45a05204b5d71898c765f2ee62b8d2e9a616c3dfbecff10065912bbd4ddb9.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6396d46178cc9ac32cbd7e8e50470968aa40fd91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
