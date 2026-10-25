# BaseCaseIndexAnchor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:085a12880c2c617659bdaa2ff94dc0cd8fd6a721791b8fb72018f99f2c2e0a19",
  "kind": "structure",
  "lexical_name": "BaseCaseIndexAnchor",
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
  "slug": "basecaseindexanchor--12d92486b791eeb998986842",
  "source": {
    "blob": "da023ecaccbc552d4e88138f37be7ca968dd5198",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 34,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BaseCaseIndexAnchor/Variantfd2a994990f4a7d7a5c3711fd53fe9f580c53cd3edc909598b0f96c2a45105d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:12d92486b791eeb99898684270ba78682170f80b1a4dca1f0fb5de205255248e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BaseCaseIndexAnchor/Variantfd2a994990f4a7d7a5c3711fd53fe9f580c53cd3edc909598b0f96c2a45105d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:085a12880c2c617659bdaa2ff94dc0cd8fd6a721791b8fb72018f99f2c2e0a19`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–34.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure BaseCaseIndexAnchor
    (M : MellKTheory) where
  baseIndex : BaseCaseDerivedIndex
  kIndex : KTheoryIndex M
  euler_realizes_kIndex : Prop
  euler_realizes_kIndex_certified : euler_realizes_kIndex
  kIndexNonzero : kIndex.indexClass.Nonzero
  sourceLabel : String

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BaseCaseIndexAnchor/Variantfd2a994990f4a7d7a5c3711fd53fe9f580c53cd3edc909598b0f96c2a45105d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BaseCaseIndexAnchor/Variantfd2a994990f4a7d7a5c3711fd53fe9f580c53cd3edc909598b0f96c2a45105d1.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `da023ecaccbc552d4e88138f37be7ca968dd5198` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
