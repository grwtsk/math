# convolutions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:214a06f569b86783c32a312445f4c8a38a20f07bd4224ac76fa94b0fe22a7d5c",
  "kind": "def",
  "lexical_name": "convolutions",
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
  "slug": "convolutions--afb639c2cd4d0d023b29df25",
  "source": {
    "blob": "072e9465234fa69e7f9296926ff65678c6fc17a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1155,
    "line": 1118,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DayConvolution/Variantf84b885f585cc15082bfafe9bdc72eb84934966e86badad2e1d3b556465e2f26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:afb639c2cd4d0d023b29df25183cff9b6ece318c4b9036d625ac25c3d4827e25",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DayConvolution/Variantf84b885f585cc15082bfafe9bdc72eb84934966e86badad2e1d3b556465e2f26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:214a06f569b86783c32a312445f4c8a38a20f07bd4224ac76fa94b0fe22a7d5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1118–1155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def convolutions (d d' : D) :
    DayConvolution ((ι C V D).obj d) ((ι C V D).obj d') where
  convolution := (ι C V D).obj (tensorObj C V d d')
  unit :=
    { app x := convolutionUnitApp V d d' x.1 x.2
      naturality := by
        intros
        simp only [convolutionUnitApp_eq, Category.assoc, NatTrans.naturality_assoc]
        simp }
  isPointwiseLeftKanExtensionUnit :=
    Functor.LeftExtension.isPointwiseLeftKanExtensionEquivOfIso
      (StructuredArrow.isoMk
        (tensorObjIsoConvolution C V d d').symm
        (by
          ext ⟨x, y⟩
          simp [convolutionUnitApp_eq V d d' x y]))
      (convolutions' d d' |>.isPointwiseLeftKanExtensionUnit)

attribute [local instance] convolutions

variable
    [∀ (v : V) (d : C), Limits.PreservesColimitsOfShape
      (CostructuredArrow (tensor C) d) (tensorLeft v)]
    [∀ (v : V) (d : C), Limits.PreservesColimitsOfShape
      (CostructuredArrow (tensor C) d) (tensorRight v)]
    [∀ (v : V) (d : C), Limits.PreservesColimitsOfShape
      (CostructuredArrow (Functor.fromPUnit.{0} <| 𝟙_ C) d) (tensorRight v)]
    [∀ (v : V) (d : C), Limits.PreservesColimitsOfShape
      (CostructuredArrow (Functor.fromPUnit.{0} <| 𝟙_ C) d) (tensorLeft v)]

open scoped DayConvolution

/-- Given a fully faithful functor `ι : C ⥤ V ⥤ D`,
a family of Day convolutions, candidate functions for `tensorObj` and `tensorHom`,
suitable isomorphisms
`ι.obj (tensorObj d d') ≅ ι.obj (tensorObj d) ⊛ ι.obj (tensorObj d')`
that behave in a lawful way with respect to the chosen Day convolutions, we can
construct a `MonoidalCategoryStruct` on `D`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DayConvolution/Variantf84b885f585cc15082bfafe9bdc72eb84934966e86badad2e1d3b556465e2f26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DayConvolution/Variantf84b885f585cc15082bfafe9bdc72eb84934966e86badad2e1d3b556465e2f26.lean#L1118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `072e9465234fa69e7f9296926ff65678c6fc17a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
