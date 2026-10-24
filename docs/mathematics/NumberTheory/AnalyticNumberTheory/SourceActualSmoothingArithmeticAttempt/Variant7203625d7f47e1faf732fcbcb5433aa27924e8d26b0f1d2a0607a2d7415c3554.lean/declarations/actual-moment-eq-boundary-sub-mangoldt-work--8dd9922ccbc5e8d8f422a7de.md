# actual_moment_eq_boundary_sub_Mangoldt_work

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:19ecd5bf-3512-c25d-ba1d-c292c7a33364",
  "kind": "theorem",
  "lexical_name": "actual_moment_eq_boundary_sub_Mangoldt_work",
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
  "slug": "actual-moment-eq-boundary-sub-mangoldt-work--8dd9922ccbc5e8d8f422a7de",
  "source": {
    "blob": "f5cadc507e88165965924aa6c7b51c2e3f36f80c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 79,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/SourceActualSmoothingArithmeticAttempt/Variant7203625d7f47e1faf732fcbcb5433aa27924e8d26b0f1d2a0607a2d7415c3554.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8dd9922ccbc5e8d8f422a7dea61eacb1ffe502abe59a415321235418dfcaf086",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/SourceActualSmoothingArithmeticAttempt/Variant7203625d7f47e1faf732fcbcb5433aa27924e8d26b0f1d2a0607a2d7415c3554.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19ecd5bf-3512-c25d-ba1d-c292c7a33364`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_moment_eq_boundary_sub_Mangoldt_work (A : ℝ) (hA : 1 ≤ A) :
    actualClosedXiSignedMoment A = firstAtomHeadWork A +
      Real.eulerMascheroniConstant * criticalPrimeTest A (Real.log 2) -
        criticalMangoldtWork A := by
  rw [actual_moment_eq_residual_add_companion A hA,
    mertensResidual_eq_continuous_sub_Mangoldt_work A hA]
  unfold actualSmoothingCompanion
  ring

/-- Uniform analytic control does not estimate the remaining signed arithmetic work. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/AnalyticNumberTheory/SourceActualSmoothingArithmeticAttempt/Variant7203625d7f47e1faf732fcbcb5433aa27924e8d26b0f1d2a0607a2d7415c3554.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/SourceActualSmoothingArithmeticAttempt/Variant7203625d7f47e1faf732fcbcb5433aa27924e8d26b0f1d2a0607a2d7415c3554.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5cadc507e88165965924aa6c7b51c2e3f36f80c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
