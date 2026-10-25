# Lean.MVarId.convertLocalDecl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:64237a393e734dfc495248fbd5e3cfe8a6693478bb5a3f2c4555165cbd93f14a",
  "kind": "def",
  "lexical_name": "Lean.MVarId.convertLocalDecl",
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
  "slug": "lean-mvarid-convertlocaldecl--c4fd19fd36f3cbfd03941f08",
  "source": {
    "blob": "67e7ecde04c6ca6ff2d948a48bcf8bb84159043a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 52,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant937d11c1b9c36f80bf199494ec1c5f2f98f45bf3b512166e64ba1b15f11d3f20.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c4fd19fd36f3cbfd03941f08c01213602e664ea4027cce3891d302bf71f7aa03",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant937d11c1b9c36f80bf199494ec1c5f2f98f45bf3b512166e64ba1b15f11d3f20.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:64237a393e734dfc495248fbd5e3cfe8a6693478bb5a3f2c4555165cbd93f14a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 52–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def Lean.MVarId.convertLocalDecl (g : MVarId) (fvarId : FVarId) (typeNew : Expr) (symm : Bool)
    (depth : Option Nat := none) (config : Congr!.Config := {})
    (patterns : List (TSyntax `rcasesPat) := []) :
    MetaM (MVarId × List MVarId) := g.withContext do
  let typeOld ← fvarId.getType
  let v ← mkFreshExprMVar (← mkAppM ``Eq
    (if symm then #[typeNew, typeOld] else #[typeOld, typeNew]))
  let pf ← if symm then mkEqSymm v else pure v
  let res ← g.replaceLocalDecl fvarId typeNew pf
  let gs ← v.mvarId!.congrN! depth config patterns
  return (res.mvarId, gs)

namespace Mathlib.Tactic

/--
The `exact e` and `refine e` tactics require a term `e` whose type is
definitionally equal to the goal. `convert e` is similar to `refine e`,
but the type of `e` is not required to exactly match the
goal. Instead, new goals are created for differences between the type
of `e` and the goal using the same strategies as the `congr!` tactic.
For example, in the proof state

```lean
n : ℕ,
e : Prime (2 * n + 1)
⊢ Prime (n + n + 1)
```

the tactic `convert e using 2` will change the goal to

```lean
⊢ n + n = 2 * n
```

In this example, the new goal can be solved using `ring`.

The `using 2` indicates it should iterate the congruence algorithm up to two times,
where `convert e` would use an unrestricted number of iterations and lead to two
impossible goals: `⊢ HAdd.hAdd = HMul.hMul` and `⊢ n = 2`.

A variant configuration is `convert (config := .unfoldSameFun) e`, which only equates function
applications for the same function (while doing so at the higher `default` transparency).
This gives the same goal of `⊢ n + n = 2 * n` without needing `using 2`.

The `convert` tactic applies congruence lemmas eagerly before reducing,
therefore it can fail in cases where `exact` succeeds:
```lean
def p (n : ℕ) := True
example (h : p 0) : p 1 := by exact h -- succeeds
example (h : p 0) : p 1 := by convert h -- fails, with leftover goal `1 = 0`
```
Limiting the depth of recursion can help with this. For example, `convert h using 1` will work
in this case.

The syntax `convert ← e` will reverse the direction of the new goals
(producing `⊢ 2 * n = n + n` in this example).

Internally, `convert e` works by creating a new goal asserting that
the goal equals the type of `e`, then simplifying it using
`congr!`. The syntax `convert e using n` can be used to control the
depth of matching (like `congr! n`). In the example, `convert e using 1`
would produce a new goal `⊢ n + n + 1 = 2 * n + 1`.

Refer to the `congr!` tactic to understand the congruence operations. One of its many
features is that if `x y : t` and an instance `Subsingleton t` is in scope,
then any goals of the form `x = y` are solved automatically.

Like `congr!`, `convert` takes an optional `with` clause of `rintro` patterns,
for example `convert e using n with x y z`.

The `convert` tactic also takes a configuration option, for example
```lean
convert (config := {transparency := .default}) h
```
These are passed to `congr!`. See `Congr!.Config` for options.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant937d11c1b9c36f80bf199494ec1c5f2f98f45bf3b512166e64ba1b15f11d3f20.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Convert/Variant937d11c1b9c36f80bf199494ec1c5f2f98f45bf3b512166e64ba1b15f11d3f20.lean#L52).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `67e7ecde04c6ca6ff2d948a48bcf8bb84159043a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
