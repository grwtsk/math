# isoMapOfCommSq_vert_id

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6273c4a8-a9b3-ccae-a21d-4daeb2a5f92a",
  "kind": "lemma",
  "lexical_name": "isoMapOfCommSq_vert_id",
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
  "slug": "isomapofcommsq-vert-id--b76df9843281b5ee70bdc643",
  "source": {
    "blob": "8cf1b7142c83fe90f026d14c4d7c93f33ebe580d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 249,
    "line": 226,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant682c3a2ca11bbce7274d0ad43973445e9a8c1928918874f4be50775c5061b021.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b76df9843281b5ee70bdc6435f50f5f00afcb272d246f0003923aed414bdfa42",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant682c3a2ca11bbce7274d0ad43973445e9a8c1928918874f4be50775c5061b021.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6273c4a8-a9b3-ccae-a21d-4daeb2a5f92a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–249.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isoMapOfCommSq_vert_id (f : X₁ ⟶ X₂) :
    F.isoMapOfCommSq (t := f) (l := 𝟙 _) (r := 𝟙 _) (b := f) ⟨by simp⟩ =
      whiskerLeftIso (F.map f) (F.mapId X₂) ≪≫ ρ_ _ ≪≫ (λ_ _).symm ≪≫
        (whiskerRightIso (F.mapId X₁) (F.map f)).symm := by
  ext
  rw [isoMapOfCommSq_eq _ _ f (by simp), mapComp'_comp_id, mapComp'_id_comp]
  simp

end CommSq

end Pseudofunctor

namespace LaxFunctor

variable {B : Type u₁} {C : Type u₂} [Bicategory.{w₁, v₁} B]
  [Strict B] [Bicategory.{w₂, v₂} C] (F : B ⥤ᴸ C)

section associativity

variable {b₀ b₁ b₂ b₃ : B} (f₀₁ : b₀ ⟶ b₁)
  (f₁₂ : b₁ ⟶ b₂) (f₂₃ : b₂ ⟶ b₃) (f₀₂ : b₀ ⟶ b₂) (f₁₃ : b₁ ⟶ b₃) (f : b₀ ⟶ b₃)
  (h₀₂ : f₀₁ ≫ f₁₂ = f₀₂) (h₁₃ : f₁₂ ≫ f₂₃ = f₁₃)

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant682c3a2ca11bbce7274d0ad43973445e9a8c1928918874f4be50775c5061b021.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Variant682c3a2ca11bbce7274d0ad43973445e9a8c1928918874f4be50775c5061b021.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8cf1b7142c83fe90f026d14c4d7c93f33ebe580d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
