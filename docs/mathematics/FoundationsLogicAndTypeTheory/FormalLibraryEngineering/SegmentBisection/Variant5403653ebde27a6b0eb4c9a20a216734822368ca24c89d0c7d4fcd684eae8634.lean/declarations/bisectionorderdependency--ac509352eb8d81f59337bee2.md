# bisectionOrderDependency

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:86f1c8f55c2ee0859b666031fb1758ebf60fa8ca2c7baa1a0b0b7a289b4cf747",
  "kind": "def",
  "lexical_name": "bisectionOrderDependency",
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
  "slug": "bisectionorderdependency--ac509352eb8d81f59337bee2",
  "source": {
    "blob": "586d59fa67be9f128feb74f798f8a545646712e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 53,
    "line": 44,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SegmentBisection/Variant5403653ebde27a6b0eb4c9a20a216734822368ca24c89d0c7d4fcd684eae8634.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ac509352eb8d81f59337bee25a793f56625cf667086c097b52b54b1d2592dc40",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SegmentBisection/Variant5403653ebde27a6b0eb4c9a20a216734822368ca24c89d0c7d4fcd684eae8634.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:86f1c8f55c2ee0859b666031fb1758ebf60fa8ca2c7baa1a0b0b7a289b4cf747`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–53.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def bisectionOrderDependency :
    DependencyEdge segmentBisectionExactOpenElement.elementId.id where
  edgeId := {
    value := "dependency:geometry:construction:bisection:order"
  }
  edgeId_valid := by
    simp [StableId.Valid]
  target := .assumption .order orderAssumptionId
  role := .statementVocabulary

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SegmentBisection/Variant5403653ebde27a6b0eb4c9a20a216734822368ca24c89d0c7d4fcd684eae8634.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SegmentBisection/Variant5403653ebde27a6b0eb4c9a20a216734822368ca24c89d0c7d4fcd684eae8634.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `586d59fa67be9f128feb74f798f8a545646712e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
