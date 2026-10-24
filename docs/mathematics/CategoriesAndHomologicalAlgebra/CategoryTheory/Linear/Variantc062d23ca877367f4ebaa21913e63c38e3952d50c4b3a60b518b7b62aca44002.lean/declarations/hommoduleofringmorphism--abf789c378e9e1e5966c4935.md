# homModuleOfRingMorphism

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9fa66c1dac31ab3ee7690c4cb66aa5e831cc69ac2d21a7cc3dbe4a461897eba2",
  "kind": "def",
  "lexical_name": "homModuleOfRingMorphism",
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
  "slug": "hommoduleofringmorphism--abf789c378e9e1e5966c4935",
  "source": {
    "blob": "31e09c4d884fa3e04aa851fb138138998181c07b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 86,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantc062d23ca877367f4ebaa21913e63c38e3952d50c4b3a60b518b7b62aca44002.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:abf789c378e9e1e5966c49359cfb7ef038c2df8c1783ff294bdbec3929acc67c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantc062d23ca877367f4ebaa21913e63c38e3952d50c4b3a60b518b7b62aca44002.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9fa66c1dac31ab3ee7690c4cb66aa5e831cc69ac2d21a7cc3dbe4a461897eba2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def homModuleOfRingMorphism : Module R (X ⟶ Y) := by
  letI := smulOfRingMorphism φ X Y
  exact
  { one_smul := fun a => by
      simp only [smulOfRingMorphism_smul_eq,
        Functor.id_obj, map_one, End.one_def, NatTrans.id_app, id_comp]
    mul_smul := fun a b f => by
      simp only [smulOfRingMorphism_smul_eq', Functor.id_obj, map_mul, End.mul_def,
        NatTrans.comp_app, assoc]
    smul_zero := fun a => by
      simp only [smulOfRingMorphism_smul_eq, comp_zero]
    zero_smul := fun a => by
      simp only [smulOfRingMorphism_smul_eq, map_zero,
        zero_app, zero_comp]
    smul_add := fun a b => by
      simp [smulOfRingMorphism_smul_eq]
    add_smul := fun a b f => by
      simp [smulOfRingMorphism_smul_eq] }

/-- The `R`-linear structure on a preadditive category `C` equipped with
a ring morphism `R →+* CatCenter C`. -/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantc062d23ca877367f4ebaa21913e63c38e3952d50c4b3a60b518b7b62aca44002.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantc062d23ca877367f4ebaa21913e63c38e3952d50c4b3a60b518b7b62aca44002.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31e09c4d884fa3e04aa851fb138138998181c07b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
