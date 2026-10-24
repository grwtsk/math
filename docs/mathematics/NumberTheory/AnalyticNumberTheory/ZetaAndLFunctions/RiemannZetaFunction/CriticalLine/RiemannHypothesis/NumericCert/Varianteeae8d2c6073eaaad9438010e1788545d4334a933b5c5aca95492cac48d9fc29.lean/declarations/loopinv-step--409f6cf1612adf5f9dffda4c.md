# loopInv_step

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2c34ebf406adcf64d891fdb369f7cdcd9e52100f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 177,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ee/eeae8d2c6073eaaad9438010e1788545d4334a933b5c5aca95492cac48d9fc29.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:39a275fc-522a-09ca-0d96-f81e10beadb8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:412ffc38-f315-3b3f-3f58-817f4761566e",
  "kind": "lemma",
  "lexical_name": "loopInv_step",
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
  "slug": "loopinv-step--409f6cf1612adf5f9dffda4c",
  "source": {
    "blob": "2c34ebf406adcf64d891fdb369f7cdcd9e52100f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 227,
    "line": 177,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NumericCert/Varianteeae8d2c6073eaaad9438010e1788545d4334a933b5c5aca95492cac48d9fc29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:409f6cf1612adf5f9dffda4c272dee49754711bf16fbf8f2edc08eb9d84aaa2d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NumericCert/Varianteeae8d2c6073eaaad9438010e1788545d4334a933b5c5aca95492cac48d9fc29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:412ffc38-f315-3b3f-3f58-817f4761566e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–227.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma loopInv_step (hN : 0 < N) {s : St} (h : LoopInv S N K s) {e : ℤ × ℤ}
    (he : (e.1 : ℝ) ≤ K * S (s.j + 1) ∧ (K : ℝ) * S (s.j + 1) ≤ e.2) : LoopInv S N K (step N K s e) := by
  have hT : T S (s.j + 1) = T S s.j + S (s.j + 1) := T_succ S s.j
  have hU : U S (s.j + 1) = U S s.j + T S s.j := U_succ S s.j
  have tlo' : ((s.Tlo + e.1 : ℤ) : ℝ) ≤ K * T S (s.j + 1) := by rw [hT]; push_cast; linarith [h.tlo, he.1]
  have thi' : (K : ℝ) * T S (s.j + 1) ≤ ((s.Thi + e.2 : ℤ) : ℝ) := by rw [hT]; push_cast; linarith [h.thi, he.2]
  have ulo' : ((s.Ulo + s.Tlo : ℤ) : ℝ) ≤ K * U S (s.j + 1) := by rw [hU]; push_cast; linarith [h.ulo, h.tlo]
  have uhi' : (K : ℝ) * U S (s.j + 1) ≤ ((s.Uhi + s.Thi : ℤ) : ℝ) := by rw [hU]; push_cast; linarith [h.uhi, h.thi]
  refine ⟨tlo', thi', ulo', uhi', ?_, ?_, ?_⟩
  · intro i h1 h2
    simp only [step] at h2 ⊢
    rcases Nat.lt_or_ge i (s.j + 1) with hlt | hge
    · exact (h.dl i h1 (by omega)).trans (by exact_mod_cast le_max_left _ _)
    · have hi : i = s.j + 1 := le_antisymm h2 hge
      subst hi
      rw [scaled_Dleft hN]
      simp only [Nat.add_sub_cancel]
      have hb := abs_le_max_abs (a := 2 * N * (s.Tlo : ℝ) - ((s.j : ℝ) + 1) ^ 2 * K) (b := 2 * N * (s.Thi : ℝ) - ((s.j : ℝ) + 1) ^ 2 * K)
        (x := 2 * N * (K * T S s.j) - ((s.j + 1 : ℕ) : ℝ) ^ 2 * K)
        (by push_cast; nlinarith [h.tlo, (Nat.cast_nonneg N : (0:ℝ) ≤ N)]) (by push_cast; nlinarith [h.thi, (Nat.cast_nonneg N : (0:ℝ) ≤ N)])
      refine hb.trans ?_
      push_cast [Int.cast_max, Int.cast_abs]
      exact le_trans (le_max_left _ _) (le_max_right _ _)
  · intro i h1 h2
    simp only [step] at h2 ⊢
    rcases Nat.lt_or_ge i (s.j + 1) with hlt | hge
    · exact (h.dr i h1 (by omega)).trans (by exact_mod_cast le_max_left _ _)
    · have hi : i = s.j + 1 := le_antisymm h2 hge
      subst hi
      rw [scaled_Dright hN]
      have hb := abs_le_max_abs (a := 2 * N * ((s.Tlo + e.1 : ℤ) : ℝ) - ((s.j : ℝ) + 1) ^ 2 * K) (b := 2 * N * ((s.Thi + e.2 : ℤ) : ℝ) - ((s.j : ℝ) + 1) ^ 2 * K)
        (x := 2 * N * (K * T S (s.j + 1)) - ((s.j + 1 : ℕ) : ℝ) ^ 2 * K)
        (by push_cast at tlo' ⊢; nlinarith [tlo', (Nat.cast_nonneg N : (0:ℝ) ≤ N)]) (by push_cast at thi' ⊢; nlinarith [thi', (Nat.cast_nonneg N : (0:ℝ) ≤ N)])
      refine hb.trans ?_
      push_cast [Int.cast_max, Int.cast_abs]
      exact le_trans (le_max_right _ _) (le_max_right _ _)
  · intro i h1 h2
    simp only [step] at h2 ⊢
    rcases Nat.lt_or_ge i (s.j + 1) with hlt | hge
    · exact (h.eg i h1 (by omega)).trans (by exact_mod_cast le_max_left _ _)
    · have hi : i = s.j + 1 := le_antisymm h2 hge
      subst hi
      rw [scaled_Egrid hN]
      have hb := abs_le_max_abs (a := 6 * N * ((s.Ulo + s.Tlo : ℤ) : ℝ) - ((s.j : ℝ) + 1) ^ 3 * K) (b := 6 * N * ((s.Uhi + s.Thi : ℤ) : ℝ) - ((s.j : ℝ) + 1) ^ 3 * K)
        (x := 6 * N * (K * U S (s.j + 1)) - ((s.j + 1 : ℕ) : ℝ) ^ 3 * K)
        (by push_cast at ulo' ⊢; nlinarith [ulo', (Nat.cast_nonneg N : (0:ℝ) ≤ N)]) (by push_cast at uhi' ⊢; nlinarith [uhi', (Nat.cast_nonneg N : (0:ℝ) ≤ N)])
      refine hb.trans ?_
      push_cast [Int.cast_max, Int.cast_abs]
      exact le_max_right _ _

/-- the ok flag only decreases. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NumericCert/Varianteeae8d2c6073eaaad9438010e1788545d4334a933b5c5aca95492cac48d9fc29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/NumericCert/Varianteeae8d2c6073eaaad9438010e1788545d4334a933b5c5aca95492cac48d9fc29.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2c34ebf406adcf64d891fdb369f7cdcd9e52100f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
