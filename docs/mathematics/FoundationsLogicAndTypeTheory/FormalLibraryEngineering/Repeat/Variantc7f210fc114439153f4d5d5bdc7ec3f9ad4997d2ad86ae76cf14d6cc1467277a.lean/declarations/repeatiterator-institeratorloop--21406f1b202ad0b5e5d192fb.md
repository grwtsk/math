# RepeatIterator.instIteratorLoop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:602d2353ee1d13f1f3731ae78f81429134b0d07302a2a143e17cb4ca43af4184",
  "kind": "instance",
  "lexical_name": "RepeatIterator.instIteratorLoop",
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
  "slug": "repeatiterator-institeratorloop--21406f1b202ad0b5e5d192fb",
  "source": {
    "blob": "07c67de8a8f181056dab46eacb80dfee7c5289bd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 62,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variantc7f210fc114439153f4d5d5bdc7ec3f9ad4997d2ad86ae76cf14d6cc1467277a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:21406f1b202ad0b5e5d192fb035cc5d569935d21c7214e80c455e080ce1c1de6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variantc7f210fc114439153f4d5d5bdc7ec3f9ad4997d2ad86ae76cf14d6cc1467277a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:602d2353ee1d13f1f3731ae78f81429134b0d07302a2a143e17cb4ca43af4184`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance RepeatIterator.instIteratorLoop {α : Type w} {f : α → α} {n : Type w → Type w'} [Monad n] :
    IteratorLoop (RepeatIterator α f) Id n :=
  .defaultImplementation

end Iterators.Types

/--
Creates an infinite iterator from an initial value `init` and a function `f : α → α`.
First it yields `init`, and in each successive step, the iterator applies `f` to the previous value.
So if the iterator just emitted `a`, in the next step it will yield `f a`. In other words, the
`n`-th value is `Nat.repeat f n init`.

For example, if `f := (· + 1)` and `init := 0`, then the iterator emits all natural numbers in
order.

**Termination properties:**

* `Finite` instance: not available and never possible
* `Productive` instance: always
-/
@[always_inline, inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variantc7f210fc114439153f4d5d5bdc7ec3f9ad4997d2ad86ae76cf14d6cc1467277a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Repeat/Variantc7f210fc114439153f4d5d5bdc7ec3f9ad4997d2ad86ae76cf14d6cc1467277a.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07c67de8a8f181056dab46eacb80dfee7c5289bd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
