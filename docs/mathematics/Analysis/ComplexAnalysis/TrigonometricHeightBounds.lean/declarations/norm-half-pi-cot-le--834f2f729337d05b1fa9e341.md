# norm_half_pi_cot_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7bbbf469-090d-2c5a-30e9-47d5605f7ba1",
  "kind": "theorem",
  "lexical_name": "norm_half_pi_cot_le",
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
  "slug": "norm-half-pi-cot-le--834f2f729337d05b1fa9e341",
  "source": {
    "blob": "aa6bb34b5053a54cddb3d79c443e0a6883276c82",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 77,
    "path": "GRWTSK/Analysis/Complex/TrigonometricHeightBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:834f2f729337d05b1fa9e3411110584ce51d830321a2c30b9dacb5affa8da75a",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/TrigonometricHeightBounds.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7bbbf469-090d-2c5a-30e9-47d5605f7ba1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_half_pi_cot_le (s : ℂ) (hs : 1 ≤ |s.im|) :
    ‖((Real.pi : ℂ) / 2) *
      (Complex.cos ((Real.pi : ℂ) * s / 2) /
        Complex.sin ((Real.pi : ℂ) * s / 2))‖ ≤ 3 * Real.pi / 2 := by
  have hi : 1 ≤ |((Real.pi : ℂ) * s / 2).im| := by
    have he : ((Real.pi : ℂ) * s / 2).im = Real.pi * s.im / 2 := by simp
    rw [he, abs_div, abs_mul, abs_of_pos Real.pi_pos]
    norm_num only [abs_of_pos (show (0 : ℝ) < 2 by norm_num)]
    nlinarith [Real.two_le_pi, mul_le_mul_of_nonneg_left hs Real.pi_pos.le]
  have hb := norm_cot_le_three ((Real.pi : ℂ) * s / 2) hi
  change ‖((Real.pi : ℂ) / 2) * Complex.cot ((Real.pi : ℂ) * s / 2)‖ ≤ _
  rw [norm_mul, norm_div, Complex.norm_real, Real.norm_eq_abs, abs_of_pos Real.pi_pos]
  norm_num only [Complex.norm_ofNat]
  nlinarith [mul_le_mul_of_nonneg_left hb (by positivity : 0 ≤ Real.pi / 2)]

end GRWTSK.Analysis.Complex.TrigonometricHeightBounds
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ComplexAnalysis/TrigonometricHeightBounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Complex/TrigonometricHeightBounds.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa6bb34b5053a54cddb3d79c443e0a6883276c82` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
