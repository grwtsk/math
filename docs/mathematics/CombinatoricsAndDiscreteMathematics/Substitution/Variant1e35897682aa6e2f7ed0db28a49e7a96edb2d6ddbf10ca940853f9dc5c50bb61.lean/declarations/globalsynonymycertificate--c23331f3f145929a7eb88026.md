# GlobalSynonymyCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ae91c1d52a2af5f732dadf4a737a9f8b72087859af083664e2a5a33da2b5d943",
  "kind": "structure",
  "lexical_name": "GlobalSynonymyCertificate",
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
  "slug": "globalsynonymycertificate--c23331f3f145929a7eb88026",
  "source": {
    "blob": "96f96269e0352171c182ce1632dd1cbd55ea993f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 67,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Substitution/Variant1e35897682aa6e2f7ed0db28a49e7a96edb2d6ddbf10ca940853f9dc5c50bb61.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c23331f3f145929a7eb88026d6855eacae44956ff0a740a498d7f936bd89443f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Substitution/Variant1e35897682aa6e2f7ed0db28a49e7a96edb2d6ddbf10ca940853f9dc5c50bb61.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ae91c1d52a2af5f732dadf4a737a9f8b72087859af083664e2a5a33da2b5d943`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure GlobalSynonymyCertificate
    (cut : EvidenceCut)
    (left right : PhraseCandidate cut) where
  contexts : Finset ContextId
  contexts_nonempty : contexts.Nonempty
  completeForDeclaredScope : Prop
  contextualCertificates :
    ∀ context ∈ contexts,
      ContextualSynonymyCertificate cut left right

end Mathematics.SemanticTokenization
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Substitution/Variant1e35897682aa6e2f7ed0db28a49e7a96edb2d6ddbf10ca940853f9dc5c50bb61.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Substitution/Variant1e35897682aa6e2f7ed0db28a49e7a96edb2d6ddbf10ca940853f9dc5c50bb61.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96f96269e0352171c182ce1632dd1cbd55ea993f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
