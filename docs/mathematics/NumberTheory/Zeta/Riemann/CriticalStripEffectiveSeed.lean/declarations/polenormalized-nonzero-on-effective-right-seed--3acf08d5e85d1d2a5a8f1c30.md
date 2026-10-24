# poleNormalized_nonzero_on_effective_right_seed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b96c17d8-dab4-e7bb-8898-823e80cf7212",
  "kind": "theorem",
  "lexical_name": "poleNormalized_nonzero_on_effective_right_seed",
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
  "slug": "polenormalized-nonzero-on-effective-right-seed--3acf08d5e85d1d2a5a8f1c30",
  "source": {
    "blob": "09b537df0518dd3a70d50cafa8d9959127ce1382",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 72,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripEffectiveSeed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3acf08d5e85d1d2a5a8f1c3036c8f34356c8e8c79cf4e16e34838e35960eeeae",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripEffectiveSeed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b96c17d8-dab4-e7bb-8898-823e80cf7212`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem poleNormalized_nonzero_on_effective_right_seed {s : ℂ}
    (hleft : (1 / 2 : ℝ) ≤ s.re) (hright : s.re ≤ 1)
    (hheight : |s.im| ≤ (1 / 16 : ℝ)) : poleNormalizedZeta s ≠ 0 := by
  intro hzero
  have hspos : 0 < s.re := by linarith
  have hsne : s ≠ 0 := by
    intro heq
    have : s.re = 0 := by simp [heq]
    linarith
  have hid := poleNormalized_eq_fractional hspos
  have hfactor : s * (1 - (s - 1) * fractionalMellin s) = 0 := by
    calc
      _ = fractionalPoleModel s := by unfold fractionalPoleModel; ring
      _ = poleNormalizedZeta s := hid.symm
      _ = 0 := hzero
  have hone : (s - 1) * fractionalMellin s = 1 :=
    (sub_eq_zero.mp ((mul_eq_zero.mp hfactor).resolve_left hsne)).symm
  let a : ℂ := fractionalMellin (s.re : ℂ)
  have haRe : 0 ≤ a.re := fractionalMellin_re_nonneg hspos
  have haIm : a.im = 0 := fractionalMellin_ofReal_im_zero hspos
  have hrealTerm : ((s - 1) * a).re ≤ 0 := by
    simp only [Complex.mul_re, Complex.sub_re, Complex.one_re, haIm,
      mul_zero, sub_zero]
    exact mul_nonpos_of_nonpos_of_nonneg (sub_nonpos.mpr hright) haRe
  have hdecomp : (s - 1) * fractionalMellin s =
      (s - 1) * a + (s - 1) * (fractionalMellin s - a) := by ring
  have hforced : (1 : ℝ) ≤ ((s - 1) * (fractionalMellin s - a)).re := by
    have h := congrArg Complex.re hdecomp
    rw [hone, Complex.one_re, Complex.add_re] at h
    linarith
  have hvar : ‖fractionalMellin s - a‖ ≤ 1 := by
    have h := fractionalMellin_vertical_variation hleft
    have hb : 16 * |s.im| ≤ (1 : ℝ) := by linarith
    exact h.trans hb
  have hfactorNorm : ‖s - 1‖ ≤ (9 / 16 : ℝ) := by
    have h := Complex.norm_le_abs_re_add_abs_im (s - 1)
    simp only [Complex.sub_re, Complex.one_re, Complex.sub_im, Complex.one_im,
      sub_zero, abs_of_nonpos (sub_nonpos.mpr hright)] at h
    linarith
  have hres : ‖(s - 1) * (fractionalMellin s - a)‖ ≤ (9 / 16 : ℝ) := by
    rw [norm_mul]
    calc
      _ ≤ (9 / 16 : ℝ) * 1 :=
        mul_le_mul hfactorNorm hvar (norm_nonneg _) (by norm_num)
      _ = 9 / 16 := by ring
  have hcontra := hforced.trans (Complex.re_le_norm _)
  linarith

/-- The functional mirror gives the effective seed for ALL canonical target zeros.
Only the zero predicate is reflected, not function values or weighted divisor sums. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripEffectiveSeed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripEffectiveSeed.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09b537df0518dd3a70d50cafa8d9959127ce1382` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
