# primitiveCorrelationZero_third_deriv_eq_normalizedOverlapProfile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d4c8347d-ce69-d6d9-afa8-91583ce99b46",
  "kind": "theorem",
  "lexical_name": "primitiveCorrelationZero_third_deriv_eq_normalizedOverlapProfile",
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
  "slug": "primitivecorrelationzero-third-deriv-eq-normalizedoverlapprofile--f2ec7f369e5b194de87242c2",
  "source": {
    "blob": "5fed39e72b5cec5cba67258f83b1c0a157e4b874",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 34,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant567f1ac4c81298e90b157b4ad8265bf5cfd242d17434694dc533ea7fe800b8cc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f2ec7f369e5b194de87242c2548a01deb1c35a6b93320a571a0678e61f60a1c4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant567f1ac4c81298e90b157b4ad8265bf5cfd242d17434694dc533ea7fe800b8cc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4c8347d-ce69-d6d9-afa8-91583ce99b46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem primitiveCorrelationZero_third_deriv_eq_normalizedOverlapProfile
    {A : ℝ} (hA : 0 < A) :
    EqOn (deriv (deriv (deriv (primitiveCorrelationZero A))))
      (deriv (deriv (deriv (normalizedOverlapProfile A)))) (Icc 0 (2 * A)) := by
  apply deriv_eq_on_closed (by linarith)
  · have hF2 : ContDiff ℝ 2 (deriv (deriv (primitiveCorrelationZero A))) :=
      (primitiveCorrelationZero_contDiff_four hA).deriv'.deriv'
    exact hF2.differentiable (by norm_num)
  · have hG : ContDiff ℝ 3 (normalizedOverlapProfile A) := by
      unfold normalizedOverlapProfile overlapProfile overlapP0
      fun_prop
    have hG2 : ContDiff ℝ 1 (deriv (deriv (normalizedOverlapProfile A))) :=
      hG.deriv'.deriv'
    exact hG2.differentiable (by norm_num)
  · exact primitiveCorrelationZero_second_deriv_eq_normalizedOverlapProfile hA

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant567f1ac4c81298e90b157b4ad8265bf5cfd242d17434694dc533ea7fe800b8cc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant567f1ac4c81298e90b157b4ad8265bf5cfd242d17434694dc533ea7fe800b8cc.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fed39e72b5cec5cba67258f83b1c0a157e4b874` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
