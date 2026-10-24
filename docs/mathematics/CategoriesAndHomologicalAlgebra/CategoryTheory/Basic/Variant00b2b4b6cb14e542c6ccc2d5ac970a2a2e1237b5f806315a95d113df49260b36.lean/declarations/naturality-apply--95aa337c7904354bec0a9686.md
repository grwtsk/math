# naturality_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4b212f27853154d34f4bf2084c6eb6a8933e0d90",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 157,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/00/00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8eb8992b-be92-481b-705e-44b7f8bc564b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:872ad8f7-b39d-eb37-84f3-63d67c32023d",
  "kind": "theorem",
  "lexical_name": "naturality_apply",
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
  "slug": "naturality-apply--95aa337c7904354bec0a9686",
  "source": {
    "blob": "4b212f27853154d34f4bf2084c6eb6a8933e0d90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 165,
    "line": 157,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95aa337c7904354bec0a9686848afeb44b56df2aea2bda7730f080f5c1012fcb",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:872ad8f7-b39d-eb37-84f3-63d67c32023d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–165.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem naturality_apply [G.IsLocallyFull K] {X Y : C} (i : G.obj X ⟶ G.obj Y) (x) :
    ℱ'.1.map i.op (α.app _ x) = α.app _ (ℱ.map i.op x) := by
  have {X Y} (i : X ⟶ Y) (x) :
      ℱ'.1.map (G.map i).op (α.app _ x) = α.app _ (ℱ.map (G.map i).op x) := by
    exact congr_fun (α.naturality i.op).symm x
  refine IsLocallyFull.ext G _ i fun V iVX iVY e ↦ ?_
  simp only [comp_obj, types_comp_apply, ← FunctorToTypes.map_comp_apply, ← op_comp, ← e, this]

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant00b2b4b6cb14e542c6ccc2d5ac970a2a2e1237b5f806315a95d113df49260b36.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4b212f27853154d34f4bf2084c6eb6a8933e0d90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
