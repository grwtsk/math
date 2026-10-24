# BoundaryStabilityCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fdc3df872fc5702784f1c94f23d5379d9ce9142c920d9f67dd05d1c790bc48a2",
  "kind": "structure",
  "lexical_name": "BoundaryStabilityCertificate",
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
  "slug": "boundarystabilitycertificate--a100f46f4562a0407f9acc60",
  "source": {
    "blob": "2dc031e37ed3a19d485af6f3a70be7a6ee1b793e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 64,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Boundary/Variant9dc7c7582fe06a9154b8ca1c5b0723a38312629a4f5886e39a1a44901bb863aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a100f46f4562a0407f9acc60a86c5b6232601f86dd5e5b0f93429dd3aa3a77a9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Boundary/Variant9dc7c7582fe06a9154b8ca1c5b0723a38312629a4f5886e39a1a44901bb863aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fdc3df872fc5702784f1c94f23d5379d9ce9142c920d9f67dd05d1c790bc48a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BoundaryStabilityCertificate
    {cut : EvidenceCut}
    {left right : Span cut.text}
    (certificate : BoundaryCertificate cut left right) where
  leftPerturbation :
    MetadataPerturbation cut {left} certificate.context
  rightPerturbation :
    MetadataPerturbation cut {right} certificate.context
  recompute :
    MetadataProfile cut {left} certificate.context →
    MetadataProfile cut {right} certificate.context →
    TypedOverlap
  leftObserved :
    MetadataProfile cut {left} certificate.context
  rightObserved :
    MetadataProfile cut {right} certificate.context
  observedMatches :
    recompute leftObserved rightObserved = certificate.overlap
  stable :
    ∀ leftProfile rightProfile,
      leftPerturbation.relation leftObserved leftProfile →
      rightPerturbation.relation rightObserved rightProfile →
      certificate.rule.decide
        (recompute leftProfile rightProfile) =
      certificate.decision

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Boundary/Variant9dc7c7582fe06a9154b8ca1c5b0723a38312629a4f5886e39a1a44901bb863aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Boundary/Variant9dc7c7582fe06a9154b8ca1c5b0723a38312629a4f5886e39a1a44901bb863aa.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2dc031e37ed3a19d485af6f3a70be7a6ee1b793e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
