# exists_lift_of_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "dd502215690c0caf575e27c9f9aba566d306b5c8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 68,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b8d3e5031c4adbf0e53329cad5ec01bd476412d97c7f1db61d36b9bbc2735c99.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f4cbde78-a495-0bb5-3a34-616000453347",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ea9cdb18-cf3b-e9d9-1583-4bf959f27997",
  "kind": "lemma",
  "lexical_name": "exists_lift_of_mono",
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
  "slug": "exists-lift-of-mono--a99533fe6ff2fd47302c3491",
  "source": {
    "blob": "dd502215690c0caf575e27c9f9aba566d306b5c8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 68,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Full/Variantb8d3e5031c4adbf0e53329cad5ec01bd476412d97c7f1db61d36b9bbc2735c99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a99533fe6ff2fd47302c34915675f24b9e375d2ae985ec2161cfc47d02c521f2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Full/Variantb8d3e5031c4adbf0e53329cad5ec01bd476412d97c7f1db61d36b9bbc2735c99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea9cdb18-cf3b-e9d9-1583-4bf959f27997`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_lift_of_mono (X : C) (Y : Action FintypeCat.{u} (Aut F))
    (i : Y ⟶ (functorToAction F).obj X) [Mono i] : ∃ (Z : C) (f : Z ⟶ X)
    (u : Y ≅ (functorToAction F).obj Z), Mono f ∧ u.hom ≫ (functorToAction F).map f = i := by
  obtain ⟨ι, hf, f, t, hc⟩ := has_decomp_connected_components' Y
  let i' (j : ι) : f j ⟶ (functorToAction F).obj X := Sigma.ι f j ≫ t.hom ≫ i
  have (j : ι) : Mono (i' j) :=
    have : Mono (Sigma.ι f j) := MonoCoprod.mono_ι f j
    have : Mono (t.hom ≫ i) := mono_comp _ _
    mono_comp _ _
  choose gZ gf gu _ _ h using fun i ↦ exists_lift_of_mono_of_isConnected F X (f i) (i' i)
  let is2 : (functorToAction F).obj (∐ gZ) ≅ ∐ fun i => (functorToAction F).obj (gZ i) :=
    PreservesCoproduct.iso (functorToAction F) gZ
  let u' : ∐ f ≅ ∐ fun i => (functorToAction F).obj (gZ i) := Sigma.mapIso gu
  have heq : (functorToAction F).map (Sigma.desc gf) = (t.symm ≪≫ u' ≪≫ is2.symm).inv ≫ i := by
    simp only [Iso.trans_inv, Iso.symm_inv, Category.assoc]
    rw [← Iso.inv_comp_eq]
    refine Sigma.hom_ext _ _ (fun j ↦ ?_)
    suffices (functorToAction F).map (gf j) = (gu j).inv ≫ i' j by
      simpa [is2, u']
    simp only [h, Iso.inv_hom_id_assoc]
  refine ⟨∐ gZ, Sigma.desc gf, t.symm ≪≫ u' ≪≫ is2.symm, ?_, by simp [heq]⟩
  · exact mono_of_mono_map (functorToAction F) (heq ▸ mono_comp _ _)

/-- The by a fiber functor `F : C ⥤ FintypeCat` induced functor `functorToAction F` to
finite `Aut F`-sets is full. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Full/Variantb8d3e5031c4adbf0e53329cad5ec01bd476412d97c7f1db61d36b9bbc2735c99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Full/Variantb8d3e5031c4adbf0e53329cad5ec01bd476412d97c7f1db61d36b9bbc2735c99.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd502215690c0caf575e27c9f9aba566d306b5c8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
