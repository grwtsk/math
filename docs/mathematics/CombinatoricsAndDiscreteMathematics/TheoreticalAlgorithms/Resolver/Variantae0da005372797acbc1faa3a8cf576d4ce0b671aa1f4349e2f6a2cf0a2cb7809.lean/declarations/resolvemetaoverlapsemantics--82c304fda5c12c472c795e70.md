# resolveMetaOverlapSemantics

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e5b78c6afc95028991b3a7c33dfa1b57dbd1aee405ef1b75c1c26d8f28b29e5e",
  "kind": "def",
  "lexical_name": "resolveMetaOverlapSemantics",
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
  "slug": "resolvemetaoverlapsemantics--82c304fda5c12c472c795e70",
  "source": {
    "blob": "3cb3319b67125c67eb30ed546e745c1a6ad0d482",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 93,
    "line": 55,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Resolver/Variantae0da005372797acbc1faa3a8cf576d4ce0b671aa1f4349e2f6a2cf0a2cb7809.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:82c304fda5c12c472c795e70d962da69731782968ddefd0020c2bfcbe038dfe4",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Resolver/Variantae0da005372797acbc1faa3a8cf576d4ce0b671aa1f4349e2f6a2cf0a2cb7809.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e5b78c6afc95028991b3a7c33dfa1b57dbd1aee405ef1b75c1c26d8f28b29e5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–93.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def resolveMetaOverlapSemantics
    (cut : CommittedSemanticCut) :
    SemanticTokenResolution cut :=
  match cut.validation with
  | .rejected reason =>
      .rejected reason
  | .accepted =>
      if cut.liveReadsAllowed then
        .rejected .liveReadAuthority
      else
        match cut.boundaryFalsification with
        | some witness =>
            .falsifiedBoundary witness
        | none =>
            match cut.relationFalsification with
            | some witness =>
                .falsifiedRelation witness
            | none =>
                match cut.structural with
                | none =>
                    .unknown
                      .characterNormalization
                      cut.frontier
                | some structural =>
                    match cut.semanticCompletion with
                    | some semantic =>
                        .solved structural semantic
                    | none =>
                        match cut.partialSemantic with
                        | some partialCertificate =>
                            .partiallySolved
                              structural partialCertificate
                        | none =>
                            .structurallySolved
                              structural
                              (.interpretationAdequacy ::
                                cut.frame.unresolved)
                              (by simp)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Resolver/Variantae0da005372797acbc1faa3a8cf576d4ce0b671aa1f4349e2f6a2cf0a2cb7809.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Resolver/Variantae0da005372797acbc1faa3a8cf576d4ce0b671aa1f4349e2f6a2cf0a2cb7809.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3cb3319b67125c67eb30ed546e745c1a6ad0d482` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
