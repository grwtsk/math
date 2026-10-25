# Small.bind

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f552c724111d0d844b28249e77a93cd0ce497af5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 137,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b57350387e416e164455958abf2b5b9152588ff8a97472e613adec112143a01f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:30e0579c-d2d5-2cce-c06f-996fcccf3f06",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a2f369e0-4f78-4aa8-7c8e-c6a43510177c",
  "kind": "theorem",
  "lexical_name": "Small.bind",
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
  "slug": "small-bind--d94f6f72f31988fc6b5e4d01",
  "source": {
    "blob": "f552c724111d0d844b28249e77a93cd0ce497af5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 168,
    "line": 137,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HetT/Variantb57350387e416e164455958abf2b5b9152588ff8a97472e613adec112143a01f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d94f6f72f31988fc6b5e4d01cf17e955939338b837099e48925d04175947aaa4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HetT/Variantb57350387e416e164455958abf2b5b9152588ff8a97472e613adec112143a01f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a2f369e0-4f78-4aa8-7c8e-c6a43510177c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 137–168.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Small.bind {α : Type v} {β : Type w} (P : α → Prop) (Q : α → β → Prop)
    (i₁ : Small.{u} { a // P a }) (i₂ : ∀ a, Small.{u} { b // Q a b }) :
    Small.{u} { b // ∃ a, P a ∧ Q a b } := .of_surjective
        ((a : { a // P a }) × { b // Q a b })
        (fun x => ⟨x.2.1, x.1, x.1.2, x.2.2⟩)
        (fun y => ⟨⟨⟨y.2.choose, y.2.choose_spec.1⟩, y.1, y.2.choose_spec.2⟩, rfl⟩)

end Small

end Std.Internal

namespace Std.Iterators
open Std.Internal

/--
If `m` is a monad, then `HetT m` is a monad that has two features:

* It generalizes `m` to arbitrary universes.
* It tracks a postcondition property that holds for the monadic return value, similarly to
  `PostconditionT`.

This monad is noncomputable and is merely a vehicle for more convenient proofs, especially proofs
about the equivalence of iterators, because it avoids universe issues and spares users the work
to handle the postconditions manually.

Caution: Just like `PostconditionT`, this is not a lawful monad transformer.
To lift from `m` to `HetT m`, use `HetT.lift`.

Because this monad is fundamentally universe-polymorphic, it is recommended for consistency to
always use the methods `HetT.pure`, `HetT.map` and `HetT.bind` instead of the homogeneous versions
`Pure.pure`, `Functor.map` and `Bind.bind`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HetT/Variantb57350387e416e164455958abf2b5b9152588ff8a97472e613adec112143a01f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HetT/Variantb57350387e416e164455958abf2b5b9152588ff8a97472e613adec112143a01f.lean#L137).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f552c724111d0d844b28249e77a93cd0ce497af5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
