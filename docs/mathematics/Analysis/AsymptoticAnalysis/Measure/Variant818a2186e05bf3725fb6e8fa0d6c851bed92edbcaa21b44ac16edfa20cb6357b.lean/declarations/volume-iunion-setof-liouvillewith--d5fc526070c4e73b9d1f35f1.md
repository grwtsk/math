# volume_iUnion_setOf_liouvilleWith

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:39a08ddb-8660-048d-90db-e1f264e41237",
  "kind": "theorem",
  "lexical_name": "volume_iUnion_setOf_liouvilleWith",
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
  "slug": "volume-iunion-setof-liouvillewith--d5fc526070c4e73b9d1f35f1",
  "source": {
    "blob": "ccd581e1f102d420a7542bdc5c12563436cd2ab9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 82,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Measure/Variant818a2186e05bf3725fb6e8fa0d6c851bed92edbcaa21b44ac16edfa20cb6357b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d5fc526070c4e73b9d1f35f1a2d225d67e6b71c9b9d5391cc9d0ab94c3081389",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Measure/Variant818a2186e05bf3725fb6e8fa0d6c851bed92edbcaa21b44ac16edfa20cb6357b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:39a08ddb-8660-048d-90db-e1f264e41237`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem volume_iUnion_setOf_liouvilleWith :
    volume (⋃ (p : ℝ) (_hp : 2 < p), { x : ℝ | LiouvilleWith p x }) = 0 := by
  simp only [← setOf_exists, exists_prop]
  refine measure_mono_null setOf_liouvilleWith_subset_aux ?_
  rw [measure_iUnion_null_iff]; intro m; rw [measure_preimage_add_right]; clear m
  refine (measure_biUnion_null_iff <| to_countable _).2 fun n (hn : 1 ≤ n) => ?_
  generalize hr : (2 + 1 / n : ℝ) = r
  replace hr : 2 < r := by simp [← hr, zero_lt_one.trans_le hn]
  clear hn n
  refine measure_setOf_frequently_eq_zero ?_
  simp only [setOf_exists, ← exists_prop, ← Real.dist_eq, ← mem_ball, setOf_mem_eq]
  set B : ℤ → ℕ → Set ℝ := fun a b => ball (a / b) (1 / (b : ℝ) ^ r)
  have hB : ∀ a b, volume (B a b) = ↑((2 : ℝ≥0) / (b : ℝ≥0) ^ r) := fun a b ↦ by
    rw [Real.volume_ball, mul_one_div, ← NNReal.coe_two, ← NNReal.coe_natCast, ← NNReal.coe_rpow,
      ← NNReal.coe_div, ENNReal.ofReal_coe_nnreal]
  have : ∀ b : ℕ, volume (⋃ a ∈ Finset.Icc (0 : ℤ) b, B a b) ≤
      ↑(2 * ((b : ℝ≥0) ^ (1 - r) + (b : ℝ≥0) ^ (-r))) := fun b ↦
    calc
      volume (⋃ a ∈ Finset.Icc (0 : ℤ) b, B a b) ≤ ∑ a ∈ Finset.Icc (0 : ℤ) b, volume (B a b) :=
        measure_biUnion_finset_le _ _
      _ = ↑((b + 1) * (2 / (b : ℝ≥0) ^ r)) := by
        simp only [hB, Int.card_Icc, Finset.sum_const, nsmul_eq_mul, sub_zero, ← Int.natCast_succ,
          Int.toNat_natCast, ← Nat.cast_succ, ENNReal.coe_mul, ENNReal.coe_natCast]
      _ = _ := by
        have : 1 - r ≠ 0 := by linarith
        rw [ENNReal.coe_inj]
        simp [add_mul, div_eq_mul_inv, NNReal.rpow_neg, NNReal.rpow_sub' this, mul_add,
          mul_left_comm]
  refine ne_top_of_le_ne_top (ENNReal.tsum_coe_ne_top_iff_summable.2 ?_) (ENNReal.tsum_le_tsum this)
  refine (Summable.add ?_ ?_).mul_left _ <;> simp only [NNReal.summable_rpow] <;> linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Measure/Variant818a2186e05bf3725fb6e8fa0d6c851bed92edbcaa21b44ac16edfa20cb6357b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Measure/Variant818a2186e05bf3725fb6e8fa0d6c851bed92edbcaa21b44ac16edfa20cb6357b.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccd581e1f102d420a7542bdc5c12563436cd2ab9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
