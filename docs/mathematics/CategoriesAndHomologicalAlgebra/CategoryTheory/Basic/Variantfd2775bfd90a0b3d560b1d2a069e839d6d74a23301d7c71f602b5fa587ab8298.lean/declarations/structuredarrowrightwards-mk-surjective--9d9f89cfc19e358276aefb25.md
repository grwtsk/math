# StructuredArrowRightwards.mk_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6dc0f0865bd32ee734335d175724970f08049a43",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 127,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fd/fd2775bfd90a0b3d560b1d2a069e839d6d74a23301d7c71f602b5fa587ab8298.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f2d7ad96-5b9c-8edb-3494-2ca83afe01db",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f38b8a8f-29d9-3bd0-d533-426ec3d2ae89",
  "kind": "lemma",
  "lexical_name": "StructuredArrowRightwards.mk_surjective",
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
  "slug": "structuredarrowrightwards-mk-surjective--9d9f89cfc19e358276aefb25",
  "source": {
    "blob": "6dc0f0865bd32ee734335d175724970f08049a43",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 127,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfd2775bfd90a0b3d560b1d2a069e839d6d74a23301d7c71f602b5fa587ab8298.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9d9f89cfc19e358276aefb259bd1ffeb5ffd7545d6e33c23c985f727ecd96a7b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfd2775bfd90a0b3d560b1d2a069e839d6d74a23301d7c71f602b5fa587ab8298.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f38b8a8f-29d9-3bd0-d533-426ec3d2ae89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma StructuredArrowRightwards.mk_surjective
    (f : w.StructuredArrowRightwards g) :
    ∃ (X₁ : C₁) (a : X₂ ⟶ T.obj X₁) (b : L.obj X₁ ⟶ X₃)
      (comm : R.map a ≫ w.app X₁ ≫ B.map b = g), f = mk w g X₁ a b comm := by
  obtain ⟨g, φ, rfl⟩ := StructuredArrow.mk_surjective f
  obtain ⟨X₁, b, rfl⟩ := g.mk_surjective
  obtain ⟨a, ha, rfl⟩ := CostructuredArrow.homMk_surjective φ
  exact ⟨X₁, a, b, by simpa using ha, rfl⟩

set_option backward.isDefEq.respectTransparency.types false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfd2775bfd90a0b3d560b1d2a069e839d6d74a23301d7c71f602b5fa587ab8298.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantfd2775bfd90a0b3d560b1d2a069e839d6d74a23301d7c71f602b5fa587ab8298.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6dc0f0865bd32ee734335d175724970f08049a43` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
