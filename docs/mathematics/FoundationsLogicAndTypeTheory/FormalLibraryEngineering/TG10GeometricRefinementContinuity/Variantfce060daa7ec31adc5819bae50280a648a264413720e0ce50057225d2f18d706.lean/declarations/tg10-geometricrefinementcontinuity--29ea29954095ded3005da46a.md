# tg10_geometricRefinementContinuity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ccb0dc00ede45883e43b78d395ec5d3dab972129",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 11,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fce060daa7ec31adc5819bae50280a648a264413720e0ce50057225d2f18d706.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a6f52fb8-d419-00ea-5b4b-386f2fa8a647",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c07cc652-aad0-c610-cf8b-d7df2a3a2dac",
  "kind": "theorem",
  "lexical_name": "tg10_geometricRefinementContinuity",
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
  "slug": "tg10-geometricrefinementcontinuity--29ea29954095ded3005da46a",
  "source": {
    "blob": "ccb0dc00ede45883e43b78d395ec5d3dab972129",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 23,
    "line": 11,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TG10GeometricRefinementContinuity/Variantfce060daa7ec31adc5819bae50280a648a264413720e0ce50057225d2f18d706.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29ea29954095ded3005da46aec59d61701ef8e90c9c614da1a2fe0fff9dc77a4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TG10GeometricRefinementContinuity/Variantfce060daa7ec31adc5819bae50280a648a264413720e0ce50057225d2f18d706.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c07cc652-aad0-c610-cf8b-d7df2a3a2dac`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 11–23.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tg10_geometricRefinementContinuity
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    {I : ClosedInterval.{uInterval}}
    {S1 : Sphere1.{u1}} {S2 : Sphere2.{u2}} {S3 : Sphere3.{u3}}
    {Stage : Type uStage}
    (W : TopologicalGraphWitnessPackage.{
      uVertex, uEdge, uInterval, u1, u2, u3, uStage, uPoint}
      G I S1 S2 S3 Stage) : TG10Claim W := by
  intro next prev h
  exact W.refinement.restrictContinuous h

end FCRS.ControlledSpherical.TopologicalTheorems
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TG10GeometricRefinementContinuity/Variantfce060daa7ec31adc5819bae50280a648a264413720e0ce50057225d2f18d706.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TG10GeometricRefinementContinuity/Variantfce060daa7ec31adc5819bae50280a648a264413720e0ce50057225d2f18d706.lean#L11).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ccb0dc00ede45883e43b78d395ec5d3dab972129` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
