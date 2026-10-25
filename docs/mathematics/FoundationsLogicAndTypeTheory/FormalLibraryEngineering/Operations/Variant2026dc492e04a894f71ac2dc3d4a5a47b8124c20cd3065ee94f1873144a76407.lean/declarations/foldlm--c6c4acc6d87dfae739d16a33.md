# foldlM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2965e3ba4b2d6dc1f45853e82972421084f1a9304b5c32fe0c1688ed3688df34",
  "kind": "def",
  "lexical_name": "foldlM",
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
  "slug": "foldlm--c6c4acc6d87dfae739d16a33",
  "source": {
    "blob": "a38d425805b01c87e964f5caf406ed7dc5ffd3bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 115,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Operations/Variant2026dc492e04a894f71ac2dc3d4a5a47b8124c20cd3065ee94f1873144a76407.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c6c4acc6d87dfae739d16a3370f8fe1cad73c6c1bf2bc92c38d0ad7e9457b1be",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Operations/Variant2026dc492e04a894f71ac2dc3d4a5a47b8124c20cd3065ee94f1873144a76407.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2965e3ba4b2d6dc1f45853e82972421084f1a9304b5c32fe0c1688ed3688df34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def foldlM {γ : Type u} {β : Type v}
    {δ : Type w} {m : Type w → Type w'} [Monad m] (f : δ → β → m δ) (init : δ)
    [ToIterator (Slice γ) Id α β] [Iterator α Id β]
    [IteratorLoop α Id m]
    (s : Slice γ) : m δ :=
  Internal.iter s |>.foldM f init

/--
Folds an operation from left to right over the elements in a slice.
An accumulator of type `β` is constructed by starting with `init` and combining each
element of the slice with the current accumulator value in turn.
Examples for the special case of subarrays:
 * `#["red", "green", "blue"].toSubarray.foldl (· + ·.length) 0 = 12`
 * `#["red", "green", "blue"].toSubarray.popFront.foldl (· + ·.length) 0 = 9`
-/
@[always_inline, inline, suggest_for Subarray.foldl]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Operations/Variant2026dc492e04a894f71ac2dc3d4a5a47b8124c20cd3065ee94f1873144a76407.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Operations/Variant2026dc492e04a894f71ac2dc3d4a5a47b8124c20cd3065ee94f1873144a76407.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a38d425805b01c87e964f5caf406ed7dc5ffd3bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
