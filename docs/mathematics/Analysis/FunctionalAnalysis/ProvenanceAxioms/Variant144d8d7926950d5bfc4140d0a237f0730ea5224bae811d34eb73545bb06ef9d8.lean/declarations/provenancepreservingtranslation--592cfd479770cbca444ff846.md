# ProvenancePreservingTranslation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1c7c8b4ec1b92d35ff2eb32e59a2337b1ce6125c7b8defc8fca60285951409f5",
  "kind": "structure",
  "lexical_name": "ProvenancePreservingTranslation",
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
  "slug": "provenancepreservingtranslation--592cfd479770cbca444ff846",
  "source": {
    "blob": "f4ee02c3ced9aabc9d0ba2f7ffdac2874b61d6e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 29,
    "line": 23,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/ProvenanceAxioms/Variant144d8d7926950d5bfc4140d0a237f0730ea5224bae811d34eb73545bb06ef9d8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:592cfd479770cbca444ff846bd60edf9ca5b80fec39afb1530180dbd9e55f62a",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/ProvenanceAxioms/Variant144d8d7926950d5bfc4140d0a237f0730ea5224bae811d34eb73545bb06ef9d8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1c7c8b4ec1b92d35ff2eb32e59a2337b1ce6125c7b8defc8fca60285951409f5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–29.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ProvenancePreservingTranslation (Certificate : Type*) where
  /-- Existing exact-target translation and local certificate. -/
  translation : CertificateTranslation Certificate
  /-- Translation preserves every contributing source even when its premise is discharged. -/
  provenancePreserved : translation.externalCandidate.provenance ⊆ translation.provenance

/-- Every external contributor remains present in the translated history. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/ProvenanceAxioms/Variant144d8d7926950d5bfc4140d0a237f0730ea5224bae811d34eb73545bb06ef9d8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/ProvenanceAxioms/Variant144d8d7926950d5bfc4140d0a237f0730ea5224bae811d34eb73545bb06ef9d8.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4ee02c3ced9aabc9d0ba2f7ffdac2874b61d6e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
