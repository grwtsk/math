# CertifiedResidueSplit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:335ab27481d24b05d5eb751f81257b1e70f9ee9553e7e813eba207315a368f7b",
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
  "slug": "certifiedresiduesplit--fe8e58afbb2b7d657f1cbd0c",
  "source": {
    "blob": "182f5e6a1ab8ebbf04dfe5d0a1489455d14a6e33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 138,
    "line": 121,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ResidueClassification/Variant674978d1471045a9cba8ec249e8de709c6f5e25908c3772a0e42153cc63ab1a6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe8e58afbb2b7d657f1cbd0c2d3dbdd93d919ae786679a7a46c35e580ecc34a3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ResidueClassification/Variant674978d1471045a9cba8ec249e8de709c6f5e25908c3772a0e42153cc63ab1a6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:335ab27481d24b05d5eb751f81257b1e70f9ee9553e7e813eba207315a368f7b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 121–138.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ResidueClassification/Variant674978d1471045a9cba8ec249e8de709c6f5e25908c3772a0e42153cc63ab1a6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ResidueClassification/Variant674978d1471045a9cba8ec249e8de709c6f5e25908c3772a0e42153cc63ab1a6.lean#L121).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `182f5e6a1ab8ebbf04dfe5d0a1489455d14a6e33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
