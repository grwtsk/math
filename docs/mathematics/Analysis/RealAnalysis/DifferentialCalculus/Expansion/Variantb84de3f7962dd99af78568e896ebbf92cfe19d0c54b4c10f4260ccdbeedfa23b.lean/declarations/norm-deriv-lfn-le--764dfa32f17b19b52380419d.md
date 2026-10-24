# norm_deriv_Lfn_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "73d287e15c2b4042e99aa14e63e405cf8c577743",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 574,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b84de3f7962dd99af78568e896ebbf92cfe19d0c54b4c10f4260ccdbeedfa23b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c193aa5a-5496-40bc-c9ba-edbaf11cacb4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:11e5a9cc-2093-e4df-0605-2beae2bc62fd",
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
  "slug": "norm-deriv-lfn-le--764dfa32f17b19b52380419d",
  "source": {
    "blob": "73d287e15c2b4042e99aa14e63e405cf8c577743",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 614,
    "line": 574,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantb84de3f7962dd99af78568e896ebbf92cfe19d0c54b4c10f4260ccdbeedfa23b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:764dfa32f17b19b52380419db776423942f41385fe08583cb671c95f8e493eab",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantb84de3f7962dd99af78568e896ebbf92cfe19d0c54b4c10f4260ccdbeedfa23b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:11e5a9cc-2093-e4df-0605-2beae2bc62fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 574–614.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantb84de3f7962dd99af78568e896ebbf92cfe19d0c54b4c10f4260ccdbeedfa23b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantb84de3f7962dd99af78568e896ebbf92cfe19d0c54b4c10f4260ccdbeedfa23b.lean#L574).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73d287e15c2b4042e99aa14e63e405cf8c577743` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
