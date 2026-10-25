# Coarsen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a8255fe2625e43483b9f82bd92f4708c16c97b05d61940540b201ef3cc292f48",
  "kind": "class",
  "lexical_name": "Coarsen",
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
  "slug": "coarsen--d4a23e9951fc656f3953ebea",
  "source": {
    "blob": "52bd3b0ce99b5e367633b032cfd43c916ea00a40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 67,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToSet/Variante4911bbe51bad4a79005ef1124756acbc22b9c13bafd3482d1579e20660e251e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d4a23e9951fc656f3953ebea36b84e3cab54c375a799202c01bdd92f69cc33d6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToSet/Variante4911bbe51bad4a79005ef1124756acbc22b9c13bafd3482d1579e20660e251e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a8255fe2625e43483b9f82bd92f4708c16c97b05d61940540b201ef3cc292f48`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class Coarsen (Iα α : Type*) [ToSet Iα α] where
  /-- A represented set containing both input sets. -/
  coarsen : Iα → Iα → Iα
  /-- If `x ∈ s` then `x ∈ coarsen s t`. -/
  mem_coarsen_left {x : α} {s t : Iα} (hx : x ∈ s) : x ∈ coarsen s t
  /-- If `x ∈ t` then `x ∈ coarsen s t`. -/
  mem_coarsen_right {x : α} {s t : Iα} (hx : x ∈ t) : x ∈ coarsen s t

universe u

/-- A `Cover Iα α` specifies a function `coverMap` to compute a "refined" inclusion of `F s`
for `s : Iα` and an inclusion function `F : Iα → Iβ`, by computing `F` on each element of a
cover of `s` and then using `coarsen` to merge the results. Schematically

`coverMap s F = fold coarsen (map F (cover s))`

where `cover : Iα → Array Iα` would specify the underlying cover, but the `coverMap` formulation
allows this function to be implemented more efficiently for kernel reduction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToSet/Variante4911bbe51bad4a79005ef1124756acbc22b9c13bafd3482d1579e20660e251e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ToSet/Variante4911bbe51bad4a79005ef1124756acbc22b9c13bafd3482d1579e20660e251e.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `52bd3b0ce99b5e367633b032cfd43c916ea00a40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
