# exponential_density_transport

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a7b224c7-f72c-f4a2-61b2-04f2cb8d2f2b",
  "kind": "theorem",
  "lexical_name": "exponential_density_transport",
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
  "slug": "exponential-density-transport--e44beabddc8451d23aad350a",
  "source": {
    "blob": "d021d1b5206e4dd266b46ebe895e7b2dd7f91c93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 103,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant000f5a0310b9b02b1833a92697dbf85d116cb76d3039f273612c77be1ebd7394.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e44beabddc8451d23aad350ab8b2b927da6ac725c0b4757ed42fdd64a44e60bf",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant000f5a0310b9b02b1833a92697dbf85d116cb76d3039f273612c77be1ebd7394.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a7b224c7-f72c-f4a2-61b2-04f2cb8d2f2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem exponential_density_transport (z : ℂ) (t : ℝ) :
    Real.exp t • ((shiftedActualChebyshev (Real.exp t) : ℂ) *
      ((Real.exp t : ℝ) : ℂ) ^ (-((z + 1 / 2) + 1))) =
      (actualXiTailTimeDensity t : ℂ) * Complex.exp (-z * (t : ℂ)) := by
  rw [Complex.cpow_def_of_ne_zero (Complex.ofReal_ne_zero.mpr (Real.exp_pos t).ne')]
  rw [← Complex.ofReal_log (Real.exp_pos t).le, Real.log_exp]
  simp only [real_smul, actualXiTailTimeDensity, ofReal_mul]
  rw [Complex.ofReal_exp, Complex.ofReal_exp]
  push_cast
  calc
    _ = (shiftedActualChebyshev (Real.exp t) : ℂ) *
        Complex.exp ((t : ℂ) + (t : ℂ) * (-((z + 1 / 2) + 1))) := by
      rw [Complex.exp_add]
      ring
    _ = _ := by
      rw [show (t : ℂ) + (t : ℂ) * (-((z + 1 / 2) + 1)) =
        -(t : ℂ) / 2 + -z * (t : ℂ) by ring, Complex.exp_add]
      ring

/-- Positive exponential substitution preserves the same actual closed-seven Mellin source. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant000f5a0310b9b02b1833a92697dbf85d116cb76d3039f273612c77be1ebd7394.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt06/Variant000f5a0310b9b02b1833a92697dbf85d116cb76d3039f273612c77be1ebd7394.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d021d1b5206e4dd266b46ebe895e7b2dd7f91c93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
