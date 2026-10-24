# eventually_atTop_sumTransform_ge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9b4c4d02baa758897d153bfb24b08abd4567d49e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 697,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ea/ea0430ac868bff56a842f86288b0ce91aea6c3dbcb58a8e42b486e2af2888d61.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8445d9a3-a706-b1ae-aaf3-9cec1686063f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cfc36b74-a448-c0fc-22ee-62670c28e8a2",
  "kind": "lemma",
  "lexical_name": "eventually_atTop_sumTransform_ge",
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
  "slug": "eventually-attop-sumtransform-ge--0e1426697f822ddda502f0b8",
  "source": {
    "blob": "9b4c4d02baa758897d153bfb24b08abd4567d49e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 795,
    "line": 697,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variantea0430ac868bff56a842f86288b0ce91aea6c3dbcb58a8e42b486e2af2888d61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0e1426697f822ddda502f0b854f44ee82a1e842e5e8424d7e3c4d50427fe2dd7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variantea0430ac868bff56a842f86288b0ce91aea6c3dbcb58a8e42b486e2af2888d61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cfc36b74-a448-c0fc-22ee-62670c28e8a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 697–795.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma eventually_atTop_sumTransform_ge :
    ∃ c > 0, ∀ᶠ (n : ℕ) in atTop, ∀ i, c * g n ≤ sumTransform (p a b) g (r i n) n := by
  obtain ⟨c₁, hc₁_mem, hc₁⟩ := R.exists_eventually_const_mul_le_r
  obtain ⟨c₂, hc₂_mem, hc₂⟩ := R.g_grows_poly.eventually_atTop_ge_nat hc₁_mem
  obtain ⟨c₃, hc₃_mem, hc₃⟩ := R.exists_eventually_r_le_const_mul
  have hc₁_pos : 0 < c₁ := hc₁_mem.1
  have hc₃' : 0 < (1 - c₃) := by have := hc₃_mem.2; linarith
  refine ⟨min (c₂ * (1 - c₃)) ((1 - c₃) * c₂ / c₁^((p a b) + 1)), by positivity, ?_⟩
  filter_upwards [hc₁, hc₂, hc₃, R.eventually_r_pos, R.eventually_r_lt_n, eventually_gt_atTop 0]
    with n hn₁ hn₂ hn₃ hrpos hr_lt_n hn_pos
  intro i
  have hrpos_i := hrpos i
  have g_nonneg : 0 ≤ g n := R.g_nonneg n (by positivity)
  cases le_or_gt 0 (p a b + 1) with
  | inl hp => -- 0 ≤ (p a b) + 1
    calc sumTransform (p a b) g (r i n) n
           = n ^ (p a b) * (∑ u ∈ Finset.Ico (r i n) n, g u / u ^ ((p a b) + 1))    := rfl
         _ ≥ n ^ (p a b) * (∑ u ∈ Finset.Ico (r i n) n, c₂ * g n / u^((p a b) + 1)) := by
                gcongr with u hu
                rw [Finset.mem_Ico] at hu
                have hu' : u ∈ Set.Icc (r i n) n := ⟨hu.1, by omega⟩
                refine hn₂ u ?_
                rw [Set.mem_Icc]
                refine ⟨?_, by norm_cast; omega⟩
                calc c₁ * n ≤ r i n := by exact hn₁ i
                          _ ≤ u     := by exact_mod_cast hu'.1
         _ ≥ n ^ (p a b) * (∑ _u ∈ Finset.Ico (r i n) n, c₂ * g n / n ^ ((p a b) + 1)) := by
                gcongr with u hu
                · rw [Finset.mem_Ico] at hu
                  have := calc 0 < r i n := hrpos_i
                              _ ≤ u := hu.1
                  positivity
                · rw [Finset.mem_Ico] at hu
                  exact le_of_lt hu.2
         _ ≥ n ^ p a b * #(Ico (r i n) n) • (c₂ * g n / n ^ (p a b + 1)) := by
                gcongr; exact Finset.card_nsmul_le_sum _ _ _ (fun x _ => by rfl)
         _ = n ^ p a b * #(Ico (r i n) n) * (c₂ * g n / n ^ (p a b + 1)) := by
                rw [nsmul_eq_mul, mul_assoc]
         _ = n ^ (p a b) * (n - r i n) * (c₂ * g n / n ^ ((p a b) + 1)) := by
                congr; rw [Nat.card_Ico, Nat.cast_sub (le_of_lt <| hr_lt_n i)]
         _ ≥ n ^ (p a b) * (n - c₃ * n) * (c₂ * g n / n ^ ((p a b) + 1)) := by
                gcongr; exact hn₃ i
         _ = n ^ (p a b) * n * (1 - c₃) * (c₂ * g n / n ^ ((p a b) + 1)) := by ring
         _ = c₂ * (1 - c₃) * g n * (n ^ ((p a b) + 1) / n ^ ((p a b) + 1)) := by
                rw [← Real.rpow_add_one (by positivity) (p a b)]; ring
         _ = c₂ * (1 - c₃) * g n := by rw [div_self (by positivity), mul_one]
         _ ≥ min (c₂ * (1 - c₃)) ((1 - c₃) * c₂ / c₁ ^ ((p a b) + 1)) * g n := by
                gcongr; exact min_le_left _ _
  | inr hp => -- (p a b) + 1 < 0
    calc sumTransform (p a b) g (r i n) n
        = n ^ (p a b) * (∑ u ∈ Finset.Ico (r i n) n, g u / u^((p a b) + 1))        := by rfl
      _ ≥ n ^ (p a b) * (∑ u ∈ Finset.Ico (r i n) n, c₂ * g n / u ^ ((p a b) + 1)) := by
             gcongr with u hu
             rw [Finset.mem_Ico] at hu
             have hu' : u ∈ Set.Icc (r i n) n := ⟨hu.1, by omega⟩
             refine hn₂ u ?_
             rw [Set.mem_Icc]
             refine ⟨?_, by norm_cast; omega⟩
             calc c₁ * n ≤ r i n := by exact hn₁ i
                       _ ≤ u := by exact_mod_cast hu'.1
      _ ≥ n ^ (p a b) * (∑ _u ∈ Finset.Ico (r i n) n, c₂ * g n / (r i n) ^ ((p a b) + 1)) := by
             gcongr n^(p a b) * (Finset.Ico (r i n) n).sum (fun _ => c₂ * g n / ?_) with u hu
             · rw [Finset.mem_Ico] at hu
               have := calc 0 < r i n := hrpos_i
                           _ ≤ u := hu.1
               positivity
             · rw [Finset.mem_Ico] at hu
               exact rpow_le_rpow_of_exponent_nonpos (by positivity)
                 (by exact_mod_cast hu.1) (le_of_lt hp)
      _ ≥ n ^ p a b * #(Ico (r i n) n) • (c₂ * g n / r i n ^ (p a b + 1)) := by
             gcongr; exact Finset.card_nsmul_le_sum _ _ _ (fun x _ => by rfl)
      _ = n ^ p a b * #(Ico (r i n) n) * (c₂ * g n / r i n ^ (p a b + 1)) := by
             rw [nsmul_eq_mul, mul_assoc]
      _ ≥ n ^ p a b * #(Ico (r i n) n) * (c₂ * g n / (c₁ * n) ^ (p a b + 1)) := by
             gcongr n ^ p a b * #(Ico (r i n) n) * (c₂ * g n / ?_)
             exact rpow_le_rpow_of_exponent_nonpos (by positivity) (hn₁ i) (le_of_lt hp)
      _ = n ^ (p a b) * (n - r i n) * (c₂ * g n / (c₁ * n) ^ ((p a b) + 1)) := by
             congr; rw [Nat.card_Ico, Nat.cast_sub (le_of_lt <| hr_lt_n i)]
      _ ≥ n ^ (p a b) * (n - c₃ * n) * (c₂ * g n / (c₁ * n) ^ ((p a b) + 1)) := by
             gcongr; exact hn₃ i
      _ = n ^ (p a b) * n * (1 - c₃) * (c₂ * g n / (c₁ * n) ^ ((p a b) + 1)) := by ring
      _ = n ^ (p a b) * n * (1 - c₃) * (c₂ * g n / (c₁ ^ ((p a b) + 1) * n ^ ((p a b) + 1))) := by
             rw [Real.mul_rpow (by positivity) (by positivity)]
      _ = (n ^ ((p a b) + 1) / n ^ ((p a b) + 1)) * (1 - c₃) * c₂ * g n / c₁ ^ ((p a b) + 1) := by
             rw [← Real.rpow_add_one (by positivity) (p a b)]; ring
      _ = (1 - c₃) * c₂ / c₁ ^ ((p a b) + 1) * g n := by
             rw [div_self (by positivity), one_mul]; ring
      _ ≥ min (c₂ * (1 - c₃)) ((1 - c₃) * c₂ / c₁ ^ ((p a b) + 1)) * g n := by
             gcongr; exact min_le_right _ _

end

/-!
#### Technical lemmas

The next several lemmas are technical lemmas leading up to `rpow_p_mul_one_sub_smoothingFn_le` and
`rpow_p_mul_one_add_smoothingFn_ge`, which are key steps in the main proof.
-/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variantea0430ac868bff56a842f86288b0ce91aea6c3dbcb58a8e42b486e2af2888d61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/AkraBazzi/Variantea0430ac868bff56a842f86288b0ce91aea6c3dbcb58a8e42b486e2af2888d61.lean#L697).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b4c4d02baa758897d153bfb24b08abd4567d49e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
