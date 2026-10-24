# exp_half_mem_Icc_of_exp_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "de6aa03d0dd36c7f82cfdb89c198f8e6368ef212",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1622,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/99/996241c091eaf59874ec30a3f7614fd0efcdb6241a71bb30b8d3b82e1dc4ad3d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bd960fbb-c93a-0e1f-ea0c-343932b915c3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:6051cfba-c09e-2edb-072d-e67977b220c3",
  "kind": "lemma",
  "lexical_name": "exp_half_mem_Icc_of_exp_mem",
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
  "slug": "exp-half-mem-icc-of-exp-mem--28fd3996fcec569872912fc2",
  "source": {
    "blob": "de6aa03d0dd36c7f82cfdb89c198f8e6368ef212",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1648,
    "line": 1622,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant996241c091eaf59874ec30a3f7614fd0efcdb6241a71bb30b8d3b82e1dc4ad3d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:28fd3996fcec569872912fc2b454ac8232bf402eaba4177f645ded02160e49d7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant996241c091eaf59874ec30a3f7614fd0efcdb6241a71bb30b8d3b82e1dc4ad3d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6051cfba-c09e-2edb-072d-e67977b220c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1622–1648.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma exp_half_mem_Icc_of_exp_mem (k : ℕ) (v b : ℝ)
    (hb_lb : max (10000 : ℝ) (exp (2 * k)) ≤ exp b)
    (hb_ub : exp b ≤ v) :
    let u := exp (b / 2)
    b ≥ 2 * (k : ℝ) ∧ (100 : ℝ) ≤ u ∧ 0 < b ∧ u < v ∧ (1 : ℝ) ≤ u ∧ u ^ 2 = exp b := by
  intro u
  have hexpb_ge_10000 : (10000 : ℝ) ≤ exp b := le_of_max_le_left hb_lb
  have hexpb_ge_e2k : exp (2 * (k : ℝ)) ≤ exp b := le_of_max_le_right hb_lb
  have hbk : b ≥ 2 * (k : ℝ) := by
    have := Real.exp_le_exp.mp hexpb_ge_e2k
    push_cast at this ⊢; linarith
  have hu_ge_100 : (100 : ℝ) ≤ u := by
    dsimp [u]
    rw [← Real.exp_log (by norm_num : (0:ℝ) < 100)]
    apply Real.exp_le_exp.mpr
    linarith [Real.log_rpow (by norm_num : (0:ℝ) < 10000) (1/2 : ℝ),
              show Real.log 10000 ≤ b by rwa [← Real.log_exp b, Real.log_le_log_iff (by norm_num) (exp_pos b)]]
  have hb_pos : 0 < b := one_lt_exp_iff.mp (by linarith [hexpb_ge_10000])
  have hu_lt_v : u < v := by
    dsimp [u]; exact (Real.exp_lt_exp.mpr (by linarith)).trans_le hb_ub
  have hu_ge_1 : (1 : ℝ) ≤ u := le_trans (by norm_num) hu_ge_100
  have hu_sq : u ^ 2 = exp b := by
    dsimp [u]
    rw [← Real.rpow_natCast, ← Real.exp_mul]
    norm_num
  exact ⟨hbk, hu_ge_100, hb_pos, hu_lt_v, hu_ge_1, hu_sq⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant996241c091eaf59874ec30a3f7614fd0efcdb6241a71bb30b8d3b82e1dc4ad3d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant996241c091eaf59874ec30a3f7614fd0efcdb6241a71bb30b8d3b82e1dc4ad3d.lean#L1622).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de6aa03d0dd36c7f82cfdb89c198f8e6368ef212` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
