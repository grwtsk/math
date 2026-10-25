# Iterators.Types.Take

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8d67065ce4df6d4e7ea23bfa05daac25e54afc48c1d72ca4beb728cd6e8e0286",
  "kind": "structure",
  "lexical_name": "Iterators.Types.Take",
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
  "slug": "iterators-types-take--33723596210a88d79ebad147",
  "source": {
    "blob": "dde233eb2824b26c80b25d29b6a53f6ea574ac46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 28,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variant4801630af9df11e4dddeab481140eea771ad90378c18a587b9f70687300a5e94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:33723596210a88d79ebad1479d4f2e3457733bd98b16e38d1d33655868f9f47d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variant4801630af9df11e4dddeab481140eea771ad90378c18a587b9f70687300a5e94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8d67065ce4df6d4e7ea23bfa05daac25e54afc48c1d72ca4beb728cd6e8e0286`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 28–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
structure Iterators.Types.Take (α : Type w) (m : Type w → Type w') {β : Type w} [Iterator α m β] where
  /--
  Internal implementation detail of the iterator library.
  Caution: For `take n`, `countdown` is `n + 1`.
  If `countdown` is zero, the combinator only terminates when `inner` terminates.
  -/
  countdown : Nat
  /-- Internal implementation detail of the iterator library -/
  inner : IterM (α := α) m β
  /--
  Internal implementation detail of the iterator library.
  This proof term ensures that a `take` always produces a finite iterator from a productive one.
  -/
  finite : countdown > 0 ∨ Finite α m

open Std.Iterators Std.Iterators.Types

/--
Given an iterator `it` and a natural number `n`, `it.take n` is an iterator that outputs
up to the first `n` of `it`'s values in order and then terminates.

**Marble diagram:**

```text
it          ---a----b---c--d-e--⊥
it.take 3   ---a----b---c⊥

it          ---a--⊥
it.take 3   ---a--⊥
```

**Termination properties:**

* `Finite` instance: only if `it` is productive
* `Productive` instance: only if `it` is productive

**Performance:**

This combinator incurs an additional O(1) cost with each output of `it`.
-/
@[always_inline, inline]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variant4801630af9df11e4dddeab481140eea771ad90378c18a587b9f70687300a5e94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Take/Variant4801630af9df11e4dddeab481140eea771ad90378c18a587b9f70687300a5e94.lean#L28).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dde233eb2824b26c80b25d29b6a53f6ea574ac46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
