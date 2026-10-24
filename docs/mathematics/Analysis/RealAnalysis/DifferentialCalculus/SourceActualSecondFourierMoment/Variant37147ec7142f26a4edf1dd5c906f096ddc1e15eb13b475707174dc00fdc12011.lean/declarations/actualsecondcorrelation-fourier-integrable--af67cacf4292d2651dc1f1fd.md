# actualSecondCorrelation_fourier_integrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:21d960eb-021e-b824-9b08-148dc0c85c5b",
  "kind": "theorem",
  "lexical_name": "actualSecondCorrelation_fourier_integrable",
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
  "slug": "actualsecondcorrelation-fourier-integrable--af67cacf4292d2651dc1f1fd",
  "source": {
    "blob": "c199b177a0b8a7a8c1550481eb0dc9a3dc14290c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 30,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualSecondFourierMoment/Variant37147ec7142f26a4edf1dd5c906f096ddc1e15eb13b475707174dc00fdc12011.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:af67cacf4292d2651dc1f1fd9139c44b34bc344cec143897041e145eaf584712",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualSecondFourierMoment/Variant37147ec7142f26a4edf1dd5c906f096ddc1e15eb13b475707174dc00fdc12011.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21d960eb-021e-b824-9b08-148dc0c85c5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualSecondCorrelation_fourier_integrable {A : ℝ} (hA : 1 ≤ A) :
    Integrable (𝓕 (deriv (deriv
      (fun t => (sourceCorrelation explicitSecondDerivative A t : ℂ))))) := by
  have h4 := actualCorrelationComplex_contDiff_four hA
  have h3 : ContDiff ℝ 3 (deriv
      (fun t => (sourceCorrelation explicitSecondDerivative A t : ℂ))) := h4.deriv'
  have h2 : ContDiff ℝ 2 (deriv (deriv
      (fun t => (sourceCorrelation explicitSecondDerivative A t : ℂ)))) := h3.deriv'
  have hs : HasCompactSupport (fun t => (sourceCorrelation explicitSecondDerivative A t : ℂ)) :=
    (sourceCorrelation_hasCompactSupport A (by linarith)).comp_left
      (g := Complex.ofReal) rfl
  exact Zeta23.EF.integrable_fourier_of_contDiff_two h2 hs.deriv.deriv

/-- Two Fourier derivative identities retain the ordinary genuine correlation square energy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualSecondFourierMoment/Variant37147ec7142f26a4edf1dd5c906f096ddc1e15eb13b475707174dc00fdc12011.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualSecondFourierMoment/Variant37147ec7142f26a4edf1dd5c906f096ddc1e15eb13b475707174dc00fdc12011.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c199b177a0b8a7a8c1550481eb0dc9a3dc14290c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
