# actualXi_half_window_eq_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:82765f9e-9455-774e-1429-f875edfbfdb4",
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
  "slug": "actualxi-half-window-eq-finite--e804230f9a2ed0f0358b5ec7",
  "source": {
    "blob": "d67828f534b9473de280816c4ad8bd4fbd84ad56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 233,
    "line": 184,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiHalfFiniteReadout/Variant0a5a2e8af4574554f5e4c5ed95bd6d7ff226e7fe060b1f55d611855d8665ac0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e804230f9a2ed0f0358b5ec7195c2ddca829146ccffeccbc5c76a3b6ad425a3d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualXiHalfFiniteReadout/Variant0a5a2e8af4574554f5e4c5ed95bd6d7ff226e7fe060b1f55d611855d8665ac0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82765f9e-9455-774e-1429-f875edfbfdb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 184–233.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualXiHalfFiniteReadout/Variant0a5a2e8af4574554f5e4c5ed95bd6d7ff226e7fe060b1f55d611855d8665ac0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiHalfFiniteReadout/Variant0a5a2e8af4574554f5e4c5ed95bd6d7ff226e7fe060b1f55d611855d8665ac0f.lean#L184).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d67828f534b9473de280816c4ad8bd4fbd84ad56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
