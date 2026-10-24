# hasWeightedLimit_eq_top

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
      "line": 311,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0b/0bc31b612a6bd36cd275e6dddbb9dd06c70f6947c111b33405e3d3990e86dc1c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:af7c6154-aaa3-2bd5-4bcf-6d0259b1c25f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5d388ef0-13e0-3eec-2060-b5ee695c9509",
  "kind": "lemma",
  "lexical_name": "hasWeightedLimit_eq_top",
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
  "slug": "hasweightedlimit-eq-top--a308c5e1b684d11b3f79be86",
  "source": {
    "blob": "e260a7b68738dddbfc4dad3b8d06089174cd5d01",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 319,
    "line": 311,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasWeightedLimit/Variant0bc31b612a6bd36cd275e6dddbb9dd06c70f6947c111b33405e3d3990e86dc1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a308c5e1b684d11b3f79be86d059d9177310da03e16877ae9aae19de54890451",
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

Occurrence: `result:5d388ef0-13e0-3eec-2060-b5ee695c9509`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–319.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasWeightedLimit_eq_top :
    hasWeightedLimit.{w} F = ⊤ := by
  rw [← top_le_iff]
  infer_instance

/-- Given a functor `F : J ⥤ C`, this is the functor `(J ⥤ Type w)ᵒᵖ ⥤ C` which sends
a weight `W : J ⥤ Type w` to the `W`-weighted limit of `F`. Here, we assume that
all such weighted limits exist. -/
@[implicit_reducible, simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasWeightedLimit/Variant0bc31b612a6bd36cd275e6dddbb9dd06c70f6947c111b33405e3d3990e86dc1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasWeightedLimit/Variant0bc31b612a6bd36cd275e6dddbb9dd06c70f6947c111b33405e3d3990e86dc1c.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e260a7b68738dddbfc4dad3b8d06089174cd5d01` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
