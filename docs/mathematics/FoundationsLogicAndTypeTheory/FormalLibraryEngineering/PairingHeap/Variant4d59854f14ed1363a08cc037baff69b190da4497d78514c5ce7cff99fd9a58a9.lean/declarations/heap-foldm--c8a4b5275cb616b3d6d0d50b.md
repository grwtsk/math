# Heap.foldM

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d14cbefe3f0ff5be6a4ee26c0eb529be37a3857821edd5a94deb9e85fddb0b04",
  "kind": "def",
  "lexical_name": "Heap.foldM",
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
  "slug": "heap-foldm--c8a4b5275cb616b3d6d0d50b",
  "source": {
    "blob": "a4d192b44f3afabe24cc7ca34e7ee854ac00f422",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 169,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PairingHeap/Variant4d59854f14ed1363a08cc037baff69b190da4497d78514c5ce7cff99fd9a58a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c8a4b5275cb616b3d6d0d50b12ea2c296eab96787c0597003e6ef085c90eb1ba",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PairingHeap/Variant4d59854f14ed1363a08cc037baff69b190da4497d78514c5ce7cff99fd9a58a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d14cbefe3f0ff5be6a4ee26c0eb529be37a3857821edd5a94deb9e85fddb0b04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[specialize] def Heap.foldM [Monad m] (le : α → α → Bool) (s : Heap α)
    (init : β) (f : β → α → m β) : m β :=
  match eq : s.deleteMin le with
  | none => pure init
  | some (hd, tl) =>
    have : tl.size < s.size := by simp_arith [Heap.size_deleteMin_lt eq]
    do foldM le tl (← f init hd) f
termination_by _ => s.size

/--
`O(n log n)`. Fold over the elements of a heap in increasing order,
by repeatedly pulling the minimum element out of the heap.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PairingHeap/Variant4d59854f14ed1363a08cc037baff69b190da4497d78514c5ce7cff99fd9a58a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PairingHeap/Variant4d59854f14ed1363a08cc037baff69b190da4497d78514c5ce7cff99fd9a58a9.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4d192b44f3afabe24cc7ca34e7ee854ac00f422` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
