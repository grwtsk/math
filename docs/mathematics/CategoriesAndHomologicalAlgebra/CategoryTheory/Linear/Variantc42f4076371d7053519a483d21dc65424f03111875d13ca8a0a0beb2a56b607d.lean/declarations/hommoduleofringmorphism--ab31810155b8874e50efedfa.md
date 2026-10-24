# homModuleOfRingMorphism

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7efb92fa03fd87e04cbc821fc8faff77e109ed862534acfab9d8b290ec697242",
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
  "slug": "hommoduleofringmorphism--ab31810155b8874e50efedfa",
  "source": {
    "blob": "1ef2858acc42c565c495ebd4064cd6f7aa0879e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 78,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantc42f4076371d7053519a483d21dc65424f03111875d13ca8a0a0beb2a56b607d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab31810155b8874e50efedfa2deae07d2b34a08622c3e3375bd01ca918cf68a3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantc42f4076371d7053519a483d21dc65424f03111875d13ca8a0a0beb2a56b607d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7efb92fa03fd87e04cbc821fc8faff77e109ed862534acfab9d8b290ec697242`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–99.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantc42f4076371d7053519a483d21dc65424f03111875d13ca8a0a0beb2a56b607d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Linear/Variantc42f4076371d7053519a483d21dc65424f03111875d13ca8a0a0beb2a56b607d.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1ef2858acc42c565c495ebd4064cd6f7aa0879e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
