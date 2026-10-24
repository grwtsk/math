# HardyDefectRealization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:359f218016198d34bc84978252af0bff1142e3449c497a45630823c00aba0a4c",
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
  "slug": "hardydefectrealization--1ad50aee5768fe685114f925",
  "source": {
    "blob": "2819e191d71a512a33f59d3c2a8bb2836e8a737c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 36,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/HardyDefect/Variant8f1712dba8b09e51811697fa3619ebc7244f1e66ea485780a7ee6873ba1b82a7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1ad50aee5768fe685114f92546e7818f74d3bab017fb4c691c75579a38ada557",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/HardyDefect/Variant8f1712dba8b09e51811697fa3619ebc7244f1e66ea485780a7ee6873ba1b82a7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:359f218016198d34bc84978252af0bff1142e3449c497a45630823c00aba0a4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–67.

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

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/HardyDefect/Variant8f1712dba8b09e51811697fa3619ebc7244f1e66ea485780a7ee6873ba1b82a7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/HardyDefect/Variant8f1712dba8b09e51811697fa3619ebc7244f1e66ea485780a7ee6873ba1b82a7.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2819e191d71a512a33f59d3c2a8bb2836e8a737c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
