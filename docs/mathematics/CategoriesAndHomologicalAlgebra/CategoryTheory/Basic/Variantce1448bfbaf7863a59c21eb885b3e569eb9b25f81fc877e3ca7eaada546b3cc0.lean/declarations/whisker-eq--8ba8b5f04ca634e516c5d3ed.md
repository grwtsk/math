# whisker_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ac969b751ae7fb83b7559981edb89db164269115",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 202,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ce/ce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fea02041-b285-eaad-cbb6-af19861e51c1",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ae82cc7d-f4b9-6d2b-ee9b-68bb9faff17f",
  "kind": "theorem",
  "lexical_name": "whisker_eq",
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
  "slug": "whisker-eq--8ba8b5f04ca634e516c5d3ed",
  "source": {
    "blob": "ac969b751ae7fb83b7559981edb89db164269115",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 215,
    "line": 202,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ba8b5f04ca634e516c5d3ed23e38fc9c82449242665b3d99047db8510fc7301",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae82cc7d-f4b9-6d2b-ee9b-68bb9faff17f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 202–215.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem whisker_eq (f : X ⟶ Y) {g h : Y ⟶ Z} (w : g = h) : f ≫ g = f ≫ h := by rw [w]

/--
Notation for whiskering an equation by a morphism (on the right).
If `f g : X ⟶ Y` and `w : f = g` and `h : Y ⟶ Z`, then `w =≫ h : f ≫ h = g ≫ h`.
-/
scoped infixr:80 " =≫ " => eq_whisker

/--
Notation for whiskering an equation by a morphism (on the left).
If `g h : Y ⟶ Z` and `w : g = h` and `f : X ⟶ Y`, then `f ≫= w : f ≫ g = f ≫ h`.
-/
scoped infixr:80 " ≫= " => whisker_eq

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantce1448bfbaf7863a59c21eb885b3e569eb9b25f81fc877e3ca7eaada546b3cc0.lean#L202).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ac969b751ae7fb83b7559981edb89db164269115` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
