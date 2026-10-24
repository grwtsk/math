# topologySurgeryObligations

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a5d7fef4fb236659450e7225121f25889d3a811e1ea76586fee15089c5bc4e20",
  "kind": "def",
  "lexical_name": "topologySurgeryObligations",
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
  "slug": "topologysurgeryobligations--21adf82503ea5b94c2dca47c",
  "source": {
    "blob": "6c1fdaf5208317ab5374bd2ecff9f35a820d7716",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 261,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TopologySurgery/Variant90d343c9cb91712a8c02e37508fe2b853d9f231a1148cf47d99e5ef2b9760d01.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:21adf82503ea5b94c2dca47c345436f0e7f1f64d88dbcc31d3f7a7473e36bc4c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TopologySurgery/Variant90d343c9cb91712a8c02e37508fe2b853d9f231a1148cf47d99e5ef2b9760d01.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a5d7fef4fb236659450e7225121f25889d3a811e1ea76586fee15089c5bc4e20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def topologySurgeryObligations : List TopologySurgeryObligation :=
  [ { code := tsExactCode
      statement := "Exact finite topology-to-surgery under an explicit domain capability"
      status := .conditionalCapability
      assumptions := ["finite carrier", "finite cover", "descent/comparison for global vanishing"]
      authority := .declarativeArtifact
      evidenceClass := .proseOrMetadata
      evidence := []
      blockers := ["domain capability not supplied generically"] },
    { code := tsRelativeCode
      statement := "Relative obstruction discharge at a finite surgery locus"
      status := .conditionalCapability
      assumptions := ["relative cocycle", "relative boundary"]
      authority := .declarativeArtifact
      evidenceClass := .proseOrMetadata
      evidence := []
      blockers := ["domain capability required"] },
    { code := tsApproxCode
      statement := "Approximate surgery with an accumulated error bound"
      status := .interfaceSpecified
      assumptions := ["explicit finite error budget"]
      authority := .declarativeArtifact
      evidenceClass := .proseOrMetadata
      evidence := []
      blockers := ["prototype error analysis required"] },
    { code := tsIteratedCode
      statement := "Repeated surgery with disjointness or overlap law"
      status := .conditionalCapability
      assumptions := ["pairwise interaction evidence"]
      authority := .declarativeArtifact
      evidenceClass := .proseOrMetadata
      evidence := []
      blockers := ["composition capability required"] },
    { code := tsLocalizationCode
      statement := "Generic obstruction localization"
      status := .openMathematics
      assumptions := []
      authority := .declarativeArtifact
      evidenceClass := .proseOrMetadata
      evidence := []
      blockers := ["no generic localization theorem submitted"] },
    { code := tsFlowOutcomeCode
      statement := "Finite flow returns an explicit bounded outcome"
      status := .interfaceSpecified
      assumptions := ["finite horizon"]
      authority := .declarativeArtifact
      evidenceClass := .proseOrMetadata
      evidence := []
      blockers := ["domain outcome construction required"] } ]

/-- The localization target is prominently retained as open mathematics. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TopologySurgery/Variant90d343c9cb91712a8c02e37508fe2b853d9f231a1148cf47d99e5ef2b9760d01.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TopologySurgery/Variant90d343c9cb91712a8c02e37508fe2b853d9f231a1148cf47d99e5ef2b9760d01.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6c1fdaf5208317ab5374bd2ecff9f35a820d7716` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
