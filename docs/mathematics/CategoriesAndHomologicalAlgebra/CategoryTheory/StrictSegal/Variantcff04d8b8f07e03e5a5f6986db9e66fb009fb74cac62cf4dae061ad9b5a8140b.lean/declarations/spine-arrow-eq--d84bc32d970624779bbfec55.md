# spine_δ_arrow_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d1598c3ddb4d30b6b7e6b71734f5f9a78c4d68f3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 381,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cf/cff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f2da3500-57f8-9987-22f2-23b6c2fa6253",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d62c7ba4-e5a6-3610-ca45-8abfa9374459",
  "kind": "lemma",
  "lexical_name": "spine_δ_arrow_eq",
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
  "slug": "spine-arrow-eq--d84bc32d970624779bbfec55",
  "source": {
    "blob": "d1598c3ddb4d30b6b7e6b71734f5f9a78c4d68f3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 398,
    "line": 381,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d84bc32d970624779bbfec553052e552a3ca5d2c6d006c488d882abd8d7dbf62",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d62c7ba4-e5a6-3610-ca45-8abfa9374459`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 381–398.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma spine_δ_arrow_eq (h : j = i.succ.castSucc) :
    (X.spine n (X.δ j (sx.spineToSimplex f))).arrow i =
      sx.spineToDiagonal (f.interval i 2 (by omega)) := by
  simp only [SimplicialObject.δ, spine_arrow]
  rw [← FunctorToTypes.map_comp_apply, ← op_comp]
  rw [mkOfSucc_δ_eq h, spineToSimplex_edge]

end StrictSegal
end SSet

namespace CategoryTheory.Nerve

open SSet

variable (C : Type u) [Category.{v} C]

/-- Simplices in the nerve of categories are uniquely determined by their spine.
Indeed, this property describes the essential image of the nerve functor. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictSegal/Variantcff04d8b8f07e03e5a5f6986db9e66fb009fb74cac62cf4dae061ad9b5a8140b.lean#L381).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1598c3ddb4d30b6b7e6b71734f5f9a78c4d68f3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
