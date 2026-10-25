# Shrink.deflate_inj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:341d3f01-95bb-6492-a9b2-111c774a5df2",
  "kind": "theorem",
  "lexical_name": "Shrink.deflate_inj",
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
  "slug": "shrink-deflate-inj--487b35ed65fd09d655d72782",
  "source": {
    "blob": "218f5af72498bb841935cbde7cddbbfacde49f6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 83,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd04596e0fb1156d5876bd65d64d5ed8fec1cd8b473e357e7e7a333bd1f628ea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:487b35ed65fd09d655d72782221030c44292c34f3f0efc39ac62e062dee41268",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd04596e0fb1156d5876bd65d64d5ed8fec1cd8b473e357e7e7a333bd1f628ea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:341d3f01-95bb-6492-a9b2-111c774a5df2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem Shrink.deflate_inj {α} {x y : α} :
    Shrink.deflate x = Shrink.deflate y ↔ x = y := by
  apply Iff.intro
  · intro h
    simpa using congrArg Shrink.inflate h
  · rintro rfl
    rfl

-- It is not fruitful to move the following docstrings to verso right now because there are lots of
-- forward references that cannot be realized nicely.
set_option doc.verso false

/--
An iterator that sequentially emits values of type `β` in the monad `m`. It may be finite
or infinite.

See the root module `Std.Data.Iterators` for a more comprehensive overview over the iterator
framework.

See `Std.Data.Iterators.Producers` for ways to iterate over common data structures.
By convention, the monadic iterator associated with an object can be obtained via dot notation.
For example, `List.iterM IO` creates an iterator over a list in the monad `IO`.

See `Init.Data.Iterators.Consumers` for ways to use an iterator. For example, `it.toList` will
convert an iterator `it` into a list and `it.ensureTermination.toList` guarantees that this
operation will terminate, given a proof that the iterator is finite.
It is also always possible to manually iterate using
`it.step`, relying on the termination measures `it.finitelyManySteps` and `it.finitelyManySkips`.

See `Iter` for a more convenient interface in case that no monadic effects are needed (`m = Id`).

Internally, `IterM m β` wraps an element of type `α` containing state information.
The type `α` determines the implementation of the iterator using a typeclass mechanism.
The concrete typeclass implementing the iterator is `Iterator α m β`.

When using combinators, `α` can become very complicated. It is an implicit parameter
of `α` so that the pretty printer will not print this large type by default. If a declaration
returns an iterator, the following will not work:

```lean
def x : IterM IO Nat := [1, 2, 3].iterM IO
```

Instead the declaration type needs to be completely omitted:

```lean
def x := [1, 2, 3].iterM IO

-- if you want to ensure that `x` is an iterator in `IO` emitting `Nat`
def x := ([1, 2, 3].iterM IO : IterM IO Nat)
```
-/
@[ext]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd04596e0fb1156d5876bd65d64d5ed8fec1cd8b473e357e7e7a333bd1f628ea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantbd04596e0fb1156d5876bd65d64d5ed8fec1cd8b473e357e7e7a333bd1f628ea.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `218f5af72498bb841935cbde7cddbbfacde49f6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
