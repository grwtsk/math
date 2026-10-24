# sourceCorrelation_samplingTailZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9aa74e7f-9321-4d5e-e433-becf0f8ef80d",
  "kind": "theorem",
  "lexical_name": "sourceCorrelation_samplingTailZero",
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
  "slug": "sourcecorrelation-samplingtailzero--66648e2c2a95115e92ba9891",
  "source": {
    "blob": "4a3ce924ae399b2ba2a33e5dbe69ace579e57055",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 278,
    "line": 259,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant0735889566df0f3b188b771178062fd9baa02e2d718d95cb4745743445331400.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:66648e2c2a95115e92ba9891c4bbb43fe1a91bd5811d59d738861739ba0fa924",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant0735889566df0f3b188b771178062fd9baa02e2d718d95cb4745743445331400.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9aa74e7f-9321-4d5e-e433-becf0f8ef80d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 259–278.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceCorrelation_samplingTailZero (A x : ℝ) (hA : 1 ≤ A) (hx : 1 ≤ x) :
    SamplingTailZero (sourceCorrelation explicitSecondDerivative A) x
      (sourceKernelCutoff A) := by
  intro u hu
  have hxu : EstimateMertensAbel.sourceUpper A < u :=
    (Nat.lt_floor_add_one _).trans hu
  have hu0 : 0 < u := (Real.exp_pos (2*A)).trans hxu
  have hlogu : 2*A ≤ Real.log u :=
    (Real.le_log_iff_exp_le hu0).2 hxu.le
  have hlogx : 0 ≤ Real.log x := Real.log_nonneg hx
  have harg : 2*A ≤ |Real.log x + Real.log u| := by
    calc
      2*A ≤ Real.log x + Real.log u := by linarith
      _ ≤ |Real.log x + Real.log u| := le_abs_self _
  have hz := sourceCorrelation_eq_zero_of_two_mul_le_abs A
    (Real.log x + Real.log u) (by linarith) harg
  simp only [logSamplingTerm, hz, mul_zero]

/-- Unconditional source-specific bound for the complete signed finite Möbius
kernel, uniform over every real `A ≥ 1` and real kernel argument `x ≥ 1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant0735889566df0f3b188b771178062fd9baa02e2d718d95cb4745743445331400.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variant0735889566df0f3b188b771178062fd9baa02e2d718d95cb4745743445331400.lean#L259).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a3ce924ae399b2ba2a33e5dbe69ace579e57055` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
