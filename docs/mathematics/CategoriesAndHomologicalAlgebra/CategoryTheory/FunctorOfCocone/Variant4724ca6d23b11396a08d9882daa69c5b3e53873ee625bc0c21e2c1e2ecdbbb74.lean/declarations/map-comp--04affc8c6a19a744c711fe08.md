# map_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5a472da9cbf939437306651eaf5d0df118619195",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 72,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/47/4724ca6d23b11396a08d9882daa69c5b3e53873ee625bc0c21e2c1e2ecdbbb74.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:813772f4-383e-4fc8-1fe8-204b797103d8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3b48c250-2289-d7f2-0c8d-40e058d4804e",
  "kind": "lemma",
  "lexical_name": "map_comp",
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
  "slug": "map-comp--04affc8c6a19a744c711fe08",
  "source": {
    "blob": "5a472da9cbf939437306651eaf5d0df118619195",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 72,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant4724ca6d23b11396a08d9882daa69c5b3e53873ee625bc0c21e2c1e2ecdbbb74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04affc8c6a19a744c711fe082ab80cb6f0ecc47e5a3b1efa4da91d0acb83429a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant4724ca6d23b11396a08d9882daa69c5b3e53873ee625bc0c21e2c1e2ecdbbb74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3b48c250-2289-d7f2-0c8d-40e058d4804e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma map_comp (i₁ i₂ i₃ : J) (hi : i₁ ≤ i₂) (hi' : i₂ ≤ i₃) (hi₃ : i₃ ≤ j) :
    map c i₁ i₃ (hi.trans hi') hi₃ =
      map c i₁ i₂ hi (hi'.trans hi₃) ≫
        map c i₂ i₃ hi' hi₃ := by
  obtain hi₁₂ | rfl := hi.lt_or_eq
  · obtain hi₂₃ | rfl := hi'.lt_or_eq
    · dsimp [map]
      obtain hi₃' | rfl := hi₃.lt_or_eq
      · rw [dite_eq_left hi₃', dite_eq_left (hi₂₃.trans hi₃'), dite_eq_left hi₃', assoc, assoc,
          Iso.inv_hom_id_assoc, ← Functor.map_comp_assoc, homOfLE_comp]
      · rw [dite_eq_right (by simp), dite_eq_left (hi₁₂.trans hi₂₃), dite_eq_left hi₂₃,
          dite_eq_right (by simp), dite_eq_left hi₂₃, eqToHom_refl, comp_id, assoc, assoc,
          Iso.inv_hom_id_assoc, Cocone.w_assoc]
    · rw [map_id, comp_id]
  · rw [map_id, id_comp]

end ofCocone

/-- Given a functor `F : Set.Iio j ⥤ C` and a cocone `c : Cocone F`,
where `j : J` and `J` is linearly ordered, this is the functor
`Set.Iic j ⥤ C` which extends `F` and sends the top element to `c.pt`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant4724ca6d23b11396a08d9882daa69c5b3e53873ee625bc0c21e2c1e2ecdbbb74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorOfCocone/Variant4724ca6d23b11396a08d9882daa69c5b3e53873ee625bc0c21e2c1e2ecdbbb74.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a472da9cbf939437306651eaf5d0df118619195` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
