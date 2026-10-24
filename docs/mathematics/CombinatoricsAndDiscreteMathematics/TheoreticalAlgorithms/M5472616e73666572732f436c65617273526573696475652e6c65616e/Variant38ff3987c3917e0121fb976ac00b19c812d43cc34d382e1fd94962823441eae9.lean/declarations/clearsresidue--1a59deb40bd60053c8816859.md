# ClearsResidue

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ebf86224e7ec96a71081c982ed3ff7b6b7fe8fb23335b116ad79a41fee0e51cc",
  "kind": "structure",
  "lexical_name": "ClearsResidue",
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
  "slug": "clearsresidue--1a59deb40bd60053c8816859",
  "source": {
    "blob": "15acb95da0d6af9f43f42f7fe14b3b28b9d345ac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 22,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M5472616e73666572732f436c65617273526573696475652e6c65616e/Variant38ff3987c3917e0121fb976ac00b19c812d43cc34d382e1fd94962823441eae9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1a59deb40bd60053c88168597dbd6f57595d67de74eb174e5f316af8e5430ee5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M5472616e73666572732f436c65617273526573696475652e6c65616e/Variant38ff3987c3917e0121fb976ac00b19c812d43cc34d382e1fd94962823441eae9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ebf86224e7ec96a71081c982ed3ff7b6b7fe8fb23335b116ad79a41fee0e51cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ClearsResidue (r : FWR.Residue) where
  obligation : ResidueObligation r
  imported : Think.Imports.ImportedTheorem
  adapter :
    TransferAdapter obligation.localClaim imported.importedProp
  proof : obligation.localClaim
  nonconjectural : r.kind ≠ FWR.ResidueKind.conjecturalAtom
  notReplacementOverclaim : r.kind ≠ FWR.ResidueKind.replacementOverclaim
  doesNotSettleTarget : Bool
  nonsettling : doesNotSettleTarget = true

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M5472616e73666572732f436c65617273526573696475652e6c65616e/Variant38ff3987c3917e0121fb976ac00b19c812d43cc34d382e1fd94962823441eae9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M5472616e73666572732f436c65617273526573696475652e6c65616e/Variant38ff3987c3917e0121fb976ac00b19c812d43cc34d382e1fd94962823441eae9.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15acb95da0d6af9f43f42f7fe14b3b28b9d345ac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
