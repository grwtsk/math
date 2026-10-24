# norm_Lfn_sub_Lstar_self_le

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
      "line": 348,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/b8/b84de3f7962dd99af78568e896ebbf92cfe19d0c54b4c10f4260ccdbeedfa23b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:72ed8fcf-4528-9853-7000-2adab7f3d8e9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3c81769b-901e-97b1-7093-a09998be59f1",
  "kind": "theorem",
  "lexical_name": "norm_Lfn_sub_Lstar_self_le",
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
  "slug": "norm-lfn-sub-lstar-self-le--d44bb2bb9ad34865736aec91",
  "source": {
    "blob": "73d287e15c2b4042e99aa14e63e405cf8c577743",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 417,
    "line": 348,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantb84de3f7962dd99af78568e896ebbf92cfe19d0c54b4c10f4260ccdbeedfa23b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d44bb2bb9ad34865736aec9121c46ce8303c967d06064bca2b95c346ae46b6e7",
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

Occurrence: `result:3c81769b-901e-97b1-7093-a09998be59f1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 348–417.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_Lfn_sub_Lstar_self_le {t : ℝ} (ht : 2 ≤ t) :
    ‖Lfn (((5/4:ℝ):ℂ) + t * I) - Lstar t‖ ≤ 8 / t := by
  have ht0 : 0 < t := by linarith
  set s : ℂ := ((5/4:ℝ):ℂ) + t * I with hs
  set w : ℂ := ((5/8:ℝ):ℂ) + ((t/2:ℝ):ℂ) * I with hw
  have hsw : s / 2 = w := half_s54 t
  have hspos : 0 < s.re := by rw [hs, re_54]; norm_num
  have hwre : 0 < w.re := by simp [hw]
  have hwim : 1/2 ≤ |w.im| := by
    simp only [hw, Complex.add_im, Complex.ofReal_im, Complex.mul_im, Complex.ofReal_re,
      Complex.I_im, Complex.I_re, mul_zero, mul_one, zero_add, add_zero]
    rw [abs_of_pos (by linarith)]; linarith
  have hwim' : w.im = t/2 := by simp [hw]
  -- Stirling for ψ(w)
  have hstir := Zeta23.StirlingVert.digamma_stirling hwre hwim
  have hstir' : ‖Complex.digamma w - Complex.log w + (1/2 : ℂ) / w‖ ≤ 6 / t := by
    refine hstir.trans ?_
    rw [hwim', div_le_div_iff₀ (by positivity) ht0]
    nlinarith
  have hlog := norm_log_w_sub_le ht
  -- elementary reciprocals
  have hs_inv : ‖s⁻¹‖ ≤ t⁻¹ := norm_inv_le_of_le ht0 (by
    have := norm_s54_ge t; rwa [abs_of_pos ht0] at this)
  have hs1_inv : ‖(s - 1)⁻¹‖ ≤ t⁻¹ := norm_inv_le_of_le ht0 (by
    have := norm_s54_sub_one_ge t; rwa [abs_of_pos ht0] at this)
  have hw_inv : ‖w⁻¹‖ ≤ (t/2)⁻¹ := norm_inv_le_of_le (by positivity) (by
    have := Complex.abs_im_le_norm w; rwa [hwim', abs_of_pos (by positivity)] at this)
  -- the algebraic decomposition
  have hL : Lfn s = -(Real.log Real.pi : ℂ) / 2 + (1 / 2 : ℂ) * Complex.digamma w + 1 / s + 1 / (s - 1) := by
    rw [Lfn_eq_digamma hspos, hsw]
  have hLstar : Lstar t = ((Real.log (t / (2 * Real.pi)) / 2 : ℝ) : ℂ) + Complex.I * (Real.pi / 4 : ℝ) := rfl
  have hlogid : ((Real.log (t / (2 * Real.pi)) / 2 : ℝ) : ℂ) + Complex.I * (Real.pi / 4 : ℝ)
      = (1/2 : ℂ) * (((Real.log (t/2) : ℝ) : ℂ) + ((Real.pi/2 : ℝ) : ℂ) * I)
        - (Real.log Real.pi : ℂ) / 2 := by
    have e1 : Real.log (t / (2 * Real.pi)) = Real.log (t/2) - Real.log Real.pi := by
      rw [show t / (2 * Real.pi) = (t/2) / Real.pi by ring,
        Real.log_div (by positivity) Real.pi_pos.ne']
    rw [e1]
    push_cast
    ring
  have key : Lfn s - Lstar t
      = (1/2 : ℂ) * (Complex.digamma w - Complex.log w + (1/2 : ℂ) / w)
        + (1/2 : ℂ) * (Complex.log w - (((Real.log (t/2) : ℝ) : ℂ) + ((Real.pi/2 : ℝ) : ℂ) * I))
        + (-(1/4 : ℂ) * w⁻¹ + s⁻¹ + (s - 1)⁻¹) := by
    rw [hL, hLstar, hlogid]
    simp only [one_div]
    ring
  rw [key]
  have hI3 : ‖-(1/4 : ℂ) * w⁻¹ + s⁻¹ + (s - 1)⁻¹‖ ≤ (1/4) * (t/2)⁻¹ + t⁻¹ + t⁻¹ := by
    refine (norm_add_le _ _).trans (add_le_add ((norm_add_le _ _).trans (add_le_add ?_ hs_inv)) hs1_inv)
    rw [norm_mul, norm_neg]
    have : ‖(1/4 : ℂ)‖ = 1/4 := by norm_num
    rw [this]
    exact mul_le_mul_of_nonneg_left hw_inv (by norm_num)
  calc ‖(1/2 : ℂ) * (Complex.digamma w - Complex.log w + (1/2 : ℂ) / w)
        + (1/2 : ℂ) * (Complex.log w - (((Real.log (t/2) : ℝ) : ℂ) + ((Real.pi/2 : ℝ) : ℂ) * I))
        + (-(1/4 : ℂ) * w⁻¹ + s⁻¹ + (s - 1)⁻¹)‖
      ≤ ‖(1/2 : ℂ) * (Complex.digamma w - Complex.log w + (1/2 : ℂ) / w)‖
        + ‖(1/2 : ℂ) * (Complex.log w - (((Real.log (t/2) : ℝ) : ℂ) + ((Real.pi/2 : ℝ) : ℂ) * I))‖
        + ‖-(1/4 : ℂ) * w⁻¹ + s⁻¹ + (s - 1)⁻¹‖ := norm_add₃_le
    _ ≤ (1/2) * (6 / t) + (1/2) * (4 / t) + ((1/4) * (t/2)⁻¹ + t⁻¹ + t⁻¹) := by
        refine add_le_add (add_le_add ?_ ?_) hI3
        · rw [norm_mul, show ‖(1/2:ℂ)‖ = 1/2 by norm_num]
          exact mul_le_mul_of_nonneg_left hstir' (by norm_num)
        · rw [norm_mul, show ‖(1/2:ℂ)‖ = 1/2 by norm_num]
          exact mul_le_mul_of_nonneg_left hlog (by norm_num)
    _ = (15/2) / t := by field_simp; ring
    _ ≤ 8 / t := by rw [div_le_div_iff₀ ht0 ht0]; nlinarith

/-- ordered case of |log t − log τ| ≤ |t − τ| / min t τ. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantb84de3f7962dd99af78568e896ebbf92cfe19d0c54b4c10f4260ccdbeedfa23b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Expansion/Variantb84de3f7962dd99af78568e896ebbf92cfe19d0c54b4c10f4260ccdbeedfa23b.lean#L348).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73d287e15c2b4042e99aa14e63e405cf8c577743` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
