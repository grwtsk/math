# Path

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b849b9ce9db3d564f590f135fd3d3bb2bb6f32073c032d5ac0699164d331f0d",
  "kind": "inductive",
  "lexical_name": "Path",
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
  "slug": "path--60acd256bd2c09eef94a74c8",
  "source": {
    "blob": "fd35bc52649d472583df0c04fbeca783a2eafcff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 32,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variant49742a120f71e8b3bb66dfab6bbc42e1a6956ca25f4665c3fef7cf5cbf1a73dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:60acd256bd2c09eef94a74c860cef734c210241f6059f7e5d783fb421b975590",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variant49742a120f71e8b3bb66dfab6bbc42e1a6956ca25f4665c3fef7cf5cbf1a73dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7b849b9ce9db3d564f590f135fd3d3bb2bb6f32073c032d5ac0699164d331f0d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public inductive Path where
  /--
  Accesses the `arg`th implicit or explicit argument,
  depending on whether `all` is `true` or `false`, respectively.
  Corresponds to the `conv` tactic `arg`.
  For example, `Path.arg 3 true next` is `arg @3` followed by `next`,
  and `Path.arg 0 false next` is `arg 0` followed by `next`.
  -/
  | arg (arg : Nat) (all : Bool) (next : Path) : Path
  /--
  End a `conv` sequence with `depth`-many repetitions of the `conv` tactic `fun`.
  For example, `Path.fun 3` corresponds to the `conv` sequence `fun; fun; fun`,
  and `Path.fun 0` just terminates a `Path` without any extra `conv` tactics.
  -/
  | fun (depth : Nat) : Path
  /--
  Traverses into the binder type of a forall, let, or lambda.
  Currently out of these three options `conv` only supports going into
  the binder type of a forall, but in the future if `conv` gets support for
  going into let or lambda binding types with different `conv` tactics we may add
  additional arguments to specify whether the binder is a forall, let, or lambda.
  Corresponds to the `conv` tactics `lhs` or `arg`.
  -/
  | type (next : Path) : Path
  /--
  Traverses into the body of a forall, let, or lambda.
  Corresponds to the `conv` tactics `intro` or `ext`.
  -/
  | body (name : Name) (next : Path) : Path

/--
Given an `e : Expr` and `pos : SubExpr.Pos`, `Path.ofSubExprPosArray expr pos.toArray` generates
the `Path` corresponding to traversing `pos` starting at the reference expression `e`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variant49742a120f71e8b3bb66dfab6bbc42e1a6956ca25f4665c3fef7cf5cbf1a73dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Conv/Variant49742a120f71e8b3bb66dfab6bbc42e1a6956ca25f4665c3fef7cf5cbf1a73dc.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd35bc52649d472583df0c04fbeca783a2eafcff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
