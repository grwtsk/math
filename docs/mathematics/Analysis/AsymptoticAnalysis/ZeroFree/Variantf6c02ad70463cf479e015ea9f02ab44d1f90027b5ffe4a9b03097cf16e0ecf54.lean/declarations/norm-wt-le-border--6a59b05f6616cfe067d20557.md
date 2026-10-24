# norm_wt_le_border

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9b486018e86ff3fab9a3e0bcf36e9d28c00063a5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 740,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f6/f6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a4aee10d-1118-5a39-6da0-28426db08dca",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f7a6fb97-27fe-a1ac-3a27-3d6927ec9e82",
  "kind": "theorem",
  "lexical_name": "norm_wt_le_border",
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
  "slug": "norm-wt-le-border--6a59b05f6616cfe067d20557",
  "source": {
    "blob": "9b486018e86ff3fab9a3e0bcf36e9d28c00063a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 789,
    "line": 740,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/ZeroFree/Variantf6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a59b05f6616cfe067d205573ad2ca0b0e446b304e40660731f0d1c69417d7e5",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/ZeroFree/Variantf6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f7a6fb97-27fe-a1ac-3a27-3d6927ec9e82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 740–789.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_wt_le_border {s : ℂ} {R : ℝ} (hR : 2 * ‖s‖ + 4 ≤ R) :
    ∀ p ∈ RectangleBorder (zc R) (wc R), ‖wt s p‖ ≤ 4 * ‖s - reflect s‖ / R ^ 2 := by
  have hR0 : 0 < R := by linarith [norm_nonneg s]
  -- every point a with 2|a| + 2 ≤ R is at distance ≥ R/2 from the border
  have hdist : ∀ a : ℂ, 2 * ‖a‖ + 2 ≤ R → ∀ p ∈ RectangleBorder (zc R) (wc R), R / 2 ≤ ‖a - p‖ := by
    intro a ha p hp
    have hare : |a.re| ≤ ‖a‖ := Complex.abs_re_le_norm a
    have haim : |a.im| ≤ ‖a‖ := Complex.abs_im_le_norm a
    have h1 : |(a - p).re| ≤ ‖a - p‖ := Complex.abs_re_le_norm _
    have h2 : |(a - p).im| ≤ ‖a - p‖ := Complex.abs_im_le_norm _
    rw [Complex.sub_re] at h1
    rw [Complex.sub_im] at h2
    have hare' := abs_le.mp hare
    have haim' := abs_le.mp haim
    simp only [RectangleBorder, Set.mem_union, Complex.mem_reProdIm, Set.mem_singleton_iff,
      zc_re, zc_im, wc_re, wc_im] at hp
    rcases hp with ((⟨_, h'⟩ | ⟨h', _⟩) | ⟨_, h'⟩) | ⟨h', _⟩
    · -- bottom: p.im = −R
      have : R / 2 ≤ |a.im - p.im| := by rw [h']; rw [abs_of_nonneg (by linarith)]; linarith
      linarith
    · -- left: p.re = 1 − R
      have : R / 2 ≤ |a.re - p.re| := by rw [h']; rw [abs_of_nonneg (by linarith)]; linarith
      linarith
    · -- top: p.im = R
      have : R / 2 ≤ |a.im - p.im| := by rw [h']; rw [abs_of_nonpos (by linarith)]; linarith
      linarith
    · -- right: p.re = R
      have : R / 2 ≤ |a.re - p.re| := by rw [h']; rw [abs_of_nonpos (by linarith)]; linarith
      linarith
  intro p hp
  have hrs : ‖reflect s‖ ≤ 1 + ‖s‖ := by
    calc ‖reflect s‖ = ‖1 - conj s‖ := rfl
      _ ≤ ‖(1 : ℂ)‖ + ‖conj s‖ := norm_sub_le _ _
      _ = 1 + ‖s‖ := by rw [norm_one, Complex.norm_conj]
  have d1 := hdist s (by linarith) p hp
  have d2 := hdist (reflect s) (by linarith) p hp
  have h1 : s - p ≠ 0 := norm_pos_iff.mp (by linarith)
  have h2 : reflect s - p ≠ 0 := norm_pos_iff.mp (by linarith)
  rw [wt_eq s p h1 h2, norm_div, norm_mul, norm_sub_rev (reflect s) s]
  rw [div_le_div_iff₀ (by positivity) (by positivity)]
  have := mul_le_mul d1 d2 (by positivity) (norm_nonneg _)
  nlinarith [norm_nonneg (s - reflect s)]

/-! ## §D. The square identity at a good height -/

/-- **Square identity.**  ξ(s) ≠ 0, Re s ≠ 1/2, R ≥ |s| + 2 with ζ ≠ 0 on Im = ±R, 1/2 ≤ Re ≤ 2:
(1/2πi)∮_{∂([1−R,R]×[−R,R])} wt s · ξ′/ξ = Σ_{|Im ρ| < R} m_ρ wt s ρ − ξ′/ξ(s) + ξ′/ξ(reflect s).
(ζ ≠ 0 on Re ∈ [1/2, 2] of the lines Im = ±R keeps ALL zeros of ξ off those lines: a zero ρ with
Re ρ < 1/2 would give the zero 1 − ρ with Re ∈ (1/2, 1) on the mirrored line —
Zeta23.WeilEF.completedZeta_ne_zero_on_horizontals.) -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/ZeroFree/Variantf6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/ZeroFree/Variantf6c02ad70463cf479e015ea9f02ab44d1f90027b5ffe4a9b03097cf16e0ecf54.lean#L740).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b486018e86ff3fab9a3e0bcf36e9d28c00063a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
