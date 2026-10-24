# unitCompPartialBijectiveAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:63a9f8c85dd2a93727f199b0a06803840688756d660b0441957e91fd3b565f9d",
  "kind": "def",
  "lexical_name": "unitCompPartialBijectiveAux",
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
  "slug": "unitcomppartialbijectiveaux--5f56c7ba000cf40a6837bd88",
  "source": {
    "blob": "4bc80d7abab82d205ac62bc9ad4534c619461378",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 124,
    "line": 119,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variantbe11a403ee567681bc290c6d8e8b5c1e187ea7813b39c420117265fa3dfee48f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5f56c7ba000cf40a6837bd88ce36d3534d800cf23e7893f468f4916f29ca08d5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variantbe11a403ee567681bc290c6d8e8b5c1e187ea7813b39c420117265fa3dfee48f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:63a9f8c85dd2a93727f199b0a06803840688756d660b0441957e91fd3b565f9d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–124.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def unitCompPartialBijectiveAux [Reflective i] (A : C) (B : D) :
    (A ⟶ i.obj B) ≃ (i.obj ((leftAdjoint i).obj A) ⟶ i.obj B) :=
  ((Adjunction.ofRightAdjoint i).homEquiv _ _).symm.trans (equivOfFullyFaithful i)
#align category_theory.unit_comp_partial_bijective_aux CategoryTheory.unitCompPartialBijectiveAux

/-- The description of the inverse of the bijection `unitCompPartialBijectiveAux`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variantbe11a403ee567681bc290c6d8e8b5c1e187ea7813b39c420117265fa3dfee48f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Reflective/Variantbe11a403ee567681bc290c6d8e8b5c1e187ea7813b39c420117265fa3dfee48f.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4bc80d7abab82d205ac62bc9ad4534c619461378` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
