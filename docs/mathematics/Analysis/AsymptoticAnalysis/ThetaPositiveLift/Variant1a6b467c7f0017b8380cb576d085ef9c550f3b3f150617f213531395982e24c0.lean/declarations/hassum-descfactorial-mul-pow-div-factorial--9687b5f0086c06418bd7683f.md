# hasSum_descFactorial_mul_pow_div_factorial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ad96edbe-20d4-6939-0b6f-f0349fbed788",
  "kind": "theorem",
  "lexical_name": "hasSum_descFactorial_mul_pow_div_factorial",
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
  "slug": "hassum-descfactorial-mul-pow-div-factorial--9687b5f0086c06418bd7683f",
  "source": {
    "blob": "80627356bd904b18e8f330661adc869c7a59d500",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 43,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant1a6b467c7f0017b8380cb576d085ef9c550f3b3f150617f213531395982e24c0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9687b5f0086c06418bd7683f6ce88f826a1fc8a74ebfb6f3a2d7fd95aa2aadf2",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant1a6b467c7f0017b8380cb576d085ef9c550f3b3f150617f213531395982e24c0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ad96edbe-20d4-6939-0b6f-f0349fbed788`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem hasSum_descFactorial_mul_pow_div_factorial
    (j : ℕ) (x : ℝ) :
    HasSum
      (fun n : ℕ =>
        (n.descFactorial j : ℝ) * x ^ n /
          (n.factorial : ℝ))
      (x ^ j * Real.exp x) := by
  rw [← hasSum_nat_add_iff' j]
  have h :=
    (NormedSpace.expSeries_div_hasSum_exp (x : ℝ)).mul_left
      (x ^ j)
  rw [← Real.exp_eq_exp_ℝ] at h
  have hzero :
      (∑ i ∈ Finset.range j,
        (i.descFactorial j : ℝ) * x ^ i /
          (i.factorial : ℝ)) = 0 := by
    apply Finset.sum_eq_zero
    intro i hi
    have hij : i < j := Finset.mem_range.mp hi
    rw [Nat.descFactorial_eq_zero_iff_lt.mpr hij]
    norm_num
  rw [hzero, sub_zero]
  refine HasSum.congr_fun h (fun n => ?_)
  have hfacNat :
      n.factorial * (n + j).descFactorial j =
        (n + j).factorial := by
    have h :=
      Nat.factorial_mul_descFactorial
        (n := n + j) (k := j) (by omega)
    rw [Nat.add_sub_cancel_right] at h
    exact h
  have hfac :
      (n.factorial : ℝ) *
          ((n + j).descFactorial j : ℝ) =
        ((n + j).factorial : ℝ) := by
    exact_mod_cast hfacNat
  have hn : (n.factorial : ℝ) ≠ 0 := by
    exact_mod_cast Nat.factorial_ne_zero n
  have hdNat : (n + j).descFactorial j ≠ 0 := by
    exact Nat.ne_of_gt ((Nat.descFactorial_pos).2 (by omega))
  have hd : ((n + j).descFactorial j : ℝ) ≠ 0 := by
    exact_mod_cast hdNat
  rw [pow_add, ← hfac]
  field_simp [hn, hd]

/-- Pinned-Mathlib compatibility lemma: multiplication by the base variable
splits a descending factorial into the next descending factorial plus the
index-weighted current one. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant1a6b467c7f0017b8380cb576d085ef9c550f3b3f150617f213531395982e24c0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant1a6b467c7f0017b8380cb576d085ef9c550f3b3f150617f213531395982e24c0.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `80627356bd904b18e8f330661adc869c7a59d500` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
