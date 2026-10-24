# scaled_sqrt_sample_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d5367a3-bc79-b522-15b8-1e239d4a704f",
  "kind": "theorem",
  "lexical_name": "scaled_sqrt_sample_le",
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
  "slug": "scaled-sqrt-sample-le--f278f28029bf98f8f6fb32ce",
  "source": {
    "blob": "a54fcae51d539345f95e852a6623b313c05ada0d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 234,
    "line": 196,
    "path": "GRWTSK/Analysis/Fourier/ZModLargerSliceBounds.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f278f28029bf98f8f6fb32ce79dd4db86a8c14a847b0f149f72d99c9069f9650",
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

Occurrence: `result:2d5367a3-bc79-b522-15b8-1e239d4a704f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 196–234.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem scaled_sqrt_sample_le
    (n m k : ℕ) (hn : 2 ≤ n)
    {ε : ℝ} (hε : 0 < ε) (hε1 : ε ≤ 1)
    (hk :
      ε * (m : ℝ) / (2000 * Real.log n) ≤ k) :
    ε * Real.sqrt m ≤
      128000 * Real.sqrt k * Real.sqrt (Real.log n) := by
  have hlog := GRWTSK.ZModPartitionEnergy.log_nat_ge_half n hn
  have hlog0 : 0 < Real.log n := by linarith
  have hεsq : ε ^ 2 ≤ ε := by nlinarith
  have hfirst :
      ε ^ 2 * (m : ℝ) ≤ ε * (m : ℝ) :=
    mul_le_mul_of_nonneg_right hεsq (by positivity)
  have hsecond :
      ε * (m : ℝ) ≤ 2000 * Real.log n * k := by
    have h := (div_le_iff₀
      (mul_pos (by norm_num : (0 : ℝ) < 2000) hlog0)).mp hk
    nlinarith
  have hthird :
      2000 * Real.log n * (k : ℝ) ≤
        (128000 : ℝ) ^ 2 * Real.log n * k := by
    have h := mul_le_mul_of_nonneg_right
      (by norm_num : (2000 : ℝ) ≤ 128000 ^ 2)
      (mul_nonneg hlog0.le (by positivity : (0 : ℝ) ≤ k))
    simpa only [mul_assoc] using h
  have hbound := hfirst.trans (hsecond.trans hthird)
  apply (sq_le_sq₀
    (mul_nonneg hε.le (Real.sqrt_nonneg (m : ℝ)))
    (by positivity :
      (0 : ℝ) ≤ 128000 * Real.sqrt k *
        Real.sqrt (Real.log n))).mp
  simp only [mul_pow,
    Real.sq_sqrt (by positivity : (0 : ℝ) ≤ m),
    Real.sq_sqrt (by positivity : (0 : ℝ) ≤ k),
    Real.sq_sqrt hlog0.le]
  nlinarith [hbound]

/-- The source-range error for every actual residual slice is bounded by
the larger-slice error. Its premises are only the proved parameter bounds. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ZModLargerSliceBounds.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/ZModLargerSliceBounds.lean#L196).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a54fcae51d539345f95e852a6623b313c05ada0d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
