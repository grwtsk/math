# summable_mul_of_bigO_atTop_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "71b44611d978318185ecc30724856b14e316742f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 330,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0b/0b1cbe3ed7bb5ffe694baaf0c6c16be5ce49371428a67b189987c6e6af178f5e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:097a95b7-3f50-f7a9-bbd9-9142bc38be2d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3af03268-9c91-01aa-ca77-2f817ee224ba",
  "kind": "theorem",
  "lexical_name": "summable_mul_of_bigO_atTop_aux",
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
  "slug": "summable-mul-of-bigo-attop-aux--b8bfaf6a16339a50cd95998d",
  "source": {
    "blob": "71b44611d978318185ecc30724856b14e316742f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 367,
    "line": 330,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/AbelSummation/Variant0b1cbe3ed7bb5ffe694baaf0c6c16be5ce49371428a67b189987c6e6af178f5e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b8bfaf6a16339a50cd95998d509bc30c149a182092f20c2563bae34a10490a6a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/AbelSummation/Variant0b1cbe3ed7bb5ffe694baaf0c6c16be5ce49371428a67b189987c6e6af178f5e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3af03268-9c91-01aa-ca77-2f817ee224ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 330–367.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem summable_mul_of_bigO_atTop_aux (m : ℕ)
    (h_bdd : (fun n : ℕ ↦ ‖f n‖ * ∑ k ∈ Icc 0 n, ‖c k‖) =O[atTop] fun _ ↦ (1 : ℝ))
    (hf_int : LocallyIntegrableOn (deriv (fun t ↦ ‖f t‖)) (Set.Ici (m : ℝ)))
    (hf : ∀ n : ℕ, ∑ k ∈ Icc 0 n, ‖f k‖ * ‖c k‖ =
      ‖f n‖ * ∑ k ∈ Icc 0 n, ‖c k‖ -
        ∫ (t : ℝ) in Set.Ioc ↑m ↑n, deriv (fun t ↦ ‖f t‖) t * ∑ k ∈ Icc 0 ⌊t⌋₊, ‖c k‖)
    {g : ℝ → ℝ}
    (hg₁ : (fun t ↦ deriv (fun t ↦ ‖f t‖) t * ∑ k ∈ Icc 0 ⌊t⌋₊, ‖c k‖) =O[atTop] g)
    (hg₂ : IntegrableAtFilter g atTop) :
    Summable (fun n : ℕ ↦ f n * c n) := by
  obtain ⟨C₁, hC₁⟩ := Asymptotics.isBigO_one_nat_atTop_iff.mp h_bdd
  let C₂ := ∫ t in Set.Ioi (m : ℝ), ‖deriv (fun t ↦ ‖f t‖) t * ∑ k ∈ Icc 0 ⌊t⌋₊, ‖c k‖‖
  refine summable_of_sum_range_norm_le (c := max (C₁ + C₂) 1) fun n ↦ ?_
  cases n with
  | zero => simp only [range_zero, norm_mul, sum_empty, le_sup_iff, zero_le_one, or_true]
  | succ n =>
      rw [Nat.range_eq_Icc_zero_sub_one _ n.add_one_ne_zero, add_tsub_cancel_right]
      calc
        _ = ∑ k ∈ Icc 0 n, ‖f k‖ * ‖c k‖ := by simp_rw [norm_mul]
        _ = ‖f n‖ * ∑ k ∈ Icc 0 n, ‖c k‖ -
              ∫ t in Set.Ioc ↑m ↑n, deriv (fun t ↦ ‖f t‖) t * ∑ k ∈ Icc 0 ⌊t⌋₊, ‖c k‖ := ?_
        _ ≤ C₁ - ∫ t in Set.Ioc ↑m ↑n, deriv (fun t ↦ ‖f t‖) t * ∑ k ∈ Icc 0 ⌊t⌋₊, ‖c k‖ := ?_
        _ ≤ C₁ + ∫ t in Set.Ioc ↑m ↑n, ‖deriv (fun t ↦ ‖f t‖) t * ∑ k ∈ Icc 0 ⌊t⌋₊, ‖c k‖‖ := ?_
        _ ≤ C₁ + C₂ := ?_
        _ ≤ max (C₁ + C₂) 1 := le_max_left _ _
      · exact hf _
      · refine tsub_le_tsub_right (le_of_eq_of_le (Real.norm_of_nonneg ?_).symm (hC₁ n)) _
        exact mul_nonneg (norm_nonneg _) (sum_nonneg fun _ _ ↦ norm_nonneg _)
      · grw [sub_eq_add_neg, neg_le_abs, abs_integral_le_integral_abs]
        simp
      · unfold C₂
        grw [setIntegral_mono_set ?_ (.of_forall fun _ ↦ norm_nonneg _)
          Set.Ioc_subset_Ioi_self.eventuallySubset]
        rw [← integrableOn_Ici_iff_integrableOn_Ioi, IntegrableOn,
          integrable_norm_iff (by fun_prop)]
        exact (locallyIntegrableOn_mul_sum_Icc _ m.cast_nonneg hf_int).integrableOn_of_isBigO_atTop
          hg₁ hg₂

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/AbelSummation/Variant0b1cbe3ed7bb5ffe694baaf0c6c16be5ce49371428a67b189987c6e6af178f5e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/AbelSummation/Variant0b1cbe3ed7bb5ffe694baaf0c6c16be5ce49371428a67b189987c6e6af178f5e.lean#L330).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71b44611d978318185ecc30724856b14e316742f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
