# binSearchAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4180318fb69cdc5b4e2cd71117f59b3a1734336ba8d90b430aed0a2a836d3dcb",
  "kind": "def",
  "lexical_name": "binSearchAux",
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
  "slug": "binsearchaux--852ccfcc261355879827a4f3",
  "source": {
    "blob": "bd59893cd5a9e452a45c10bd4e750fdc0ae573dc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 30,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinSearch/Variant2ae81fc3c0f7cf57c9d2698ee2a65283aad41548b32b8889b6eba1c7d8edfe86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:852ccfcc261355879827a4f340bcba375909d5191d7dd619c22b2546deb6a2ad",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinSearch/Variant2ae81fc3c0f7cf57c9d2698ee2a65283aad41548b32b8889b6eba1c7d8edfe86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4180318fb69cdc5b4e2cd71117f59b3a1734336ba8d90b430aed0a2a836d3dcb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[specialize] def binSearchAux {α : Type u} {β : Type v} (lt : α → α → Bool) (found : Option α → β) (as : Array α) (k : α) :
    (lo : Fin (as.size + 1)) → (hi : Fin as.size) → (lo.1 ≤ hi.1) → β
  | lo, hi, h =>
    let m := (lo.1 + hi.1)/2
    let a := as[m]
    if lt a k then
      if h' : m + 1 ≤ hi.1 then
        binSearchAux lt found as k ⟨m+1, by omega⟩ hi h'
      else found none
    else if lt k a then
      if h' : m = 0 ∨ m - 1 < lo.1 then found none
      else binSearchAux lt found as k lo ⟨m-1, by omega⟩ (by simp; omega)
    else found (some a)
termination_by lo hi => hi.1 - lo.1

/--
Binary search for an element equivalent to `k` in the sorted array `as`. Returns the element from
the array, if it is found, or `none` otherwise.

The array `as` must be sorted according to the comparison operator `lt`, which should be a total
order.

The optional parameters `lo` and `hi` determine the region of the array indices to be searched. Both
are inclusive, and default to searching the entire array.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinSearch/Variant2ae81fc3c0f7cf57c9d2698ee2a65283aad41548b32b8889b6eba1c7d8edfe86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinSearch/Variant2ae81fc3c0f7cf57c9d2698ee2a65283aad41548b32b8889b6eba1c7d8edfe86.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd59893cd5a9e452a45c10bd4e750fdc0ae573dc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
