# limitEquivSections_symm_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aa7bf5cb48c47e1ae8ede6d99ec2cca6cde75c07",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 183,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/56/5670481405a9e9827514a46105286bb96cfc9aceefd8f109ed76b642fbaa8a63.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b9549b25-36cd-5b3b-5cfd-44f67efb05b1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0901e213-3735-587a-2ffc-1d15c5bd800c",
  "kind": "theorem",
  "lexical_name": "limitEquivSections_symm_apply",
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
  "slug": "limitequivsections-symm-apply--f48d570e397e93c8541566d9",
  "source": {
    "blob": "aa7bf5cb48c47e1ae8ede6d99ec2cca6cde75c07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 183,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant5670481405a9e9827514a46105286bb96cfc9aceefd8f109ed76b642fbaa8a63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f48d570e397e93c8541566d99ae6c496977a6a2db2f691132e32b33dcf9a1306",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant5670481405a9e9827514a46105286bb96cfc9aceefd8f109ed76b642fbaa8a63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0901e213-3735-587a-2ffc-1d15c5bd800c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem limitEquivSections_symm_apply (F : J ⥤ Type u) (x : F.sections) (j : J) :
    limit.π F j ((limitEquivSections.{v, u} F).symm x) = (x : ∀ j, F.obj j) j :=
  isLimitEquivSections_symm_apply _ _ _
#align category_theory.limits.types.limit_equiv_sections_symm_apply CategoryTheory.Limits.Types.limitEquivSections_symm_apply

-- porting note : `limitEquivSections_symm_apply'` was removed because the linter
--   complains it is unnecessary
--@[simp]
--theorem limitEquivSections_symm_apply' (F : J ⥤ Type v) (x : F.sections) (j : J) :
--    limit.π F j ((limitEquivSections.{v, v} F).symm x) = (x : ∀ j, F.obj j) j :=
--  isLimitEquivSections_symm_apply _ _ _
--#align category_theory.limits.types.limit_equiv_sections_symm_apply' CategoryTheory.Limits.Types.limitEquivSections_symm_apply'

--porting note: removed @[ext]
/-- Construct a term of `limit F : Type u` from a family of terms `x : Π j, F.obj j`
which are "coherent": `∀ (j j') (f : j ⟶ j'), F.map f (x j) = x j'`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant5670481405a9e9827514a46105286bb96cfc9aceefd8f109ed76b642fbaa8a63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Types/Variant5670481405a9e9827514a46105286bb96cfc9aceefd8f109ed76b642fbaa8a63.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa7bf5cb48c47e1ae8ede6d99ec2cca6cde75c07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
