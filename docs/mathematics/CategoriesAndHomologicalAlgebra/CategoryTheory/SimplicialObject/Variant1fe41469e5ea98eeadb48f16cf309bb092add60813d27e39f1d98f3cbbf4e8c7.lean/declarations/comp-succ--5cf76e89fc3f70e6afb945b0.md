# δ_comp_σ_succ'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5367e26619221b256e43e6de80ff455d04b44c3d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 550,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1fe41469e5ea98eeadb48f16cf309bb092add60813d27e39f1d98f3cbbf4e8c7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bdadc722-cfc6-097a-e393-b3c531e8217d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e5047478-aebc-b418-5761-a89ff25bc644",
  "kind": "theorem",
  "lexical_name": "δ_comp_σ_succ'",
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
  "slug": "comp-succ--5cf76e89fc3f70e6afb945b0",
  "source": {
    "blob": "5367e26619221b256e43e6de80ff455d04b44c3d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 557,
    "line": 550,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialObject/Variant1fe41469e5ea98eeadb48f16cf309bb092add60813d27e39f1d98f3cbbf4e8c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5cf76e89fc3f70e6afb945b05e56a1e61c1c4efc8b0416127a75c279ad7e50a1",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialObject/Variant1fe41469e5ea98eeadb48f16cf309bb092add60813d27e39f1d98f3cbbf4e8c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5047478-aebc-b418-5761-a89ff25bc644`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 550–557.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem δ_comp_σ_succ' {n} {j : Fin (n + 2)} {i : Fin (n + 1)} (H : j = i.succ) :
    X.δ j ≫ X.σ i = 𝟙 _ := by
  subst H
  rw [δ_comp_σ_succ]
#align category_theory.cosimplicial_object.δ_comp_σ_succ' CategoryTheory.CosimplicialObject.δ_comp_σ_succ'

/-- The fourth cosimplicial identity -/
@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialObject/Variant1fe41469e5ea98eeadb48f16cf309bb092add60813d27e39f1d98f3cbbf4e8c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SimplicialObject/Variant1fe41469e5ea98eeadb48f16cf309bb092add60813d27e39f1d98f3cbbf4e8c7.lean#L550).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5367e26619221b256e43e6de80ff455d04b44c3d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
