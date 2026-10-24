# exp_half_mem_Icc_of_exp_mem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:88c33117-09e6-f3f1-9a1b-66be81421a1f",
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
  "slug": "exp-half-mem-icc-of-exp-mem--b5eca0b086bf7d5a0346971c",
  "source": {
    "blob": "e42498b7280215dd8b3febb10d2704958bab8a6a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1656,
    "line": 1630,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant9e13ed9ae0821601985cdffe041f163e78619bbb02db268dd79e727a53daa2c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5eca0b086bf7d5a0346971ce8089401c5b758ac9b733a44ba68f6a9bc8d011f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant9e13ed9ae0821601985cdffe041f163e78619bbb02db268dd79e727a53daa2c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88c33117-09e6-f3f1-9a1b-66be81421a1f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1630–1656.

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

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant9e13ed9ae0821601985cdffe041f163e78619bbb02db268dd79e727a53daa2c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/BKLNW/Variant9e13ed9ae0821601985cdffe041f163e78619bbb02db268dd79e727a53daa2c1.lean#L1630).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e42498b7280215dd8b3febb10d2704958bab8a6a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
