# ensureInternalized

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2f5232f67f25137f131a7495266f8952f04eb6974b89a32ba060ed6fc7feba9a",
  "kind": "def",
  "lexical_name": "ensureInternalized",
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
  "slug": "ensureinternalized--3d322b14c84571f483802c44",
  "source": {
    "blob": "3cf1ffa87f5dbbd26fe4f9e0186560958f6fffbc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 19,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveEq/Variant5765989cdc4ec3e1b93cda12dfd983f5ff18ae2a2ccd40f08d02fd1d23c69fd8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3d322b14c84571f483802c4416640e1455c8aefe02b995eac6bd0c0237c4e57b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveEq/Variant5765989cdc4ec3e1b93cda12dfd983f5ff18ae2a2ccd40f08d02fd1d23c69fd8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2f5232f67f25137f131a7495266f8952f04eb6974b89a32ba060ed6fc7feba9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
private def ensureInternalized (e : Expr) : GoalM Expr := do
  if (← alreadyInternalized e) then
    return e
  else
    /-
    It is important to expand reducible declarations. Otherwise, we cannot prove
    `¬ a = []` and `b ≠ []` by congruence closure even when `a` and `b` are in the same
    equivalence class.
    -/
    let e ← preprocessLight (← instantiateMVars e)
    internalize e 0
    return e

/-!
`abstractGroundMismatches?` is an auxiliary function for creating auxiliary equality
proofs. When trying to prove `lhs = rhs`, we use two different approaches. In the first
one, we just internalize the terms, propagate, and then check whether they are in the same
equivalence class. The function `abstractGroundMismatches?` is used to implement the
second approach that focus on terms containing binders. Here is a motivating example,
suppose we are trying to prove that `(b : Bool) → a[i]? = some b → Nat` is equal to
`(b : Bool) → some v = some b → Nat` and the goal contains the equivalence class
`{a[i]?, some v}`.
Congruence closure does not process terms containing free variables, and fails to
prove the equality.
`abstractGroundMismatches?` extracts ground terms that are equal in the current goal,
and creates an auxiliary function. In the example above, the following two terms
are generated.
- `(fun x => (b : Bool) → x = some b → Nat) a[i]?`
- `(fun x => (b : Bool) → x = some b → Nat) (some v)`

The two new terms are definitionally equal to the original ones, but congruence
closure will now detect the equality.

The motivation for this infrastructure is match-expression equalities.
Suppose we have
```
match h : assign[v]? with
| none => ...
| some b => ...
```
When instantiating the match-expr equations for the `none` and `some` cases,
we need to introduce casts.
-/

/-- Context for the `AbstractM` monad used to implement `abstractGroundMismatches?` -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveEq/Variant5765989cdc4ec3e1b93cda12dfd983f5ff18ae2a2ccd40f08d02fd1d23c69fd8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProveEq/Variant5765989cdc4ec3e1b93cda12dfd983f5ff18ae2a2ccd40f08d02fd1d23c69fd8.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3cf1ffa87f5dbbd26fe4f9e0186560958f6fffbc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
