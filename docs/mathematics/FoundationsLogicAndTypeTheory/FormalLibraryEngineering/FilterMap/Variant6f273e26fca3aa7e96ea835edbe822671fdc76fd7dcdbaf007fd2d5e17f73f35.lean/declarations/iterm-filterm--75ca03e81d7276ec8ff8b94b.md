# IterM.filterM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:571f30334220770cd8cbd9047ecf16e4f651bba07894274eb523edd4af217023",
  "kind": "def",
  "lexical_name": "IterM.filterM",
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
  "slug": "iterm-filterm--75ca03e81d7276ec8ff8b94b",
  "source": {
    "blob": "8aac50835fee9199d25bf9772470f748d0879e50",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 485,
    "line": 449,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant6f273e26fca3aa7e96ea835edbe822671fdc76fd7dcdbaf007fd2d5e17f73f35.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:75ca03e81d7276ec8ff8b94bc544443005c837d26287f3cecf2020783b5f24d0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant6f273e26fca3aa7e96ea835edbe822671fdc76fd7dcdbaf007fd2d5e17f73f35.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:571f30334220770cd8cbd9047ecf16e4f651bba07894274eb523edd4af217023`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 449–485.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def IterM.filterM {α β : Type w} {m : Type w → Type w'} {n : Type w → Type w''} [Iterator α m β]
    [Monad n] [MonadAttach n] [MonadLiftT m n] (f : β → n (ULift Bool)) (it : IterM (α := α) m β) :=
  (it.filterMapWithPostcondition
    (fun b => (PostconditionT.attachLift (f b)).map (if ·.down = true then some b else none)) : IterM n β)

/--
If `it` is an iterator, then `it.filterMap f` is another iterator that applies a function `f` to all
values emitted by `it`. `f` is expected to return an `Option`. If it returns `none`, then nothing is
emitted; if it returns `some x`, then `x` is emitted.

In situations where `f` is monadic, use `filterMapM` instead.

**Marble diagram:**

```text
it               ---a --b--c --d-e--⊥
it.filterMap     ---a'-----c'-------⊥
```

(given that `f a = some a'`, `f c = c'` and `f b = f d = d e = none`)

**Termination properties:**

* `Finite` instance: only if `it` is finite
* `Productive` instance: only if `it` is finite`

For certain mapping functions `f`, the resulting iterator will be productive even though
no `Productive` instance is provided. For example, if `f` never returns `none`, then
this combinator will preserve productiveness. In such situations, the missing instance needs to
be proved manually.

**Performance:**

For each value emitted by the base iterator `it`, this combinator calls `f` and matches on the
returned `Option` value.
-/
@[inline, expose]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant6f273e26fca3aa7e96ea835edbe822671fdc76fd7dcdbaf007fd2d5e17f73f35.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilterMap/Variant6f273e26fca3aa7e96ea835edbe822671fdc76fd7dcdbaf007fd2d5e17f73f35.lean#L449).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8aac50835fee9199d25bf9772470f748d0879e50` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
