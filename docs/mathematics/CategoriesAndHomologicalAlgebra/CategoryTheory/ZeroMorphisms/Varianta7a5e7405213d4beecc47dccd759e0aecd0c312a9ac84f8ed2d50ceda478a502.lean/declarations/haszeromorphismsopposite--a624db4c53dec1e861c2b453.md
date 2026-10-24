# hasZeroMorphismsOpposite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6d71bd08c57018d2d14d04e852010c20ce3e4c65f5cd96d4a53116056849f16d",
  "kind": "instance",
  "lexical_name": "hasZeroMorphismsOpposite",
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
  "slug": "haszeromorphismsopposite--a624db4c53dec1e861c2b453",
  "source": {
    "blob": "5c2f1b0dda6fe3223b5038426e03b51b4d39165e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 124,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Varianta7a5e7405213d4beecc47dccd759e0aecd0c312a9ac84f8ed2d50ceda478a502.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a624db4c53dec1e861c2b4535abf0c8c932d6dc097f4c429490612fd38f976a2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Varianta7a5e7405213d4beecc47dccd759e0aecd0c312a9ac84f8ed2d50ceda478a502.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6d71bd08c57018d2d14d04e852010c20ce3e4c65f5cd96d4a53116056849f16d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 124–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance hasZeroMorphismsOpposite [HasZeroMorphisms C] : HasZeroMorphisms Cᵒᵖ where
  Zero X Y := ⟨(0 : unop Y ⟶ unop X).op⟩
  comp_zero f Z := congr_arg Quiver.Hom.op (HasZeroMorphisms.zero_comp (unop Z) f.unop)
  zero_comp X {Y Z} (f : Y ⟶ Z) :=
    congrArg Quiver.Hom.op (HasZeroMorphisms.comp_zero f.unop (unop X))
#align category_theory.limits.has_zero_morphisms_opposite CategoryTheory.Limits.hasZeroMorphismsOpposite

section

variable [HasZeroMorphisms C]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Varianta7a5e7405213d4beecc47dccd759e0aecd0c312a9ac84f8ed2d50ceda478a502.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ZeroMorphisms/Varianta7a5e7405213d4beecc47dccd759e0aecd0c312a9ac84f8ed2d50ceda478a502.lean#L124).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5c2f1b0dda6fe3223b5038426e03b51b4d39165e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
