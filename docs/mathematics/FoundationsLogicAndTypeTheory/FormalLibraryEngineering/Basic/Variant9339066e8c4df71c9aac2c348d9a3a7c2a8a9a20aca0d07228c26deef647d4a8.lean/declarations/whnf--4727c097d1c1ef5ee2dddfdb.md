# whnf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:95618c1364c35bd74c8c87585dc0bae97e3cd1462455aacef56beb93cb7efe1a",
  "kind": "opaque",
  "lexical_name": "whnf",
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
  "slug": "whnf--4727c097d1c1ef5ee2dddfdb",
  "source": {
    "blob": "b9743855e4f667c6fad1cee0803ee003e513baef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 833,
    "line": 779,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9339066e8c4df71c9aac2c348d9a3a7c2a8a9a20aca0d07228c26deef647d4a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4727c097d1c1ef5ee2dddfdb1c935bcabc9238d565e305b9d169df36c76af217",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9339066e8c4df71c9aac2c348d9a3a7c2a8a9a20aca0d07228c26deef647d4a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `opaque` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:95618c1364c35bd74c8c87585dc0bae97e3cd1462455aacef56beb93cb7efe1a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 779–833.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
@[extern "lean_whnf"] opaque whnf : Expr → MetaM Expr
set_option compiler.ignoreBorrowAnnotation true in
/--
Returns the inferred type of the given expression. Assumes the expression is type-correct.

The type inference algorithm does not do general type checking.
Type inference only looks at subterms that are necessary for determining an expression's type,
and as such if `inferType` succeeds it does *not* mean the term is type-correct.
If an expression is sufficiently ill-formed that it prevents `inferType` from computing a type,
then it will fail with a type error.

For typechecking during elaboration, see `Lean.Meta.check`.
(Note that we do not guarantee that the elaborator typechecker is as correct or as efficient as
the kernel typechecker. The kernel typechecker is invoked when a definition is added to the environment.)

Here are examples of type-incorrect terms for which `inferType` succeeds:
```lean
public import Lean

public section

open Lean Meta

/--
`@id.{1} Bool Nat.zero`.
In general, the type of `@id α x` is `α`.
-/
def e1 : Expr := mkApp2 (.const ``id [1]) (.const ``Bool []) (.const ``Nat.zero [])
#eval inferType e1
-- Lean.Expr.const `Bool []
#eval check e1
-- error: application type mismatch

/--
`let x : Int := Nat.zero; true`.
In general, the type of `let x := v; e`, if `e` does not reference `x`, is the type of `e`.
-/
def e2 : Expr := .letE `x (.const ``Int []) (.const ``Nat.zero []) (.const ``true []) false
#eval inferType e2
-- Lean.Expr.const `Bool []
#eval check e2
-- error: invalid let declaration
```
Here is an example of a type-incorrect term that makes `inferType` fail:
```lean
/--
`Nat.zero Nat.zero`
-/
def e3 : Expr := .app (.const ``Nat.zero []) (.const ``Nat.zero [])
#eval inferType e3
-- error: function expected
```

See `Lean.Meta.inferTypeImp` for the implementation of `inferType`.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9339066e8c4df71c9aac2c348d9a3a7c2a8a9a20aca0d07228c26deef647d4a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variant9339066e8c4df71c9aac2c348d9a3a7c2a8a9a20aca0d07228c26deef647d4a8.lean#L779).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9743855e4f667c6fad1cee0803ee003e513baef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
