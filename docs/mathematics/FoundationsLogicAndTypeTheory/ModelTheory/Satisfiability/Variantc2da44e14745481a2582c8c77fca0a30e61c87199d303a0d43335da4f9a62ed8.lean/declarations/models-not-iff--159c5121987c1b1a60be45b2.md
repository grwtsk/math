# models_not_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c67c6fc11af57b4996931de4cddb6f77970b4901",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 381,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c2/c2da44e14745481a2582c8c77fca0a30e61c87199d303a0d43335da4f9a62ed8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:89aaf58a-fde1-fba2-2a2c-f19a2828e3e9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:284ba223-3f92-c30b-f526-67c0e8d68168",
  "kind": "theorem",
  "lexical_name": "models_not_iff",
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
  "slug": "models-not-iff--159c5121987c1b1a60be45b2",
  "source": {
    "blob": "c67c6fc11af57b4996931de4cddb6f77970b4901",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 393,
    "line": 381,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantc2da44e14745481a2582c8c77fca0a30e61c87199d303a0d43335da4f9a62ed8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:159c5121987c1b1a60be45b2ab577806f8e632393055e4dcaccf9c3c26ce8ecc",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantc2da44e14745481a2582c8c77fca0a30e61c87199d303a0d43335da4f9a62ed8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:284ba223-3f92-c30b-f526-67c0e8d68168`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 381–393.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem models_not_iff (h : T.IsComplete) (φ : L.Sentence) : T ⊨ᵇ φ.not ↔ ¬T ⊨ᵇ φ := by
  cases' h.2 φ with hφ hφn
  · simp only [hφ, not_true, iff_false_iff]
    rw [models_sentence_iff, not_forall]
    refine' ⟨h.1.some, _⟩
    simp only [Sentence.realize_not, Classical.not_not]
    exact models_sentence_iff.1 hφ _
  · simp only [hφn, true_iff_iff]
    intro hφ
    rw [models_sentence_iff] at *
    exact hφn h.1.some (hφ _)
#align first_order.language.Theory.is_complete.models_not_iff FirstOrder.Language.Theory.IsComplete.models_not_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantc2da44e14745481a2582c8c77fca0a30e61c87199d303a0d43335da4f9a62ed8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Satisfiability/Variantc2da44e14745481a2582c8c77fca0a30e61c87199d303a0d43335da4f9a62ed8.lean#L381).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c67c6fc11af57b4996931de4cddb6f77970b4901` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
