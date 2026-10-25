# SpatialNeckRealization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fcaecd45413b8184f6c9b86da0720b157a9ade988e8264071e8961b13883bfc8",
  "kind": "structure",
  "lexical_name": "SpatialNeckRealization",
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
  "slug": "spatialneckrealization--235cb8cc4e1de6d7dbee93c9",
  "source": {
    "blob": "bd5caf7e9557d3285eee2d875824641b3bd361b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 126,
    "line": 108,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BlockCut/Variant12e480d8486ae26603481b8c1a7df2c9833e175c6e07dad34ea14b1930718204.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:235cb8cc4e1de6d7dbee93c97fc0a6bd4ba1b69cae27d9b60859a9feb8e898c1",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BlockCut/Variant12e480d8486ae26603481b8c1a7df2c9833e175c6e07dad34ea14b1930718204.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fcaecd45413b8184f6c9b86da0720b157a9ade988e8264071e8961b13883bfc8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SpatialNeckRealization
    {Left Right Atom : Type*}
    [Fintype Left] [Fintype Right] [Fintype Atom] [DecidableEq Atom]
    (cut : TypeIIBlockCut Left Right)
    (carrier : TypeIISpatialCarrier3 Atom)
    (leftAtom : Left → Atom) (rightAtom : Right → Atom) where
  neck : ValidCombinatorialNeck carrier.carrierComplex
  childSide : cut.Child → NeckSide
  leftCarrierSide : ∀ left,
    (carrier.atomCarrier (leftAtom left)).cells ⊆
      (neck.sideCarrier (childSide (cut.leftChild left))).cells
  rightCarrierSide : ∀ right,
    (carrier.atomCarrier (rightAtom right)).cells ⊆
      (neck.sideCarrier (childSide (cut.rightChild right))).cells

end

end Surface.Core.TypeII

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BlockCut/Variant12e480d8486ae26603481b8c1a7df2c9833e175c6e07dad34ea14b1930718204.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BlockCut/Variant12e480d8486ae26603481b8c1a7df2c9833e175c6e07dad34ea14b1930718204.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd5caf7e9557d3285eee2d875824641b3bd361b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
