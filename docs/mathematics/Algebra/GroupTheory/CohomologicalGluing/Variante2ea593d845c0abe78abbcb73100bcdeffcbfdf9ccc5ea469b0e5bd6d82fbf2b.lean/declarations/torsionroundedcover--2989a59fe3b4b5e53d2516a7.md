# TorsionRoundedCover

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dabcea65e6a5622b5297a0784ad88e9e0805afca922847124b5add229b68af46",
  "kind": "structure",
  "lexical_name": "TorsionRoundedCover",
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
  "slug": "torsionroundedcover--2989a59fe3b4b5e53d2516a7",
  "source": {
    "blob": "4c1ecb6e8b08601d3a1ee1934c0de90e9ee7e1d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 59,
    "path": "GRWTSK/Algebra/GroupTheory/CohomologicalGluing/Variante2ea593d845c0abe78abbcb73100bcdeffcbfdf9ccc5ea469b0e5bd6d82fbf2b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2989a59fe3b4b5e53d2516a7b949eac980aa0fcbf000efbf7ec9c8e645e897e9",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/CohomologicalGluing/Variante2ea593d845c0abe78abbcb73100bcdeffcbfdf9ccc5ea469b0e5bd6d82fbf2b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dabcea65e6a5622b5297a0784ad88e9e0805afca922847124b5add229b68af46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TorsionRoundedCover
    (LiftedBase : Type u)
    (Loop : Type*) [Group Loop] [MulAction Loop LiftedBase]
    (rank : Nat)
    (localSystem : IntegralLocalSystem Loop rank)
    (Torsion GluingClass : Type v)
    [AddCommGroup Torsion] [Finite Torsion] where
  topology :
    CoverTopologyChannel localSystem Torsion GluingClass
  metric :
    FiberGramField LiftedBase Loop rank localSystem

namespace TorsionRoundedCover

variable
    {LiftedBase : Type u}
    {Loop : Type*} [Group Loop] [MulAction Loop LiftedBase]
    {rank : Nat}
    {localSystem : IntegralLocalSystem Loop rank}
    {Torsion GluingClass : Type v}
    [AddCommGroup Torsion] [Finite Torsion]

/-- Replace fiber lengths while preserving all topological gluing data. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/CohomologicalGluing/Variante2ea593d845c0abe78abbcb73100bcdeffcbfdf9ccc5ea469b0e5bd6d82fbf2b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/CohomologicalGluing/Variante2ea593d845c0abe78abbcb73100bcdeffcbfdf9ccc5ea469b0e5bd6d82fbf2b.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c1ecb6e8b08601d3a1ee1934c0de90e9ee7e1d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
