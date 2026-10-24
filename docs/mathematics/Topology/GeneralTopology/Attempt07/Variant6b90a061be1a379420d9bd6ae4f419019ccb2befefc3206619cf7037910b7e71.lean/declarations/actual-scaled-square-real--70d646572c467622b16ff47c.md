# actual_scaled_square_real

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:08dc4a91-2012-78de-6c36-d760d46cdbcd",
  "kind": "theorem",
  "lexical_name": "actual_scaled_square_real",
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
  "slug": "actual-scaled-square-real--70d646572c467622b16ff47c",
  "source": {
    "blob": "b44f6a0bcdcef6d2d52102567f026b5071de9f9a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 31,
    "path": "GRWTSK/Topology/GeneralTopology/Attempt07/Variant6b90a061be1a379420d9bd6ae4f419019ccb2befefc3206619cf7037910b7e71.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70d646572c467622b16ff47c812d8e17d1399eac6c72dc74eddc8af48a45bd7e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Attempt07/Variant6b90a061be1a379420d9bd6ae4f419019ccb2befefc3206619cf7037910b7e71.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:08dc4a91-2012-78de-6c36-d760d46cdbcd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_scaled_square_real (A : ℝ) (hA : 0 < A) (z : ℝ) (hz : z ≠ 0) :
  A^17 * sourceNormalization A * normalizedSquare A z =
    (384^2 * (z^2-1/4)^2/z^18) *
      (Real.exp (A*z)*p (A*z)-Real.exp (-(A*z))*p (-(A*z)))^2 := by
  have hZ : 0 < sourceNormalization A := by unfold sourceNormalization; positivity
  have hs : (Real.sqrt (sourceNormalization A) : ℂ) ≠ 0 := by
    exact_mod_cast (Real.sqrt_pos.mpr hZ).ne'
  have hsq : (Real.sqrt (sourceNormalization A) : ℂ)^2 = (sourceNormalization A : ℂ) := by
    exact_mod_cast Real.sq_sqrt hZ.le
  have he := actual_scaled_square A hA (z : ℂ) (by exact_mod_cast hz)
  have hc : ((A^17 * sourceNormalization A : ℝ) : ℂ) *
      (bilateralTransform A (z : ℂ) / (Real.sqrt (sourceNormalization A) : ℂ))^2 =
      ((384^2*(z^2-1/4)^2/z^18) *
        (Real.exp (A*z)*p (A*z)-Real.exp (-(A*z))*p (-(A*z)))^2 : ℝ) := by
    calc
      _ = (A : ℂ)^17 * bilateralTransform A (z : ℂ)^2 := by
        push_cast; rw [div_pow,hsq]; field_simp [show (sourceNormalization A : ℂ) ≠ 0 by exact_mod_cast hZ.ne']
      _ = _ := he
      _ = _ := by
        unfold modeCoefficient
        rw [← Complex.ofReal_mul,← Complex.ofReal_neg,← Complex.ofReal_exp,
          ← Complex.ofReal_exp,p_coe,p_coe]
        push_cast; rfl
  have hr := congrArg Complex.re hc
  simpa only [normalizedSquare, Complex.mul_re, Complex.ofReal_re, Complex.ofReal_im, zero_mul, sub_zero] using hr

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Attempt07/Variant6b90a061be1a379420d9bd6ae4f419019ccb2befefc3206619cf7037910b7e71.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Attempt07/Variant6b90a061be1a379420d9bd6ae4f419019ccb2befefc3206619cf7037910b7e71.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b44f6a0bcdcef6d2d52102567f026b5071de9f9a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
