# half_anchor_product_ge_pi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:19f2989f-4e77-d226-f260-71de979b8fe0",
  "kind": "theorem",
  "lexical_name": "half_anchor_product_ge_pi",
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
  "slug": "half-anchor-product-ge-pi--6ef1e43df4617f4c1a7a3a3e",
  "source": {
    "blob": "6e5f8f18f1f52d26684e95996420fa0bcbf43134",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 109,
    "line": 79,
    "path": "GRWTSK/Analysis/Complex/GammaVerticalBound.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ef1e43df4617f4c1a7a3a3e65d1a2286d9ac53e4282dd6094103679d2b1c1a6",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/GammaVerticalBound.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19f2989f-4e77-d226-f260-71de979b8fe0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–109.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem half_anchor_product_ge_pi (t : ℝ) :
    Real.pi ≤ ‖Complex.Gamma ((1 / 2 : ℂ) + (t : ℂ) * Complex.I)‖ *
      envelope * Real.exp (Real.pi * |t|) := by
  let z : ℂ := (1 / 2 : ℂ) + (t : ℂ) * Complex.I
  have hz : 0 < z.re := by norm_num [z]
  have hz' : 0 < (1 - z).re := by norm_num [z]
  have hreflect := Complex.Gamma_mul_Gamma_one_sub z
  have hsin : Complex.sin ((Real.pi : ℂ) * z) ≠ 0 := by
    intro he
    rw [he, div_zero] at hreflect
    exact (mul_ne_zero (Complex.Gamma_ne_zero_of_re_pos hz)
      (Complex.Gamma_ne_zero_of_re_pos hz')) hreflect
  have he := congrArg norm hreflect
  rw [norm_mul, norm_div, Complex.norm_real, Real.norm_eq_abs,
    abs_of_pos Real.pi_pos] at he
  have he' : ‖Complex.Gamma z‖ * ‖Complex.Gamma (1 - z)‖ *
      ‖Complex.sin ((Real.pi : ℂ) * z)‖ = Real.pi :=
    (eq_div_iff (norm_ne_zero_iff.mpr hsin)).mp he
  have hg : ‖Complex.Gamma (1 - z)‖ ≤ envelope :=
    norm_Gamma_le_envelope _ (by norm_num [z])
  have hs : ‖Complex.sin ((Real.pi : ℂ) * z)‖ ≤ Real.exp (Real.pi * |t|) := by
    have h := norm_sin_le_exp_abs_im ((Real.pi : ℂ) * z)
    simpa [z, abs_mul, abs_of_pos Real.pi_pos] using h
  change Real.pi ≤ ‖Complex.Gamma z‖ * envelope * Real.exp (Real.pi * |t|)
  calc
    _ = ‖Complex.Gamma z‖ * ‖Complex.Gamma (1 - z)‖ *
        ‖Complex.sin ((Real.pi : ℂ) * z)‖ := he'.symm
    _ ≤ _ := mul_le_mul (mul_le_mul_of_nonneg_left hg (norm_nonneg _)) hs
      (norm_nonneg _) (mul_nonneg (norm_nonneg _) envelope_pos.le)

/-- Two exact Gamma recurrences move the half anchor to the center of the disk. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/GammaVerticalBound.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/GammaVerticalBound.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e5f8f18f1f52d26684e95996420fa0bcbf43134` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
