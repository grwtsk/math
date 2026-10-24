# Γ₀'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7c26cd5f2c4ca1de79e4bb96eb72091dae1c58055bcb6c2ef82c8b78025e173b",
  "kind": "def",
  "lexical_name": "Γ₀'",
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
  "slug": "anonymous--f9a54fb4847e93f997c46e98",
  "source": {
    "blob": "459b6e9146bce77337c4077b6ab0a1b61c8cb795",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 312,
    "line": 299,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorGamma/Variant6c692b947aa8535de380594eeea3e9d71b9dab9f2252d1a5480c371eda3a2be6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f9a54fb4847e93f997c46e9863b8b858da2e35ca83ad2237301ede02e24bee7f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorGamma/Variant6c692b947aa8535de380594eeea3e9d71b9dab9f2252d1a5480c371eda3a2be6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7c26cd5f2c4ca1de79e4bb96eb72091dae1c58055bcb6c2ef82c8b78025e173b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 299–312.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Γ₀' : ChainComplex C ℕ ⥤ SimplicialObject.Split C where
  obj K := SimplicialObject.Split.mk' (Γ₀.splitting K)
  map {K K'} f :=
    { F := Γ₀.map f
      f := f.f
      comm := fun n => by
        dsimp
        simp only [← Splitting.cofan_inj_id, (Γ₀.splitting K).ι_desc]
        rfl }

/-- The functor `Γ₀ : ChainComplex C ℕ ⥤ SimplicialObject C`, which is
the inverse functor of the Dold-Kan equivalence when `C` is an abelian
category, or more generally a pseudoabelian category. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorGamma/Variant6c692b947aa8535de380594eeea3e9d71b9dab9f2252d1a5480c371eda3a2be6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorGamma/Variant6c692b947aa8535de380594eeea3e9d71b9dab9f2252d1a5480c371eda3a2be6.lean#L299).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `459b6e9146bce77337c4077b6ab0a1b61c8cb795` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
