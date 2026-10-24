# colimit_obj_ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "422a89b052efb89d5051e130e43393dab3202989",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 314,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f5/f5716a34142af5c70585c5fd77689132abff897ca8fcd3b1e66483a17931fa45.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b558eaba-8676-66f6-4296-29431c0aaf28",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2bbe13e5-f3e6-3210-9feb-1e563cf08eea",
  "kind": "theorem",
  "lexical_name": "colimit_obj_ext",
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
  "slug": "colimit-obj-ext--cb96d5d8c2b0fb831d9e2302",
  "source": {
    "blob": "422a89b052efb89d5051e130e43393dab3202989",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 321,
    "line": 314,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5716a34142af5c70585c5fd77689132abff897ca8fcd3b1e66483a17931fa45.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cb96d5d8c2b0fb831d9e23024106f6c71f0aefaff3166c125ee8c8afa15fc1bd",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5716a34142af5c70585c5fd77689132abff897ca8fcd3b1e66483a17931fa45.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2bbe13e5-f3e6-3210-9feb-1e563cf08eea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 314–321.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem colimit_obj_ext {H : J ⥤ K ⥤ C} [HasColimitsOfShape J C] {k : K} {W : C}
    {f g : (colimit H).obj k ⟶ W} (w : ∀ j, (colimit.ι H j).app k ≫ f = (colimit.ι H j).app k ≫ g) :
    f = g := by
  apply (cancel_epi (colimitObjIsoColimitCompEvaluation H k).inv).1
  ext j
  simpa using w j
#align category_theory.limits.colimit_obj_ext CategoryTheory.Limits.colimit_obj_ext

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5716a34142af5c70585c5fd77689132abff897ca8fcd3b1e66483a17931fa45.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variantf5716a34142af5c70585c5fd77689132abff897ca8fcd3b1e66483a17931fa45.lean#L314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `422a89b052efb89d5051e130e43393dab3202989` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
