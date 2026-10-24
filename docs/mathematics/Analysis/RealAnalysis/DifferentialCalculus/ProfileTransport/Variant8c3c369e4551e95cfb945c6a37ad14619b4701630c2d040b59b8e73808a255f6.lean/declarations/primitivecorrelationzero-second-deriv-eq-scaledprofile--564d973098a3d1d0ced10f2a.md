# primitiveCorrelationZero_second_deriv_eq_scaledProfile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "72aff4ace2fc8398f396707993d7e96c6fbf8814",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 63,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8c/8c3c369e4551e95cfb945c6a37ad14619b4701630c2d040b59b8e73808a255f6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:09f8f4b8-08a2-6ac2-3724-cceb7ef5f4b8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:32812f64-2f90-c1d6-1d61-3df9b26f9503",
  "kind": "theorem",
  "lexical_name": "primitiveCorrelationZero_second_deriv_eq_scaledProfile",
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
  "slug": "primitivecorrelationzero-second-deriv-eq-scaledprofile--564d973098a3d1d0ced10f2a",
  "source": {
    "blob": "72aff4ace2fc8398f396707993d7e96c6fbf8814",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 63,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ProfileTransport/Variant8c3c369e4551e95cfb945c6a37ad14619b4701630c2d040b59b8e73808a255f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:564d973098a3d1d0ced10f2aaa9029b37081e27087f5ea2ad3dce521e4a851be",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ProfileTransport/Variant8c3c369e4551e95cfb945c6a37ad14619b4701630c2d040b59b8e73808a255f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:32812f64-2f90-c1d6-1d61-3df9b26f9503`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–76.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem primitiveCorrelationZero_second_deriv_eq_scaledProfile {A : ℝ} (hA : 0 < A) :
    EqOn (deriv (deriv (primitiveCorrelationZero A))) (deriv (deriv (scaledProfile A)))
      (Icc 0 (2 * A)) := by
  apply deriv_eq_on_closed (by linarith)
  · have hF1 : ContDiff ℝ 3 (deriv (primitiveCorrelationZero A)) :=
      (primitiveCorrelationZero_contDiff_four hA).deriv'
    exact hF1.differentiable (by norm_num)
  · have hG : ContDiff ℝ 2 (scaledProfile A) := by
      unfold scaledProfile overlapProfile overlapP0
      fun_prop
    have hG1 : ContDiff ℝ 1 (deriv (scaledProfile A)) := hG.deriv'
    exact hG1.differentiable (by norm_num)
  · exact primitiveCorrelationZero_deriv_eq_scaledProfile hA

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ProfileTransport/Variant8c3c369e4551e95cfb945c6a37ad14619b4701630c2d040b59b8e73808a255f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ProfileTransport/Variant8c3c369e4551e95cfb945c6a37ad14619b4701630c2d040b59b8e73808a255f6.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72aff4ace2fc8398f396707993d7e96c6fbf8814` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
