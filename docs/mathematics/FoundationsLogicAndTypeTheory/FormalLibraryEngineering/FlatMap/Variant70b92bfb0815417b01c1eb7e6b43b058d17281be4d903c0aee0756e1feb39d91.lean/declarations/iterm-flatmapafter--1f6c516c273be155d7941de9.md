# IterM.flatMapAfter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e8fdc3d37ee489935857fc642ff423251789d057942c844522408cdc777efbbe",
  "kind": "def",
  "lexical_name": "IterM.flatMapAfter",
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
  "slug": "iterm-flatmapafter--1f6c516c273be155d7941de9",
  "source": {
    "blob": "bb8dd3798c412a0e204c7d0850e228138c3b7693",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 161,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant70b92bfb0815417b01c1eb7e6b43b058d17281be4d903c0aee0756e1feb39d91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1f6c516c273be155d7941de96de77b29b1ed2161c801b8661b1b0a22d84e140d",
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

Occurrence: `declaration:e8fdc3d37ee489935857fc642ff423251789d057942c844522408cdc777efbbe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
public def IterM.flatMapAfter {α : Type w} {β : Type w} {α₂ : Type w}
    {γ : Type w} {m : Type w → Type w'} [Monad m] [Iterator α m β] [Iterator α₂ m γ]
    (f : β → IterM (α := α₂) m γ) (it₁ : IterM (α := α) m β) (it₂ : Option (IterM (α := α₂) m γ)) :=
  ((it₁.map f).flattenAfter it₂ : IterM m γ)

/--
Let `it` be an iterator and `f` a function mapping `it`'s outputs to iterators.
Then `it.flatMap f` is an iterator that goes over `it` and for each output, it applies `f` and
iterates over the resulting iterator. `it.flatMap f` emits all values obtained from the inner
iterators -- first, all of the first inner iterator, then all of the second one, and so on.

**Marble diagram:**

```text
it                 ---a      --b      c    --d -⊥
f a                    a1-a2⊥
f b                             b1-b2⊥
f c                                    c1-c2⊥
f d                                           ⊥
it.flatMap         ----a1-a2----b1-b2--c1-c2----⊥
```

**Termination properties:**

* `Finite` instance: only if `it` and the inner iterators are finite
* `Productive` instance: only if `it` is finite and the inner iterators are productive

For certain functions `f`, the resulting iterator will be finite (or productive) even though
no `Finite` (or `Productive`) instance is provided out of the box. For example, if the outer
iterator is productive and the inner
iterators are productive *and provably never empty*, then the resulting iterator is also productive.

**Performance:**

This combinator incurs an additional O(1) cost with each output of `it` or an internal iterator.

For each value emitted by the outer iterator `it`, this combinator calls `f`.
-/
@[always_inline, inline, expose]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant70b92bfb0815417b01c1eb7e6b43b058d17281be4d903c0aee0756e1feb39d91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FlatMap/Variant70b92bfb0815417b01c1eb7e6b43b058d17281be4d903c0aee0756e1feb39d91.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb8dd3798c412a0e204c7d0850e228138c3b7693` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
