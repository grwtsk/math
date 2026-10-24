# isCocontinuous_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bc57447363293835136c76bb93449f1a5d0c4908",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 83,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/10a2f3132f683e0c390cec1b6ad5a12aa8b63c4fcf921ee9b5d689eea2b02b71.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:07914fc4-984d-84db-ea18-b525c6cdc0df",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:167fe2fc-e512-f73f-a1f7-7c25d1f53a1f",
  "kind": "theorem",
  "lexical_name": "isCocontinuous_comp",
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
  "slug": "iscocontinuous-comp--6495d634600c14000284e8a2",
  "source": {
    "blob": "bc57447363293835136c76bb93449f1a5d0c4908",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 114,
    "line": 83,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant10a2f3132f683e0c390cec1b6ad5a12aa8b63c4fcf921ee9b5d689eea2b02b71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6495d634600c14000284e8a2062c80a20745ca20b64bb018d1254b8a90a37e10",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant10a2f3132f683e0c390cec1b6ad5a12aa8b63c4fcf921ee9b5d689eea2b02b71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:167fe2fc-e512-f73f-a1f7-7c25d1f53a1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCocontinuous_comp [G.IsCocontinuous J K] [G'.IsCocontinuous K L] :
    (G ⋙ G').IsCocontinuous J L where
  cover_lift h := G.cover_lift J K (G'.cover_lift K L h)

end IsCocontinuous

/-!
We will now prove that `G.op.ran : (Cᵒᵖ ⥤ A) ⥤ (Dᵒᵖ ⥤ A)` maps sheaves
to sheaves when `G : C ⥤ D` is a cocontinuous functor.

We do not follow the proofs in SGA 4 III 2.2 or <https://stacks.math.columbia.edu/tag/00XK>.
Instead, we verify as directly as possible that if `F : Cᵒᵖ ⥤ A` is a sheaf,
then `G.op.ran.obj F` is a sheaf. in order to do this, we use the "multifork"
characterization of sheaves which involves limits in the category `A`.
As `G.op.ran.obj F` is the chosen right Kan extension of `F` along `G.op : Cᵒᵖ ⥤ Dᵒᵖ`,
we actually verify that any pointwise right Kan extension of `F` along `G.op` is a sheaf.

-/

variable {C D : Type*} [Category C] [Category D] (G : C ⥤ D)
variable {A : Type w} [Category.{w'} A]
variable {J : GrothendieckTopology C} {K : GrothendieckTopology D} [G.IsCocontinuous J K]

namespace RanIsSheafOfIsCocontinuous

variable {G}
variable {F : Cᵒᵖ ⥤ A} (hF : Presheaf.IsSheaf J F)
variable {R : Dᵒᵖ ⥤ A} (α : G.op ⋙ R ⟶ F)
variable (hR : (Functor.RightExtension.mk _ α).IsPointwiseRightKanExtension)
variable {X : D} {S : K.Cover X} (s : Multifork (S.index R))

/-- Auxiliary definition for `lift`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant10a2f3132f683e0c390cec1b6ad5a12aa8b63c4fcf921ee9b5d689eea2b02b71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CoverLifting/Variant10a2f3132f683e0c390cec1b6ad5a12aa8b63c4fcf921ee9b5d689eea2b02b71.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bc57447363293835136c76bb93449f1a5d0c4908` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
