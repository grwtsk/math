# integral_psi_sq_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b85dafd8-74f0-a03a-83fd-b2b1e1014bc5",
  "kind": "theorem",
  "lexical_name": "integral_psi_sq_le",
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
  "slug": "integral-psi-sq-le--e85af641c8f561f8de69a840",
  "source": {
    "blob": "6ad9e2eb80d44633b4c0b8c20c5fe56e727a55f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 853,
    "line": 791,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Decay/Variant4ada86c8b8bcc550c1860e1d0370ca482d66260b9894f6f7a35276eb4376e005.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e85af641c8f561f8de69a840f3a4946a1f86238ddb6cfa60ed23063f43d82e8d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Decay/Variant4ada86c8b8bcc550c1860e1d0370ca482d66260b9894f6f7a35276eb4376e005.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b85dafd8-74f0-a03a-83fd-b2b1e1014bc5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 791–853.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_psi_sq_le (hϱ : TaperProfile ϱ) (hw : 1 ≤ w) (hwL : 8 * w ≤ L) :
    ∫ r, psi ϱ L w r ^ 2 ≤ 8 * L := by
  obtain ⟨hA, -, -, -⟩ := psiints_consts hϱ hw hwL
  have hwL' : 2 * w ≤ L := by linarith
  have hL : 0 < L := by linarith
  set A := 2 / L with hAdef
  have hred : ∫ r, psi ϱ L w r ^ 2 = 2 * ∫ r in Ioi 0, psi ϱ L w r ^ 2 := by
    have h := integral_comp_abs (f := fun x => psi ϱ L w x ^ 2)
    simp only [psi_abs] at h
    exact h
  rw [hred]
  have i1 : IntegrableOn (fun _ : ℝ => L ^ 2) (Ioc 0 A) := integrableOn_const (by simp)
  have i2 : IntegrableOn (fun x : ℝ => 4 * x ^ (-2:ℝ)) (Ioi A) :=
    (integrableOn_Ioi_rpow_of_lt (by norm_num) hA).const_mul _
  have I1 := i1.integrable_indicator measurableSet_Ioc
  have I2 := i2.integrable_indicator measurableSet_Ioi
  have I12 : Integrable (fun r => (Ioc 0 A).indicator (fun _ : ℝ => L ^ 2) r
      + (Ioi A).indicator (fun x : ℝ => 4 * x ^ (-2:ℝ)) r) := I1.add I2
  have hpt : ∀ r, (Ioi (0:ℝ)).indicator (fun x => psi ϱ L w x ^ 2) r
      ≤ (Ioc 0 A).indicator (fun _ : ℝ => L ^ 2) r + (Ioi A).indicator (fun x : ℝ => 4 * x ^ (-2:ℝ)) r := by
    intro r
    have h0 := psi_nonneg hϱ hw hwL' r
    by_cases hr : 0 < r
    · rw [indicator_of_mem (show r ∈ Ioi (0:ℝ) from hr)]
      by_cases h1 : r ≤ A
      · rw [indicator_of_mem (show r ∈ Ioc 0 A from ⟨hr, h1⟩),
          indicator_of_notMem (show r ∉ Ioi A from fun h => not_lt.mpr h1 h), add_zero]
        exact pow_le_pow_left₀ h0 (psi_le_L hϱ hw hwL' r) 2
      · have h1' : A < r := not_le.mp h1
        rw [indicator_of_notMem (show r ∉ Ioc 0 A from fun h => h1 h.2),
          indicator_of_mem (show r ∈ Ioi A from h1'), zero_add]
        have h := psi_mul_abs_le hϱ hw hwL' r
        rw [abs_of_pos hr] at h
        have h2 : psi ϱ L w r ≤ 2 * r⁻¹ := by
          rw [← div_eq_mul_inv, le_div_iff₀ hr]; exact h
        calc psi ϱ L w r ^ 2 ≤ (2 * r⁻¹) ^ 2 := pow_le_pow_left₀ h0 h2 2
          _ = 4 * r ^ (-2:ℝ) := by
              rw [Real.rpow_neg hr.le, Real.rpow_two]; ring
    · rw [indicator_of_notMem (show r ∉ Ioi (0:ℝ) from hr),
        indicator_of_notMem (show r ∉ Ioc 0 A from fun h => hr h.1),
        indicator_of_notMem (show r ∉ Ioi A from fun h => hr (lt_trans hA h)), add_zero]
  have e1 : ∫ r, (Ioc 0 A).indicator (fun _ : ℝ => L ^ 2) r = 2 * L := by
    rw [integral_indicator measurableSet_Ioc, setIntegral_const, measureReal_def, Real.volume_Ioc,
      ENNReal.toReal_ofReal (by linarith), smul_eq_mul, sub_zero, hAdef]
    field_simp
  have e2 : ∫ r, (Ioi A).indicator (fun x : ℝ => 4 * x ^ (-2:ℝ)) r = 2 * L := by
    rw [integral_indicator measurableSet_Ioi, integral_const_mul,
      integral_Ioi_rpow_of_lt (by norm_num) hA]
    norm_num
    rw [Real.rpow_neg_one, hAdef]
    field_simp
    ring
  calc 2 * ∫ r in Ioi 0, psi ϱ L w r ^ 2
      = 2 * ∫ r, (Ioi (0:ℝ)).indicator (fun x => psi ϱ L w x ^ 2) r := by
        rw [integral_indicator measurableSet_Ioi]
    _ ≤ 2 * ∫ r, ((Ioc 0 A).indicator (fun _ : ℝ => L ^ 2) r
          + (Ioi A).indicator (fun x : ℝ => 4 * x ^ (-2:ℝ)) r) :=
        mul_le_mul_of_nonneg_left (integral_mono_of_nonneg
          (Eventually.of_forall fun r => Set.indicator_nonneg (fun x _ => sq_nonneg _) _) I12
          (Eventually.of_forall hpt)) (by norm_num)
    _ = 2 * (2 * L + 2 * L) := by rw [integral_add I1 I2, e1, e2]
    _ = 8 * L := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Decay/Variant4ada86c8b8bcc550c1860e1d0370ca482d66260b9894f6f7a35276eb4376e005.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Decay/Variant4ada86c8b8bcc550c1860e1d0370ca482d66260b9894f6f7a35276eb4376e005.lean#L791).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6ad9e2eb80d44633b4c0b8c20c5fe56e727a55f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
