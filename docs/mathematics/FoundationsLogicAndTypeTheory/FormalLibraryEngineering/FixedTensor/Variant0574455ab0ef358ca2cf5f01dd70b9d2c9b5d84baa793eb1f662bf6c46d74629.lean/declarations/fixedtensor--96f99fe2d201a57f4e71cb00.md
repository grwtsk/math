# FixedTensor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e900857cc2aa954443cd0bf788e50e93a772722807c45c8960d488f1f23f42b0",
  "kind": "structure",
  "lexical_name": "FixedTensor",
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
  "slug": "fixedtensor--96f99fe2d201a57f4e71cb00",
  "source": {
    "blob": "f88c88bb6f1742191fb252eaee1376a47d3dd11b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 19,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedTensor/Variant0574455ab0ef358ca2cf5f01dd70b9d2c9b5d84baa793eb1f662bf6c46d74629.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:96f99fe2d201a57f4e71cb002cb7c63db2d73e9234e0c36d5d7a05b4e65e8b3c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedTensor/Variant0574455ab0ef358ca2cf5f01dd70b9d2c9b5d84baa793eb1f662bf6c46d74629.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e900857cc2aa954443cd0bf788e50e93a772722807c45c8960d488f1f23f42b0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure FixedTensor
    {C : CrystallineSite}
    {F : Crystal C}
    (nabla : Connection F)
    (e : CrystalEndomorphism F)
    (X : C.Site.Obj) where
  tensor : TensorSection F X
  horizontal :
    nabla.horizontal X tensor.underlyingSection
  fixed :
    e.map X tensor.underlyingSection = tensor.underlyingSection

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedTensor/Variant0574455ab0ef358ca2cf5f01dd70b9d2c9b5d84baa793eb1f662bf6c46d74629.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FixedTensor/Variant0574455ab0ef358ca2cf5f01dd70b9d2c9b5d84baa793eb1f662bf6c46d74629.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f88c88bb6f1742191fb252eaee1376a47d3dd11b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
