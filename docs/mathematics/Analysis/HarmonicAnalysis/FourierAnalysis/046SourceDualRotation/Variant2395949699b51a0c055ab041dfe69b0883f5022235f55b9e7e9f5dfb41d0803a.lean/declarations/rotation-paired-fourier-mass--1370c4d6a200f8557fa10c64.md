# rotation_paired_fourier_mass

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d9c755ad-ed2f-c4ac-cf58-4de3ec6ece22",
  "kind": "theorem",
  "lexical_name": "rotation_paired_fourier_mass",
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
  "slug": "rotation-paired-fourier-mass--1370c4d6a200f8557fa10c64",
  "source": {
    "blob": "959e6105a0304eb57030fc19db79f0eeb74a502a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 467,
    "line": 445,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/046SourceDualRotation/Variant2395949699b51a0c055ab041dfe69b0883f5022235f55b9e7e9f5dfb41d0803a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1370c4d6a200f8557fa10c64c15d06ad654c01b8c17e90bc01389a8c7d76e419",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/046SourceDualRotation/Variant2395949699b51a0c055ab041dfe69b0883f5022235f55b9e7e9f5dfb41d0803a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9c755ad-ed2f-c4ac-cf58-4de3ec6ece22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 445–467.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rotation_paired_fourier_mass {q : ComplexL2} (hq : reflection q = q)
    (c s : ℝ) (hu : c ^ 2 + s ^ 2 = 1) :
    ∀ᵐ ξ ∂volume, ξ ≠ 0 →
      ‖(𝓕 (rotationMap c s q) : ComplexL2) ξ‖ ^ 2 +
        ‖(𝓕 (rotationMap c s q) : ComplexL2) (-ξ)‖ ^ 2 =
      ‖(𝓕 q : ComplexL2) ξ‖ ^ 2 + ‖(𝓕 q : ComplexL2) (-ξ)‖ ^ 2 := by
  filter_upwards [rotation_even_fourier_coe_ae hq c s,
    (LinearIsometryEquiv.neg ℝ (E := ℝ)).measurePreserving.quasiMeasurePreserving.ae
      (rotation_even_fourier_coe_ae hq c s),even_fourier_coe_ae hq] with ξ hp hm he hξ
  change (𝓕 (rotationMap c s q) : ComplexL2) (-ξ) =
    ((c : ℂ)+(s : ℂ)*signSymbol (-ξ))*(𝓕 q : ComplexL2) (-ξ) at hm
  rw [hp,hm,he]
  rcases lt_or_gt_of_ne hξ with hn | hn
  · simp only [signSymbol,if_pos hn,if_neg (by linarith : ¬ -ξ < 0)]
    simp only [mul_neg,mul_one,← Complex.ofReal_neg,← Complex.ofReal_add,
      norm_mul,Complex.norm_real,Real.norm_eq_abs,mul_pow,sq_abs]
    linear_combination 2*‖(𝓕 q : ComplexL2) ξ‖ ^ 2*hu
  · simp only [signSymbol,if_neg (by linarith : ¬ ξ < 0),if_pos (by linarith : -ξ < 0)]
    simp only [mul_neg,mul_one,← Complex.ofReal_neg,← Complex.ofReal_add,
      norm_mul,Complex.norm_real,Real.norm_eq_abs,mul_pow,sq_abs]
    linear_combination 2*‖(𝓕 q : ComplexL2) ξ‖ ^ 2*hu

/-- Norm preservation and a vanished spectral half coexist at equal unit-circle coefficients. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/046SourceDualRotation/Variant2395949699b51a0c055ab041dfe69b0883f5022235f55b9e7e9f5dfb41d0803a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/046SourceDualRotation/Variant2395949699b51a0c055ab041dfe69b0883f5022235f55b9e7e9f5dfb41d0803a.lean#L445).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `959e6105a0304eb57030fc19db79f0eeb74a502a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
