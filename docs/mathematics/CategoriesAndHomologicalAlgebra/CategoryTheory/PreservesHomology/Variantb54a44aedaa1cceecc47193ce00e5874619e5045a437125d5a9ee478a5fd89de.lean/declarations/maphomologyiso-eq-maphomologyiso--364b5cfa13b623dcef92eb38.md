# mapHomologyIso'_eq_mapHomologyIso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b835fe5320c761b3230573453e47093baebf328b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 655,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b5/b54a44aedaa1cceecc47193ce00e5874619e5045a437125d5a9ee478a5fd89de.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:47406b45-de4b-fa0d-820b-cf24c9ee4de0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5fe18afa-7198-942d-d4d8-4f2007afcba7",
  "kind": "lemma",
  "lexical_name": "mapHomologyIso'_eq_mapHomologyIso",
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
  "slug": "maphomologyiso-eq-maphomologyiso--364b5cfa13b623dcef92eb38",
  "source": {
    "blob": "b835fe5320c761b3230573453e47093baebf328b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 688,
    "line": 655,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesHomology/Variantb54a44aedaa1cceecc47193ce00e5874619e5045a437125d5a9ee478a5fd89de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:364b5cfa13b623dcef92eb389f01dff08f7e2e177e19b970bbc75eed228e403d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesHomology/Variantb54a44aedaa1cceecc47193ce00e5874619e5045a437125d5a9ee478a5fd89de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fe18afa-7198-942d-d4d8-4f2007afcba7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 655–688.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma mapHomologyIso'_eq_mapHomologyIso [S.HasHomology] [F.PreservesLeftHomologyOf S]
    [F.PreservesRightHomologyOf S] :
    S.mapHomologyIso' F = S.mapHomologyIso F := by
  ext
  rw [S.homologyData.left.mapHomologyIso_eq F, S.homologyData.right.mapHomologyIso'_eq F]
  dsimp only [Iso.trans, Iso.symm, Iso.refl, Functor.mapIso, RightHomologyData.homologyIso,
    rightHomologyIso, RightHomologyData.rightHomologyIso, LeftHomologyData.homologyIso,
    leftHomologyIso, LeftHomologyData.leftHomologyIso]
  simp only [RightHomologyData.map_H, rightHomologyMapIso'_inv, rightHomologyMapIso'_hom, assoc,
    Functor.map_comp, RightHomologyData.map_rightHomologyMap', Functor.mapShortComplex_obj,
    Functor.map_id, LeftHomologyData.map_H, leftHomologyMapIso'_inv, leftHomologyMapIso'_hom,
    LeftHomologyData.map_leftHomologyMap', ← rightHomologyMap'_comp_assoc, ← leftHomologyMap'_comp,
    id_comp]
  have γ : HomologyMapData (𝟙 (S.map F)) (map S F).homologyData (S.homologyData.map F) := default
  have eq := γ.comm
  rw [← γ.left.leftHomologyMap'_eq, ← γ.right.rightHomologyMap'_eq] at eq
  dsimp at eq
  simp only [← reassoc_of% eq, ← F.map_comp, Iso.hom_inv_id, F.map_id, comp_id]

end

section

variable {S}
  {F G : C ⥤ D} [F.PreservesZeroMorphisms] [G.PreservesZeroMorphisms]
  [F.PreservesLeftHomologyOf S] [G.PreservesLeftHomologyOf S]
  [F.PreservesRightHomologyOf S] [G.PreservesRightHomologyOf S]

set_option backward.defeqAttrib.useBackward true in
/-- Given a natural transformation `τ : F ⟶ G` between functors `C ⥤ D` which preserve
the left homology of a short complex `S`, and a left homology data for `S`,
this is the left homology map data for the morphism `S.mapNatTrans τ`
obtained by evaluating `τ`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesHomology/Variantb54a44aedaa1cceecc47193ce00e5874619e5045a437125d5a9ee478a5fd89de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesHomology/Variantb54a44aedaa1cceecc47193ce00e5874619e5045a437125d5a9ee478a5fd89de.lean#L655).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b835fe5320c761b3230573453e47093baebf328b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
