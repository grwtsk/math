# not_differentiableAt_inv_log_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a6b8798bd2a026950dfe565aab85bd9e1831bab0",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 32,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fbcc833e8a06129b1a28e67bcb511a7faa4aa0d80ce87579a0f4ef6b35ce29b7.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8cf401f3-8145-c44a-c2e1-eb97d5fe06fa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f0e0eb47-377b-50d1-4208-0bdc18f0e69a",
  "kind": "lemma",
  "lexical_name": "not_differentiableAt_inv_log_zero",
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
  "slug": "not-differentiableat-inv-log-zero--c8d7067aca695ebad0ec0447",
  "source": {
    "blob": "a6b8798bd2a026950dfe565aab85bd9e1831bab0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 32,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/InvLog/Variantfbcc833e8a06129b1a28e67bcb511a7faa4aa0d80ce87579a0f4ef6b35ce29b7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8d7067aca695ebad0ec0447966838bf81c3dca00144e5b8e897da067cee4632",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/InvLog/Variantfbcc833e8a06129b1a28e67bcb511a7faa4aa0d80ce87579a0f4ef6b35ce29b7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f0e0eb47-377b-50d1-4208-0bdc18f0e69a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma not_differentiableAt_inv_log_zero : ¬ DifferentiableAt ℝ (fun x ↦ (log x)⁻¹) 0 := by
  simp only [← hasDerivAt_deriv_iff, hasDerivAt_iff_tendsto_slope_zero, zero_add, log_zero,
    inv_zero, sub_zero, smul_eq_mul, ← mul_inv, mul_comm _ (log _)]
  refine fun H ↦ (tendsto_nhdsWithin_mono_left (by grind : Set.Iio (0 : ℝ) ⊆ _) H).not_tendsto
    (by simp) (tendsto_inv_nhdsGT_zero.comp ?_)
  refine tendsto_nhdsWithin_of_tendsto_nhds_of_eventually_within _
    tendsto_log_mul_self_nhdsLT_zero ?_
  simp only [← nhdsWithin_Ioo_eq_nhdsLT neg_one_lt_zero, Set.mem_Ioi]
  refine eventually_nhdsWithin_of_forall fun x ⟨hx₁, hx₂⟩ ↦ mul_pos_of_neg_of_neg ?_ hx₂
  apply log_neg_eq_log x ▸ log_neg <;> grind

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/InvLog/Variantfbcc833e8a06129b1a28e67bcb511a7faa4aa0d80ce87579a0f4ef6b35ce29b7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/InvLog/Variantfbcc833e8a06129b1a28e67bcb511a7faa4aa0d80ce87579a0f4ef6b35ce29b7.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6b8798bd2a026950dfe565aab85bd9e1831bab0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
