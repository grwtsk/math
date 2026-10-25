# ReduceMatcherResult

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:28ed77d2a3005d36f49164c6f88399506b702011da18c36cba30aff0d3e00e68",
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
  "slug": "reducematcherresult--36f0b72e5cc4c930ecca0b35",
  "source": {
    "blob": "f31a765ed75b6fbe3ae881a93afdf3152f18a53f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 481,
    "line": 432,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WHNF/Varianta7dda85d86ae0a7118566b80e0f8cd274030846e371d156f6882713d48647836.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:36f0b72e5cc4c930ecca0b35af0eb4a032eb9c11c731b986189dd22cf4e8e391",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WHNF/Varianta7dda85d86ae0a7118566b80e0f8cd274030846e371d156f6882713d48647836.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:28ed77d2a3005d36f49164c6f88399506b702011da18c36cba30aff0d3e00e68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 432–481.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WHNF/Varianta7dda85d86ae0a7118566b80e0f8cd274030846e371d156f6882713d48647836.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WHNF/Varianta7dda85d86ae0a7118566b80e0f8cd274030846e371d156f6882713d48647836.lean#L432).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f31a765ed75b6fbe3ae881a93afdf3152f18a53f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
