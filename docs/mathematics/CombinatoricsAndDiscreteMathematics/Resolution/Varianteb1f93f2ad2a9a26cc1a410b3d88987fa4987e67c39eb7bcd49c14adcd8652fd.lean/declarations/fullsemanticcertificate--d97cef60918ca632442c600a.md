# FullSemanticCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2ffb80f6df751ff290e0777d21f5b69753e6ec07e569a296637e25e5227e3ce4",
  "kind": "structure",
  "lexical_name": "FullSemanticCertificate",
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
  "slug": "fullsemanticcertificate--d97cef60918ca632442c600a",
  "source": {
    "blob": "357d1970d677d8929c9011a00ca3908f2da846ff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 133,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Resolution/Varianteb1f93f2ad2a9a26cc1a410b3d88987fa4987e67c39eb7bcd49c14adcd8652fd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d97cef60918ca632442c600ade0cc55d72bad4b37881372552fba92d50a9bc06",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Resolution/Varianteb1f93f2ad2a9a26cc1a410b3d88987fa4987e67c39eb7bcd49c14adcd8652fd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2ffb80f6df751ff290e0777d21f5b69753e6ec07e569a296637e25e5227e3ce4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FullSemanticCertificate
    (cut : EvidenceCut)
    (segmentation : CertifiedSegmentation cut)
    (tokenGraph : TokenGraph cut segmentation)
    (network : IdiomConceptNetwork cut) where
  structural : StructuralSemanticCertificate cut
  everyAuthoritativeInterpretationAccepted : Prop
  everyPhraseReadingCertified : Prop
  everyIdiomCertified : Prop
  everyMetaphorCertified : Prop
  everyConceptRelationCertified : Prop
  everySynonymyEdgeHasSubstitution : Prop
  everyContextTransportCertified : Prop
  everyBoundaryRuleCorrect : Prop
  everyRequiredBoundaryStable : Prop
  noUnresolvedRequiredUnknowns : Prop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Resolution/Varianteb1f93f2ad2a9a26cc1a410b3d88987fa4987e67c39eb7bcd49c14adcd8652fd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Resolution/Varianteb1f93f2ad2a9a26cc1a410b3d88987fa4987e67c39eb7bcd49c14adcd8652fd.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `357d1970d677d8929c9011a00ca3908f2da846ff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
