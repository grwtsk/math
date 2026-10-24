# bottomMapᵣ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f254e6fcc8e65b5ee8d2603dbba36ddd43692f1e19de7edf9cdc2b03cb2ae243",
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
  "slug": "bottommap--0eff950279c413ab694df261",
  "source": {
    "blob": "bccffda4710af3e89a3a789bee1ae0a442263446",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 282,
    "line": 257,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Varianta73dc560339c5bc439d24b7da1816d395a686ed9b867130df507bcb225863f72.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0eff950279c413ab694df261b7419bbe7afe9ebd3834c6318080aea5223d73a1",
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

Occurrence: `declaration:f254e6fcc8e65b5ee8d2603dbba36ddd43692f1e19de7edf9cdc2b03cb2ae243`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–282.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def bottomMapᵣ (F : C ⥤ D) : (curriedTensor C).flip.obj (𝟙_ C) ⋙ F ⟶ F :=
  whiskerRight (rightUnitorNatIso C).hom F

end ofBifunctor

open ofBifunctor

variable {F : C ⥤ D}
    /- unit morphism -/
    (ε : 𝟙_ D ⟶ F.obj (𝟙_ C))
    /- tensorator as a morphism of bifunctors -/
    (μ : curriedTensorPre F ⟶ curriedTensorPost F)
    /- the associativity hexagon commutes -/
    (associativity : firstMap μ = secondMap μ)
    /- the left unitality square commutes -/
    (left_unitality : leftMapₗ F = topMapₗ ε ≫ μ.app (𝟙_ C) ≫ bottomMapₗ F)
    /- the right unitality square commutes -/
    (right_unitality : leftMapᵣ F =
      topMapᵣ ε ≫ ((flipFunctor _ _ _).map μ).app (𝟙_ C) ≫ bottomMapᵣ F)

/--
`F` is lax monoidal given a unit morphism `ε : 𝟙_ D ⟶ F.obj (𝟙_ C))` and a tensorator
`μ : F - ⊗ F - ⟶ F (- ⊗ -)` as a natural transformation between bifunctors, satisfying the
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

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Multifunctor/Varianta73dc560339c5bc439d24b7da1816d395a686ed9b867130df507bcb225863f72.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bccffda4710af3e89a3a789bee1ae0a442263446` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
