# ιMapBifunctor_hom₂

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4a0d2257078bcb230e5ebf9f7b474431886cfd5f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 73,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/81/81593e16af20646a3c18e9f133cd16f2e9711d5049f42f0e5e37561342daa2c2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:351fe8ec-952f-a3db-0f97-f0a270e3fcd9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:88ff1143-a8db-fae7-f81a-bab98209f540",
  "kind": "lemma",
  "lexical_name": "ιMapBifunctor_hom₂",
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
  "slug": "mapbifunctor-hom--2b9fa25ddecc2bd1e9839bb5",
  "source": {
    "blob": "4a0d2257078bcb230e5ebf9f7b474431886cfd5f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 82,
    "line": 73,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorHomotopy/Variant81593e16af20646a3c18e9f133cd16f2e9711d5049f42f0e5e37561342daa2c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2b9fa25ddecc2bd1e9839bb56f474c2a671e32570505b4519cb5ee30b9e03cbf",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorHomotopy/Variant81593e16af20646a3c18e9f133cd16f2e9711d5049f42f0e5e37561342daa2c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88ff1143-a8db-fae7-f81a-bab98209f540`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–82.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ιMapBifunctor_hom₂ (i₁ : I₁) (i₂ i₂' : I₂) (j j' : J)
    (h : ComplexShape.π c₁ c₂ c (i₁, i₂') = j) (h' : c₂.prev i₂' = i₂) :
    ιMapBifunctor K₁ K₂ F c i₁ i₂' j h ≫ hom₂ f₁ h₂ F c j j' =
      ComplexShape.ε₂ c₁ c₂ c (i₁, i₂) •
        (F.map (f₁.f i₁)).app (K₂.X i₂') ≫
          (F.obj (L₁.X i₁)).map (h₂.hom i₂' i₂) ≫ ιMapBifunctorOrZero L₁ L₂ F c i₁ i₂ j' := by
  subst h'
  simp [hom₂]

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorHomotopy/Variant81593e16af20646a3c18e9f133cd16f2e9711d5049f42f0e5e37561342daa2c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorHomotopy/Variant81593e16af20646a3c18e9f133cd16f2e9711d5049f42f0e5e37561342daa2c2.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a0d2257078bcb230e5ebf9f7b474431886cfd5f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
