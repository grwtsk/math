# mapBifunctorAssociatorX_hom_D₃

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "12aac480ca3bddf76d84604c890db4a12739265e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 779,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/97/9756d2b9244ab725ee0216b43b180cc17250eef079e831940eb678e446efb999.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3299a1a2-9dd4-1cbe-b897-1a1f55951607",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a085dc21-7af5-93b1-25e9-048bebf552dd",
  "kind": "lemma",
  "lexical_name": "mapBifunctorAssociatorX_hom_D₃",
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
  "slug": "mapbifunctorassociatorx-hom-d--dba88444195b2023e3313eb7",
  "source": {
    "blob": "12aac480ca3bddf76d84604c890db4a12739265e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 797,
    "line": 779,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorAssociator/Variant9756d2b9244ab725ee0216b43b180cc17250eef079e831940eb678e446efb999.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dba88444195b2023e3313eb7bdcfd39680c71ae7fc4ef3b4addca3fbdb587768",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorAssociator/Variant9756d2b9244ab725ee0216b43b180cc17250eef079e831940eb678e446efb999.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a085dc21-7af5-93b1-25e9-048bebf552dd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 779–797.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mapBifunctorAssociatorX_hom_D₃ (j j' : ι₄) :
    (mapBifunctorAssociatorX associator K₁ K₂ K₃ c₁₂ c₂₃ c₄ j).hom ≫
      mapBifunctor₂₃.D₃ F G₂₃ K₁ K₂ K₃ c₁₂ c₂₃ c₄ j j' =
        mapBifunctor₁₂.D₃ F₁₂ G K₁ K₂ K₃ c₁₂ c₄ j j' ≫
        (mapBifunctorAssociatorX associator K₁ K₂ K₃ c₁₂ c₂₃ c₄ j').hom := by
  ext i₁ i₂ i₃ h
  rw [mapBifunctor₁₂.ι_D₃_assoc, ι_mapBifunctorAssociatorX_hom_assoc, mapBifunctor₂₃.ι_D₃]
  by_cases h₁ : c₃.Rel i₃ (c₃.next i₃)
  · rw [mapBifunctor₁₂.d₃_eq _ _ _ _ _ _ _ _ _ h₁,
      mapBifunctor₂₃.d₃_eq _ _ _ _ _ _ _ _ _ _ h₁,
      Linear.comp_units_smul, Linear.units_smul_comp, assoc,
      ιOrZero_mapBifunctorAssociatorX_hom, NatTrans.naturality_assoc,
      ComplexShape.associative_ε₂_eq_mul c₁ c₂ c₃ c₁₂ c₂₃ c₄]
    dsimp
  · rw [mapBifunctor₁₂.d₃_eq_zero _ _ _ _ _ _ _ _ _ _ _ h₁,
      mapBifunctor₂₃.d₃_eq_zero _ _ _ _ _ _ _ _ _ _ _ _ h₁, comp_zero, zero_comp]

/-- The associator isomorphism for the action of bifunctors
on homological complexes. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorAssociator/Variant9756d2b9244ab725ee0216b43b180cc17250eef079e831940eb678e446efb999.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorAssociator/Variant9756d2b9244ab725ee0216b43b180cc17250eef079e831940eb678e446efb999.lean#L779).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12aac480ca3bddf76d84604c890db4a12739265e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
