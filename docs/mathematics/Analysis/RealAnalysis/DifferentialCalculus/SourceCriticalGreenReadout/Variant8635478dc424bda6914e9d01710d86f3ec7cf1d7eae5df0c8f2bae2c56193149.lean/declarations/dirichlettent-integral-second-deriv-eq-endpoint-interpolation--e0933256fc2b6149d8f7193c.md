# dirichletTent_integral_second_deriv_eq_endpoint_interpolation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:75a53538-7642-22bc-8f1c-51df265ec8bb",
  "kind": "theorem",
  "lexical_name": "dirichletTent_integral_second_deriv_eq_endpoint_interpolation",
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
  "slug": "dirichlettent-integral-second-deriv-eq-endpoint-interpolation--e0933256fc2b6149d8f7193c",
  "source": {
    "blob": "6a878cbf6076c5c42a6420dc84a8867fb30a2b79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 40,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalGreenReadout/Variant8635478dc424bda6914e9d01710d86f3ec7cf1d7eae5df0c8f2bae2c56193149.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e0933256fc2b6149d8f7193c1b02923554e207033c3ca30c77535715958ccac7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalGreenReadout/Variant8635478dc424bda6914e9d01710d86f3ec7cf1d7eae5df0c8f2bae2c56193149.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75a53538-7642-22bc-8f1c-51df265ec8bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dirichletTent_integral_second_deriv_eq_endpoint_interpolation
    {L s : ℝ} {D : ℝ → ℝ} (hL : 0 < L) (hs : s ∈ Icc 0 L)
    (hD : ContDiff ℝ 1 D)
    (hD' : AbsolutelyContinuousOnInterval (deriv D) 0 L) :
    (∫ u in 0..L, criticalDirichletTent L u s * deriv (deriv D) u) =
      (1 - s / L) * D 0 + (s / L) * D L - D s := by
  have hleft : uIcc (0 : ℝ) s ⊆ uIcc 0 L := by
    rw [uIcc_of_le hs.1, uIcc_of_le hL.le]
    exact Icc_subset_Icc le_rfl hs.2
  have hright : uIcc s L ⊆ uIcc 0 L := by
    rw [uIcc_of_le hs.2, uIcc_of_le hL.le]
    exact Icc_subset_Icc hs.1 le_rfl
  have hDL : AbsolutelyContinuousOnInterval D 0 s :=
    hD.contDiffOn.absolutelyContinuousOnInterval.mono hleft
  have hDR : AbsolutelyContinuousOnInterval D s L :=
    hD.contDiffOn.absolutelyContinuousOnInterval.mono hright
  have hD'L := hD'.mono hleft
  have hD'R := hD'.mono hright
  have hid : AbsolutelyContinuousOnInterval (fun u : ℝ => u) 0 s :=
    (contDiff_id : ContDiff ℝ 1 (fun u : ℝ => u)).contDiffOn.absolutelyContinuousOnInterval
  have haf : AbsolutelyContinuousOnInterval (fun u : ℝ => L - u) s L :=
    (contDiff_const.sub contDiff_id : ContDiff ℝ 1 (fun u : ℝ => L - u)).contDiffOn
      .absolutelyContinuousOnInterval
  have hpartsL : (∫ u in 0..s, u * deriv (deriv D) u) =
      s * deriv D s - D s + D 0 := by
    have hi := hid.integral_mul_deriv_eq_deriv_mul hD'L
    simp only [deriv_id'', one_mul, zero_mul, sub_zero] at hi
    rw [hDL.integral_deriv_eq_sub] at hi
    linarith
  have hpartsR : (∫ u in s..L, (L - u) * deriv (deriv D) u) =
      -(L - s) * deriv D s + D L - D s := by
    have hi := haf.integral_mul_deriv_eq_deriv_mul hD'R
    simp only [deriv_const_sub_id, sub_self, zero_mul, neg_one_mul] at hi
    rw [intervalIntegral.integral_neg, hDR.integral_deriv_eq_sub] at hi
    linarith
  have hkernel : Continuous (fun u : ℝ => criticalDirichletTent L u s) := by
    unfold criticalDirichletTent
    fun_prop
  have hiL : IntervalIntegrable
      (fun u => criticalDirichletTent L u s * deriv (deriv D) u) volume 0 s :=
    hD'L.intervalIntegrable_deriv.continuousOn_mul hkernel.continuousOn
  have hiR : IntervalIntegrable
      (fun u => criticalDirichletTent L u s * deriv (deriv D) u) volume s L :=
    hD'R.intervalIntegrable_deriv.continuousOn_mul hkernel.continuousOn
  have hkernelL :
      (∫ u in 0..s, criticalDirichletTent L u s * deriv (deriv D) u) =
        ((L - s) / L) * (∫ u in 0..s, u * deriv (deriv D) u) := by
    calc
      _ = ∫ u in 0..s, ((L - s) / L) * (u * deriv (deriv D) u) := by
        apply intervalIntegral.integral_congr
        intro u hu
        have hus : u ≤ s := (uIcc_of_le hs.1 ▸ hu).2
        unfold criticalDirichletTent
        rw [min_eq_left hus, max_eq_right hus]
        ring
      _ = _ := intervalIntegral.integral_const_mul _ _
  have hkernelR :
      (∫ u in s..L, criticalDirichletTent L u s * deriv (deriv D) u) =
        (s / L) * (∫ u in s..L, (L - u) * deriv (deriv D) u) := by
    calc
      _ = ∫ u in s..L, (s / L) * ((L - u) * deriv (deriv D) u) := by
        apply intervalIntegral.integral_congr
        intro u hu
        have hsu : s ≤ u := (uIcc_of_le hs.2 ▸ hu).1
        unfold criticalDirichletTent
        rw [min_eq_right hsu, max_eq_left hsu]
        ring
      _ = _ := intervalIntegral.integral_const_mul _ _
  rw [← intervalIntegral.integral_add_adjacent_intervals hiL hiR,
    hkernelL, hkernelR, hpartsL, hpartsR]
  field_simp [ne_of_gt hL]
  ring

/-- The actual paired test has zero endpoints, so its integrated coefficient is signed `-D`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalGreenReadout/Variant8635478dc424bda6914e9d01710d86f3ec7cf1d7eae5df0c8f2bae2c56193149.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceCriticalGreenReadout/Variant8635478dc424bda6914e9d01710d86f3ec7cf1d7eae5df0c8f2bae2c56193149.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6a878cbf6076c5c42a6420dc84a8867fb30a2b79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
