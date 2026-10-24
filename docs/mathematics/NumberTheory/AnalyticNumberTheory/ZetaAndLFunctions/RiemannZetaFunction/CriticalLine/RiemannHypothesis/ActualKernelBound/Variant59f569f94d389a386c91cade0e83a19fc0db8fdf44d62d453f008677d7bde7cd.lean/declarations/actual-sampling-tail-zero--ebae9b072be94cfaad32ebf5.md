# actual_sampling_tail_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c73d42d0-c8e1-1b40-b570-20a309564a34",
  "kind": "theorem",
  "lexical_name": "actual_sampling_tail_zero",
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
  "slug": "actual-sampling-tail-zero--ebae9b072be94cfaad32ebf5",
  "source": {
    "blob": "5481348dd7e04e22da4bde8ac32b6992c5f616de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 31,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualKernelBound/Variant59f569f94d389a386c91cade0e83a19fc0db8fdf44d62d453f008677d7bde7cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ebae9b072be94cfaad32ebf5a1afbc0f6e9b8ab34d9bf1e090867833f1cc9e5f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualKernelBound/Variant59f569f94d389a386c91cade0e83a19fc0db8fdf44d62d453f008677d7bde7cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c73d42d0-c8e1-1b40-b570-20a309564a34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_sampling_tail_zero {A x : ℝ} (hA : 1 ≤ A) (hx : 1 ≤ x) :
    SamplingTailZero (sourceCorrelation Realization.explicitSecondDerivative A)
      x (sourceKernelCutoff A) := by
  intro u hu
  have huUpper : sourceUpper A < u :=
    (Nat.lt_floor_add_one (sourceUpper A)).trans hu
  have hu0 : 0 < u := (Real.exp_pos (2 * A)).trans huUpper
  have hlogu : 2 * A < Real.log u := by
    rw [Real.lt_log_iff_exp_lt hu0]
    exact huUpper
  have hlogx : 0 ≤ Real.log x := Real.log_nonneg hx
  have hzero := CorrelationRegularity.sourceCorrelation_eq_zero_of_two_mul_le_abs
    A (Real.log x + Real.log u) (by linarith)
    (by linarith [le_abs_self (Real.log x + Real.log u)])
  simp [logSamplingTerm, hzero]

/-- Uniform actual-source kernel bound with the scale-sensitive derivative term. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualKernelBound/Variant59f569f94d389a386c91cade0e83a19fc0db8fdf44d62d453f008677d7bde7cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualKernelBound/Variant59f569f94d389a386c91cade0e83a19fc0db8fdf44d62d453f008677d7bde7cd.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5481348dd7e04e22da4bde8ac32b6992c5f616de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
