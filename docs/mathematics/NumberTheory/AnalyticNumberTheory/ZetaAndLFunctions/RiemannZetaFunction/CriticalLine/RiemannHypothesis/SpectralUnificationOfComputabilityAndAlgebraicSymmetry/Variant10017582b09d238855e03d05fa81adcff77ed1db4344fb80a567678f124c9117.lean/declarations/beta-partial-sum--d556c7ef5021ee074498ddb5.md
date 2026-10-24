# beta_partial_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e8b25cf2e31dc96c2dd2bcb584f24b609188a42a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 232,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/10/10017582b09d238855e03d05fa81adcff77ed1db4344fb80a567678f124c9117.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a73600d4-3aea-9929-72d9-7512e334a718",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:352252cd-a50d-0117-8c31-c0a664f5378d",
  "kind": "theorem",
  "lexical_name": "beta_partial_sum",
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
  "slug": "beta-partial-sum--d556c7ef5021ee074498ddb5",
  "source": {
    "blob": "e8b25cf2e31dc96c2dd2bcb584f24b609188a42a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 295,
    "line": 232,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant10017582b09d238855e03d05fa81adcff77ed1db4344fb80a567678f124c9117.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d556c7ef5021ee074498ddb57b998a1904a2bf272990942e4d47f456222391c9",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant10017582b09d238855e03d05fa81adcff77ed1db4344fb80a567678f124c9117.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:352252cd-a50d-0117-8c31-c0a664f5378d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 232–295.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem beta_partial_sum (U Y : ℕ) (hY : 1 ≤ Y) (hUY : U ≤ Y) :
    (∑ n ∈ Finset.Icc 1 Y, beta U n) =
      1 - ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * ((Y / d : ℕ) : ℝ) := by
  classical
  let w : ℕ → ℝ := fun n ↦ if n ≤ Y then 1 else 0
  have hw : ∀ n, Y < n → w n = 0 := fun n hn ↦ if_neg (by omega)
  have hc := finite_convolution_sum Y (shortPart U (moebius : ArithmeticFunction ℝ))
    (zeta : ArithmeticFunction ℝ) w hw
  have hleft : (∑ n ∈ Finset.Icc 1 Y,
      (shortPart U (moebius : ArithmeticFunction ℝ) * (zeta : ArithmeticFunction ℝ)) n * w n) =
      ∑ n ∈ Finset.Icc 1 Y,
        (shortPart U (moebius : ArithmeticFunction ℝ) * (zeta : ArithmeticFunction ℝ)) n := by
    apply Finset.sum_congr rfl
    intro n hn
    simp [w, (Finset.mem_Icc.mp hn).2]
  rw [hleft] at hc
  simp_rw [mul_assoc, ← Finset.mul_sum] at hc
  rw [sum_shortPart U Y hUY] at hc
  have hcount (d : ℕ) (hd : 1 ≤ d) :
      (∑ k ∈ Finset.Icc 1 Y, (zeta : ArithmeticFunction ℝ) k * w (d*k)) =
        ((Y/d : ℕ) : ℝ) := by
    have he : (Finset.Icc 1 Y).filter (fun k ↦ d*k ≤ Y) = Finset.Icc 1 (Y/d) := by
      ext k
      simp only [Finset.mem_filter, Finset.mem_Icc]
      have hd0 : 0 < d := hd
      rw [Nat.le_div_iff_mul_le hd0]
      constructor
      · rintro ⟨⟨hk,_⟩,hdk⟩
        exact ⟨hk, by simpa [Nat.mul_comm] using hdk⟩
      · rintro ⟨hk,hkd⟩
        exact ⟨⟨hk,(Nat.le_mul_of_pos_right k hd0).trans hkd⟩,
          by simpa [Nat.mul_comm] using hkd⟩
    calc
      _ = ∑ k ∈ Finset.Icc 1 Y, if d*k ≤ Y then (1 : ℝ) else 0 := by
        apply Finset.sum_congr rfl
        intro k hk
        rw [natCoe_apply, zeta_apply_ne (by have := (Finset.mem_Icc.mp hk).1; omega)]
        simp [w]
      _ = _ := by rw [← Finset.sum_filter, he]; simp
  have hs : (shortPart U (moebius : ArithmeticFunction ℝ) * (zeta : ArithmeticFunction ℝ)) =
      1 - longPart U (moebius : ArithmeticFunction ℝ) * (zeta : ArithmeticFunction ℝ) := by
    rw [longPart, sub_mul, coe_moebius_mul_coe_zeta]
    ring
  have hb (n : ℕ) : beta U n = (1 : ArithmeticFunction ℝ) n -
      (shortPart U (moebius : ArithmeticFunction ℝ) * (zeta : ArithmeticFunction ℝ)) n := by
    rw [hs]
    change beta U n = (1 : ArithmeticFunction ℝ) n -
      ((1 : ArithmeticFunction ℝ) n - (longPart U (moebius : ArithmeticFunction ℝ) *
        (zeta : ArithmeticFunction ℝ)) n)
    rw [← beta_eq_long_convolution]
    ring
  simp_rw [hb, one_apply, Finset.sum_sub_distrib]
  rw [hc]
  have hunit : (∑ n ∈ Finset.Icc 1 Y, if n = 1 then (1 : ℝ) else 0) = 1 := by simp [hY]
  rw [hunit]
  congr 1
  apply Finset.sum_congr rfl
  intro d hd
  rw [hcount d (Finset.mem_Icc.mp hd).1]
  rfl

end
end EstimateVaughanIdentity
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant10017582b09d238855e03d05fa81adcff77ed1db4344fb80a567678f124c9117.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant10017582b09d238855e03d05fa81adcff77ed1db4344fb80a567678f124c9117.lean#L232).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8b25cf2e31dc96c2dd2bcb584f24b609188a42a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
