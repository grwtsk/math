# Path.ofSubExprPos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ae0aefacab1f090ee99c9d4a2e65d91be0d89c2b94e100160d9c3c267c739804",
  "kind": "def",
  "lexical_name": "Path.ofSubExprPos",
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
  "slug": "path-ofsubexprpos--5febf689e07933c7af68151b",
  "source": {
    "blob": "fd35bc52649d472583df0c04fbeca783a2eafcff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 164,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variant49742a120f71e8b3bb66dfab6bbc42e1a6956ca25f4665c3fef7cf5cbf1a73dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5febf689e07933c7af68151bf6706239059253bc64f64d2454c799ad7ebedc66",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variant49742a120f71e8b3bb66dfab6bbc42e1a6956ca25f4665c3fef7cf5cbf1a73dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ae0aefacab1f090ee99c9d4a2e65d91be0d89c2b94e100160d9c3c267c739804`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 164–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
public def Path.ofSubExprPos (expr : Expr) (pos : SubExpr.Pos) : MetaM Path :=
  Path.ofSubExprPosArray expr pos.toArray

open Lean.Parser.Tactic.Conv in
/--
Given a `path : Path` and ```xs : TSepArray ``enterArg ","```, generate the `conv` syntax
corresponding to `enter [xs,*]` followed by traversing `path`. If `loc` is `some fvar`,
start with `conv at fvar =>`, otherwise if `loc` is `none` start with `conv =>`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variant49742a120f71e8b3bb66dfab6bbc42e1a6956ca25f4665c3fef7cf5cbf1a73dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variant49742a120f71e8b3bb66dfab6bbc42e1a6956ca25f4665c3fef7cf5cbf1a73dc.lean#L164).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd35bc52649d472583df0c04fbeca783a2eafcff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
