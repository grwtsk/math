# boundaryWorkKernel_eq_source

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9ff81099-b59d-521e-9a66-7d1fd77768f2",
  "kind": "theorem",
  "lexical_name": "boundaryWorkKernel_eq_source",
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
  "slug": "boundaryworkkernel-eq-source--c56a87d904f630d9e2a4ce47",
  "source": {
    "blob": "3daa8733b4de0c8f9a17cc512675df9a99841ea3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 168,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFirstPoleMoment/Variantff34ce592fa9af9b09394d8e32b2167bcf02e8add82cdda622bbbffdd3f331e0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c56a87d904f630d9e2a4ce4738a46b84799b5ef88a431c59ea90e8772df2664a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFirstPoleMoment/Variantff34ce592fa9af9b09394d8e32b2167bcf02e8add82cdda622bbbffdd3f331e0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9ff81099-b59d-521e-9a66-7d1fd77768f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem boundaryWorkKernel_eq_source {A : ℝ} (hA : 1 ≤ A) (y : ℝ) :
    boundaryWorkKernel A y = Real.exp (-y/2) * A^9 *
      (sourceCorrelation explicitSecondDerivative A (2*A-y)/2 +
        deriv (sourceCorrelation explicitSecondDerivative A) (2*A-y)) := by
  unfold boundaryWorkKernel
  rw [criticalPrimeTest_deriv A (2*A-y) (by linarith)]
  have he : Real.exp (-A)*Real.exp ((2*A-y)/2) = Real.exp (-y/2) := by
    rw [← Real.exp_add]
    congr 1
    ring
  calc
    _ = (Real.exp (-A)*Real.exp ((2*A-y)/2))*A^9*
      (sourceCorrelation explicitSecondDerivative A (2*A-y)/2 +
        deriv (sourceCorrelation explicitSecondDerivative A) (2*A-y)) := by ring
    _ = _ := by rw [he]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFirstPoleMoment/Variantff34ce592fa9af9b09394d8e32b2167bcf02e8add82cdda622bbbffdd3f331e0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFirstPoleMoment/Variantff34ce592fa9af9b09394d8e32b2167bcf02e8add82cdda622bbbffdd3f331e0.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3daa8733b4de0c8f9a17cc512675df9a99841ea3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
