# pickupMertensPrefix_le_of_reciprocalPrefixDecay

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:165c0464-4546-a3f4-3d42-4ae3f71d7641",
  "kind": "theorem",
  "lexical_name": "pickupMertensPrefix_le_of_reciprocalPrefixDecay",
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
  "slug": "pickupmertensprefix-le-of-reciprocalprefixdecay--796a8e2f83492b0682ba667a",
  "source": {
    "blob": "9014c091e12c7104e8087204b2aa12552b6a7afa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 84,
    "path": "GRWTSK/NumberTheory/Moebius/ReciprocalPrefix.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:796a8e2f83492b0682ba667adf2b824ce2a6158361601467a3fbd2d309331386",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/ReciprocalPrefix.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:165c0464-4546-a3f4-3d42-4ae3f71d7641`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pickupMertensPrefix_le_of_reciprocalPrefixDecay {C β : ℝ}
    (hC : 0 ≤ C) (hβ0 : 0 < β) (hβ1 : β < 1)
    (hR : ∀ n : ℕ, 1 ≤ n →
      |pickupReciprocalPrefix n| ≤ C * (n : ℝ) ^ (β - 1)) :
    ∀ n : ℕ, 1 ≤ n →
      |pickupMertensPrefix n| ≤ (C + C / β) * (n : ℝ) ^ β := by
  intro n hn
  have hnpos : (0 : ℝ) < n := by
    exact_mod_cast (lt_of_lt_of_le Nat.zero_lt_one hn)
  have hRall (k : ℕ) :
      |pickupReciprocalPrefix k| ≤ C * (k : ℝ) ^ (β - 1) := by
    cases k with
    | zero => simp [Real.zero_rpow (by linarith : β - 1 ≠ 0)]
    | succ k => exact hR (k + 1) (by omega)
  have hend : (n : ℝ) * |pickupReciprocalPrefix n| ≤
      C * (n : ℝ) ^ β := by
    calc
      (n : ℝ) * |pickupReciprocalPrefix n| ≤
          (n : ℝ) * (C * (n : ℝ) ^ (β - 1)) :=
        mul_le_mul_of_nonneg_left (hR n hn) hnpos.le
      _ = C * (n : ℝ) ^ β := by
        rw [Real.rpow_def_of_pos hnpos, Real.rpow_def_of_pos hnpos]
        calc
          (n : ℝ) * (C * Real.exp (Real.log (n : ℝ) * (β - 1))) =
              C * (Real.exp (Real.log (n : ℝ)) *
                Real.exp (Real.log (n : ℝ) * (β - 1))) := by
            rw [Real.exp_log hnpos]
            ring
          _ = C * Real.exp (Real.log (n : ℝ) * β) := by
            rw [← Real.exp_add]
            congr 1
            ring_nf
  have hzero : (0 : ℝ) ^ (β - 1) = 0 :=
    Real.zero_rpow (by linarith : β - 1 ≠ 0)
  have hrange :
      (∑ k ∈ Finset.range n, (k : ℝ) ^ (β - 1)) ≤
        ∑ k ∈ Finset.Icc 1 n, (k : ℝ) ^ (β - 1) := by
    have hmem : 0 ∈ Finset.range n :=
      Finset.mem_range.mpr (lt_of_lt_of_le Nat.zero_lt_one hn)
    rw [← Finset.sum_erase_add (Finset.range n)
      (fun k : ℕ => (k : ℝ) ^ (β - 1)) hmem]
    simp only [Nat.cast_zero, hzero, add_zero]
    apply Finset.sum_le_sum_of_subset_of_nonneg
    · intro k hk
      simp only [Finset.mem_erase, Finset.mem_range] at hk
      exact Finset.mem_Icc.mpr ⟨Nat.one_le_iff_ne_zero.mpr hk.1, hk.2.le⟩
    · intro k _ _
      exact Real.rpow_nonneg (Nat.cast_nonneg k) _
  have hsum :
      (∑ k ∈ Finset.range n, |pickupReciprocalPrefix k|) ≤
        (C / β) * (n : ℝ) ^ β := by
    calc
      (∑ k ∈ Finset.range n, |pickupReciprocalPrefix k|) ≤
          ∑ k ∈ Finset.range n, C * (k : ℝ) ^ (β - 1) :=
        Finset.sum_le_sum (fun k _ => hRall k)
      _ = C * ∑ k ∈ Finset.range n, (k : ℝ) ^ (β - 1) := by
        rw [Finset.mul_sum]
      _ ≤ C * ∑ k ∈ Finset.Icc 1 n, (k : ℝ) ^ (β - 1) :=
        mul_le_mul_of_nonneg_left hrange hC
      _ ≤ C * ((n : ℝ) ^ β / β) :=
        mul_le_mul_of_nonneg_left (sum_Icc_rpow_sub_one_le hβ0 hβ1.le n) hC
      _ = (C / β) * (n : ℝ) ^ β := by ring
  calc
    |pickupMertensPrefix n| ≤
        (n : ℝ) * |pickupReciprocalPrefix n| +
          ∑ k ∈ Finset.range n, |pickupReciprocalPrefix k| :=
      pickupMertensPrefix_abs_le_reciprocalPartialSummation n
    _ ≤ C * (n : ℝ) ^ β + (C / β) * (n : ℝ) ^ β :=
      add_le_add hend hsum
    _ = (C + C / β) * (n : ℝ) ^ β := by ring

/-- Quantitative decay of the actual reciprocal Möbius prefix at any exponent
`β - 1` with `0 < β < 1` implies the completed critical vertical line.  The
decay premise remains the signed arithmetic obligation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/ReciprocalPrefix.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/ReciprocalPrefix.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9014c091e12c7104e8087204b2aa12552b6a7afa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
