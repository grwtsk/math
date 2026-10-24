# actualCriticalExponentialResponse_intervalIntegrable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:de6fe79c-8b6b-759c-fe13-936c67390949",
  "kind": "theorem",
  "lexical_name": "actualCriticalExponentialResponse_intervalIntegrable",
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
  "slug": "actualcriticalexponentialresponse-intervalintegrable--87a9bf5b0f137bb86a34c587",
  "source": {
    "blob": "899221591b3bd69a757d9e87df7587b6121396e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 54,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCriticalExponentialResponse/Variant479cfb845107f5dbee71aa2b178eb021ec92ff5fecb8080d8fd9520efd6f2ed8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:87a9bf5b0f137bb86a34c5879ea30601939561f68ca6ad02c8230e42147b330e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualCriticalExponentialResponse/Variant479cfb845107f5dbee71aa2b178eb021ec92ff5fecb8080d8fd9520efd6f2ed8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:de6fe79c-8b6b-759c-fe13-936c67390949`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCriticalExponentialResponse_intervalIntegrable {A : ℝ} (hA : 0 < A)
    (z : ℂ) :
    IntervalIntegrable (fun t => Complex.exp (z * (t : ℂ)) *
      ((sourceCorrelation explicitSecondDerivative A t : ℂ) / 4 +
        ((deriv (sourceCorrelation explicitSecondDerivative A) t : ℝ) : ℂ) / 2))
      volume 0 (2 * A) := by
  have he : Continuous (fun t : ℝ => Complex.exp (z * (t : ℂ))) := by fun_prop
  exact (he.mul ((correlation_continuous hA).div_const 4 |>.add
    ((first_continuous hA).div_const 2))).intervalIntegrable _ _

/-- The original positive-half derivative response retains its exact unit lower trace. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualCriticalExponentialResponse/Variant479cfb845107f5dbee71aa2b178eb021ec92ff5fecb8080d8fd9520efd6f2ed8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCriticalExponentialResponse/Variant479cfb845107f5dbee71aa2b178eb021ec92ff5fecb8080d8fd9520efd6f2ed8.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `899221591b3bd69a757d9e87df7587b6121396e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
