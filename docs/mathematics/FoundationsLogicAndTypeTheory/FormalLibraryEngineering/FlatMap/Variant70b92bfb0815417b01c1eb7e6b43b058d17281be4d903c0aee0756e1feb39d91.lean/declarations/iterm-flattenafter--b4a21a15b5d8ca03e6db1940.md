# IterM.flattenAfter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:73a0588a4ac442359526363f666b6a1a3411bea2cbac17d9ca19f151b63f51dd",
  "kind": "def",
  "lexical_name": "IterM.flattenAfter",
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
  "slug": "iterm-flattenafter--b4a21a15b5d8ca03e6db1940",
  "source": {
    "blob": "bb8dd3798c412a0e204c7d0850e228138c3b7693",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 38,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant70b92bfb0815417b01c1eb7e6b43b058d17281be4d903c0aee0756e1feb39d91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b4a21a15b5d8ca03e6db194017274923c43b7a118a9bd60be82ba7c99f50bbe6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant70b92bfb0815417b01c1eb7e6b43b058d17281be4d903c0aee0756e1feb39d91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:73a0588a4ac442359526363f666b6a1a3411bea2cbac17d9ca19f151b63f51dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def IterM.flattenAfter {α α₂ β : Type w} {m : Type w → Type w'} [Monad m]
    [Iterator α m (IterM (α := α₂) m β)] [Iterator α₂ m β]
    (it₁ : IterM (α := α) m (IterM (α := α₂) m β)) (it₂ : Option (IterM (α := α₂) m β)) :=
  (⟨⟨it₁, it₂⟩⟩ : IterM (α := Flatten α α₂ β m) m β)

/--
Let `it₁` and `it₂` be iterators and `f` a monadic function mapping `it₁`'s outputs to iterators
of the same type as `it₂`. Then `it₁.flatMapAfterM f it₂` first goes over `it₂` and then over
`it₁.flatMap f it₂`, emitting all their values.

The main purpose of this combinator is to represent the intermediate state of a `flatMap` iterator
that is currently iterating over one of the inner iterators.

**Marble diagram (without monadic effects):**

```text
it₁                            --b      c    --d -⊥
it₂                      a1-a2⊥
f b                               b1-b2⊥
f c                                      c1-c2⊥
f d                                             ⊥
it.flatMapAfterM f it₂   a1-a2----b1-b2--c1-c2----⊥
```

**Termination properties:**

* `Finite` instance: only if `it₁`, `it₂` and the inner iterators are finite
* `Productive` instance: only if `it₁` is finite and `it₂` and the inner iterators are productive

For certain functions `f`, the resulting iterator will be finite (or productive) even though
no `Finite` (or `Productive`) instance is provided out of the box. For example, if the outer
iterator is productive and the inner
iterators are productive *and provably never empty*, then the resulting iterator is also productive.

**Performance:**

This combinator incurs an additional O(1) cost with each output of `it₁`, `it₂` or an internal
iterator.

For each value emitted by the outer iterator `it₁`, this combinator calls `f`.
-/
@[always_inline, inline]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant70b92bfb0815417b01c1eb7e6b43b058d17281be4d903c0aee0756e1feb39d91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant70b92bfb0815417b01c1eb7e6b43b058d17281be4d903c0aee0756e1feb39d91.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb8dd3798c412a0e204c7d0850e228138c3b7693` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
