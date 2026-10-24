# SurgicalSiteMetadata

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5d503321c3b6b093633782fdeaa87a77e6d005c9b4d691052532a55b23d65ebc",
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
  "slug": "surgicalsitemetadata--6910367913f52e3dc9ecb13c",
  "source": {
    "blob": "959dd78e81c3b0c42954aa2301667bbe6357eb85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 76,
    "line": 58,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/QuantizationDecomposition/Variant5c37e76484bab67d4b37b80089952b247cb7b49dbbc8ab4d96a3c53e9f25be8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6910367913f52e3dc9ecb13c1b38253f772661f071016b3154b6430f539fa557",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/QuantizationDecomposition/Variant5c37e76484bab67d4b37b80089952b247cb7b49dbbc8ab4d96a3c53e9f25be8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5d503321c3b6b093633782fdeaa87a77e6d005c9b4d691052532a55b23d65ebc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–76.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/QuantizationDecomposition/Variant5c37e76484bab67d4b37b80089952b247cb7b49dbbc8ab4d96a3c53e9f25be8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/QuantizationDecomposition/Variant5c37e76484bab67d4b37b80089952b247cb7b49dbbc8ab4d96a3c53e9f25be8b.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `959dd78e81c3b0c42954aa2301667bbe6357eb85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
