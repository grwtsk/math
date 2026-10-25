# ReduceMatcherResult

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4e299cd76cf96b699e54de303727bee42a8a50c3ddcfb61725c73770ef6b7b7f",
  "kind": "inductive",
  "lexical_name": "ReduceMatcherResult",
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
  "slug": "reducematcherresult--7982e4fb88b62e0e507e6aa0",
  "source": {
    "blob": "768e0c93dea2a79dd5ab505c68bbcac736238c91",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 489,
    "line": 440,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WHNF/Variant4c7efb426ead0cd2c5bc33c16fdab8f1ddd325d0c2e3468f7d507b76ab3d3e3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7982e4fb88b62e0e507e6aa0fdcb60a0b32b25a28b87e4144aa328bc7d45010e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WHNF/Variant4c7efb426ead0cd2c5bc33c16fdab8f1ddd325d0c2e3468f7d507b76ab3d3e3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4e299cd76cf96b699e54de303727bee42a8a50c3ddcfb61725c73770ef6b7b7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 440–489.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
inductive ReduceMatcherResult where
  | reduced (val : Expr)
  | stuck   (val : Expr)
  | notMatcher
  | partialApp

/-!
The "match" compiler uses dependent if-then-else `dite` and other auxiliary declarations to compile match-expressions such as
```
match v with
| 'a' => 1
| 'b' => 2
| _   => 3
```
because it is more efficient than using `casesOn` recursors.
The method `reduceMatcher?` fails if these auxiliary definitions cannot be unfolded in the current
transparency setting. This is problematic because tactics such as `simp` use `TransparencyMode.reducible`, and
most users assume that expressions such as
```
match 0 with
| 0 => 1
| 100 => 2
| _ => 3
```
should reduce in any transparency mode.

Thus, if the transparency mode is `.reducible` or `.instances`, we first
eagerly unfold `dite` constants used in the auxiliary match-declaration, and then
use a custom `canUnfoldAtMatcher` predicate for `whnfMatcher`.

Remark: we used to include `dite` (and `ite`) as auxiliary declarations to unfold at
`canUnfoldAtMatcher`, but this is problematic because the `dite`/`ite` may occur in the
discriminant. See issue #5388.

This solution is not very modular because modifications at the `match` compiler require changes here.
We claim this is defensible because it is reducing the auxiliary declaration defined by the `match` compiler.

Remark: if the eager unfolding is problematic, we may cache the result.
We may also consider not using `dite` in the `match`-compiler and use `Decidable.casesOn`, but it will require changes
in how we generate equation lemmas.

Alternative solution: tactics that use `TransparencyMode.reducible` should rely on the equations we generated for match-expressions.
This solution is also not perfect because the match-expression above will not reduce during type checking when we are not using
`TransparencyMode.default` or `TransparencyMode.all`.
-/

/--
Eagerly unfold `dite` constants in `e`. This is an auxiliary function used to reduce match expressions.
See comment above.
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WHNF/Variant4c7efb426ead0cd2c5bc33c16fdab8f1ddd325d0c2e3468f7d507b76ab3d3e3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WHNF/Variant4c7efb426ead0cd2c5bc33c16fdab8f1ddd325d0c2e3468f7d507b76ab3d3e3e.lean#L440).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `768e0c93dea2a79dd5ab505c68bbcac736238c91` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
