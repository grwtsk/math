# SurgicalSiteMetadata

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cfb701f4c2342ad964fa8d36e3fdaa638f94ed29cdce0504882ce80f961fe348",
  "kind": "structure",
  "lexical_name": "SurgicalSiteMetadata",
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
  "slug": "surgicalsitemetadata--b615acdc79923e15737691b1",
  "source": {
    "blob": "c23da3e4eaecf78f9c9030763923e3d65f46a1b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 68,
    "line": 50,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/QuantizationDecomposition/Variantd971fa0b710576abc4c858bbf0379c2cb96729a144fc1cb03c0c869f2f3ceaa0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b615acdc79923e15737691b17f335204ef9fcb3ae122ff3cee863a63ea3c03d2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/QuantizationDecomposition/Variantd971fa0b710576abc4c858bbf0379c2cb96729a144fc1cb03c0c869f2f3ceaa0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cfb701f4c2342ad964fa8d36e3fdaa638f94ed29cdce0504882ce80f961fe348`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–68.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SurgicalSiteMetadata
    (decomposition : FiniteDecomposition)
    (site : decomposition.Piece) where
  stableSiteIdentity : ArtifactIdentity
  subjectIdentity : ArtifactIdentity
  subject_identity_exact : subjectIdentity = decomposition.subjectAt site
  decompositionIdentity : ArtifactIdentity
  decomposition_identity_exact : decompositionIdentity = decomposition.identity
  degree : Option Nat
  sourceEvidence : ProgressiveEvidence
  currentAssurance : AssuranceLevel
  currentAuthority : AuthorityClass
  currentClaimStatus : ClaimStatus
  evidence_assurance_exact : sourceEvidence.level = currentAssurance
  evidence_authority_exact : sourceEvidence.authority = currentAuthority
  affectedClaims : List ArtifactIdentity
  openObligations : List ArtifactIdentity

/-- Complete, stably ordered universe of sites considered by selection. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/QuantizationDecomposition/Variantd971fa0b710576abc4c858bbf0379c2cb96729a144fc1cb03c0c869f2f3ceaa0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/QuantizationDecomposition/Variantd971fa0b710576abc4c858bbf0379c2cb96729a144fc1cb03c0c869f2f3ceaa0.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c23da3e4eaecf78f9c9030763923e3d65f46a1b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
