# AcceptedRepairStep

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4789b48c6a68557ac27731d2fe80e7dc2756f81e37963cc9b42e15d55e8dbe53",
  "kind": "structure",
  "lexical_name": "AcceptedRepairStep",
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
  "slug": "acceptedrepairstep--84ea36042c2a93cf619436a1",
  "source": {
    "blob": "2644f3d5c906151d02f4949d9e38096a6640249e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 306,
    "line": 296,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Game/Variant5410382a8a0f7efbe2e116aab9bc259d7867e5f9195470482bd1bfd1368e7e68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:84ea36042c2a93cf619436a1bc0fe51f3812de963c8447b826407dbbb1d5ed59",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Game/Variant5410382a8a0f7efbe2e116aab9bc259d7867e5f9195470482bd1bfd1368e7e68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4789b48c6a68557ac27731d2fe80e7dc2756f81e37963cc9b42e15d55e8dbe53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 296–306.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AcceptedRepairStep where
  beforeCandidate : RepairCandidate
  afterCandidate : RepairCandidate
  budgetBefore : Nat
  budgetAfter : Nat
  candidateWasUnseen : Bool
  hardPolicyCeilingPreserved : Bool
  improvementOrBudget : RepairEnergy.Less afterCandidate.energy beforeCandidate.energy ∨
    budgetAfter < budgetBefore

@[surface_novel, surface_published]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Game/Variant5410382a8a0f7efbe2e116aab9bc259d7867e5f9195470482bd1bfd1368e7e68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Game/Variant5410382a8a0f7efbe2e116aab9bc259d7867e5f9195470482bd1bfd1368e7e68.lean#L296).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2644f3d5c906151d02f4949d9e38096a6640249e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
