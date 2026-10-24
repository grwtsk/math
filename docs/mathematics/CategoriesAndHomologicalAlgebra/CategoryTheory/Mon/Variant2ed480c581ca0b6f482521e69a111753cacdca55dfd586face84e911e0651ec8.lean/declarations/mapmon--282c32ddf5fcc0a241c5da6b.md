# mapMon

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:20f1959fdabb4bbf0c22a9c756952439599058211a3bde70a0617b6587516ed5",
  "kind": "def",
  "lexical_name": "mapMon",
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
  "slug": "mapmon--282c32ddf5fcc0a241c5da6b",
  "source": {
    "blob": "ba776c5803c63ab7854ac0fd02e62a8d00c3f0f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 215,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:282c32ddf5fcc0a241c5da6b190aed9025300b5698a5cf8663dd9a116d6f5bd0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:20f1959fdabb4bbf0c22a9c756952439599058211a3bde70a0617b6587516ed5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mapMon (F : LaxMonoidalFunctor C D) : Mon_ C ⥤ Mon_ D where
  obj A :=
    { X := F.obj A.X
      one := F.ε ≫ F.map A.one
      mul := F.μ _ _ ≫ F.map A.mul
      one_mul := by
        conv_lhs => rw [comp_tensor_id, ← F.toFunctor.map_id]
        slice_lhs 2 3 => rw [F.μ_natural]
        slice_lhs 3 4 => rw [← F.toFunctor.map_comp, A.one_mul]
        rw [F.toFunctor.map_id]
        rw [F.left_unitality]
      mul_one := by
        conv_lhs => rw [id_tensor_comp, ← F.toFunctor.map_id]
        slice_lhs 2 3 => rw [F.μ_natural]
        slice_lhs 3 4 => rw [← F.toFunctor.map_comp, A.mul_one]
        rw [F.toFunctor.map_id]
        rw [F.right_unitality]
      mul_assoc := by
        conv_lhs => rw [comp_tensor_id, ← F.toFunctor.map_id]
        slice_lhs 2 3 => rw [F.μ_natural]
        slice_lhs 3 4 => rw [← F.toFunctor.map_comp, A.mul_assoc]
        conv_lhs => rw [F.toFunctor.map_id]
        conv_lhs => rw [F.toFunctor.map_comp, F.toFunctor.map_comp]
        conv_rhs => rw [id_tensor_comp, ← F.toFunctor.map_id]
        slice_rhs 3 4 => rw [F.μ_natural]
        conv_rhs => rw [F.toFunctor.map_id]
        slice_rhs 1 3 => rw [← F.associativity]
        simp only [Category.assoc] }
  map f :=
    { hom := F.map f.hom
      one_hom := by dsimp; rw [Category.assoc, ← F.toFunctor.map_comp, f.one_hom]
      mul_hom := by
        dsimp
        rw [Category.assoc, F.μ_natural_assoc, ← F.toFunctor.map_comp, ← F.toFunctor.map_comp,
          f.mul_hom] }
  map_id A := by ext; simp
  map_comp f g := by ext; simp
#align category_theory.lax_monoidal_functor.map_Mon CategoryTheory.LaxMonoidalFunctor.mapMon

variable (C D)

/-- `mapMon` is functorial in the lax monoidal functor. -/
@[simps] -- Porting note: added this, not sure how it worked previously without.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mon/Variant2ed480c581ca0b6f482521e69a111753cacdca55dfd586face84e911e0651ec8.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba776c5803c63ab7854ac0fd02e62a8d00c3f0f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
