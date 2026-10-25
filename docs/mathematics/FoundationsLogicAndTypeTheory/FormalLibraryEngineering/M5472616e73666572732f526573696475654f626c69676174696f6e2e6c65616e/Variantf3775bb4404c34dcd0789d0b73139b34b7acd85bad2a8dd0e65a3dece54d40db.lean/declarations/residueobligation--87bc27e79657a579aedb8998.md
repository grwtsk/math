# ResidueObligation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a8a7e78c3ad98ed91c9228eb0188439670bd2f254beac50feeac39c429f66f2b",
  "kind": "structure",
  "lexical_name": "ResidueObligation",
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
  "slug": "residueobligation--87bc27e79657a579aedb8998",
  "source": {
    "blob": "17892c522ccbfc894e87314191a3036d6c52c501",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 18,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M5472616e73666572732f526573696475654f626c69676174696f6e2e6c65616e/Variantf3775bb4404c34dcd0789d0b73139b34b7acd85bad2a8dd0e65a3dece54d40db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:87bc27e79657a579aedb899805f0093acdd77cf48b96125d32e26e0857fcefc6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M5472616e73666572732f526573696475654f626c69676174696f6e2e6c65616e/Variantf3775bb4404c34dcd0789d0b73139b34b7acd85bad2a8dd0e65a3dece54d40db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a8a7e78c3ad98ed91c9228eb0188439670bd2f254beac50feeac39c429f66f2b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 18–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ResidueObligation (r : FWR.Residue) where
  localClaim : Prop
  target : FWR.Target
  targetMatches : target = r.target
  kind : FWR.ResidueKind
  kindMatches : kind = r.kind
  atomId : String
  atomMatches : atomId = r.atomId
  blocks : String
  blocksMatches : blocks = r.blocks
  clearsBy : String
  clearsByMatches : clearsBy = r.clearsBy

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M5472616e73666572732f526573696475654f626c69676174696f6e2e6c65616e/Variantf3775bb4404c34dcd0789d0b73139b34b7acd85bad2a8dd0e65a3dece54d40db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/M5472616e73666572732f526573696475654f626c69676174696f6e2e6c65616e/Variantf3775bb4404c34dcd0789d0b73139b34b7acd85bad2a8dd0e65a3dece54d40db.lean#L18).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17892c522ccbfc894e87314191a3036d6c52c501` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
