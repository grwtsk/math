# CertifiedResidueSplit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ad30433cbf122a8eedf4028050199261c838773417dd9b1a9de59d81ad034669",
  "kind": "structure",
  "lexical_name": "CertifiedResidueSplit",
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
  "slug": "certifiedresiduesplit--d8868af59ebbde957fd4114a",
  "source": {
    "blob": "4d8a823b2050b5d420a9b51696781fa094ac3399",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 113,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ResidueClassification/Variant880368be85fbbdb4f57ecdcf1679a6ed5157d34494b501fc0dcc28d97f20acce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d8868af59ebbde957fd4114a68d63f3dfb1e4bec01339f755ed2414d3ab452c5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ResidueClassification/Variant880368be85fbbdb4f57ecdcf1679a6ed5157d34494b501fc0dcc28d97f20acce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ad30433cbf122a8eedf4028050199261c838773417dd9b1a9de59d81ad034669`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CertifiedResidueSplit
    {Element : Type u}
    {OldProbe : Type v}
    {NewProbe : Type w}
    [DecidableEq Element]
    (work : ResidueWorkItem Element OldProbe)
    (oldEncode : Element → IncidenceCode OldProbe)
    (newEncode : Element → IncidenceCode NewProbe)
    (extension : ProbeExtension OldProbe NewProbe)
    (obligation : SeparatorObligation Element OldProbe) where
  obligationMatches :
    obligation.residue = work.residue
  separator :
    CertifiedSeparator oldEncode newEncode extension obligation
  admittedProbeEpoch : ObjectAddress
  admittedGeneration : ObjectAddress

/-- A residue work item is always an exact activator request. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ResidueClassification/Variant880368be85fbbdb4f57ecdcf1679a6ed5157d34494b501fc0dcc28d97f20acce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ResidueClassification/Variant880368be85fbbdb4f57ecdcf1679a6ed5157d34494b501fc0dcc28d97f20acce.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d8a823b2050b5d420a9b51696781fa094ac3399` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
