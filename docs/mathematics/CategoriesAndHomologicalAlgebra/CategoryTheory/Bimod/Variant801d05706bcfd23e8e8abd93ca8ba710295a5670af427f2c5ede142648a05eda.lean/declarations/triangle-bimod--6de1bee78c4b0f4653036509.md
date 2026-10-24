# triangle_bimod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:616f43ec-a96c-c60e-6e2e-375e22d1da03",
  "kind": "theorem",
  "lexical_name": "triangle_bimod",
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
  "slug": "triangle-bimod--6de1bee78c4b0f4653036509",
  "source": {
    "blob": "7fa1091e4e8db81754e9f77fe6e39b8ffb92ec09",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 964,
    "line": 942,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variant801d05706bcfd23e8e8abd93ca8ba710295a5670af427f2c5ede142648a05eda.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6de1bee78c4b0f465303650932edd1ee95abf57cd6a4520669b9600485a26784",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variant801d05706bcfd23e8e8abd93ca8ba710295a5670af427f2c5ede142648a05eda.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:616f43ec-a96c-c60e-6e2e-375e22d1da03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 942–964.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem triangle_bimod {X Y Z : Mon_ C} (M : Bimod X Y) (N : Bimod Y Z) :
    (associatorBimod M (regular Y) N).hom ≫ whiskerLeft M (leftUnitorBimod N).hom =
      whiskerRight (rightUnitorBimod M).hom N := by
  dsimp [associatorBimod, leftUnitorBimod, rightUnitorBimod]
  ext
  apply coequalizer.hom_ext
  dsimp
  dsimp [AssociatorBimod.hom]
  slice_lhs 1 2 => rw [coequalizer.π_desc]
  dsimp [AssociatorBimod.homAux]
  slice_rhs 1 2 => rw [ι_colimMap, parallelPairHom_app_one]
  dsimp [RightUnitorBimod.hom]
  refine (cancel_epi ((tensorRight _).map (coequalizer.π _ _))).1 ?_
  dsimp [regular]
  slice_lhs 1 3 => rw [π_tensor_id_preserves_coequalizer_inv_desc]
  slice_lhs 3 4 => rw [ι_colimMap, parallelPairHom_app_one]
  dsimp [LeftUnitorBimod.hom]
  slice_lhs 2 3 => rw [← MonoidalCategory.whiskerLeft_comp, coequalizer.π_desc]
  slice_rhs 1 2 => rw [← comp_whiskerRight, coequalizer.π_desc]
  slice_rhs 1 2 => rw [coequalizer.condition]
  simp only [Category.assoc]

/-- The bicategory of algebras (monoids) and bimodules, all internal to some monoidal category. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variant801d05706bcfd23e8e8abd93ca8ba710295a5670af427f2c5ede142648a05eda.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Bimod/Variant801d05706bcfd23e8e8abd93ca8ba710295a5670af427f2c5ede142648a05eda.lean#L942).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7fa1091e4e8db81754e9f77fe6e39b8ffb92ec09` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
