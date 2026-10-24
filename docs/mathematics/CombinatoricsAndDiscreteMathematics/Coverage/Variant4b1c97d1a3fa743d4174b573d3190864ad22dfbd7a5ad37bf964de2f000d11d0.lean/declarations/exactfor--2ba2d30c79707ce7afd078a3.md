# ExactFor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:83a5c56a80e615e0153da588b349da7a16f72f0e569d9b90c965d06c3d105b44",
  "kind": "structure",
  "lexical_name": "ExactFor",
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
  "slug": "exactfor--2ba2d30c79707ce7afd078a3",
  "source": {
    "blob": "fcec9691b43bf804424af8223b1437f5c532c6d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1118,
    "line": 1087,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Coverage/Variant4b1c97d1a3fa743d4174b573d3190864ad22dfbd7a5ad37bf964de2f000d11d0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2ba2d30c79707ce7afd078a392db070c5489bb26764f71fa93dbfdc26953ca9d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Coverage/Variant4b1c97d1a3fa743d4174b573d3190864ad22dfbd7a5ad37bf964de2f000d11d0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:83a5c56a80e615e0153da588b349da7a16f72f0e569d9b90c965d06c3d105b44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1087–1118.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ExactFor
    (review : CoverageDispositionReview)
    (space : RhetoricalCoordinateSpace)
    (certificate : ProbeResolutionCertificate) : Prop where
  universeBound : review.obligationUniverse = certificate.obligationUniverse
  spaceUniverseBound : space.obligationUniverse = certificate.obligationUniverse
  universeHashBound : space.obligationUniverseHash = certificate.obligationUniverseHash
  obligationsExact : review.obligations = space.obligations
  reviewIdentityPresent : review.id.value ≠ 0
  obligationsPresent : review.obligations.Nonempty
  everyObligationExactlyOnce :
    ∀ obligation ∈ review.obligations,
      review.dispositionCount obligation = 1 ∧
        review.reviewed obligation = true ∧
        ∃ disposition,
          review.dispositionAt obligation = some disposition ∧
          disposition.IsTerminalNonconflicting
  noOutsideDisposition :
    ∀ obligation ∉ review.obligations,
      review.dispositionCount obligation = 0 ∧
        review.dispositionAt obligation = none ∧
        review.reviewed obligation = false
  noBlockingResiduals : review.blockingResiduals = ∅
  repositoryEvidenceExact :
    review.repositoryEvidenceCoverage = .exactlyResolved
  ontologyRepresentationExact :
    review.ontologyRepresentationCoverage = .exactlyResolved
  independentlyAuthorized : review.authority.isSome
  reviewReceiptPresent : review.receipt.value ≠ 0

end CoverageDispositionReview

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Coverage/Variant4b1c97d1a3fa743d4174b573d3190864ad22dfbd7a5ad37bf964de2f000d11d0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Coverage/Variant4b1c97d1a3fa743d4174b573d3190864ad22dfbd7a5ad37bf964de2f000d11d0.lean#L1087).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcec9691b43bf804424af8223b1437f5c532c6d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
