# lamLogPow_offlayer_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5a1ead751faa8933ff3be87e4e7713190b476296",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 252,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/39/39896dcda913b48b8d69152bec014664d303ca7354cbb777089342e5da5c75c2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3eab5bcd-d473-cdbd-210a-3c55dbf2b45a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d5c92f64-b9d1-37e0-06e3-d91c04fb5663",
  "kind": "lemma",
  "lexical_name": "lamLogPow_offlayer_le",
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
  "slug": "lamlogpow-offlayer-le--874f7cdfd995fda30ccab518",
  "source": {
    "blob": "5a1ead751faa8933ff3be87e4e7713190b476296",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 252,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DiagLaw/Variant39896dcda913b48b8d69152bec014664d303ca7354cbb777089342e5da5c75c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:874f7cdfd995fda30ccab518a0884212adadfce1e3e3b5cc3e814c8742cb3729",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DiagLaw/Variant39896dcda913b48b8d69152bec014664d303ca7354cbb777089342e5da5c75c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d5c92f64-b9d1-37e0-06e3-d91c04fb5663`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma lamLogPow_offlayer_le (k : ℕ) {y : ℝ} (hy : 0 ≤ y) :
    ∑ N ∈ (Ioc 0 ⌊Real.exp y⌋₊).filter (fun N => ¬ (Squarefree N ∧ ω N = k)),
        (lamLog ^ k) N * Real.log N ^ 2 / N
      ≤ y ^ (k + 2) * Nsf k y := by
  set X := ⌊Real.exp y⌋₊ with hX
  have hpt : ∀ N ∈ (Ioc 0 X).filter (fun N => ¬ (Squarefree N ∧ ω N = k)),
      (lamLog ^ k) N * Real.log N ^ 2 / N
        ≤ y ^ (k + 2) * (if ¬ Squarefree N then (Λ ^ k) N / N else 0) := by
    intro N hN
    obtain ⟨hNI, hB⟩ := mem_filter.mp hN
    have hlogN : Real.log N ≤ y := log_le_of_mem_Ioc_floor_exp hNI
    have hlog0 : 0 ≤ Real.log N := Real.log_natCast_nonneg N
    by_cases hsf : Squarefree N
    · -- then (lamLog^k) N = 0 (else ω N = k)
      have h0 : (lamLog ^ k) N = 0 := by
        rw [lamLogPow_apply_squarefree hsf k]
        split_ifs with hω
        · exact absurd ⟨hsf, hω⟩ hB
        · rfl
      rw [h0, if_neg (not_not_intro hsf)]; simp
    · rw [if_pos hsf]
      calc (lamLog ^ k) N * Real.log N ^ 2 / N
          ≤ (Real.log N ^ k * (Λ ^ k) N) * Real.log N ^ 2 / N :=
            div_le_div_of_nonneg_right (mul_le_mul_of_nonneg_right (lamLogPow_le k N) (sq_nonneg _))
              (Nat.cast_nonneg N)
        _ = Real.log N ^ (k + 2) * ((Λ ^ k) N / N) := by ring
        _ ≤ y ^ (k + 2) * ((Λ ^ k) N / N) :=
            mul_le_mul_of_nonneg_right (pow_le_pow_left₀ hlog0 hlogN _)
              (div_nonneg (lamPow_nonneg _ _) (Nat.cast_nonneg N))
  calc _ ≤ ∑ N ∈ (Ioc 0 X).filter (fun N => ¬ (Squarefree N ∧ ω N = k)),
          y ^ (k + 2) * (if ¬ Squarefree N then (Λ ^ k) N / N else 0) := sum_le_sum hpt
    _ ≤ ∑ N ∈ Ioc 0 X, y ^ (k + 2) * (if ¬ Squarefree N then (Λ ^ k) N / N else 0) := by
        refine sum_le_sum_of_subset_of_nonneg (filter_subset _ _) fun N _ _ => ?_
        refine mul_nonneg (pow_nonneg hy _) ?_
        split_ifs
        · exact le_rfl
        · exact div_nonneg (lamPow_nonneg _ _) (Nat.cast_nonneg N)
    _ = y ^ (k + 2) * Nsf k y := by
        rw [← mul_sum]; congr 1
        unfold Nsf SdivP
        rw [sum_filter]

/-- **the layer ω = k ≥ 2.**  With a := (‖Λ⋆‖²)⁻¹ (so a ≤ 4/l² and |a^k − (4/l²)^k| ≤ k(4/l²)^{k+1} by Coeff/Param):
  |sfPart Λ⋆ k y − l²·d_k·(y/l)^{2k+2}| ≤ C_k·(1+l)  for 0 ≤ y ≤ l, l ≥ 2. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DiagLaw/Variant39896dcda913b48b8d69152bec014664d303ca7354cbb777089342e5da5c75c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/DiagLaw/Variant39896dcda913b48b8d69152bec014664d303ca7354cbb777089342e5da5c75c2.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a1ead751faa8933ff3be87e4e7713190b476296` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
