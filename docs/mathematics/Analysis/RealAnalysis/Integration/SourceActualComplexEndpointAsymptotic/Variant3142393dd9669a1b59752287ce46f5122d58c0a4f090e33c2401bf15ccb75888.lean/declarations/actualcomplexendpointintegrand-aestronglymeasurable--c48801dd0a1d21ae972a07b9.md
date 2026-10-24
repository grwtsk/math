# actualComplexEndpointIntegrand_aestronglyMeasurable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c6b0cb61-cd44-02fa-0d26-fa86dd6e3d3f",
  "kind": "theorem",
  "lexical_name": "actualComplexEndpointIntegrand_aestronglyMeasurable",
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
  "slug": "actualcomplexendpointintegrand-aestronglymeasurable--c48801dd0a1d21ae972a07b9",
  "source": {
    "blob": "e6db26346785cc8a355a38ec4661d966aea9e018",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 70,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant3142393dd9669a1b59752287ce46f5122d58c0a4f090e33c2401bf15ccb75888.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c48801dd0a1d21ae972a07b978590ff4c76e243bbf736010b7061987dbf0c6d2",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant3142393dd9669a1b59752287ce46f5122d58c0a4f090e33c2401bf15ccb75888.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c6b0cb61-cd44-02fa-0d26-fa86dd6e3d3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualComplexEndpointIntegrand_aestronglyMeasurable (A : ℝ) (z : ℂ) :
    AEStronglyMeasurable (actualComplexEndpointIntegrand A z)
      (volume.restrict (Ioi 0)) := by
  have hp : AEStronglyMeasurable (endpointPolynomial A)
      (volume.restrict (Ioi 0)) := (endpointPolynomial_continuous A).aestronglyMeasurable
  have hi := hp.indicator (s := Icc 0 (2 * A)) measurableSet_Icc
  have hf : AEStronglyMeasurable (fun u : ℝ => (actualEndpointExtension A u : ℂ))
      (volume.restrict (Ioi 0)) := Complex.continuous_ofReal.comp_aestronglyMeasurable hi
  have hg : AEStronglyMeasurable (fun u : ℝ => Complex.exp (-z * (u : ℂ)))
      (volume.restrict (Ioi 0)) :=
    (by fun_prop : Continuous (fun u : ℝ => Complex.exp (-z * (u : ℂ)))).aestronglyMeasurable
  exact hf.mul hg

/-- Every actual moving-support integrand is genuinely integrable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant3142393dd9669a1b59752287ce46f5122d58c0a4f090e33c2401bf15ccb75888.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualComplexEndpointAsymptotic/Variant3142393dd9669a1b59752287ce46f5122d58c0a4f090e33c2401bf15ccb75888.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6db26346785cc8a355a38ec4661d966aea9e018` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
