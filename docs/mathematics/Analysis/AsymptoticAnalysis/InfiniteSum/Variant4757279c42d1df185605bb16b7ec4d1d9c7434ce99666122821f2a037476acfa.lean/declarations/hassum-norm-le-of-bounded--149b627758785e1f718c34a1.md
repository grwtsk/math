# HasSum.norm_le_of_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ed07d83ddba3cbab203740240d39c87e2e463e1c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 107,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/47/4757279c42d1df185605bb16b7ec4d1d9c7434ce99666122821f2a037476acfa.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:862c78e8-0ad7-3fbe-7d16-1ec8ebb96a22",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:74ed4277-fe03-6a4c-6009-3a63870f2ae0",
  "kind": "theorem",
  "lexical_name": "HasSum.norm_le_of_bounded",
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
  "slug": "hassum-norm-le-of-bounded--149b627758785e1f718c34a1",
  "source": {
    "blob": "ed07d83ddba3cbab203740240d39c87e2e463e1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 107,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variant4757279c42d1df185605bb16b7ec4d1d9c7434ce99666122821f2a037476acfa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:149b627758785e1f718c34a11180a82a8bb9f0643688b7b9923eaf0f76b03da4",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/InfiniteSum/Variant4757279c42d1df185605bb16b7ec4d1d9c7434ce99666122821f2a037476acfa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:74ed4277-fe03-6a4c-6009-3a63870f2ae0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem HasSum.norm_le_of_bounded {f : ι → E} {g : ι → ℝ} {a : E} {b : ℝ} (hf : HasSum f a)
    (hg : HasSum g b) (h : ∀ i, ‖f i‖ ≤ g i) : ‖a‖ ≤ b := by
  classical exact le_of_tendsto_of_tendsto' hf.norm hg fun _s ↦ norm_sum_le_of_le _ fun i _hi ↦ h i

/-- Quantitative result associated to the direct comparison test for series:  If `∑' i, g i` is
summable, and for all `i`, `‖f i‖ ≤ g i`, then `‖∑' i, f i‖ ≤ ∑' i, g i`. Note that we do not
assume that `∑' i, f i` is summable, and it might not be the case if `α` is not a complete space. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/InfiniteSum/Variant4757279c42d1df185605bb16b7ec4d1d9c7434ce99666122821f2a037476acfa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/InfiniteSum/Variant4757279c42d1df185605bb16b7ec4d1d9c7434ce99666122821f2a037476acfa.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed07d83ddba3cbab203740240d39c87e2e463e1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
