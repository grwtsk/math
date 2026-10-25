# exists_mdifferentiableOn_extend

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d5a09d4de9b4840fda28a3ebb8b604c116f61a8f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 730,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6fe8c79ac8013d0c95d20c434b5e7434846800a073dcbb10e366793e391d7470.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8840041e-fa1a-a140-cf5b-f50cffa8fa74",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ce41c69c-092d-93cd-c6e1-ba00ad8b084f",
  "kind": "lemma",
  "lexical_name": "exists_mdifferentiableOn_extend",
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
  "slug": "exists-mdifferentiableon-extend--9cbbc083d8e1d5ad0a078bf7",
  "source": {
    "blob": "d5a09d4de9b4840fda28a3ebb8b604c116f61a8f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 735,
    "line": 730,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/MDifferentiable/Variant6fe8c79ac8013d0c95d20c434b5e7434846800a073dcbb10e366793e391d7470.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9cbbc083d8e1d5ad0a078bf7f2b30228a93c065b6c9f04617f7de8d4d3b4ddcb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/MDifferentiable/Variant6fe8c79ac8013d0c95d20c434b5e7434846800a073dcbb10e366793e391d7470.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce41c69c-092d-93cd-c6e1-ba00ad8b084f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 730–735.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_mdifferentiableOn_extend [∀ x, Module 𝕜 (V x)] [VectorBundle 𝕜 F V]
    [ContMDiffVectorBundle 1 F V I] {x₀ : M} (σ₀ : V x₀) :
    ∃ s ∈ 𝓝 x₀, MDiff[s] (T% (extend F σ₀)) := by
  obtain ⟨s, hs, hsσ⟩ := exists_contMDiffOn_extend (k := 1) I F σ₀
  exact ⟨s, hs, hsσ.mdifferentiableOn one_ne_zero⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/MDifferentiable/Variant6fe8c79ac8013d0c95d20c434b5e7434846800a073dcbb10e366793e391d7470.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/MDifferentiable/Variant6fe8c79ac8013d0c95d20c434b5e7434846800a073dcbb10e366793e391d7470.lean#L730).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5a09d4de9b4840fda28a3ebb8b604c116f61a8f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
