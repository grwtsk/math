# PrismaticSurgeryWitness

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:63cdddb6df6c480e7fc75bd7e4d7e673252dc0d3cecd82f2b13bed96ba902b83",
  "kind": "structure",
  "lexical_name": "PrismaticSurgeryWitness",
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
  "slug": "prismaticsurgerywitness--5ce56303a2d95da0f0817bc9",
  "source": {
    "blob": "c9c3041092d3420d5e35c4ccd5b60a8072d37116",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 49,
    "line": 29,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SurgeryBridge/Variant5b1617899758ec76eb94275d081a225f55e89fa9e0fb7fcd8b2cd9bf58a35f12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5ce56303a2d95da0f0817bc92f1c00d3f73dbc60abab6f4405b2f85d4b3daff1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SurgeryBridge/Variant5b1617899758ec76eb94275d081a225f55e89fa9e0fb7fcd8b2cd9bf58a35f12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:63cdddb6df6c480e7fc75bd7e4d7e673252dc0d3cecd82f2b13bed96ba902b83`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–49.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PrismaticSurgeryWitness
    {State : Type uState}
    (G : DAF.Terrain.KnownMaximalState State)
    (F : DAF.Fabric.Fabric)
    (P : Theory)
    (before after : SourceRealization F P) where
  locus : DAF.Terrain.GlobalSurgeryLocus G
  fabric : DAF.Fabric.SurgicalPatchAdapter
    (DAF.Terrain.GlobalSurgeryLocus G) F
  fabric_locus : fabric.globalLocus = locus
  sourceChange : SourceRealization.Hom before after
  realizationSquare : Prop
  realizationSquare_proof : realizationSquare
  constructedPrism : Option CertifiedConstructedBasePrism
  globalRulesetCompatible : Prop
  globalRulesetCompatible_proof : globalRulesetCompatible
  unresolvedObligations : List String

namespace PrismaticSurgeryWitness

/-- The fabric patch and arithmetic change target exactly the named locus. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SurgeryBridge/Variant5b1617899758ec76eb94275d081a225f55e89fa9e0fb7fcd8b2cd9bf58a35f12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/SurgeryBridge/Variant5b1617899758ec76eb94275d081a225f55e89fa9e0fb7fcd8b2cd9bf58a35f12.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9c3041092d3420d5e35c4ccd5b60a8072d37116` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
