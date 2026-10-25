# hasProjectiveDimensionLT_X₃

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2f3d604c47735f532587065ef84ee69af8e07e5e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 165,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ed/edca48a275ce72799ea1f530ebd009fc34a94b763a434215b96071bf9fc3497f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f780dcc1-4ece-2a41-d4be-0c995702b90a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:192ba51e-771f-cfb6-b283-9d6afc4e87a3",
  "kind": "lemma",
  "lexical_name": "hasProjectiveDimensionLT_X₃",
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
  "slug": "hasprojectivedimensionlt-x--37a4341c5ba8c79f71000c13",
  "source": {
    "blob": "2f3d604c47735f532587065ef84ee69af8e07e5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 175,
    "line": 165,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variantedca48a275ce72799ea1f530ebd009fc34a94b763a434215b96071bf9fc3497f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37a4341c5ba8c79f71000c13c3db6cbfe61cc6f4b308a7a6fc681b00644cfba6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variantedca48a275ce72799ea1f530ebd009fc34a94b763a434215b96071bf9fc3497f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:192ba51e-771f-cfb6-b283-9d6afc4e87a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–175.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma hasProjectiveDimensionLT_X₃ (h₁ : HasProjectiveDimensionLT S.X₁ n)
    (h₂ : HasProjectiveDimensionLT S.X₂ (n + 1)) :
    HasProjectiveDimensionLT S.X₃ (n + 1) := by
  letI := HasExt.standard C
  rw [hasProjectiveDimensionLT_iff]
  rintro (_ | i) hi Y x₃
  · simp at hi
  · obtain ⟨x₁, rfl⟩ := Ext.contravariant_sequence_exact₃ hS _ x₃
      (Ext.eq_zero_of_hasProjectiveDimensionLT _ (n + 1) hi) (add_comm _ _)
    rw [x₁.eq_zero_of_hasProjectiveDimensionLT n (by omega), Ext.comp_zero]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variantedca48a275ce72799ea1f530ebd009fc34a94b763a434215b96071bf9fc3497f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Dimension/Variantedca48a275ce72799ea1f530ebd009fc34a94b763a434215b96071bf9fc3497f.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f3d604c47735f532587065ef84ee69af8e07e5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
