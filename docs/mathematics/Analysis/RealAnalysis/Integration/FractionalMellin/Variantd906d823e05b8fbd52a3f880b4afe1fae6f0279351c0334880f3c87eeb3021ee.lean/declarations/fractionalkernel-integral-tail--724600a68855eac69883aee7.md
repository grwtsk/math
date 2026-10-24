# fractionalKernel_integral_tail

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:48c682db-7d0a-2b66-2dd0-9d0eb3c39fc8",
  "kind": "theorem",
  "lexical_name": "fractionalKernel_integral_tail",
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
  "slug": "fractionalkernel-integral-tail--724600a68855eac69883aee7",
  "source": {
    "blob": "834efd3042ed8e3fa4ecb1e2664c07e7b9f2ca88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 88,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FractionalMellin/Variantd906d823e05b8fbd52a3f880b4afe1fae6f0279351c0334880f3c87eeb3021ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:724600a68855eac69883aee7a88ae92f6ba412fc7a9a619aab7af3d5ec81d72c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FractionalMellin/Variantd906d823e05b8fbd52a3f880b4afe1fae6f0279351c0334880f3c87eeb3021ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48c682db-7d0a-2b66-2dd0-9d0eb3c39fc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 88–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fractionalKernel_integral_tail (s : ℂ) (hs : 0 < s.re) (hs' : s.re < 1) :
    (∫ x : ℝ in Ioi (1 : ℝ), fractionalKernel s x) =
      -riemannZeta s / s - 1 / (1 - s) := by
  have hs0 : s ≠ 0 := by intro h; simp [h] at hs
  have hs1 : s ≠ 1 := by intro h; simp [h] at hs'
  have hpow : (-(s + 1)).re < -1 := by
    simp only [Complex.neg_re, Complex.add_re, Complex.one_re]
    linarith
  have hp := integrableOn_Ioi_cpow_of_lt hpow zero_lt_one
  have hfract := fractionalKernel_integrable_tail s hs
  have hsplit : (∫ x : ℝ in Ioi (1 : ℝ),
      ((⌊x⌋ : ℂ) + 1 / 2 - (x : ℂ)) * (x : ℂ) ^ (-(s + 1))) =
      (1 / 2 : ℂ) * (∫ x : ℝ in Ioi (1 : ℝ), (x : ℂ) ^ (-(s + 1))) -
        ∫ x : ℝ in Ioi (1 : ℝ), fractionalKernel s x := by
    rw [← integral_const_mul, ← integral_sub (hp.const_mul (1 / 2 : ℂ)) hfract]
    apply setIntegral_congr_fun measurableSet_Ioi
    intro x hx
    simp only [fractionalKernel, Int.fract, Complex.ofReal_sub, Complex.ofReal_intCast]
    ring
  have hJ : (∫ x : ℝ in Ioi (1 : ℝ), (x : ℂ) ^ (-(s + 1))) = 1 / s := by
    rw [integral_Ioi_cpow_of_lt hpow zero_lt_one]
    simp only [Complex.ofReal_one, Complex.one_cpow]
    field_simp [hs0]
    ring
  have hz := Zeta0EqZeta (N := 1) (by decide) hs hs1
  rw [riemannZeta0_apply] at hz
  simp only [Nat.cast_one, Complex.one_cpow, one_div_one, neg_div,
    Finset.sum_range_succ, Finset.sum_range_zero, zero_add, Nat.cast_zero,
    Complex.zero_cpow hs0, div_zero, hsplit, hJ] at hz
  field_simp [hs0, sub_ne_zero.mpr (Ne.symm hs1)] at hz ⊢
  linear_combination -hz / 2

/-- The complete fractional-part Mellin transform has its exact zeta value in the open strip. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FractionalMellin/Variantd906d823e05b8fbd52a3f880b4afe1fae6f0279351c0334880f3c87eeb3021ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FractionalMellin/Variantd906d823e05b8fbd52a3f880b4afe1fae6f0279351c0334880f3c87eeb3021ee.lean#L88).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `834efd3042ed8e3fa4ecb1e2664c07e7b9f2ca88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
