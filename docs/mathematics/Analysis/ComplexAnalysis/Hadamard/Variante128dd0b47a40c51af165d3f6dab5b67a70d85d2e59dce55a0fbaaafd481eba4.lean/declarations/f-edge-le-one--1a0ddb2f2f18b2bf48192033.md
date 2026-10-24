# F_edge_le_one

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "eefa0b4dfc332b435a80d9b47c06d9189f37353e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 190,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e1/e128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6d9e1862-34ee-b923-4acb-d299913b4df0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f2ab0b60-daf5-acc9-7ad8-1cfe95b6f964",
  "kind": "lemma",
  "lexical_name": "F_edge_le_one",
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
  "slug": "f-edge-le-one--1a0ddb2f2f18b2bf48192033",
  "source": {
    "blob": "eefa0b4dfc332b435a80d9b47c06d9189f37353e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 190,
    "path": "GRWTSK/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a0ddb2f2f18b2bf48192033e687b58942836678c535939a7bdf66a4932b64c1",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f2ab0b60-daf5-acc9-7ad8-1cfe95b6f964`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 190–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma F_edge_le_one (f : ℂ → E) (ε : ℝ) (hε : ε > 0) (z : ℂ)
    (hB : BddAbove ((norm ∘ f) '' verticalClosedStrip 0 1)) (hz : z ∈ re ⁻¹' {0, 1}) :
    ‖F f ε z‖ ≤ 1 := by
  simp only [F, norm_smul, norm_mul, norm_cpow_eq_rpow_re_of_pos, norm_invInterpStrip f z hε,
    sSupNormIm_eps_pos f hε 1, sub_re, one_re, neg_re]
  rcases hz with hz0 | hz1
  -- `z.re = 0`
  · simp only [hz0, zero_sub, Real.rpow_neg_one, neg_zero, Real.rpow_zero, mul_one,
      inv_mul_le_iff₀ (sSupNormIm_eps_pos f hε 0)]
    rw [← hz0]
    apply le_of_lt (norm_lt_sSupNormIm_eps f ε hε _ _ hB)
    simp only [verticalClosedStrip, mem_preimage, zero_le_one, left_mem_Icc, hz0]
  -- `z.re = 1`
  · rw [mem_singleton_iff] at hz1
    simp only [hz1, one_mul, Real.rpow_zero, sub_self, Real.rpow_neg_one,
      inv_mul_le_iff₀ (sSupNormIm_eps_pos f hε 1), mul_one]
    rw [← hz1]
    apply le_of_lt (norm_lt_sSupNormIm_eps f ε hε _ _ hB)
    simp only [verticalClosedStrip, mem_preimage, zero_le_one, hz1, right_mem_Icc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/Hadamard/Variante128dd0b47a40c51af165d3f6dab5b67a70d85d2e59dce55a0fbaaafd481eba4.lean#L190).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eefa0b4dfc332b435a80d9b47c06d9189f37353e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
