# norm_deriv_Lfn_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:329d2748-6adf-014c-f102-89562c738801",
  "kind": "theorem",
  "lexical_name": "norm_deriv_Lfn_le",
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
  "slug": "norm-deriv-lfn-le--ad879e84ad44b8a2ade55ccf",
  "source": {
    "blob": "3e3b9bfcde9101b8f3c28b140c8bb809278cf521",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 622,
    "line": 582,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantafd502217358c13db2a0aea95f2952eeef14675e7393d478a671591e99d9dd0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad879e84ad44b8a2ade55ccf001938cb06c67e42c429b21cb271d4f34cf80ea7",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantafd502217358c13db2a0aea95f2952eeef14675e7393d478a671591e99d9dd0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:329d2748-6adf-014c-f102-89562c738801`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 582–622.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_deriv_Lfn_le {t : ℝ} (ht : 2 ≤ |t|) :
    ‖deriv Lfn (((5/4:ℝ):ℂ) + t * I)‖ ≤ 3 / |t| := by
  set s : ℂ := ((5/4:ℝ):ℂ) + t * I with hs
  have ht0 : 0 < |t| := by linarith
  have htne : t ≠ 0 := abs_pos.mp ht0
  have hsre : s.re = 5/4 := re_54 t
  have hsim : s.im = t := by simp [hs]
  have hs1 : s ≠ 1 := fun h => by rw [h] at hsim; simp at hsim; exact htne hsim.symm
  rw [deriv_Lfn_eq (by rw [hsre]; norm_num) hs1 (by rwa [hsim])]
  have hw : 0 < (s/2).re := by rw [Complex.div_ofNat_re, hsre]; norm_num
  have hwim : (s/2).im = t/2 := by rw [Complex.div_ofNat_im, hsim]
  have hwi : 1/2 ≤ |(s/2).im| := by
    rw [hwim, abs_div, abs_two]; linarith
  have hψ := norm_deriv_digamma_le hw hwi
  rw [hwim, abs_div, abs_two] at hψ
  have hs_inv : ‖(s ^ 2)⁻¹‖ ≤ (|t| ^ 2)⁻¹ := by
    rw [norm_inv, norm_pow]
    exact inv_anti₀ (by positivity) (pow_le_pow_left₀ (abs_nonneg t) (norm_s54_ge t) 2)
  have hs1_inv : ‖((s - 1) ^ 2)⁻¹‖ ≤ (|t| ^ 2)⁻¹ := by
    rw [norm_inv, norm_pow]
    exact inv_anti₀ (by positivity) (pow_le_pow_left₀ (abs_nonneg t) (norm_s54_sub_one_ge t) 2)
  have htt : t ^ 2 = |t| ^ 2 := (sq_abs t).symm
  calc ‖(1 / 4 : ℂ) * deriv Complex.digamma (s / 2) - (s ^ 2)⁻¹ - ((s - 1) ^ 2)⁻¹‖
      ≤ ‖(1 / 4 : ℂ) * deriv Complex.digamma (s / 2)‖ + ‖(s ^ 2)⁻¹‖ + ‖((s - 1) ^ 2)⁻¹‖ := norm_sub₃_le'
    _ ≤ (1/4) * (1 / (t/2) ^ 2 + 2 / (|t| / 2)) + (|t| ^ 2)⁻¹ + (|t| ^ 2)⁻¹ := by
        refine add_le_add (add_le_add ?_ hs_inv) hs1_inv
        rw [norm_mul, show ‖(1/4:ℂ)‖ = 1/4 by norm_num]
        exact mul_le_mul_of_nonneg_left hψ (by norm_num)
    _ = 3 / |t| ^ 2 + 1 / |t| := by
        have e : (t / 2) ^ 2 = |t| ^ 2 / 4 := by rw [div_pow, htt]; norm_num
        rw [e]; field_simp; ring
    _ ≤ 3 / |t| := by
        rw [div_add_div _ _ (by positivity) ht0.ne', div_le_div_iff₀ (by positivity) ht0]
        nlinarith

end deriv_conj

/-! ## 6. Conjugation symmetry on the line -/

section symmetry

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantafd502217358c13db2a0aea95f2952eeef14675e7393d478a671591e99d9dd0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantafd502217358c13db2a0aea95f2952eeef14675e7393d478a671591e99d9dd0f.lean#L582).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3e3b9bfcde9101b8f3c28b140c8bb809278cf521` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
