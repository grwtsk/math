# Anonymous elab_rules

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:afcdc9fbf6d44ce1e4dbd5a8dc884f0524984beed68a3fb25767cfe015778a2c",
  "kind": "elab_rules",
  "lexical_name": null,
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
  "slug": "elab-rules--7ff01a95ac2b1e2f9a231d44",
  "source": {
    "blob": "d699139254f5b9e8aca76feedf3c9ea7c32fc88d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 951,
    "line": 908,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd9a9e8dba619d7bd2d263feb135e28e3f95658984be702a633c23336a82857b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7ff01a95ac2b1e2f9a231d4417ad069a35ed4875ccb13d657bb7e4ff6d9f32fb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd9a9e8dba619d7bd2d263feb135e28e3f95658984be702a633c23336a82857b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `elab_rules` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:afcdc9fbf6d44ce1e4dbd5a8dc884f0524984beed68a3fb25767cfe015778a2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 908–951.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
elab_rules : tactic
| `(tactic| gcongr $[$template]? $[with $ps?*]?) => do
  let s ← runGCongr (← getMainGoal) template ps?
  replaceMainGoal s.newGoals.toList

/--
`gconvert e`, where the term `e` is inferred to have type `t`, replaces the main goal `⊢ t'` with
new goals for proving the implication `t → t'` using generalized congruence.
The goals are created like `gcongr` would.
Like `gcongr`, `gconvert` introduces variables while applying generalized congruence rules.
Additionally, if a resulting goal is an implication, the hypothesis is introduced
using `this` as the default name for the new hypothesis.
These variables can be pattern-matched, like `rintro` would, using the `with` keyword.

`gconvert` can be used to peel matching quantifiers off of a given term and the goal and
introduce the relevant variables.

`gconvert` is a generalized version of `convert`, in the same way that `gcongr` and `grw` are
generalized versions of `congr`/`congr!` and `rw`.

* `gconvert e with x y ... z` names the variables that are introduced.
* `gconvert e using n` where `n` is a natural number literal, limits the depth of `gcongr`.
  This is useful if `gcongr` is too aggressive in breaking down the goal.
* `gconvert e using t`, where `t` is a term with `?_` holes, makes `gcongr` perform congruence
  up to the holes in `t`.
  This is useful if `gcongr` is too aggressive in breaking down the goal.

Example:
```
example (h : ∀ ε > (0 : ℝ), ∃ N : ℕ, ∀ n ≥ N, 1 / (n + 1 : ℝ) < ε) :
             ∀ ε > (0 : ℝ), ∃ N : ℕ, ∀ n ≥ N, 1 / (n + 1 : ℝ) ≤ ε := by
  gconvert h with ε hε N n hn
  /-
  h : ∀ ε > 0, ∃ N, ∀ n ≥ N, 1 / (↑n + 1) < ε
  ε : ℝ
  hε : ε > 0
  N n : ℕ
  hn : n ≥ N
  this : 1 / (↑n + 1) < ε
  ⊢ 1 / (↑n + 1) ≤ ε
  -/
  exact this.le
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd9a9e8dba619d7bd2d263feb135e28e3f95658984be702a633c23336a82857b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd9a9e8dba619d7bd2d263feb135e28e3f95658984be702a633c23336a82857b9.lean#L908).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d699139254f5b9e8aca76feedf3c9ea7c32fc88d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
