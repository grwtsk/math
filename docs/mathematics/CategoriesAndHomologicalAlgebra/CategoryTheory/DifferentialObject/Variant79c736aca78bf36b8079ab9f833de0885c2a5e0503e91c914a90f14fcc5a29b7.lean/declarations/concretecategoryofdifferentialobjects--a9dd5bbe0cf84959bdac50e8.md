# concreteCategoryOfDifferentialObjects

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f3f2d662fd3bd704f58ad4022cf4d65e73db2b33883656f46e642e20086347d6",
  "kind": "instance",
  "lexical_name": "concreteCategoryOfDifferentialObjects",
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
  "slug": "concretecategoryofdifferentialobjects--a9dd5bbe0cf84959bdac50e8",
  "source": {
    "blob": "2f9d2fea3c69146b39338b90c9c3327174c78ad5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 248,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant79c736aca78bf36b8079ab9f833de0885c2a5e0503e91c914a90f14fcc5a29b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a9dd5bbe0cf84959bdac50e87dc475400c884cfc41dcc7caa09db608fcf9d6ea",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant79c736aca78bf36b8079ab9f833de0885c2a5e0503e91c914a90f14fcc5a29b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f3f2d662fd3bd704f58ad4022cf4d65e73db2b33883656f46e642e20086347d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance concreteCategoryOfDifferentialObjects :
    ConcreteCategory (DifferentialObject S C) (HomSubtype S C) where
  hom f := ⟨ConcreteCategory.hom (C := C) f.1, by simp [ConcreteCategory.ofHom_hom]⟩
  ofHom f := ⟨ConcreteCategory.ofHom (C := C) f, by simpa [ConcreteCategory.hom_ofHom] using f.2⟩
  hom_ofHom _ := by dsimp; ext; simp [ConcreteCategory.hom_ofHom]
  ofHom_hom _ := by ext; simp [ConcreteCategory.ofHom_hom]
  id_apply := ConcreteCategory.id_apply (C := C)
  comp_apply _ _ := ConcreteCategory.comp_apply (C := C) _ _

end ConcreteCategory

end DifferentialObject

/-! The category of differential objects itself has a shift functor. -/


namespace DifferentialObject

variable {S : Type*} [AddCommGroupWithOne S] (C : Type u) [Category.{v} C]
variable [HasZeroMorphisms C] [HasShift C S]

noncomputable section

/-- The shift functor on `DifferentialObject S C`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant79c736aca78bf36b8079ab9f833de0885c2a5e0503e91c914a90f14fcc5a29b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant79c736aca78bf36b8079ab9f833de0885c2a5e0503e91c914a90f14fcc5a29b7.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f9d2fea3c69146b39338b90c9c3327174c78ad5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
