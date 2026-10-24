# margin_reciprocal_le_error_of_small_sample

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dba8ea12-c95c-5223-f6f6-aa2996db99a7",
  "kind": "theorem",
  "lexical_name": "margin_reciprocal_le_error_of_small_sample",
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
  "slug": "margin-reciprocal-le-error-of-small-sample--80f44fd54fc694f1f5c147ae",
  "source": {
    "blob": "a54fcae51d539345f95e852a6623b313c05ada0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 161,
    "path": "GRWTSK/Analysis/Fourier/ZModLargerSliceBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80f44fd54fc694f1f5c147aecfa91f1f6512ba0d3935a899ee8937c835293ed5",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSliceBounds.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dba8ea12-c95c-5223-f6f6-aa2996db99a7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem margin_reciprocal_le_error_of_small_sample
    (n m : ℕ) (hn : 2 ≤ n) (hm : 1 ≤ m)
    {ε : ℝ} (hε : 0 < ε) (hε1 : ε ≤ 1)
    (hsample : (m : ℝ) ≤ sourceConstant * Real.log n) :
    1 / (ε * n) ≤
      largerSliceConstant ε * Real.sqrt (Real.log n) /
        ((n : ℝ) * Real.sqrt m) := by
  have hlog := GRWTSK.ZModPartitionEnergy.log_nat_ge_half n hn
  have hlog0 : 0 ≤ Real.log n := by linarith
  have hC2 : sourceConstant ≤ sourceConstant ^ 2 := by
    nlinarith [source_constant_ge_one]
  have hCL :
      sourceConstant * Real.log n ≤
        sourceConstant ^ 2 * Real.log n :=
    mul_le_mul_of_nonneg_right hC2 hlog0
  have hroot :
      Real.sqrt m ≤ sourceConstant * Real.sqrt (Real.log n) := by
    apply (sq_le_sq₀
      (Real.sqrt_nonneg (m : ℝ))
      (mul_nonneg source_constant_positive.le
        (Real.sqrt_nonneg (Real.log n)))).mp
    rw [mul_pow,
      Real.sq_sqrt (by positivity : (0 : ℝ) ≤ m),
      Real.sq_sqrt hlog0]
    exact hsample.trans hCL
  have hroot' :
      Real.sqrt m ≤
        largerSliceConstant ε * ε * Real.sqrt (Real.log n) :=
    hroot.trans (mul_le_mul_of_nonneg_right
      (source_constant_le_coefficient hε hε1)
      (Real.sqrt_nonneg (Real.log n)))
  exact margin_reciprocal_le_error n m hn hm hε hroot'

/-- The retained-slice lower bound controls the square-root loss without
introducing `sqrt ε` into the final constant. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSliceBounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModLargerSliceBounds.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a54fcae51d539345f95e852a6623b313c05ada0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
