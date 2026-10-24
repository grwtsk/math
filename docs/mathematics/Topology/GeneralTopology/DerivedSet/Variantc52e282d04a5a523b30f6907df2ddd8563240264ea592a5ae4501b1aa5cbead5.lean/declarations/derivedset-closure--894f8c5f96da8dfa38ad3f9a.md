# derivedSet_closure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bcf268743bee66851dca5a9dc0f6bce74ebe8620",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 77,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c52e282d04a5a523b30f6907df2ddd8563240264ea592a5ae4501b1aa5cbead5.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6aa1a6e6-95fe-324b-190f-02510fe87920",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e9bb1336-f0e0-1d59-d22a-9f8beeb78783",
  "kind": "lemma",
  "lexical_name": "derivedSet_closure",
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
  "slug": "derivedset-closure--894f8c5f96da8dfa38ad3f9a",
  "source": {
    "blob": "bcf268743bee66851dca5a9dc0f6bce74ebe8620",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 77,
    "path": "GRWTSK/Topology/GeneralTopology/DerivedSet/Variantc52e282d04a5a523b30f6907df2ddd8563240264ea592a5ae4501b1aa5cbead5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:894f8c5f96da8dfa38ad3f9a39d97ac5d889fb8f14001da2f355163f75cac496",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DerivedSet/Variantc52e282d04a5a523b30f6907df2ddd8563240264ea592a5ae4501b1aa5cbead5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9bb1336-f0e0-1d59-d22a-9f8beeb78783`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma derivedSet_closure [T1Space X] (A : Set X) : derivedSet (closure A) = derivedSet A := by
  refine le_antisymm (fun x hx => ?_) (derivedSet_mono _ _ subset_closure)
  rw [mem_derivedSet, AccPt, (nhdsWithin_basis_open x {x}ᶜ).inf_principal_neBot_iff] at hx ⊢
  peel hx with u hu _
  obtain ⟨-, hu_open⟩ := hu
  exact mem_closure_iff.mp this.some_mem.2 (u ∩ {x}ᶜ) (hu_open.inter isOpen_compl_singleton)
    this.some_mem.1

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DerivedSet/Variantc52e282d04a5a523b30f6907df2ddd8563240264ea592a5ae4501b1aa5cbead5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DerivedSet/Variantc52e282d04a5a523b30f6907df2ddd8563240264ea592a5ae4501b1aa5cbead5.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bcf268743bee66851dca5a9dc0f6bce74ebe8620` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
