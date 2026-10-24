# Uform_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "413ebcc32145e53d933c64c1a39b51396b46a0c3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 54,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ac/ac0f2fbdde09b867649f3140703085b74041b06cca20ef736aedf5d310858f88.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:85cd7fcf-e367-a001-6323-a31f3482cefe",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1affc622-c95a-bc10-4bfc-60044d8be41b",
  "kind": "theorem",
  "lexical_name": "Uform_le",
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
  "slug": "uform-le--4cad6bb350d8f9764fafea5c",
  "source": {
    "blob": "413ebcc32145e53d933c64c1a39b51396b46a0c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 213,
    "line": 54,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Quadratic/Variantac0f2fbdde09b867649f3140703085b74041b06cca20ef736aedf5d310858f88.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4cad6bb350d8f9764fafea5c3665932f41e772eb3479988b6b3d71eb2a46f937",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Quadratic/Variantac0f2fbdde09b867649f3140703085b74041b06cca20ef736aedf5d310858f88.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1affc622-c95a-bc10-4bfc-60044d8be41b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–213.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Uform_le (h : Adm freq δ) (t : ι → ℝ) (ht : ∀ r, 0 ≤ t r) :
    Uform freq δ t ≤ 73 * ∑ n, t n ^ 2 := by
  classical
  set V : ℝ := ∑ n, t n ^ 2 with hV
  have hV0 : 0 ≤ V := Finset.sum_nonneg fun n _ => sq_nonneg _
  set f : ι → ι → ℝ := fun m n => δ m * Real.sqrt (δ m) * t m / (freq m - freq n) ^ 2 with hf
  have hf0 : ∀ m n, 0 ≤ f m n := by
    intro m n
    have := (h.pos m).le
    have := ht m
    rw [hf]
    positivity
  set B : ι → ℝ := fun n => ∑ m ∈ Finset.univ.erase n, f m n with hB
  have hU0 : 0 ≤ Uform freq δ t := by
    apply Finset.sum_nonneg
    intro m _
    apply Finset.sum_nonneg
    intro n _
    have h1 := (h.pos m).le
    have h2 := (h.pos n).le
    have h3 := ht m
    have h4 := ht n
    positivity
  have hUeq : Uform freq δ t = ∑ n, t n * (Real.sqrt (δ n) * B n) := by
    rw [Uform, sum_erase_comm (fun m n => δ m * Real.sqrt (δ m) * Real.sqrt (δ n) * t m * t n
      / (freq m - freq n) ^ 2)]
    refine Finset.sum_congr rfl fun n _ => ?_
    rw [hB, Finset.mul_sum, Finset.mul_sum]
    refine Finset.sum_congr rfl fun m _ => ?_
    rw [hf]
    ring
  set W : ℝ := ∑ n, δ n * B n ^ 2 with hW
  have hCS : Uform freq δ t ^ 2 ≤ V * W := by
    rw [hUeq]
    have hcs := Finset.sum_mul_sq_le_sq_mul_sq Finset.univ t (fun n => Real.sqrt (δ n) * B n)
    calc (∑ n, t n * (Real.sqrt (δ n) * B n)) ^ 2
        ≤ (∑ n, t n ^ 2) * ∑ n, (Real.sqrt (δ n) * B n) ^ 2 := hcs
      _ = V * W := by
          rw [hV, hW]
          congr 1
          refine Finset.sum_congr rfl fun n _ => ?_
          rw [mul_pow, Real.sq_sqrt (h.pos n).le]
  -- expand W = S + T
  have hWeq : W = (∑ n, ∑ m ∈ Finset.univ.erase n, δ n * (f m n * f m n))
      + ∑ n, ∑ m ∈ Finset.univ.erase n, ∑ l ∈ (Finset.univ.erase n).erase m,
          δ n * (f m n * f l n) := by
    rw [hW, ← Finset.sum_add_distrib]
    refine Finset.sum_congr rfl fun n _ => ?_
    rw [hB, sq, Finset.sum_mul_sum, Finset.mul_sum, ← Finset.sum_add_distrib]
    refine Finset.sum_congr rfl fun m hm => ?_
    rw [Finset.mul_sum, ← Finset.add_sum_erase _ (fun l => δ n * (f m n * f l n)) hm]
  -- S ≤ 27 V
  have hS : (∑ n, ∑ m ∈ Finset.univ.erase n, δ n * (f m n * f m n)) ≤ 27 * V := by
    rw [← sum_erase_comm (fun m n => δ n * (f m n * f m n))]
    have hper : ∀ m ∈ (Finset.univ : Finset ι),
        ∑ n ∈ Finset.univ.erase m, δ n * (f m n * f m n) ≤ 27 * t m ^ 2 := by
      intro m _
      have hδm := h.pos m
      have hss : Real.sqrt (δ m) * Real.sqrt (δ m) = δ m := Real.mul_self_sqrt hδm.le
      have e2 : ∀ n, δ n * (f m n * f m n)
          = (δ m ^ 3 * t m ^ 2) * (δ n / (freq m - freq n) ^ 4) := by
        intro n
        rw [hf]
        have e3 : ((freq m - freq n) ^ 2) * ((freq m - freq n) ^ 2)
            = (freq m - freq n) ^ 4 := by ring
        field_simp
        rw [Real.sq_sqrt hδm.le]
      calc ∑ n ∈ Finset.univ.erase m, δ n * (f m n * f m n)
          = (δ m ^ 3 * t m ^ 2) * ∑ n ∈ Finset.univ.erase m, δ n / (freq m - freq n) ^ 4 := by
            rw [Finset.mul_sum]
            exact Finset.sum_congr rfl fun n _ => e2 n
        _ ≤ (δ m ^ 3 * t m ^ 2) * (27 / δ m ^ 3) := by
            have hnn : 0 ≤ δ m ^ 3 * t m ^ 2 := by positivity
            exact mul_le_mul_of_nonneg_left (h.spacing_four m) hnn
        _ = 27 * t m ^ 2 := by field_simp
    calc ∑ m, ∑ n ∈ Finset.univ.erase m, δ n * (f m n * f m n)
        ≤ ∑ m, 27 * t m ^ 2 := Finset.sum_le_sum hper
      _ = 27 * V := by rw [hV, Finset.mul_sum]
  -- T ≤ 72 U
  have hT : (∑ n, ∑ m ∈ Finset.univ.erase n, ∑ l ∈ (Finset.univ.erase n).erase m,
        δ n * (f m n * f l n)) ≤ 72 * Uform freq δ t := by
    rw [← sum_erase_comm (fun m n => ∑ l ∈ (Finset.univ.erase n).erase m, δ n * (f m n * f l n))]
    have hswap : ∀ m : ι, ∑ n ∈ Finset.univ.erase m, ∑ l ∈ (Finset.univ.erase n).erase m,
        δ n * (f m n * f l n)
        = ∑ l ∈ Finset.univ.erase m, ∑ n ∈ (Finset.univ.erase l).erase m,
            δ n * (f m n * f l n) :=
      fun m => sum_erase_erase_comm m (fun n l => δ n * (f m n * f l n))
    calc ∑ m, ∑ n ∈ Finset.univ.erase m, ∑ l ∈ (Finset.univ.erase n).erase m,
          δ n * (f m n * f l n)
        = ∑ m, ∑ l ∈ Finset.univ.erase m, ∑ n ∈ (Finset.univ.erase l).erase m,
            δ n * (f m n * f l n) := Finset.sum_congr rfl fun m _ => hswap m
      _ ≤ ∑ m, ∑ l ∈ Finset.univ.erase m,
            (δ m * Real.sqrt (δ m) * t m) * (δ l * Real.sqrt (δ l) * t l)
              * (36 * (δ l + δ m) / (δ l * δ m * (freq l - freq m) ^ 2)) := by
          refine Finset.sum_le_sum fun m _ => Finset.sum_le_sum fun l hl => ?_
          have hlm : l ≠ m := Finset.ne_of_mem_erase hl
          have hc1 : 0 ≤ δ m * Real.sqrt (δ m) * t m := by
            have := (h.pos m).le; have := ht m; positivity
          have hc2 : 0 ≤ δ l * Real.sqrt (δ l) * t l := by
            have := (h.pos l).le; have := ht l; positivity
          have hexp : ∑ n ∈ (Finset.univ.erase l).erase m, δ n * (f m n * f l n)
              = (δ m * Real.sqrt (δ m) * t m) * (δ l * Real.sqrt (δ l) * t l)
                * ∑ n ∈ (Finset.univ.erase l).erase m,
                    δ n / ((freq n - freq l) ^ 2 * (freq n - freq m) ^ 2) := by
            rw [Finset.mul_sum]
            refine Finset.sum_congr rfl fun n hn => ?_
            have hnm : n ≠ m := Finset.ne_of_mem_erase hn
            have hnl : n ≠ l := Finset.ne_of_mem_erase (Finset.mem_of_mem_erase hn)
            have h1 : freq n - freq m ≠ 0 := sub_ne_zero.2 fun hh => hnm (h.inj hh)
            have h2 : freq n - freq l ≠ 0 := sub_ne_zero.2 fun hh => hnl (h.inj hh)
            simp only [hf]
            rw [show (freq m - freq n) ^ 2 = (freq n - freq m) ^ 2 by ring,
              show (freq l - freq n) ^ 2 = (freq n - freq l) ^ 2 by ring]
            field_simp
          rw [hexp]
          exact mul_le_mul_of_nonneg_left (h.two_point hlm) (mul_nonneg hc1 hc2)
      _ = ∑ m, ∑ l ∈ Finset.univ.erase m, 36 *
            (δ m * Real.sqrt (δ m) * Real.sqrt (δ l) * t m * t l / (freq m - freq l) ^ 2
              + δ l * Real.sqrt (δ l) * Real.sqrt (δ m) * t l * t m / (freq m - freq l) ^ 2) := by
          refine Finset.sum_congr rfl fun m _ => Finset.sum_congr rfl fun l hl => ?_
          have hlm : l ≠ m := Finset.ne_of_mem_erase hl
          have hδl := h.pos l
          have hδm := h.pos m
          have hsl : Real.sqrt (δ l) * Real.sqrt (δ l) = δ l := Real.mul_self_sqrt hδl.le
          have hsm : Real.sqrt (δ m) * Real.sqrt (δ m) = δ m := Real.mul_self_sqrt hδm.le
          have hX : freq l - freq m ≠ 0 := sub_ne_zero.2 fun hh => hlm (h.inj hh)
          have hfe : (freq m - freq l) ^ 2 = (freq l - freq m) ^ 2 := by ring
          rw [hfe]
          field_simp
          ring
      _ = 36 * ((∑ m, ∑ l ∈ Finset.univ.erase m,
              δ m * Real.sqrt (δ m) * Real.sqrt (δ l) * t m * t l / (freq m - freq l) ^ 2)
            + ∑ m, ∑ l ∈ Finset.univ.erase m,
              δ l * Real.sqrt (δ l) * Real.sqrt (δ m) * t l * t m / (freq m - freq l) ^ 2) := by
          simp only [mul_add, Finset.sum_add_distrib, Finset.mul_sum]
      _ = 72 * Uform freq δ t := by
          have hsecond : (∑ m, ∑ l ∈ Finset.univ.erase m,
              δ l * Real.sqrt (δ l) * Real.sqrt (δ m) * t l * t m / (freq m - freq l) ^ 2)
              = Uform freq δ t := by
            rw [sum_erase_comm (fun m l => δ l * Real.sqrt (δ l) * Real.sqrt (δ m) * t l * t m
              / (freq m - freq l) ^ 2)]
            rw [Uform]
            refine Finset.sum_congr rfl fun l _ => Finset.sum_congr rfl fun m _ => ?_
            rw [show (freq m - freq l) ^ 2 = (freq l - freq m) ^ 2 by ring]
          rw [hsecond, Uform]
          ring
  -- assemble the quadratic inequality
  have hq : Uform freq δ t ^ 2 ≤ V * (27 * V + 72 * Uform freq δ t) := by
    calc Uform freq δ t ^ 2 ≤ V * W := hCS
      _ = V * ((∑ n, ∑ m ∈ Finset.univ.erase n, δ n * (f m n * f m n))
          + ∑ n, ∑ m ∈ Finset.univ.erase n, ∑ l ∈ (Finset.univ.erase n).erase m,
              δ n * (f m n * f l n)) := by rw [hWeq]
      _ ≤ V * (27 * V + 72 * Uform freq δ t) := by
          apply mul_le_mul_of_nonneg_left _ hV0
          exact add_le_add hS hT
  nlinarith [hU0, hV0, sq_nonneg (Uform freq δ t - 73 * V), sq_nonneg V,
    mul_nonneg hU0 hV0, mul_nonneg hV0 hV0]

end MV
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Quadratic/Variantac0f2fbdde09b867649f3140703085b74041b06cca20ef736aedf5d310858f88.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Quadratic/Variantac0f2fbdde09b867649f3140703085b74041b06cca20ef736aedf5d310858f88.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `413ebcc32145e53d933c64c1a39b51396b46a0c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
