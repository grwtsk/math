# concreteCategoryOfDifferentialObjects

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:45bfc58edbb06c4e6d9e2dc0fd4c92f1f41897a2cd63df578d5347093d65c4c5",
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
  "slug": "concretecategoryofdifferentialobjects--d6d9e090f0b0eaf260b4cf6b",
  "source": {
    "blob": "aa9a4fb61488cabc621f06a4886a20ea612ae5b5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 239,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant58251b32e76f42de60b6cb7897a3fa55c12b59f3a07d8e8312fbd1cf251f802e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d6d9e090f0b0eaf260b4cf6b7cd6e0ebfd37223cd354aaab2418b316a177ce7d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant58251b32e76f42de60b6cb7897a3fa55c12b59f3a07d8e8312fbd1cf251f802e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:45bfc58edbb06c4e6d9e2dc0fd4c92f1f41897a2cd63df578d5347093d65c4c5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 239–247.

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

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant58251b32e76f42de60b6cb7897a3fa55c12b59f3a07d8e8312fbd1cf251f802e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/DifferentialObject/Variant58251b32e76f42de60b6cb7897a3fa55c12b59f3a07d8e8312fbd1cf251f802e.lean#L239).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa9a4fb61488cabc621f06a4886a20ea612ae5b5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
