# pairwiseDisjoint_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "392ee89e66587d06ef628c652883491b6b083c41",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 371,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/05/05fa1db3b68e75b2257d2ca850aaaec6f212efa4834c529b8f702b37d4384ef9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1e74a2af-9302-170c-76ff-ed93da1055d7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:832a17eb-3f42-b031-727a-20ae871bca55",
  "kind": "theorem",
  "lexical_name": "pairwiseDisjoint_pi",
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
  "slug": "pairwisedisjoint-pi--1b8f7950be89be91fd4a3378",
  "source": {
    "blob": "392ee89e66587d06ef628c652883491b6b083c41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 382,
    "line": 371,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant05fa1db3b68e75b2257d2ca850aaaec6f212efa4834c529b8f702b37d4384ef9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b8f7950be89be91fd4a3378331a059354b8a2c88a979775713ac96d48ec3113",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant05fa1db3b68e75b2257d2ca850aaaec6f212efa4834c529b8f702b37d4384ef9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:832a17eb-3f42-b031-727a-20ae871bca55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 371–382.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pairwiseDisjoint_pi {ι' α : ι → Type*} {s : ∀ i, Set (ι' i)} {f : ∀ i, ι' i → Set (α i)}
    (hs : ∀ i, (s i).PairwiseDisjoint (f i)) :
    ((univ : Set ι).pi s).PairwiseDisjoint fun I => (univ : Set ι).pi fun i => f _ (I i) :=
  fun _ hI _ hJ hIJ =>
  disjoint_left.2 fun a haI haJ =>
    hIJ <|
      funext fun i =>
        (hs i).elim_set (hI i trivial) (hJ i trivial) (a i) (haI i trivial) (haJ i trivial)
#align set.pairwise_disjoint_pi Set.pairwiseDisjoint_pi

/-- The partial images of a binary function `f` whose partial evaluations are injective are pairwise
disjoint iff `f` is injective . -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant05fa1db3b68e75b2257d2ca850aaaec6f212efa4834c529b8f702b37d4384ef9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant05fa1db3b68e75b2257d2ca850aaaec6f212efa4834c529b8f702b37d4384ef9.lean#L371).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `392ee89e66587d06ef628c652883491b6b083c41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
