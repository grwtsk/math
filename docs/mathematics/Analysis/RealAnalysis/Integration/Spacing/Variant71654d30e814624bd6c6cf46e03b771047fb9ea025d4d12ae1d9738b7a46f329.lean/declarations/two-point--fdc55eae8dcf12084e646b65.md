# two_point

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1a452ae2-b8f3-e1b1-d119-ad0ce4190f27",
  "kind": "theorem",
  "lexical_name": "two_point",
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
  "slug": "two-point--fdc55eae8dcf12084e646b65",
  "source": {
    "blob": "5a2dfb3fad088726b01abcb82c2ac6476be54467",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 552,
    "line": 457,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Spacing/Variant71654d30e814624bd6c6cf46e03b771047fb9ea025d4d12ae1d9738b7a46f329.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fdc55eae8dcf12084e646b65235b9b03e13e56c934f460e4018fbe991933c15f",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Spacing/Variant71654d30e814624bd6c6cf46e03b771047fb9ea025d4d12ae1d9738b7a46f329.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a452ae2-b8f3-e1b1-d119-ad0ce4190f27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 457–552.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem two_point (h : Adm freq δ) {l m : ι} (hlm : l ≠ m) :
    ∑ k ∈ (Finset.univ.erase l).erase m,
        δ k / ((freq k - freq l) ^ 2 * (freq k - freq m) ^ 2)
      ≤ 36 * (δ l + δ m) / (δ l * δ m * (freq l - freq m) ^ 2) := by
  classical
  have hδl := h.pos l
  have hδm := h.pos m
  have hflm : (freq l - freq m) ≠ 0 := sub_ne_zero.2 fun hh => hlm (h.inj hh)
  have hC : 0 < (freq l - freq m) ^ 2 := pow_two_pos_of_ne_zero hflm
  have esq : ∀ x y : ℝ, (x - y) ^ 2 = (y - x) ^ 2 := fun x y => by ring
  have hsplit : ∀ k ∈ (Finset.univ.erase l).erase m,
      δ k / ((freq k - freq l) ^ 2 * (freq k - freq m) ^ 2)
        ≤ δ k / (freq l - freq k) ^ 2 * (4 / (freq l - freq m) ^ 2)
          + δ k / (freq m - freq k) ^ 2 * (4 / (freq l - freq m) ^ 2) := by
    intro k hk
    have hkm : k ≠ m := Finset.ne_of_mem_erase hk
    have hkl : k ≠ l := Finset.ne_of_mem_erase (Finset.mem_of_mem_erase hk)
    have hkl' : (freq k - freq l) ≠ 0 := sub_ne_zero.2 fun hh => hkl (h.inj hh)
    have hkm' : (freq k - freq m) ≠ 0 := sub_ne_zero.2 fun hh => hkm (h.inj hh)
    have hA : 0 < (freq k - freq l) ^ 2 := pow_two_pos_of_ne_zero hkl'
    have hB : 0 < (freq k - freq m) ^ 2 := pow_two_pos_of_ne_zero hkm'
    have hδk := h.pos k
    have htri : |freq l - freq m| ≤ |freq k - freq l| + |freq k - freq m| := by
      calc |freq l - freq m| = |(freq l - freq k) + (freq k - freq m)| := by ring_nf
        _ ≤ |freq l - freq k| + |freq k - freq m| := abs_add_le _ _
        _ = |freq k - freq l| + |freq k - freq m| := by rw [abs_sub_comm (freq l) (freq k)]
    have habs : 0 ≤ |freq l - freq m| := abs_nonneg _
    rcases le_total (|freq l - freq m| / 2) (|freq k - freq m|) with hP | hP
    · -- k far from m: keep the l-factor, crush the m-factor
      have hBC : (freq l - freq m) ^ 2 / 4 ≤ (freq k - freq m) ^ 2 := by
        have := pow_le_pow_left₀ (by positivity) hP 2
        rw [div_pow, sq_abs, sq_abs] at this
        linarith
      have key : δ k / ((freq k - freq l) ^ 2 * (freq k - freq m) ^ 2)
          ≤ δ k / (freq l - freq k) ^ 2 * (4 / (freq l - freq m) ^ 2) := by
        have h1 : (1:ℝ) / (freq k - freq m) ^ 2 ≤ 4 / (freq l - freq m) ^ 2 := by
          rw [div_le_div_iff₀ hB hC]
          linarith
        have e : δ k / ((freq k - freq l) ^ 2 * (freq k - freq m) ^ 2)
            = (δ k / (freq l - freq k) ^ 2) * (1 / (freq k - freq m) ^ 2) := by
          rw [esq (freq k) (freq l), div_mul_eq_div_div, div_eq_mul_one_div]
        rw [e]
        exact mul_le_mul_of_nonneg_left h1 (by positivity)
      have hnn2 : 0 ≤ δ k / (freq m - freq k) ^ 2 * (4 / (freq l - freq m) ^ 2) := by positivity
      linarith
    · -- k far from l
      have hAC : (freq l - freq m) ^ 2 / 4 ≤ (freq k - freq l) ^ 2 := by
        have h2 : |freq l - freq m| / 2 ≤ |freq k - freq l| := by linarith
        have := pow_le_pow_left₀ (by positivity) h2 2
        rw [div_pow, sq_abs, sq_abs] at this
        linarith
      have key : δ k / ((freq k - freq l) ^ 2 * (freq k - freq m) ^ 2)
          ≤ δ k / (freq m - freq k) ^ 2 * (4 / (freq l - freq m) ^ 2) := by
        have h1 : (1:ℝ) / (freq k - freq l) ^ 2 ≤ 4 / (freq l - freq m) ^ 2 := by
          rw [div_le_div_iff₀ hA hC]
          linarith
        have e : δ k / ((freq k - freq l) ^ 2 * (freq k - freq m) ^ 2)
            = (δ k / (freq m - freq k) ^ 2) * (1 / (freq k - freq l) ^ 2) := by
          rw [mul_comm ((freq k - freq l) ^ 2) ((freq k - freq m) ^ 2),
            esq (freq k) (freq m), div_mul_eq_div_div, div_eq_mul_one_div]
        rw [e]
        exact mul_le_mul_of_nonneg_left h1 (by positivity)
      have hnn2 : 0 ≤ δ k / (freq l - freq k) ^ 2 * (4 / (freq l - freq m) ^ 2) := by positivity
      linarith
  calc ∑ k ∈ (Finset.univ.erase l).erase m,
        δ k / ((freq k - freq l) ^ 2 * (freq k - freq m) ^ 2)
      ≤ ∑ k ∈ (Finset.univ.erase l).erase m,
          (δ k / (freq l - freq k) ^ 2 * (4 / (freq l - freq m) ^ 2)
            + δ k / (freq m - freq k) ^ 2 * (4 / (freq l - freq m) ^ 2)) :=
        Finset.sum_le_sum hsplit
    _ = (∑ k ∈ (Finset.univ.erase l).erase m, δ k / (freq l - freq k) ^ 2)
          * (4 / (freq l - freq m) ^ 2)
        + (∑ k ∈ (Finset.univ.erase l).erase m, δ k / (freq m - freq k) ^ 2)
          * (4 / (freq l - freq m) ^ 2) := by
        rw [Finset.sum_mul, Finset.sum_mul, ← Finset.sum_add_distrib]
    _ ≤ (9 / δ l) * (4 / (freq l - freq m) ^ 2) + (9 / δ m) * (4 / (freq l - freq m) ^ 2) := by
        have hsl : ∑ k ∈ (Finset.univ.erase l).erase m, δ k / (freq l - freq k) ^ 2
            ≤ 9 / δ l := by
          refine le_trans (Finset.sum_le_sum_of_subset_of_nonneg
            (fun k hk => Finset.mem_of_mem_erase hk) ?_) (h.spacing_sq l)
          exact fun k _ _ => div_nonneg (h.pos k).le (sq_nonneg _)
        have hsm : ∑ k ∈ (Finset.univ.erase l).erase m, δ k / (freq m - freq k) ^ 2
            ≤ 9 / δ m := by
          refine le_trans (Finset.sum_le_sum_of_subset_of_nonneg
            (fun k hk => Finset.mem_erase.2 ⟨Finset.ne_of_mem_erase hk, Finset.mem_univ k⟩) ?_)
            (h.spacing_sq m)
          exact fun k _ _ => div_nonneg (h.pos k).le (sq_nonneg _)
        gcongr
    _ = 36 * (δ l + δ m) / (δ l * δ m * (freq l - freq m) ^ 2) := by
        field_simp
        ring


end Adm
end MV
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Spacing/Variant71654d30e814624bd6c6cf46e03b771047fb9ea025d4d12ae1d9738b7a46f329.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Spacing/Variant71654d30e814624bd6c6cf46e03b771047fb9ea025d4d12ae1d9738b7a46f329.lean#L457).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a2dfb3fad088726b01abcb82c2ac6476be54467` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
