# ObjectProperty.FullSubcategory.concreteCategory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b2d3adc4f5df9500ec76ea17cacf9ad9ad2d4bd314dd5ab39663673b0fa16fe6",
  "kind": "instance",
  "lexical_name": "ObjectProperty.FullSubcategory.concreteCategory",
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
  "slug": "objectproperty-fullsubcategory-concretecategory--94b00dc905d1072e6e775a81",
  "source": {
    "blob": "421ca638e81d0435ba4b4f1c3471aa9b32703601",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 196,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantddcb94727f101d58686e98cf98b16094cc9566f2dac184c10ff660f257571dab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:94b00dc905d1072e6e775a8137b78c236d2407362bf6ef5320b3382d2ddd0e27",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantddcb94727f101d58686e98cf98b16094cc9566f2dac184c10ff660f257571dab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b2d3adc4f5df9500ec76ea17cacf9ad9ad2d4bd314dd5ab39663673b0fa16fe6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance ObjectProperty.FullSubcategory.concreteCategory {C : Type u} [Category.{v} C]
    {FC : C → C → Type*} {CC : C → Type w} [∀ X Y, FunLike (FC X Y) (CC X) (CC Y)]
    [ConcreteCategory.{w} C FC]
    (P : ObjectProperty C) : ConcreteCategory P.FullSubcategory (fun X Y => FC X.1 Y.1) where
  hom f := hom f.hom
  ofHom g := homMk (ofHom g)
  hom_ofHom _ := hom_ofHom _
  ofHom_hom _ := by ext; simp [ofHom_hom]
  comp_apply _ _ _ := ConcreteCategory.comp_apply _ _ _
  id_apply _ := ConcreteCategory.id_apply _

@[deprecated (since := "2026-04-18")] alias FullSubcategory.concreteCategory :=
  ObjectProperty.FullSubcategory.concreteCategory

end ConcreteCategory

variable {C : Type u} [Category.{v} C]
variable {D : Type*} [Category* D] {FD : outParam <| D → D → Type*}
    {CD : outParam <| D → Type w}
    [outParam <| ∀ X Y, FunLike (FD X Y) (CD X) (CD Y)] [ConcreteCategory.{w} D FD]

-- TODO: generate this lemma with the `elementwise` attribute.
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantddcb94727f101d58686e98cf98b16094cc9566f2dac184c10ff660f257571dab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantddcb94727f101d58686e98cf98b16094cc9566f2dac184c10ff660f257571dab.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `421ca638e81d0435ba4b4f1c3471aa9b32703601` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
