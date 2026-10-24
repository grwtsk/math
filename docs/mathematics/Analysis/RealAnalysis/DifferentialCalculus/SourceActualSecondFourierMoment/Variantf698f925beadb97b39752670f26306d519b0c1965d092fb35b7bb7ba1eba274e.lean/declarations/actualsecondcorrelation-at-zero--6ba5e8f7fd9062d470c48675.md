# actualSecondCorrelation_at_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2f17ddb9-d3ae-5d14-dc46-a3f61581ed5b",
  "kind": "theorem",
  "lexical_name": "actualSecondCorrelation_at_zero",
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
  "slug": "actualsecondcorrelation-at-zero--6ba5e8f7fd9062d470c48675",
  "source": {
    "blob": "17fe2cd8362b15d5f0144b120b158f76ea9157fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 106,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualSecondFourierMoment/Variantf698f925beadb97b39752670f26306d519b0c1965d092fb35b7bb7ba1eba274e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ba5e8f7fd9062d470c486752c93042803586f937d84f43f4e26b1b15c2299ba",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualSecondFourierMoment/Variantf698f925beadb97b39752670f26306d519b0c1965d092fb35b7bb7ba1eba274e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2f17ddb9-d3ae-5d14-dc46-a3f61581ed5b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualSecondCorrelation_at_zero {A : ℝ} (hA : 1 ≤ A) :
    deriv (deriv (fun t => (sourceCorrelation explicitSecondDerivative A t : ℂ))) 0 =
      -((∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x)^2 : ℝ) : ℂ) := by
  have hpos : 0 < A := by linarith
  have heq : deriv (fun t => (sourceCorrelation explicitSecondDerivative A t : ℂ)) =
      fun t : ℝ => ((deriv (sourceCorrelation explicitSecondDerivative A) t : ℝ) : ℂ) := by
    funext t
    exact (((sourceCorrelation_contDiff A hpos).differentiable (by norm_num) t).
      hasDerivAt.ofReal_comp).deriv
  rw [heq]
  have hd := (sourceCorrelation_deriv_hasDerivAt_integral hpos 0).ofReal_comp.deriv
  simpa only [sub_zero, ← pow_two, Complex.ofReal_neg] using hd

/-- Genuine C2 Fourier inversion gives the unchanged source derivative energy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualSecondFourierMoment/Variantf698f925beadb97b39752670f26306d519b0c1965d092fb35b7bb7ba1eba274e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualSecondFourierMoment/Variantf698f925beadb97b39752670f26306d519b0c1965d092fb35b7bb7ba1eba274e.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17fe2cd8362b15d5f0144b120b158f76ea9157fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
