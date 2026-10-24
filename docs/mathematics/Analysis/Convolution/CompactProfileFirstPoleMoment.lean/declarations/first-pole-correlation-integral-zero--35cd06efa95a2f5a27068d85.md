# first_pole_correlation_integral_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ccc50dc4-3a34-94ef-9cdb-96033c6106b1",
  "kind": "theorem",
  "lexical_name": "first_pole_correlation_integral_zero",
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
  "slug": "first-pole-correlation-integral-zero--35cd06efa95a2f5a27068d85",
  "source": {
    "blob": "74baec6042165051d94875b6c1b449de453f6f76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 74,
    "path": "GRWTSK/Analysis/Convolution/CompactProfileFirstPoleMoment.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35cd06efa95a2f5a27068d858f5cb0971a81d7eed43169e15cffb7114a7b3bcb",
  "verification": {
    "reference": "docs/verification/Analysis/Convolution/CompactProfileFirstPoleMoment.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ccc50dc4-3a34-94ef-9cdb-96033c6106b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem first_pole_correlation_integral_zero {A c : ℝ} (hA : 0 < A)
    (pole : c ^ 2 = 1 / 4) :
    (∫ t : ℝ, t * Real.exp (c * t) * correlation A t) = 0 := by
  let f : ℝ → ℝ := fun x ↦ Real.exp (c * x) * normalizedSource A x
  let g : ℝ → ℝ := fun x ↦ Real.exp (c * x) * normalizedSource A (-x)
  have hf : Integrable f := by
    convert SourceDilation.normalized_source_exponential_integrable hA c using 1
    funext x
    dsimp [f]
    ring
  have hg : Integrable g := CorrelationMoment.reflected_weight_integrable
    (normalizedSource A) c
    (by
      convert SourceDilation.normalized_source_exponential_integrable hA (-c) using 1
      funext x
      ring)
  have hxf : Integrable (fun x : ℝ ↦ x * f x) :=
    normalized_source_first_exponential_integrable hA c
  have hxg : Integrable (fun x : ℝ ↦ x * g x) := by
    convert (normalized_source_first_exponential_integrable hA (-c)).comp_neg.neg using 1
    funext x
    dsimp [g]
    rw [neg_mul_neg]
    ring
  have weightedZero (d : ℝ) (admitted : d ^ 2 = 1 / 4) :
      (∫ x : ℝ, Real.exp (d * x) * normalizedSource A x) = 0 := by
    calc
      _ = ∫ x : ℝ, normalizedSource A x * Real.exp (d * x) := by
        apply integral_congr_ae
        filter_upwards [] with x
        ring
      _ = 0 := SourceDilation.normalized_source_exponential_integral_zero hA admitted
  have zeroF : (∫ x : ℝ, f x) = 0 := weightedZero c pole
  have zeroG : (∫ x : ℝ, g x) = 0 := by
    have reflected := integral_neg_eq_self
      (fun x : ℝ ↦ Real.exp ((-c) * x) * normalizedSource A x) volume
    calc
      _ = ∫ x : ℝ, Real.exp ((-c) * x) * normalizedSource A x := by
        simpa only [neg_mul_neg] using reflected
      _ = 0 := weightedZero (-c) (by nlinarith [pole])
  calc
    (∫ t : ℝ, t * Real.exp (c * t) * correlation A t) =
        ∫ t : ℝ, t * (f ⋆ g) t := by
      apply integral_congr_ae
      filter_upwards [] with t
      calc
        _ = t * (Real.exp (c * t) * correlation A t) := by ring
        _ = t * (f ⋆ g) t := by
          exact congrArg (fun z : ℝ ↦ t * z)
            (CorrelationMoment.weighted_correlation_eq_convolution (normalizedSource A) c t)
    _ = 0 := FirstMomentConvolution.first_moment_convolution_integral_zero
      hf hg hxf hxg zeroF zeroG

end

end GRWTSK.Analysis.Convolution.CompactProfileFirstPoleMoment
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Convolution/CompactProfileFirstPoleMoment.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Convolution/CompactProfileFirstPoleMoment.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74baec6042165051d94875b6c1b449de453f6f76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
