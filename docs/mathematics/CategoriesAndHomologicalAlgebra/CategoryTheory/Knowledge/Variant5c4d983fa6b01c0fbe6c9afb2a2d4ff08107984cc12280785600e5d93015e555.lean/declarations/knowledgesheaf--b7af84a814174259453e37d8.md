# KnowledgeSheaf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:312babc13573292a5fa9353852f2620e112ad78dc111fe4dee317b5ac01c4750",
  "kind": "structure",
  "lexical_name": "KnowledgeSheaf",
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
  "slug": "knowledgesheaf--b7af84a814174259453e37d8",
  "source": {
    "blob": "d6ffa207d1f00179916d3cdc100ff7c2322c0496",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 31,
    "line": 22,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Knowledge/Variant5c4d983fa6b01c0fbe6c9afb2a2d4ff08107984cc12280785600e5d93015e555.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b7af84a814174259453e37d87993972068682dd69729b125102f4d36e423d840",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Knowledge/Variant5c4d983fa6b01c0fbe6c9afb2a2d4ff08107984cc12280785600e5d93015e555.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:312babc13573292a5fa9353852f2620e112ad78dc111fe4dee317b5ac01c4750`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–31.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure KnowledgeSheaf
    (C : Type u) [CategoryTheory.Category.{v} C]
    (K : KnowledgeTopology C) where
  sheafHash : String
  localSectionHash : String
  gluingReceiptHash : String
  classifierOmegaAsClosedSieveHash : String
  usesBooleanOmega : Bool
  claimBearing : Bool

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Knowledge/Variant5c4d983fa6b01c0fbe6c9afb2a2d4ff08107984cc12280785600e5d93015e555.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Knowledge/Variant5c4d983fa6b01c0fbe6c9afb2a2d4ff08107984cc12280785600e5d93015e555.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d6ffa207d1f00179916d3cdc100ff7c2322c0496` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
