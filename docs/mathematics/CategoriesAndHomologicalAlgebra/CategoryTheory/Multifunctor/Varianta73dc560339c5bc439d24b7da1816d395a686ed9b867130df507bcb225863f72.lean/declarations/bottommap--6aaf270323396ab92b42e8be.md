# bottomMapᵣ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5d0270a7a7e3c7f22cd6def77e7441f9a0d88bbfa1dd7529ed3c19a678cc6ed0",
  "kind": "def",
  "lexical_name": "bottomMapᵣ",
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
  "slug": "bottommap--6aaf270323396ab92b42e8be",
  "source": {
    "blob": "bccffda4710af3e89a3a789bee1ae0a442263446",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 475,
    "line": 449,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Varianta73dc560339c5bc439d24b7da1816d395a686ed9b867130df507bcb225863f72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6aaf270323396ab92b42e8be4a7dd1735e5508099a920085d01c7dcadac9d095",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Varianta73dc560339c5bc439d24b7da1816d395a686ed9b867130df507bcb225863f72.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5d0270a7a7e3c7f22cd6def77e7441f9a0d88bbfa1dd7529ed3c19a678cc6ed0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 449–475.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def bottomMapᵣ {F : C ⥤ D} (η : F.obj (𝟙_ C) ⟶ 𝟙_ D) :
    (curriedTensorPre F).flip.obj (𝟙_ C) ⟶ F ⋙ tensorUnitRight D :=
  whiskerLeft F ((curriedTensor _).flip.map η)

end ofBifunctor

open ofBifunctor

variable {F : C ⥤ D}
    /- counit morphism -/
    (η : F.obj (𝟙_ C) ⟶ 𝟙_ D)
    /- tensorator as a morphism of bifunctors -/
    (δ : curriedTensorPost F ⟶ curriedTensorPre F)
    /- the oplax associativity hexagon commutes -/
    (oplax_associativity : firstMap δ = secondMap δ)
    /- the oplax left unitality square commutes -/
    (oplax_left_unitality : leftMapₗ F = topMapₗ F ≫ δ.app (𝟙_ C) ≫ bottomMapₗ η)
    /- the oplax right unitality square commutes -/
    (oplax_right_unitality : leftMapᵣ F =
      topMapᵣ F ≫ ((flipFunctor _ _ _).map δ).app (𝟙_ C) ≫ bottomMapᵣ η)

/--
`F` is oplax monoidal given a counit morphism `η : F.obj (𝟙_ C) ⟶ 𝟙_ D` and a tensorator
`δ : F (- ⊗ -) ⟶ F - ⊗ F -` as a natural transformation between bifunctors, satisfying the
relevant compatibilities.
-/
@[instance_reducible]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Varianta73dc560339c5bc439d24b7da1816d395a686ed9b867130df507bcb225863f72.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Varianta73dc560339c5bc439d24b7da1816d395a686ed9b867130df507bcb225863f72.lean#L449).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bccffda4710af3e89a3a789bee1ae0a442263446` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
