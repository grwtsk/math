# fractionalMellinUnit_re_lower_oneThird

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7bca8e71-98be-97fe-2237-2e9bd2c35573",
  "kind": "theorem",
  "lexical_name": "fractionalMellinUnit_re_lower_oneThird",
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
  "slug": "fractionalmellinunit-re-lower-onethird--2a918cc2e9017b0784ad0ae6",
  "source": {
    "blob": "75222568f79145d34e68d7fc218c3d17398ef691",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 65,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripOneThirdSeed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2a918cc2e9017b0784ad0ae602da5b71e6ee39f053677a2fcf37a337814cbf5d",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CriticalStripOneThirdSeed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7bca8e71-98be-97fe-2237-2e9bd2c35573`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fractionalMellinUnit_re_lower_oneThird {s : ℂ}
    (hleft : (1 / 2 : ℝ) ≤ s.re) (hright : s.re ≤ 1)
    (hheight : |s.im| ≤ (1 / 3 : ℝ)) :
    (1 / 21 : ℝ) ≤ (fractionalMellinUnit s).re := by
  have hspos : 0 < s.re := by linarith
  let a : ℂ := fractionalMellin (s.re : ℂ)
  have haRe : 0 ≤ a.re := fractionalMellin_re_nonneg hspos
  have haIm : a.im = 0 := fractionalMellin_ofReal_im_zero hspos
  have hreal : ((s - 1) * a).re ≤ 0 := by
    simp only [Complex.mul_re, Complex.sub_re, Complex.one_re, haIm,
      mul_zero, sub_zero]
    exact mul_nonpos_of_nonpos_of_nonneg (sub_nonpos.mpr hright) haRe
  have hvar : ‖fractionalMellin s - a‖ ≤ (32 / 21 : ℝ) := by
    have h := fractionalMellin_vertical_variation_subtracted hleft
    exact h.trans (by nlinarith)
  have hres : ‖(s - 1) * (fractionalMellin s - a)‖ ≤ (20 / 21 : ℝ) := by
    rw [norm_mul]
    calc
      _ ≤ (5 / 8 : ℝ) * (32 / 21) :=
        mul_le_mul (oneThirdSeed_factor_norm hleft hright hheight) hvar
          (norm_nonneg _) (by norm_num)
      _ = 20 / 21 := by norm_num
  have hresRe := (Complex.re_le_norm ((s - 1) * (fractionalMellin s - a))).trans hres
  have heq : fractionalMellinUnit s =
      1 - (s - 1) * a - (s - 1) * (fractionalMellin s - a) := by
    unfold fractionalMellinUnit
    ring
  rw [heq, Complex.sub_re, Complex.sub_re, Complex.one_re]
  linarith

/-- Quantitative lower bound for the actual normalized source on the entire right
half of the starting strip, including all four edges and the removable pole value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CriticalStripOneThirdSeed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CriticalStripOneThirdSeed.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75222568f79145d34e68d7fc218c3d17398ef691` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
