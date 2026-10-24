# hasZeroObject

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9a53164bcc97d8f999bd63addee6a5e6a05d51ba00d9b60efdb6409778c01b9a",
  "kind": "instance",
  "lexical_name": "hasZeroObject",
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
  "slug": "haszeroobject--0a19ed6f539e1d9e7346646d",
  "source": {
    "blob": "b4564642b88c2c18e7b10f42c5d425688ac5fac4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 207,
    "line": 183,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantbe7652b08f4d923b04c1a3d0e97ad07b15c16652de0af4d4656f03da9a721e23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0a19ed6f539e1d9e7346646dfb3899eaf62e62d8abc2d01a9867fa86d90ee476",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantbe7652b08f4d923b04c1a3d0e97ad07b15c16652de0af4d4656f03da9a721e23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9a53164bcc97d8f999bd63addee6a5e6a05d51ba00d9b60efdb6409778c01b9a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–207.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance hasZeroObject [HasZeroObject C] [HasZeroMorphisms C] (β : Type w) :
    HasZeroObject.{max w v} (GradedObject β C) := by
  refine' ⟨⟨fun _ => 0, fun X => ⟨⟨⟨fun b => 0⟩, fun f => _⟩⟩, fun X =>
    ⟨⟨⟨fun b => 0⟩, fun f => _⟩⟩⟩⟩ <;> aesop_cat
#align category_theory.graded_object.has_zero_object CategoryTheory.GradedObject.hasZeroObject

end

end GradedObject

namespace GradedObject

-- The universes get a little hairy here, so we restrict the universe level for the grading to 0.
-- Since we're typically interested in grading by ℤ or a finite group, this should be okay.
-- If you're grading by things in higher universes, have fun!
variable (β : Type)

variable (C : Type u) [Category.{v} C]

variable [HasCoproducts.{0} C]

section

/-- The total object of a graded object is the coproduct of the graded components.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantbe7652b08f4d923b04c1a3d0e97ad07b15c16652de0af4d4656f03da9a721e23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GradedObject/Variantbe7652b08f4d923b04c1a3d0e97ad07b15c16652de0af4d4656f03da9a721e23.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4564642b88c2c18e7b10f42c5d425688ac5fac4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
