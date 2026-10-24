# hasColimitsOfShape_grothendieck

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2a9c3d1cc8e43c73a041215d8c863b7149ca5c6b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 203,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/af/af78323c9dc9b9a68529beb2e297198785f0b205f027374d795cb08fc19cfb25.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:27a82741-cffc-6717-3a62-39efcdf7f9d4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:928a4f6f-99a6-50ba-9ab8-4b71ffc2e323",
  "kind": "theorem",
  "lexical_name": "hasColimitsOfShape_grothendieck",
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
  "slug": "hascolimitsofshape-grothendieck--95ed761cebb3fbc55f092081",
  "source": {
    "blob": "2a9c3d1cc8e43c73a041215d8c863b7149ca5c6b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 203,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantaf78323c9dc9b9a68529beb2e297198785f0b205f027374d795cb08fc19cfb25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:95ed761cebb3fbc55f0920811a1a7cfe7f7a279be56743356d32762d64af2140",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantaf78323c9dc9b9a68529beb2e297198785f0b205f027374d795cb08fc19cfb25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:928a4f6f-99a6-50ba-9ab8-4b71ffc2e323`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 203–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasColimitsOfShape_grothendieck [∀ X, HasColimitsOfShape (F.obj X) H]
    [HasColimitsOfShape C H] : HasColimitsOfShape (Grothendieck F) H where
  has_colimit _ := hasColimit_of_hasColimit_fiberwiseColimit_of_hasColimit _

noncomputable section FiberwiseColim

variable [∀ (c : C), HasColimitsOfShape (↑(F.obj c)) H] [HasColimitsOfShape C H]

/-- The isomorphism `colimitFiberwiseColimitIso` induces an isomorphism of functors `(J ⥤ C) ⥤ C`
between `fiberwiseColim F H ⋙ colim` and `colim`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantaf78323c9dc9b9a68529beb2e297198785f0b205f027374d795cb08fc19cfb25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantaf78323c9dc9b9a68529beb2e297198785f0b205f027374d795cb08fc19cfb25.lean#L203).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2a9c3d1cc8e43c73a041215d8c863b7149ca5c6b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
