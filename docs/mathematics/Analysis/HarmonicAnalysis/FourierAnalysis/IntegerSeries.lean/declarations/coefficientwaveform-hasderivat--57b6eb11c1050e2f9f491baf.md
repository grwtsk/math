# coefficientWaveform_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:19b40d5d-64cc-2512-4c79-729d3f2ddcef",
  "kind": "theorem",
  "lexical_name": "coefficientWaveform_hasDerivAt",
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
  "slug": "coefficientwaveform-hasderivat--57b6eb11c1050e2f9f491baf",
  "source": {
    "blob": "ef3af0946dd6f2f704059027b4587ab1b961cb66",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 92,
    "path": "GRWTSK/Analysis/Fourier/IntegerSeries.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:57b6eb11c1050e2f9f491bafc4a6ae1d7b259f7cb3a9959fac3e9b8c6f13fb28",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/IntegerSeries.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19b40d5d-64cc-2512-4c79-729d3f2ddcef`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coefficientWaveform_hasDerivAt (a : ℕ → ℝ)
    (ha : Summable fun k ↦ ‖a k‖)
    (hderiv : Summable fun k ↦ ‖a k‖ * (k + 1 : ℕ)) (x : ℝ) :
    HasDerivAt (coefficientWaveform a)
      (∑' k : ℕ, -(a k * (k + 1 : ℕ)) * Real.sin ((k + 1 : ℕ) * x)) x := by
  unfold coefficientWaveform
  refine hasDerivAt_tsum (g := fun k y => a k * Real.cos ((k+1:ℕ)*y))
    (g' := fun k y => -(a k * (k+1:ℕ)) * Real.sin ((k+1:ℕ)*y)) hderiv ?_ ?_
    (coefficientWaveform_summable a ha 0) x
  · intro k y
    simpa [mul_comm, mul_left_comm, mul_assoc] using
      (((hasDerivAt_id y).const_mul ((k+1:ℕ):ℝ)).cos.const_mul (a k))
  · intro k y
    rw [norm_mul, norm_neg, norm_mul, Real.norm_natCast]
    exact (mul_le_mul_of_nonneg_left (by simpa [Real.norm_eq_abs] using Real.abs_sin_le_one ((k+1:ℕ)*y)) (by positivity)).trans_eq (mul_one _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/IntegerSeries.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Fourier/IntegerSeries.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef3af0946dd6f2f704059027b4587ab1b961cb66` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
