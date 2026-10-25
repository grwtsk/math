# Iterators.Types.TakeWhile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:49e761f9e56fdfdb26e2ff588ed862e9128e3aa10e4c2929d83375a73a273f89",
  "kind": "structure",
  "lexical_name": "Iterators.Types.TakeWhile",
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
  "slug": "iterators-types-takewhile--652ba2e0c0eb98f029525fb6",
  "source": {
    "blob": "0818588a064442741df256690c0c9ec07321adb6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 86,
    "line": 42,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TakeWhile/Variant2d0b9493c37d454cfd11c5616f2f9f8a2bd5f2bc6f15806ae13391991ad026df.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:652ba2e0c0eb98f029525fb611bf20374690d545529c2925252262f489656bc2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TakeWhile/Variant2d0b9493c37d454cfd11c5616f2f9f8a2bd5f2bc6f15806ae13391991ad026df.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:49e761f9e56fdfdb26e2ff588ed862e9128e3aa10e4c2929d83375a73a273f89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–86.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
structure Iterators.Types.TakeWhile (α : Type w) (m : Type w → Type w') (β : Type w)
    (P : β → PostconditionT m (ULift Bool)) where
  /-- Internal implementation detail of the iterator library. -/
  inner : IterM (α := α) m β

/--
*Note: This is a very general combinator that requires an advanced understanding of monads,
dependent types and termination proofs. The variants `takeWhile` and `takeWhileM` are easier to use
and sufficient for most use cases.*

Given an iterator `it` and a monadic predicate `P`, `it.takeWhileWithPostcondition P` is an iterator
that emits the values emitted by `it` until one of those values is rejected by `P`.
If some emitted value is rejected by `P`, the value is dropped and the iterator terminates.

`P` is expected to return `PostconditionT m (ULift Bool)`. The `PostconditionT` transformer allows
the caller to intrinsically prove properties about `P`'s return value in the monad `m`, enabling
termination proofs depending on the specific behavior of `P`.

**Marble diagram (ignoring monadic effects):**

Assuming that the predicate `P` accepts `a` and `b` but rejects `c`:

```text
it                                ---a----b---c--d-e--⊥
it.takeWhileWithPostcondition P   ---a----b---⊥

it                                ---a----⊥
it.takeWhileWithPostcondition P   ---a----⊥
```

**Termination properties:**

* `Finite` instance: only if `it` is finite
* `Productive` instance: only if `it` is productive

Depending on `P`, it is possible that `it.takeWhileWithPostcondition P` is finite (or productive)
although `it` is not. In this case, the `Finite` (or `Productive`) instance needs to be proved
manually.

**Performance:**

This combinator calls `P` on each output of `it` until the predicate evaluates to false. Then
it terminates.
-/
@[always_inline, inline]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TakeWhile/Variant2d0b9493c37d454cfd11c5616f2f9f8a2bd5f2bc6f15806ae13391991ad026df.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TakeWhile/Variant2d0b9493c37d454cfd11c5616f2f9f8a2bd5f2bc6f15806ae13391991ad026df.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0818588a064442741df256690c0c9ec07321adb6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
