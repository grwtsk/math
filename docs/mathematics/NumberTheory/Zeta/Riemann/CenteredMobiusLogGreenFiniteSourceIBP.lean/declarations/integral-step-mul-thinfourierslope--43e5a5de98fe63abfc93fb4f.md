# integral_step_mul_thinFourierSlope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8cb728b8-03e7-3002-ea3f-760215950660",
  "kind": "theorem",
  "lexical_name": "integral_step_mul_thinFourierSlope",
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
  "slug": "integral-step-mul-thinfourierslope--43e5a5de98fe63abfc93fb4f",
  "source": {
    "blob": "54a21778cccb46f7155d335ce31e3628953475a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 36,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFiniteSourceIBP.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:43e5a5de98fe63abfc93fb4fbc425eca792c6761a8acef016105cc52fbb86685",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFiniteSourceIBP.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8cb728b8-03e7-3002-ea3f-760215950660`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_step_mul_thinFourierSlope
    {k : ℤ} (hk : k ≠ 0)
    {r : ℝ} (hr0 : 0 ≤ r) (hr1 : r ≤ 1) :
    (∫ t in (0 : ℝ)..1,
      (thinHistoricalStep r t : ℂ) * thinFourierSlope k t) =
      - fourierModeValue k r := by
  unfold thinHistoricalStep
  rw [intervalIntegral.integral_indicator]
  · rw [← intervalIntegral.integral_of_le hr1]
    have hFTC :=
      intervalIntegral.integral_eq_sub_of_hasDerivAt
        (fun t ht => fourierModeValue_hasDerivAt_thin hk t)
        ((fourierModeSlope_continuous k).intervalIntegrable r 1)
    simpa [thinFourierSlope] using hFTC
  · exact measurableSet_Ici

/-- Logarithmic background integration by parts. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFiniteSourceIBP.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFiniteSourceIBP.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `54a21778cccb46f7155d335ce31e3628953475a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
