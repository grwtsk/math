# homogeneity_defect_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "044e66f2f06a74fbca6adea60d670ea746addb90",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 40,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/11/11ef346464d2944a4a6bf58f787f0f5521105100794fe8f1abaac2bae865b8b4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:96c4f80f-2fe9-74e1-fbfe-ec458374c2a4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:7f302ce8-e6d2-87a2-ef5d-cfde1a0fa216",
  "kind": "theorem",
  "lexical_name": "homogeneity_defect_eq",
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
  "slug": "homogeneity-defect-eq--b409212a9497e5d1f493b0ff",
  "source": {
    "blob": "044e66f2f06a74fbca6adea60d670ea746addb90",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 40,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/HomogeneityDefectAudit/Variant11ef346464d2944a4a6bf58f787f0f5521105100794fe8f1abaac2bae865b8b4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b409212a9497e5d1f493b0ff0ad2735a3324fff038eaa19705ad34287d76304b",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/HomogeneityDefectAudit/Variant11ef346464d2944a4a6bf58f787f0f5521105100794fe8f1abaac2bae865b8b4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7f302ce8-e6d2-87a2-ef5d-cfde1a0fa216`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem homogeneity_defect_eq (A q : ℝ) (hA : 1 ≤ A) (hq : 0 < q) :
    q * deriv (realThetaRemainder A) q + realThetaRemainder A q / 2 =
      correlationPrimeTheta A q + sourceRankOneCoefficient A / (2 * q) := by
  rw [(realThetaRemainder_hasDerivAt A q hA hq).deriv,
    realThetaRemainder, correlationPrimeTheta_eq]
  field_simp
  ring

/-- The negative primitive of C prime is the actual -H prime, kept as a signed difference. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/HomogeneityDefectAudit/Variant11ef346464d2944a4a6bf58f787f0f5521105100794fe8f1abaac2bae865b8b4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/HomogeneityDefectAudit/Variant11ef346464d2944a4a6bf58f787f0f5521105100794fe8f1abaac2bae865b8b4.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `044e66f2f06a74fbca6adea60d670ea746addb90` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
