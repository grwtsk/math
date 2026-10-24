# integral_abs_deriv2_phi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bacc3dc794637292679c0c4fe4e9f2ed74c05b70",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 341,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/35/3593500eaec8f91f82f6958039526f6751aaa9dabe699fec1848f1aa11f3c599.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6a62cee1-99f5-afcd-4fab-03ba71cfe7ae",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:15b275a9-9fb1-a417-a732-8ccaac99773f",
  "kind": "theorem",
  "lexical_name": "integral_abs_deriv2_phi",
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
  "slug": "integral-abs-deriv2-phi--684b58bd259cd768136b4a84",
  "source": {
    "blob": "bacc3dc794637292679c0c4fe4e9f2ed74c05b70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 387,
    "line": 341,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Norms/Variant3593500eaec8f91f82f6958039526f6751aaa9dabe699fec1848f1aa11f3c599.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:684b58bd259cd768136b4a84fae46ecf84cf262253d76478e611f04598349592",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Norms/Variant3593500eaec8f91f82f6958039526f6751aaa9dabe699fec1848f1aa11f3c599.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:15b275a9-9fb1-a417-a732-8ccaac99773f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 341–387.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_abs_deriv2_phi (hϱ : TaperProfile ϱ) (hw : 0 < w) (hwL : 2 * w ≤ L) :
    ∫ u, |deriv (deriv (phi ϱ L w)) u| = 2 * l1Deriv2 ϱ / w := by
  have hL : (0 : ℝ) < L := by linarith
  have hcont2 : Continuous (deriv (deriv (phi ϱ L w))) :=
    (deriv_phi_contDiff hϱ hw hwL).continuous_deriv (by norm_num)
  rw [integral_abs_eq_two_mul hL hcont2
    (fun u => by rw [deriv2_phi_even hϱ hw hwL]) (fun u hu => deriv2_phi_zero_out hϱ hw hu)]
  have hcongr : ∫ u in (0 : ℝ)..(L / 2), |deriv (deriv (phi ϱ L w)) u|
      = ∫ u in (0 : ℝ)..(L / 2), |deriv (deriv ϱ) ((L / 2 - u) / w)| / w ^ 2 := by
    rw [intervalIntegral.integral_of_le (by linarith), intervalIntegral.integral_of_le
      (by linarith)]
    refine MeasureTheory.setIntegral_congr_fun measurableSet_Ioc fun u hu => ?_
    rw [deriv2_phi_pos hϱ hw hu.1, abs_div, abs_of_pos (by positivity : (0 : ℝ) < w ^ 2)]
  rw [hcongr]
  have hsub1 : ∫ u in (0 : ℝ)..(L / 2), |deriv (deriv ϱ) ((L / 2 - u) / w)| / w ^ 2
      = ∫ y in (0 : ℝ)..(L / 2), |deriv (deriv ϱ) (y / w)| / w ^ 2 := by
    have h := intervalIntegral.integral_comp_sub_left (a := (0 : ℝ)) (b := L / 2)
      (fun y => |deriv (deriv ϱ) (y / w)| / w ^ 2) (L / 2)
    simpa using h
  rw [hsub1]
  have hdiv : ∫ y in (0 : ℝ)..(L / 2), |deriv (deriv ϱ) (y / w)| / w ^ 2
      = (∫ y in (0 : ℝ)..(L / 2), |deriv (deriv ϱ) (y / w)|) / w ^ 2 :=
    intervalIntegral.integral_div _ _
  rw [hdiv]
  have hsub2 : ∫ y in (0 : ℝ)..(L / 2), |deriv (deriv ϱ) (y / w)|
      = w * ∫ y in (0 : ℝ)..(L / (2 * w)), |deriv (deriv ϱ) y| := by
    have h := intervalIntegral.integral_comp_div (a := (0 : ℝ)) (b := L / 2)
      (f := fun y => |deriv (deriv ϱ) y|) (ne_of_gt hw)
    rw [h, smul_eq_mul]
    norm_num [div_div]
  rw [hsub2]
  have hfull : ∫ y in (0 : ℝ)..(L / (2 * w)), |deriv (deriv ϱ) y| = l1Deriv2 ϱ := by
    have hone : (1 : ℝ) ≤ L / (2 * w) := by
      rw [le_div_iff₀ (by positivity)]
      linarith
    unfold l1Deriv2
    rw [intervalIntegral.integral_of_le (by linarith),
      ← MeasureTheory.integral_Icc_eq_integral_Ioc]
    refine (MeasureTheory.setIntegral_eq_integral_of_forall_compl_eq_zero fun x hx => ?_).symm.symm
    rw [mem_Icc, not_and_or, not_le, not_le] at hx
    rcases hx with h | h
    · rw [derivRho2_zero_left hϱ h, abs_zero]
    · rw [derivRho2_zero_right hϱ (by linarith), abs_zero]
  rw [hfull]
  field_simp

/-- [eq:phinorms]: "`‖(φ²)''‖₁ ≤ c_ϱ / w`" (uses `w ≥ 1`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Norms/Variant3593500eaec8f91f82f6958039526f6751aaa9dabe699fec1848f1aa11f3c599.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Norms/Variant3593500eaec8f91f82f6958039526f6751aaa9dabe699fec1848f1aa11f3c599.lean#L341).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bacc3dc794637292679c0c4fe4e9f2ed74c05b70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
