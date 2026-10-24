# actual_logarithmic_derivative_price

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:30678520-5dd4-5987-a4e4-0c0d8de6c4a6",
  "kind": "theorem",
  "lexical_name": "actual_logarithmic_derivative_price",
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
  "slug": "actual-logarithmic-derivative-price--ffdc27f607c2ddd2d3150748",
  "source": {
    "blob": "eff1d92c91177d8e48df6cd3a660fdf0106e8b22",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 57,
    "path": "GRWTSK/Analysis/ActualLogarithmicSampling/Variantadbcb0e16b2b877d31cdf0a76cf1a475262e46d2a7e7e80d16122b279103c592.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ffdc27f607c2ddd2d3150748637796ce8367e817b964649560e467b92417363f",
  "verification": {
    "reference": "docs/verification/Analysis/ActualLogarithmicSampling/Variantadbcb0e16b2b877d31cdf0a76cf1a475262e46d2a7e7e80d16122b279103c592.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:30678520-5dd4-5987-a4e4-0c0d8de6c4a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_logarithmic_derivative_price {A r x : ℝ} (hA : 1 ≤ A)
    (hr : 0 ≤ r) (hx : 0 < x) :
    |logarithmicDerivative A r x| ≤ (5 * r / A) * (1 / x) := by
  unfold logarithmicDerivative
  rw [abs_div, abs_mul, abs_of_nonneg hr, abs_of_pos hx]
  have h := div_le_div_of_nonneg_right
    (mul_le_mul_of_nonneg_left
      (sourceCorrelation_deriv_abs_le_five_div hA (r * Real.log x)) hr) hx.le
  calc
    _ ≤ r * (5 / A) / x := h
    _ = _ := by ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/ActualLogarithmicSampling/Variantadbcb0e16b2b877d31cdf0a76cf1a475262e46d2a7e7e80d16122b279103c592.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ActualLogarithmicSampling/Variantadbcb0e16b2b877d31cdf0a76cf1a475262e46d2a7e7e80d16122b279103c592.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eff1d92c91177d8e48df6cd3a660fdf0106e8b22` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
