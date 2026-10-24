# bernoulli_corrected_second

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8a4d7ad7-1374-374f-ad9c-eeb0811eebd1",
  "kind": "theorem",
  "lexical_name": "bernoulli_corrected_second",
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
  "slug": "bernoulli-corrected-second--0c80da523aa0ed89a765da45",
  "source": {
    "blob": "740a7b7703513a3b3e089c0728c5e1d54a9bcfe8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 141,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant846abc273f34b99e9ab28ad589f6ecbf340dd279bd4225a51b3dcc53a802f2ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0c80da523aa0ed89a765da4520ef2b0a61dfde610e7a8832ffbb9d0fbea4d543",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant846abc273f34b99e9ab28ad589f6ecbf340dd279bd4225a51b3dcc53a802f2ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8a4d7ad7-1374-374f-ad9c-eeb0811eebd1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 141–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bernoulli_corrected_second (u : ℝ) (hu : 0 < u) :
    deriv (deriv logOnePlus) u -
      deriv bernoulliPotential (Real.log u) * (-1 / u ^ 2) =
      1 / (u * (1 + u) ^ 2) := by
  rw [logOnePlus_second u hu, bernoulli_chart_term u hu]
  have hu0 : u ≠ 0 := ne_of_gt hu
  have hsum : 1 + u ≠ 0 := by positivity
  field_simp [hu0, hsum] <;> ring

/-- This fixture separates the sign of a raw Hessian from that of its metric pullback. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant846abc273f34b99e9ab28ad589f6ecbf340dd279bd4225a51b3dcc53a802f2ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ScalarChartCorrection/Variant846abc273f34b99e9ab28ad589f6ecbf340dd279bd4225a51b3dcc53a802f2ee.lean#L141).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `740a7b7703513a3b3e089c0728c5e1d54a9bcfe8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
