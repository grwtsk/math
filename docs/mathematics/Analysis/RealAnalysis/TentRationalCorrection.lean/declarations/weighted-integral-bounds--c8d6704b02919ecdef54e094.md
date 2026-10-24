# weighted_integral_bounds

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:336277b2-cbec-1002-5ad1-01c010549823",
  "kind": "theorem",
  "lexical_name": "weighted_integral_bounds",
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
  "slug": "weighted-integral-bounds--c8d6704b02919ecdef54e094",
  "source": {
    "blob": "a3debc7101743b93b2dec8d9f013aa0e950f4d2f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 62,
    "path": "GRWTSK/Analysis/Real/TentRationalCorrection.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c8d6704b02919ecdef54e094ca79b8f7bd560e5712949b1aca4df6352a76591e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/TentRationalCorrection.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:336277b2-cbec-1002-5ad1-01c010549823`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 62–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weighted_integral_bounds (x h : ℝ) (hh : 0 < h)
    (f : ℝ → ℝ) (hf : ContinuousOn f (Icc (x - h) (x + h)))
    (L U : ℝ) (hL : ∀ t ∈ Icc (x - h) (x + h), L ≤ f t)
    (hU : ∀ t ∈ Icc (x - h) (x + h), f t ≤ U) :
    L * h ≤ (∫ t in (x - h)..(x + h), tent x h t * f t) ∧
      (∫ t in (x - h)..(x + h), tent x h t * f t) ≤ U * h := by
  have hab : x - h ≤ x + h := by linarith
  have hw := (continuous_tent x h).intervalIntegrable (μ := MeasureTheory.volume) (x - h) (x + h)
  have hwf := ContinuousOn.intervalIntegrable_of_Icc (μ := MeasureTheory.volume) hab
    ((continuous_tent x h).continuousOn.mul hf)
  constructor
  · calc
      L * h = ∫ t in (x - h)..(x + h), tent x h t * L := by
        rw [intervalIntegral.integral_mul_const, integral_tent x h hh]
        ring
      _ ≤ _ := intervalIntegral.integral_mono_on hab (hw.mul_const L) hwf
        (fun t ht => mul_le_mul_of_nonneg_left (hL t ht) (tent_nonneg x h t))
  · calc
      _ ≤ ∫ t in (x - h)..(x + h), tent x h t * U :=
        intervalIntegral.integral_mono_on hab hwf (hw.mul_const U)
          (fun t ht => mul_le_mul_of_nonneg_left (hU t ht) (tent_nonneg x h t))
      _ = U * h := by rw [intervalIntegral.integral_mul_const, integral_tent x h hh]; ring

/-- Rational density associated with the negative even parameters; domain t>1. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/RealAnalysis/TentRationalCorrection.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Real/TentRationalCorrection.lean#L62).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a3debc7101743b93b2dec8d9f013aa0e950f4d2f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
