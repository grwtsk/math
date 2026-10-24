# Params.initial.score_bound_aux_balanced

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f920001904e0a69cdcc5a1042bc956cb81fd55a8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1928,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/34/34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2d4c4447-4260-f347-972f-6fcfe373f1e6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:37dcd0d2-fd84-da0e-a6f2-2bffa666065b",
  "kind": "lemma",
  "lexical_name": "Params.initial.score_bound_aux_balanced",
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
  "slug": "params-initial-score-bound-aux-balanced--f17ab4193a99d6aef4b94fc7",
  "source": {
    "blob": "f920001904e0a69cdcc5a1042bc956cb81fd55a8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1976,
    "line": 1928,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f17ab4193a99d6aef4b94fc76aebf001b2ff5e8b5203c8de1c60efc75398cda4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:37dcd0d2-fd84-da0e-a6f2-2bffa666065b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1928–1976.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma Params.initial.score_bound_aux_balanced (P : Params)
    (hImb : P.initial.total_imbalance = 0) :
    (if P.initial.total_imbalance > 0 then Real.log P.n else 0) +
    ∑ p ∈ (P.n + 1).primesBelow,
      (if P.initial.balance p > 0 then (P.initial.balance p : ℝ) * Real.log p
       else if p ≤ P.L then -(P.initial.balance p : ℝ) * Real.log P.L
       else -(P.initial.balance p : ℝ) * Real.log (P.n / p)) ≤
    ∑ _ ∈ Finset.filter (·.Prime) (Finset.Iic (P.n / P.L)), P.M * Real.log P.n +
    (∑ _ ∈ Finset.filter (·.Prime) (Finset.Iic ⌊(Real.sqrt P.n)⌋₊),
        P.M * Real.log P.n * Real.log P.n / Real.log 2 +
    (∑ p ∈ Finset.filter (·.Prime) (Finset.Icc (P.n / P.L) P.n),
        (P.n / p) * Real.log (P.n / p) +
    ∑ _ ∈ Finset.filter (·.Prime) (Finset.Iic P.L),
        (P.M * Real.log P.n + P.M * P.L^2 * primeCounting P.n) * Real.log P.L)) := by
  have hbal : ∀ x ∈ (P.n + 1).primesBelow, P.initial.balance x = 0 := fun x hx ↦
    Int.natAbs_eq_zero.mp
      (Finset.sum_eq_zero_iff_of_nonneg
        (fun _ _ ↦ Nat.zero_le _) |>.mp hImb x hx)
  have hImb' : ¬(P.initial.total_imbalance > 0) := by omega
  simp only [hImb', ite_false, zero_add]
  have : ∑ p ∈ (P.n + 1).primesBelow,
      (if P.initial.balance p > 0 then (P.initial.balance p : ℝ) * Real.log p
       else if p ≤ P.L then -(P.initial.balance p : ℝ) * Real.log P.L
       else -(P.initial.balance p : ℝ) * Real.log (P.n / p)) = 0 :=
    Finset.sum_eq_zero fun x hx ↦ by simp [hbal x hx]
  rw [this]
  have hn1 : (1 : ℝ) ≤ P.n := by
    exact_mod_cast Nat.lt_of_lt_of_le
      (Nat.mul_pos P.hL_pos P.hL_pos) P.hL.le
  have hlogn := Real.log_nonneg hn1
  exact add_nonneg
    (Finset.sum_nonneg fun _ _ ↦ mul_nonneg (Nat.cast_nonneg _) hlogn)
    (add_nonneg
      (Finset.sum_nonneg fun _ _ ↦
        div_nonneg (mul_nonneg (mul_nonneg (Nat.cast_nonneg _) hlogn) hlogn)
          (Real.log_nonneg one_le_two))
      (add_nonneg
        (Finset.sum_nonneg fun p hp ↦
          mul_nonneg (div_nonneg (Nat.cast_nonneg _) (Nat.cast_nonneg _))
            (Real.log_nonneg ((le_div_iff₀
              (Nat.cast_pos.mpr (Finset.mem_filter.mp hp).2.pos)).mpr
              (by simpa using (show (p : ℝ) ≤ P.n from by
                exact_mod_cast
                  (Finset.mem_Icc.mp (Finset.mem_filter.mp hp).1).2)))))
        (Finset.sum_nonneg fun _ _ ↦ mul_nonneg
          (add_nonneg (mul_nonneg (Nat.cast_nonneg _) hlogn)
            (mul_nonneg (mul_nonneg (Nat.cast_nonneg _) (sq_nonneg _)) (Nat.cast_nonneg _)))
          (Real.log_nonneg (by exact_mod_cast P.hL_pos)))))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/Erdos392/Variant34f74d200b52fd11460f51ccb971a2b0942b36a03cec8ca547c6873770fce625.lean#L1928).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f920001904e0a69cdcc5a1042bc956cb81fd55a8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
