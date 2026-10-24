# whitehead

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "1d74451e7c922e39cb27530fcbaf3aa969016793",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 212,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/31/318b0d5d1be5d327481a2931710d0d9abe981f111c906658fe81050e5ab1172a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b9c3d24d-e66e-3b0d-52a9-a78395ca0767",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6be692aa-6cb2-51af-7e9d-f858820f1c36",
  "kind": "lemma",
  "lexical_name": "whitehead",
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
  "slug": "whitehead--731c8e418a6056fc1a149f9e",
  "source": {
    "blob": "1d74451e7c922e39cb27530fcbaf3aa969016793",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 212,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant318b0d5d1be5d327481a2931710d0d9abe981f111c906658fe81050e5ab1172a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:731c8e418a6056fc1a149f9e1972c399150c8ac1ac6766586d639ce5dce1c807",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant318b0d5d1be5d327481a2931710d0d9abe981f111c906658fe81050e5ab1172a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6be692aa-6cb2-51af-7e9d-f858820f1c36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma whitehead [IsCofibrant X] [IsCofibrant Y] [IsFibrant X] [IsFibrant Y]
    (f : X ⟶ Y) [WeakEquivalence f] :
    ∃ (g : Y ⟶ X), RightHomotopyRel (f ≫ g) (𝟙 X) ∧ RightHomotopyRel (g ≫ f) (𝟙 Y) := by
  obtain ⟨g, hg⟩ := (precomp_bijective_of_weakEquivalence X f).2 (.mk (𝟙 X))
  obtain ⟨g, rfl⟩ := g.mk_surjective
  dsimp at hg
  refine ⟨g, by rwa [← mk_eq_mk_iff], ?_⟩
  rw [← mk_eq_mk_iff]
  apply (precomp_bijective_of_weakEquivalence Y f).1
  simp only [precomp_mk, Category.comp_id]
  rw [mk_eq_mk_iff, ← leftHomotopyRel_iff_rightHomotopyRel] at hg ⊢
  simpa using hg.postcomp f

end RightHomotopyClass

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant318b0d5d1be5d327481a2931710d0d9abe981f111c906658fe81050e5ab1172a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homotopy/Variant318b0d5d1be5d327481a2931710d0d9abe981f111c906658fe81050e5ab1172a.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1d74451e7c922e39cb27530fcbaf3aa969016793` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
