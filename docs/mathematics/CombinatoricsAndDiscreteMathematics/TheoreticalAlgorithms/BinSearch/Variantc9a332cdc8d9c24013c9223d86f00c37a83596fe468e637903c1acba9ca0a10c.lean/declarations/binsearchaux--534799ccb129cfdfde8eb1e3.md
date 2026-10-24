# binSearchAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a465a0992e491d758610fed805ebe284dbcba408418c34f8e2c1a813d92e726f",
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
  "slug": "binsearchaux--534799ccb129cfdfde8eb1e3",
  "source": {
    "blob": "17d037bc1004a9b0ad3026bf64acc34fb6224528",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 22,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinSearch/Variantc9a332cdc8d9c24013c9223d86f00c37a83596fe468e637903c1acba9ca0a10c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:534799ccb129cfdfde8eb1e3b4c7e98b0db54f444fadb9e6a53267118c817a80",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinSearch/Variantc9a332cdc8d9c24013c9223d86f00c37a83596fe468e637903c1acba9ca0a10c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a465a0992e491d758610fed805ebe284dbcba408418c34f8e2c1a813d92e726f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–46.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinSearch/Variantc9a332cdc8d9c24013c9223d86f00c37a83596fe468e637903c1acba9ca0a10c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/BinSearch/Variantc9a332cdc8d9c24013c9223d86f00c37a83596fe468e637903c1acba9ca0a10c.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17d037bc1004a9b0ad3026bf64acc34fb6224528` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
