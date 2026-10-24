# rationalReadout_product_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7e57fbe2-88f4-69fa-5082-9d5a25e45b3c",
  "kind": "theorem",
  "lexical_name": "rationalReadout_product_integrable",
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
  "slug": "rationalreadout-product-integrable--e6df841cf4e53331d7d95124",
  "source": {
    "blob": "8346f427811751f510d4c5d0d7c4a647ac0b15e4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 92,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceRationalContinuousHalf/Variant24ec17d1e845af6d4d250238798ef9725327a22e37836206352407609d9f9e18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6df841cf4e53331d7d95124d169b62f5f891ab776b007e51300828148ffa70b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceRationalContinuousHalf/Variant24ec17d1e845af6d4d250238798ef9725327a22e37836206352407609d9f9e18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7e57fbe2-88f4-69fa-5082-9d5a25e45b3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem rationalReadout_product_integrable (A : ℝ) (hA : 1 ≤ A) :
    Integrable (fun p : ℝ × ℝ ↦
      nativeMellinTransform A ((2 : ℂ) + Complex.I * (p.1 : ℂ)) *
        (Real.exp (-p.2) : ℂ) * Complex.exp (-Complex.I * (p.1 : ℂ) * (p.2 : ℂ)))
      (volume.prod (volume.restrict (Ioi 0))) := by
  have hb := (nativeMellin_two_integrable A hA).norm.mul_prod
    (integrableOn_exp_neg_Ioi (0 : ℝ))
  apply hb.mono'
  · exact ((native_two_line_continuous A hA).comp continuous_fst |>.mul
      (by fun_prop) |>.mul (by fun_prop)).aestronglyMeasurable
  · filter_upwards [] with p
    rw [norm_mul, norm_mul, inverse_phase_norm, mul_one,
      Complex.norm_real, Real.norm_eq_abs, abs_of_pos (Real.exp_pos _)]

/-- Actual rational-kernel angular readout equals the continuous source pole half. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceRationalContinuousHalf/Variant24ec17d1e845af6d4d250238798ef9725327a22e37836206352407609d9f9e18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceRationalContinuousHalf/Variant24ec17d1e845af6d4d250238798ef9725327a22e37836206352407609d9f9e18.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8346f427811751f510d4c5d0d7c4a647ac0b15e4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
