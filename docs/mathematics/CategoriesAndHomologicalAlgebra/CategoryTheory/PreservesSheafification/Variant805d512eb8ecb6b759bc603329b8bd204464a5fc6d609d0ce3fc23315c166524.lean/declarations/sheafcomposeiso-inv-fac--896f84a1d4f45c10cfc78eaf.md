# sheafComposeIso_inv_fac

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:de82043b-7854-37f7-b600-a36f30042ad7",
  "kind": "lemma",
  "lexical_name": "sheafComposeIso_inv_fac",
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
  "slug": "sheafcomposeiso-inv-fac--896f84a1d4f45c10cfc78eaf",
  "source": {
    "blob": "0283d1cb01872acb30d15281a2530fa893d9ed7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 281,
    "line": 252,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variant805d512eb8ecb6b759bc603329b8bd204464a5fc6d609d0ce3fc23315c166524.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:896f84a1d4f45c10cfc78eaffe8723484451724815c5debc4bc5e64c58c5865e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variant805d512eb8ecb6b759bc603329b8bd204464a5fc6d609d0ce3fc23315c166524.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de82043b-7854-37f7-b600-a36f30042ad7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–281.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma sheafComposeIso_inv_fac :
    whiskerRight (toSheafify J P) F ≫ (sheafifyComposeIso J F P).inv =
      toSheafify J (P ⋙ F) := by
  rw [← sheafComposeIso_hom_fac, assoc, Iso.hom_inv_id, comp_id]

end HasSheafCompose

namespace GrothendieckTopology

section

variable {D E : Type*} [Category* D] [Category* E] (F : D ⥤ E)
  [∀ (J : MulticospanShape.{max v u, max v u}), HasLimitsOfShape (WalkingMulticospan J) D]
  [∀ (J : MulticospanShape.{max v u, max v u}), HasLimitsOfShape (WalkingMulticospan J) E]
  [∀ X : C, HasColimitsOfShape (J.Cover X)ᵒᵖ D]
  [∀ X : C, HasColimitsOfShape (J.Cover X)ᵒᵖ E]
  [∀ X : C, PreservesColimitsOfShape (J.Cover X)ᵒᵖ F]
  [∀ (X : C) (W : J.Cover X) (P : Cᵒᵖ ⥤ D), PreservesLimit (W.index P).multicospan F]
  {FD : D → D → Type*} {CD : D → Type*} {FE : E → E → Type*} {CE : E → Type*}
  [∀ X Y, FunLike (FD X Y) (CD X) (CD Y)] [∀ X Y, FunLike (FE X Y) (CE X) (CE Y)]
  [instCCD : ConcreteCategory D FD] [instCCE : ConcreteCategory E FE]
  [∀ X, PreservesColimitsOfShape (Cover J X)ᵒᵖ (forget D)]
  [∀ X, PreservesColimitsOfShape (Cover J X)ᵒᵖ (forget E)]
  [PreservesLimitsOfSize.{max v u, max v u} (forget D)]
  [PreservesLimitsOfSize.{max v u, max v u} (forget E)]
  [(forget D).ReflectsIsomorphisms] [(forget E).ReflectsIsomorphisms]

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
include instCCD instCCE in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variant805d512eb8ecb6b759bc603329b8bd204464a5fc6d609d0ce3fc23315c166524.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/PreservesSheafification/Variant805d512eb8ecb6b759bc603329b8bd204464a5fc6d609d0ce3fc23315c166524.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0283d1cb01872acb30d15281a2530fa893d9ed7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
