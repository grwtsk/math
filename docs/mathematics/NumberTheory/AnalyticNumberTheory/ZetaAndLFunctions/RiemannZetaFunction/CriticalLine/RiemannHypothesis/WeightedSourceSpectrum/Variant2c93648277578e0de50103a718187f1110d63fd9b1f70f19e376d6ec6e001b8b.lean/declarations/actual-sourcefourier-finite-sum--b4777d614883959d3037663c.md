# actual_sourceFourier_finite_sum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b97c1b13-ca94-2af6-b071-1693ce834aca",
  "kind": "theorem",
  "lexical_name": "actual_sourceFourier_finite_sum",
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
  "slug": "actual-sourcefourier-finite-sum--b4777d614883959d3037663c",
  "source": {
    "blob": "a564b9f8af496ba45163930b1628a757d36243d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 70,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceSpectrum/Variant2c93648277578e0de50103a718187f1110d63fd9b1f70f19e376d6ec6e001b8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b4777d614883959d3037663c843100a6126d06de98ee4d5f8c7a66b5bded88f5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceSpectrum/Variant2c93648277578e0de50103a718187f1110d63fd9b1f70f19e376d6ec6e001b8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b97c1b13-ca94-2af6-b071-1693ce834aca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_sourceFourier_finite_sum {A : ℝ} (hA : 1 ≤ A) (t ξ : ℝ) :
    sourceFourier (sourceVector A t) ξ = ∑ n ∈ integerInventory A,
      (coefficient A t n : ℂ) *
        sourceFourier (fun x ↦ prescribedSource A (x - Real.log n)) ξ := by
  have heq : (fun x : ℝ ↦ (sourceVector A t x : ℂ) *
      Complex.exp (Complex.I * (ξ : ℂ) * (x : ℂ))) =
      fun x ↦ ∑ n ∈ integerInventory A, (coefficient A t n : ℂ) *
        ((prescribedSource A (x - Real.log n) : ℂ) *
          Complex.exp (Complex.I * (ξ : ℂ) * (x : ℂ))) := by
    funext x
    unfold sourceVector
    push_cast
    rw [Finset.sum_mul]
    apply Finset.sum_congr rfl
    intro n _
    ring
  rw [sourceFourier, heq, integral_finsetSum]
  · simp only [integral_const_mul, sourceFourier]
  · intro n _
    exact (source_phase_integrable hA (Real.log n) ξ).const_mul _

/-- The written n^(-i ξ) row is represented by its exact logarithmic phase. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceSpectrum/Variant2c93648277578e0de50103a718187f1110d63fd9b1f70f19e376d6ec6e001b8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/WeightedSourceSpectrum/Variant2c93648277578e0de50103a718187f1110d63fd9b1f70f19e376d6ec6e001b8b.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a564b9f8af496ba45163930b1628a757d36243d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
