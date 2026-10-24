# epi_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c289586c-b3cb-6f3e-2c29-fa40d6727c6c",
  "kind": "lemma",
  "lexical_name": "epi_map",
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
  "slug": "epi-map--b2c07452f8a30f9e295bdfe9",
  "source": {
    "blob": "5d73cd1dc31a0e545eeb7e3a3addeeb10b6527e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 51,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant6f7ecd34976a966e5b5ef941f7421b54a6155f293d59d0c07e843ce587670be1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b2c07452f8a30f9e295bdfe90cbb01a95089d2943e790a613fae38b79cf36790",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant6f7ecd34976a966e5b5ef941f7421b54a6155f293d59d0c07e843ce587670be1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c289586c-b3cb-6f3e-2c29-fa40d6727c6c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma epi_map (α : mk₃ f₁ f₂ f₃ ⟶ mk₃ f₁ f₂ f₃') (n₀ n₁ n₂ n₃ : ℤ)
    (hα₀ : α.app 0 = 𝟙 _ := by cat_disch) (hα₁ : α.app 1 = 𝟙 _ := by cat_disch)
    (hα₂ : α.app 2 = 𝟙 _ := by cat_disch)
    (hn₁ : n₀ + 1 = n₁ := by lia) (hn₂ : n₁ + 1 = n₂ := by lia) (hn₃ : n₂ + 1 = n₃ := by lia) :
    Epi (X.map f₁ f₂ f₃ f₁ f₂ f₃' α n₀ n₁ n₂ hn₁ hn₂) :=
  have : Epi (X.cyclesMap f₁ f₂ f₁ f₂ (𝟙 (mk₂ f₁ f₂)) n₁) := by rw [X.cyclesMap_id]; infer_instance
  epi_of_epi_fac (X.πE_map _ _ _ _ _ _ α (𝟙 _) n₀ n₁ n₂ (by cat_disch) _ _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant6f7ecd34976a966e5b5ef941f7421b54a6155f293d59d0c07e843ce587670be1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EpiMono/Variant6f7ecd34976a966e5b5ef941f7421b54a6155f293d59d0c07e843ce587670be1.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d73cd1dc31a0e545eeb7e3a3addeeb10b6527e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
