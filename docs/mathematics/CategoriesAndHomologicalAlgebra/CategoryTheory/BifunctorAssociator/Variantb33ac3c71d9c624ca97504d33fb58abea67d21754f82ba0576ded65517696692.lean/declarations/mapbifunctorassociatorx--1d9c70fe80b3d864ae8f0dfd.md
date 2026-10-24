# mapBifunctorAssociatorX

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a2759efc188d3acc59d268389acb28d6e8089935be949fc2f0df7f56021202c8",
  "kind": "def",
  "lexical_name": "mapBifunctorAssociatorX",
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
  "slug": "mapbifunctorassociatorx--1d9c70fe80b3d864ae8f0dfd",
  "source": {
    "blob": "1780d7ba29fdcbdb3cc7d7ff78d712623dab24e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 115,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorAssociator/Variantb33ac3c71d9c624ca97504d33fb58abea67d21754f82ba0576ded65517696692.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1d9c70fe80b3d864ae8f0dfd76a4d9f82f7e3357a844bdcc40bd3ced43bc3c57",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorAssociator/Variantb33ac3c71d9c624ca97504d33fb58abea67d21754f82ba0576ded65517696692.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a2759efc188d3acc59d268389acb28d6e8089935be949fc2f0df7f56021202c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def mapBifunctorAssociatorX
    [H₁₂ : HasGoodTrifunctor₁₂Obj F₁₂ G K₁ K₂ K₃ c₁₂ c₄]
    [H₂₃ : HasGoodTrifunctor₂₃Obj F G₂₃ K₁ K₂ K₃ c₁₂ c₂₃ c₄] (j : ι₄) :
    (mapBifunctor (mapBifunctor K₁ K₂ F₁₂ c₁₂) K₃ G c₄).X j ≅
      (mapBifunctor K₁ (mapBifunctor K₂ K₃ G₂₃ c₂₃) F c₄).X j :=
  (GradedObject.eval j).mapIso
    (GradedObject.mapBifunctorAssociator (associator := associator)
      (H₁₂ := H₁₂) (H₂₃ := H₂₃))

end

namespace mapBifunctor₁₂

variable [DecidableEq ι₁₂] [HasMapBifunctor (mapBifunctor K₁ K₂ F₁₂ c₁₂) K₃ G c₄]

section

variable (F₁₂ G)

/-- The inclusion of a summand in `mapBifunctor (mapBifunctor K₁ K₂ F₁₂ c₁₂) K₃ G c₄`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorAssociator/Variantb33ac3c71d9c624ca97504d33fb58abea67d21754f82ba0576ded65517696692.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/BifunctorAssociator/Variantb33ac3c71d9c624ca97504d33fb58abea67d21754f82ba0576ded65517696692.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1780d7ba29fdcbdb3cc7d7ff78d712623dab24e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
