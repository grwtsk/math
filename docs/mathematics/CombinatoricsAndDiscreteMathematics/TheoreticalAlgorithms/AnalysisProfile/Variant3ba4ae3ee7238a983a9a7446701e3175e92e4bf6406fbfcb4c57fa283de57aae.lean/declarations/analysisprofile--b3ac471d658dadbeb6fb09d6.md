# AnalysisProfile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c41a8f91dbba31149c0fd47e1cea98d84f07dd648acb738d174dd646203c6460",
  "kind": "structure",
  "lexical_name": "AnalysisProfile",
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
  "slug": "analysisprofile--b3ac471d658dadbeb6fb09d6",
  "source": {
    "blob": "b28fb8e95d20e94919278a468a7b905830f185fb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 28,
    "line": 15,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AnalysisProfile/Variant3ba4ae3ee7238a983a9a7446701e3175e92e4bf6406fbfcb4c57fa283de57aae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b3ac471d658dadbeb6fb09d6b1bf8f84f0e59defc8a665c3b1a82b867f0f19db",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AnalysisProfile/Variant3ba4ae3ee7238a983a9a7446701e3175e92e4bf6406fbfcb4c57fa283de57aae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c41a8f91dbba31149c0fd47e1cea98d84f07dd648acb738d174dd646203c6460`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–28.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AnalysisProfile where
  base : Projects.ProjectProfile
  textbookChapterArtifacts : List StableId
  localDefinitionIds : List StableId
  mathlibDefinitionIds : List StableId
  bridgeCertificateIds : List StableId
  exerciseObligationIds : List StableId
  pedagogicalCommentArtifactIds : List StableId
  literateDocumentArtifactIds : List StableId
  transitionPointIds : List StableId
  preservePedagogicalDivergence : Bool := true
  profileDigest : Digest

end Mathematics.Projects.Tao
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AnalysisProfile/Variant3ba4ae3ee7238a983a9a7446701e3175e92e4bf6406fbfcb4c57fa283de57aae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/AnalysisProfile/Variant3ba4ae3ee7238a983a9a7446701e3175e92e4bf6406fbfcb4c57fa283de57aae.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b28fb8e95d20e94919278a468a7b905830f185fb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
