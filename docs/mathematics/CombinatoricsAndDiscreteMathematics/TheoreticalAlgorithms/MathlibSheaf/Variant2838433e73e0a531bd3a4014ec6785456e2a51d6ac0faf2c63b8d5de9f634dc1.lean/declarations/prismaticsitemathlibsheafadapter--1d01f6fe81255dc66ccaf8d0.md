# PrismaticSiteMathlibSheafAdapter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:901f2ee94e47f20a02ba677a28d26bd45eb54b653d84bcb21ed1a3330490ae72",
  "kind": "structure",
  "lexical_name": "PrismaticSiteMathlibSheafAdapter",
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
  "slug": "prismaticsitemathlibsheafadapter--1d01f6fe81255dc66ccaf8d0",
  "source": {
    "blob": "c3713115b74394f5250b833257590c8a6b548501",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 46,
    "line": 34,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MathlibSheaf/Variant2838433e73e0a531bd3a4014ec6785456e2a51d6ac0faf2c63b8d5de9f634dc1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1d01f6fe81255dc66ccaf8d0d3828dc0c32aeb8698ab5a4713f95137a97870c3",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MathlibSheaf/Variant2838433e73e0a531bd3a4014ec6785456e2a51d6ac0faf2c63b8d5de9f634dc1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:901f2ee94e47f20a02ba677a28d26bd45eb54b653d84bcb21ed1a3330490ae72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 34–46.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PrismaticSiteMathlibSheafAdapter
    {p : Nat}
    {P : BoundedPrism.{u} p}
    {X : PadicFormalScheme}
    (S : CertifiedStructureSheafOfRings P X) where
  sheafAdapter : MathlibSheafOfRingsAdapter S
  ringedPresheafAdapter :
    PrismaticSiteMathlibRingedPresheafAdapter S.ringPresheaf
  sheafConditionUsesActualSections : Prop
  sheafConditionUsesActualSectionsCertified :
    sheafConditionUsesActualSections
  boundary : List String

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MathlibSheaf/Variant2838433e73e0a531bd3a4014ec6785456e2a51d6ac0faf2c63b8d5de9f634dc1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/MathlibSheaf/Variant2838433e73e0a531bd3a4014ec6785456e2a51d6ac0faf2c63b8d5de9f634dc1.lean#L34).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3713115b74394f5250b833257590c8a6b548501` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
