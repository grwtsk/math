# isIso_homologyMap_of_isIso_opcyclesMap_of_mono

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:25f2997c-08e7-b324-a6e2-fca5c19c5ad1",
  "kind": "lemma",
  "lexical_name": "isIso_homologyMap_of_isIso_opcyclesMap_of_mono",
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
  "slug": "isiso-homologymap-of-isiso-opcyclesmap-of-mono--b66b2bcf41f72777823a8ca7",
  "source": {
    "blob": "12b71a88e6b6e8c53e5abe4e794864e7d653e664",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1154,
    "line": 1141,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variantd8689ade427e1acf8df9cadfdf1eb642ee2d937befd87561ef38d122a7fd5683.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b66b2bcf41f72777823a8ca767f90e5f48ce7c2ee5eb6fad0605276434affced",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variantd8689ade427e1acf8df9cadfdf1eb642ee2d937befd87561ef38d122a7fd5683.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:25f2997c-08e7-b324-a6e2-fca5c19c5ad1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1141–1154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isIso_homologyMap_of_isIso_opcyclesMap_of_mono {φ : S₁ ⟶ S₂}
    [S₁.HasHomology] [S₂.HasHomology] (h₁ : IsIso (opcyclesMap φ)) (h₂ : Mono φ.τ₃) :
    IsIso (homologyMap φ) := by
  have h : (S₂.homologyι ≫ inv (opcyclesMap φ)) ≫ S₁.fromOpcycles = 0 := by
    simp only [← cancel_mono φ.τ₃, zero_comp, assoc, ← fromOpcycles_naturality,
      IsIso.inv_hom_id_assoc, homologyι_comp_fromOpcycles]
  have ⟨z, hz⟩ := KernelFork.IsLimit.lift' S₁.homologyIsKernel _ h
  dsimp at hz
  refine ⟨⟨z, ?_, ?_⟩⟩
  · rw [← cancel_mono S₁.homologyι, id_comp, assoc, hz, homologyι_naturality_assoc,
      IsIso.hom_inv_id, comp_id]
  · rw [← cancel_mono S₂.homologyι, assoc, homologyι_naturality, reassoc_of% hz,
      IsIso.inv_hom_id, comp_id, id_comp]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variantd8689ade427e1acf8df9cadfdf1eb642ee2d937befd87561ef38d122a7fd5683.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Homology/Variantd8689ade427e1acf8df9cadfdf1eb642ee2d937befd87561ef38d122a7fd5683.lean#L1141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12b71a88e6b6e8c53e5abe4e794864e7d653e664` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
