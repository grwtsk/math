# Iterators.Types.Zip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:727de48a129423fe42071856b40a2fcab5f79b653631bb09d16ce9c4ed6cbfe2",
  "kind": "structure",
  "lexical_name": "Iterators.Types.Zip",
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
  "slug": "iterators-types-zip--6b65e59dfbe11d97c4a1b267",
  "source": {
    "blob": "59f0ae0391f6cec515d9977763df438b8fd17098",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 41,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zip/Variante7f058d84fb58ac85e3121e89c93d16a48141bae381e3b95272bca539b9cea64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6b65e59dfbe11d97c4a1b267b1998cb14b9b6c50faab1978f02d71a651e24678",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zip/Variante7f058d84fb58ac85e3121e89c93d16a48141bae381e3b95272bca539b9cea64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:727de48a129423fe42071856b40a2fcab5f79b653631bb09d16ce9c4ed6cbfe2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
structure Iterators.Types.Zip (α₁ : Type w) (m : Type w → Type w') {β₁ : Type w} [Iterator α₁ m β₁]
    (α₂ : Type w) (β₂ : Type w) where
  left : IterM (α := α₁) m β₁
  memoizedLeft : (Option { out : β₁ // ∃ it : IterM (α := α₁) m β₁, it.IsPlausibleOutput out })
  right : IterM (α := α₂) m β₂

/--
Given two iterators `left` and `right`, `left.zip right` is an iterator that yields pairs of
outputs of `left` and `right`. When one of them terminates,
the `zip` iterator will also terminate.

**Marble diagram:**

```text
left               --a        ---b        --c
right                 --x         --y        --⊥
left.zip right     -----(a, x)------(b, y)-----⊥
```

**Termination properties:**

* `Finite` instance: only if either `left` or `right` is finite and the other is productive
* `Productive` instance: only if `left` and `right` are productive

There are situations where `left.zip right` is finite (or productive) but none of the instances
above applies. For example, if the computation happens in an `Except` monad and `left` immediately
fails when calling `step`, then `left.zip right` will also do so. In such a case, the `Finite`
(or `Productive`) instance needs to be proved manually.

**Performance:**

This combinator incurs an additional O(1) cost with each step taken by `left` or `right`.

Right now, the compiler does not unbox the internal state, leading to worse performance than
possible.
-/
@[always_inline, inline]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zip/Variante7f058d84fb58ac85e3121e89c93d16a48141bae381e3b95272bca539b9cea64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Zip/Variante7f058d84fb58ac85e3121e89c93d16a48141bae381e3b95272bca539b9cea64.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59f0ae0391f6cec515d9977763df438b8fd17098` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
