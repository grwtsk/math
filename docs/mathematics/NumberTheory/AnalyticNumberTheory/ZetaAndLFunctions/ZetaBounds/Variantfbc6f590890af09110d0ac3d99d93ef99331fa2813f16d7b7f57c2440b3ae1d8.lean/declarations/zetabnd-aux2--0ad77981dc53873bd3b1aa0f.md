# ZetaBnd_aux2

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c9b3882075cca567abe6de4cc789563c01afddbf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1648,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fb/fbc6f590890af09110d0ac3d99d93ef99331fa2813f16d7b7f57c2440b3ae1d8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4d854056-6612-66b5-271c-3d7bab904a14",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:233203df-1fbb-f14e-6271-04f19267b3ce",
  "kind": "lemma",
  "lexical_name": "ZetaBnd_aux2",
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
  "slug": "zetabnd-aux2--0ad77981dc53873bd3b1aa0f",
  "source": {
    "blob": "c9b3882075cca567abe6de4cc789563c01afddbf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1679,
    "line": 1648,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variantfbc6f590890af09110d0ac3d99d93ef99331fa2813f16d7b7f57c2440b3ae1d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ad77981dc53873bd3b1aa0ff496c0742a49883db7e7dd9fdf58e59109de7910",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variantfbc6f590890af09110d0ac3d99d93ef99331fa2813f16d7b7f57c2440b3ae1d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:233203df-1fbb-f14e-6271-04f19267b3ce`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1648–1679.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma ZetaBnd_aux2 {n : ℕ} {t A σ : ℝ} (Apos : 0 < A) (σpos : 0 < σ) (n_le_t : n ≤ |t|)
    (σ_ge : (1 : ℝ) - A / Real.log |t| ≤ σ) :
    ‖(n : ℂ) ^ (-(σ + t * I))‖ ≤ (n : ℝ)⁻¹ * Real.exp A := by
  set s := σ + t * I
  by_cases n0 : n = 0
  · simp_rw [n0, CharP.cast_eq_zero, inv_zero, zero_mul]
    rw [Complex.zero_cpow ?_]
    · simp
    · exact fun h ↦ σpos.ne' <| zero_eq_neg.mp <| zero_re ▸ h ▸ (by simp [s])
  have n_gt_0 : 0 < n := Nat.pos_of_ne_zero n0
  have n_gt_0' : (0 : ℝ) < (n : ℝ) := Nat.cast_pos.mpr n_gt_0
  have n_ge_1 : 1 ≤ (n : ℝ) := Nat.one_le_cast.mpr <| Nat.succ_le_of_lt n_gt_0
  calc
    _ = |((n : ℝ) ^ (-σ))| := ?_
    _ ≤ Real.exp (Real.log n * -σ) := Real.abs_rpow_le_exp_log_mul (n : ℝ) (-σ)
    _ ≤ Real.exp (Real.log n *  -(1 - A / Real.log t)) := ?_
    _ ≤ Real.exp (- Real.log n + A) := Real.exp_le_exp_of_le ?_
    _ ≤ _ := by rw [Real.exp_add, Real.exp_neg, Real.exp_log n_gt_0']
  · have : ‖(n : ℂ) ^ (-s)‖ = n ^ (-s.re) := norm_cpow_eq_rpow_re_of_pos n_gt_0' (-s)
    rw [this, abs_eq_self.mpr <| Real.rpow_nonneg n_gt_0'.le _]; simp [s]
  · apply Real.exp_le_exp_of_le <| mul_le_mul_of_nonneg_left _ <| Real.log_nonneg n_ge_1
    rw [neg_sub, neg_le_sub_iff_le_add, add_comm, ← Real.log_abs]; linarith
  · simp only [neg_sub, le_neg_add_iff_add_le]
    ring_nf
    conv => rw [mul_comm, ← mul_assoc, ← Real.log_abs]; rhs; rw [← one_mul A]
    gcongr
    by_cases ht1 : |t| = 1
    · simp [ht1]
    apply (inv_mul_le_iff₀ ?_).mpr
    · convert Real.log_le_log n_gt_0' n_le_t using 1; rw [mul_one]
    · exact Real.log_pos <| lt_of_le_of_ne (le_trans n_ge_1 n_le_t) <| fun t ↦ ht1 (t.symm)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variantfbc6f590890af09110d0ac3d99d93ef99331fa2813f16d7b7f57c2440b3ae1d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/ZetaBounds/Variantfbc6f590890af09110d0ac3d99d93ef99331fa2813f16d7b7f57c2440b3ae1d8.lean#L1648).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9b3882075cca567abe6de4cc789563c01afddbf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
