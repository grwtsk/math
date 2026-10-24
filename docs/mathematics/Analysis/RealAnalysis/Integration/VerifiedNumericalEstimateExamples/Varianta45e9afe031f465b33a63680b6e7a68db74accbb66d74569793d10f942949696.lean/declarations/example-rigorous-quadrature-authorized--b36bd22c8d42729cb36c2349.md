# example_rigorous_quadrature_authorized

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e352c247-5bd0-dd8e-9c4f-e0bebc8d2d36",
  "kind": "theorem",
  "lexical_name": "example_rigorous_quadrature_authorized",
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
  "slug": "example-rigorous-quadrature-authorized--b36bd22c8d42729cb36c2349",
  "source": {
    "blob": "6d0674ef52b1848fcf3fe8186df43fe26d3469ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 391,
    "line": 385,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/VerifiedNumericalEstimateExamples/Varianta45e9afe031f465b33a63680b6e7a68db74accbb66d74569793d10f942949696.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b36bd22c8d42729cb36c2349b5522ceb67a2ac9a3dcee39d7bd46af260c8f2ac",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/VerifiedNumericalEstimateExamples/Varianta45e9afe031f465b33a63680b6e7a68db74accbb66d74569793d10f942949696.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e352c247-5bd0-dd8e-9c4f-e0bebc8d2d36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 385–391.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem example_rigorous_quadrature_authorized :
    exampleRigorousQuadratureAuthority.schema.enclosureSound ∧
      exampleRigorousQuadratureAuthority.schema.theoremInterpretation ∧
      exampleRigorousQuadratureAuthority.rigorousQuadratureSound :=
  VerifiedNumericalEstimate.rigorous_quadrature_authorized
    exampleRigorousQuadratureAuthority

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/VerifiedNumericalEstimateExamples/Varianta45e9afe031f465b33a63680b6e7a68db74accbb66d74569793d10f942949696.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/VerifiedNumericalEstimateExamples/Varianta45e9afe031f465b33a63680b6e7a68db74accbb66d74569793d10f942949696.lean#L385).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d0674ef52b1848fcf3fe8186df43fe26d3469ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
