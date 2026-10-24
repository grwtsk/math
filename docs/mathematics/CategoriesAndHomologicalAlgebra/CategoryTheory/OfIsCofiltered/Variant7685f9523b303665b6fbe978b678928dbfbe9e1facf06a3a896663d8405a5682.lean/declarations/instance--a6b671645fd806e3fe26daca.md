# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:35bdf9595c39dfe8763388540fc33648cf16253187d9375e6a44f9bbdc06f346",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--a6b671645fd806e3fe26daca",
  "source": {
    "blob": "12bf17da87ceafd3c3a7b90d4558b3d9383301fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 131,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfIsCofiltered/Variant7685f9523b303665b6fbe978b678928dbfbe9e1facf06a3a896663d8405a5682.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a6b671645fd806e3fe26daca86d493b48c8610de1ce47adef48b88bd30846a62",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OfIsCofiltered/Variant7685f9523b303665b6fbe978b678928dbfbe9e1facf06a3a896663d8405a5682.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:35bdf9595c39dfe8763388540fc33648cf16253187d9375e6a44f9bbdc06f346`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [IsCofiltered N] :
    IsCofiltered (ofIsCofiltered.fiber p).Elements :=
  IsCofiltered.of_initial (functor.{w} p)

end ofIsCofiltered

variable [IsCofiltered N]
  (hp : ∀ ⦃X : C⦄ (R : Sieve X) (_ : R ∈ J X) ⦃U : N⦄ (f : p.obj U ⟶ X),
    ∃ (Y : C) (g : Y ⟶ X) (_ : R g) (V : N) (q : V ⟶ U) (a : p.obj V ⟶ Y),
      a ≫ g = p.map q ≫ f)

open ofIsCofiltered

/-- Constructor for points of Grothendieck topologies `J : GrothendieckTopology C`
that are given by a functor `p : N ⥤ C` from a cofiltered and initially small
category `N`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/OfIsCofiltered/Variant7685f9523b303665b6fbe978b678928dbfbe9e1facf06a3a896663d8405a5682.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/OfIsCofiltered/Variant7685f9523b303665b6fbe978b678928dbfbe9e1facf06a3a896663d8405a5682.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `12bf17da87ceafd3c3a7b90d4558b3d9383301fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
