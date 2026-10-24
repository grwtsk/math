# HardyDefectRealization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f77f16da487ee9ea50786a8f19fd2d2123b9dddf5226da8700d5a6c477071c05",
  "kind": "structure",
  "lexical_name": "HardyDefectRealization",
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
  "slug": "hardydefectrealization--8034a5b433059f324d5d47b0",
  "source": {
    "blob": "464f13e0711734de669d7dfe3b197d97af66ceee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 75,
    "line": 44,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/HardyDefect/Variant0d33084077545d0d65cc6d84075768cc36378fb9fa7c3eb0cb9970d5d8696618.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8034a5b433059f324d5d47b0a156e5cfae642124e3e21347797e402b703a844b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/HardyDefect/Variant0d33084077545d0d65cc6d84075768cc36378fb9fa7c3eb0cb9970d5d8696618.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f77f16da487ee9ea50786a8f19fd2d2123b9dddf5226da8700d5a6c477071c05`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–75.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure HardyDefectRealization
    {model : OperatorModel}
    {Prime : Type uPrime}
    [DecidableEq Prime]
    (capacity :
      PrimeCutDefectCapacity model Prime)
    (hardy :
      HardyDefectFamily model Prime)
    (Test : Type uTest) where
  level : HardyRealizationLevel
  packetTrace :
    Test → model.Operator → ℝ
  remainder :
    Finset Prime → Test → ℝ
  operatorEquality :
    level = .operatorEquality →
      ∀ cut,
        capacity.defect cut =
          hardy.defect cut
  packetTraceEquality :
    level = .packetTraceEquality →
      ∀ cut test,
        packetTrace test (capacity.defect cut) =
          packetTrace test (hardy.defect cut)
  boundedPacketTraceDefect :
    level = .boundedPacketTraceDefect →
      ∀ cut test,
        packetTrace test (capacity.defect cut) =
          packetTrace test (hardy.defect cut) +
            remainder cut test

end Mathematics.SemiLocalDefect.Hardy
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/HardyDefect/Variant0d33084077545d0d65cc6d84075768cc36378fb9fa7c3eb0cb9970d5d8696618.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/HardyDefect/Variant0d33084077545d0d65cc6d84075768cc36378fb9fa7c3eb0cb9970d5d8696618.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `464f13e0711734de669d7dfe3b197d97af66ceee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
