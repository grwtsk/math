# actualXi_half_window_eq_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ca0df5bc-dda4-53d2-2bd6-080e29d5ae5a",
  "kind": "theorem",
  "lexical_name": "actualXi_half_window_eq_finite",
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
  "slug": "actualxi-half-window-eq-finite--82da30d5d0d14f0c146dc0d8",
  "source": {
    "blob": "3d85a89dd0a4006ce8151617cc29fe2381b41590",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 225,
    "line": 176,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiHalfFiniteReadout/Variant5ea0afc0ab584382fef5e08496e4f10fcad0d4a6682e35f71a5bf54bf6a93c23.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82da30d5d0d14f0c146dc0d843a79fd26ed3d6f93af3060f5e12a2dbf30737ea",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualXiHalfFiniteReadout/Variant5ea0afc0ab584382fef5e08496e4f10fcad0d4a6682e35f71a5bf54bf6a93c23.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ca0df5bc-dda4-53d2-2bd6-080e29d5ae5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–225.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualXi_half_window_eq_finite {Y : ℝ} (hY : 7 ≤ Y) :
    (∫ x in (7 : ℝ)..Y, shiftedActualChebyshev x / x ^ (3 / 2 : ℝ)) =
      2 * actualMangoldtHalfWindowSeven Y -
        2 * (Chebyshev.psi Y + Y +
          2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)) / Real.sqrt Y +
        2 * (Chebyshev.psi 7 + 7 +
          2 * (Real.eulerMascheroniConstant + 1 - Real.log 2)) / Real.sqrt 7 := by
  have hY2 : 2 ≤ Y := by linarith
  have hIY := shiftedActualChebyshev_mul_intervalIntegrable Y hY2
    (fun x : ℝ => 1 / x ^ (3 / 2 : ℝ)) (by
      intro x hx
      have hp : 0 < x := by linarith [hx.1]
      exact (continuousAt_const.div (continuousAt_id.rpow_const (Or.inl hp.ne'))
        (Real.rpow_pos_of_pos hp _).ne').continuousWithinAt)
  have hI7 := shiftedActualChebyshev_mul_intervalIntegrable 7 (by norm_num)
    (fun x : ℝ => 1 / x ^ (3 / 2 : ℝ)) (by
      intro x hx
      have hp : 0 < x := by linarith [hx.1]
      exact (continuousAt_const.div (continuousAt_id.rpow_const (Or.inl hp.ne'))
        (Real.rpow_pos_of_pos hp _).ne').continuousWithinAt)
  simp only [mul_one_div] at hIY hI7
  have he := intervalIntegral.integral_interval_sub_left hIY hI7
  have hs : (∑ n ∈ Finset.Icc 0 (Nat.floor Y),
      (vonMangoldt n : ℝ) / Real.sqrt (n : ℝ)) =
      (∑ n ∈ Finset.Icc 0 7, (vonMangoldt n : ℝ) / Real.sqrt (n : ℝ)) +
        actualMangoldtHalfWindowSeven Y := by
    have hu : Finset.Icc 0 (Nat.floor Y) = Finset.Icc 0 7 ∪ Finset.Ioc 7 (Nat.floor Y) := by
      ext n
      simp only [Finset.mem_Icc, Finset.mem_union, Finset.mem_Ioc]
      have hf : 7 ≤ Nat.floor Y := (Nat.le_floor hY)
      omega
    have hd : Disjoint (Finset.Icc 0 7) (Finset.Ioc 7 (Nat.floor Y)) := by
      rw [Finset.disjoint_left]
      intro n hn hm
      simp only [Finset.mem_Icc, Finset.mem_Ioc] at hn hm
      omega
    rw [hu, Finset.sum_union hd]
    rfl
  have hp : 0 < Y := by linarith
  have hsY := Real.sq_sqrt hp.le
  have hs7 := Real.sq_sqrt (by norm_num : (0 : ℝ) ≤ 7)
  rw [shifted_half_abel hY2, shifted_half_abel (by norm_num : (2 : ℝ) ≤ 7)] at he
  simp only [Nat.floor_ofNat] at he
  rw [hs] at he
  rw [← he]
  field_simp
  rw [hsY, hs7]
  ring

/-- The anchored time primitive has the same literal closed-half finite arithmetic readout. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualXiHalfFiniteReadout/Variant5ea0afc0ab584382fef5e08496e4f10fcad0d4a6682e35f71a5bf54bf6a93c23.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiHalfFiniteReadout/Variant5ea0afc0ab584382fef5e08496e4f10fcad0d4a6682e35f71a5bf54bf6a93c23.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d85a89dd0a4006ce8151617cc29fe2381b41590` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
