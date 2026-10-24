# actual_form_eq_source_scalar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8f56374e-b453-f333-9cbb-5cc30c1a7829",
  "kind": "theorem",
  "lexical_name": "actual_form_eq_source_scalar",
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
  "slug": "actual-form-eq-source-scalar--356014d36d3285cafa67c552",
  "source": {
    "blob": "ddba167a7801a6436685e609bc62222a72d50494",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 101,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/BridgeAdmissibility/Varianta092b31d1dfe84ee6807910ec2b92c62b9990703ecb25b3cf3c207a5d84059e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:356014d36d3285cafa67c552a49ea1c139f80dae788eccc94573251a7aa2cae6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/BridgeAdmissibility/Varianta092b31d1dfe84ee6807910ec2b92c62b9990703ecb25b3cf3c207a5d84059e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8f56374e-b453-f333-9cbb-5cc30c1a7829`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_form_eq_source_scalar (A : ℝ) (hA : 1 ≤ A) :
    realArithmeticForm A (normalizedTest explicitSecondDerivative A) =
      sourceQuadraticValue explicitSecondDerivative A := by
  rw [realArithmeticForm, actual_pole_contribution_zero A hA, add_zero]
  rfl

/-- The minimal missing domain component is explicit, rather than hidden in a realization record. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/BridgeAdmissibility/Varianta092b31d1dfe84ee6807910ec2b92c62b9990703ecb25b3cf3c207a5d84059e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/BridgeAdmissibility/Varianta092b31d1dfe84ee6807910ec2b92c62b9990703ecb25b3cf3c207a5d84059e4.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ddba167a7801a6436685e609bc62222a72d50494` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
