# weightedLimFlipObjMap_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e260a7b68738dddbfc4dad3b8d06089174cd5d01",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 247,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0b/0bc31b612a6bd36cd275e6dddbb9dd06c70f6947c111b33405e3d3990e86dc1c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f3111daf-93f3-0f59-ee6d-792ca3555740",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e77cb637-4680-eb1a-fa26-bc4a11ce1a7a",
  "kind": "lemma",
  "lexical_name": "weightedLimFlipObjMap_comp",
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
  "slug": "weightedlimflipobjmap-comp--dab729154fe32a2454e44560",
  "source": {
    "blob": "e260a7b68738dddbfc4dad3b8d06089174cd5d01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 264,
    "line": 247,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasWeightedLimit/Variant0bc31b612a6bd36cd275e6dddbb9dd06c70f6947c111b33405e3d3990e86dc1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dab729154fe32a2454e445606a3b6fdcb4ffcc19cecfe267290b30e81013b24c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasWeightedLimit/Variant0bc31b612a6bd36cd275e6dddbb9dd06c70f6947c111b33405e3d3990e86dc1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e77cb637-4680-eb1a-fa26-bc4a11ce1a7a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–264.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma weightedLimFlipObjMap_comp :
    weightedLimFlipObjMap g' F ≫ weightedLimFlipObjMap g F =
    weightedLimFlipObjMap (g ≫ g') F := by
  cat_disch

end

end

section

variable {J : Type u} [Category.{v} J] (W : J ⥤ Type w) {C : Type u'} [Category.{v'} C]

variable (C) in
/-- Given a weight `W : J ⥤ Type w`, this is the property that all `W`-weighted limits
exist for functors `F : J ⥤ C`. Under this condition, we define a weighted limit functor
`W.weightedLimObj : (J ⥤ C) ⥤ C`. (See also `HasWeightedLimFlipObj` for the "flipped"
property for `F : J ⥤ C`.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasWeightedLimit/Variant0bc31b612a6bd36cd275e6dddbb9dd06c70f6947c111b33405e3d3990e86dc1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasWeightedLimit/Variant0bc31b612a6bd36cd275e6dddbb9dd06c70f6947c111b33405e3d3990e86dc1c.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e260a7b68738dddbfc4dad3b8d06089174cd5d01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
