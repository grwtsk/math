# Nonneg.instNonUnitalContinuousFunctionalCalculus

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6b7cc22efeb7c99cb4283edb92c3d6f968cfc0d4bb3033e840435a63d5148f7c",
  "kind": "instance",
  "lexical_name": "Nonneg.instNonUnitalContinuousFunctionalCalculus",
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
  "slug": "nonneg-instnonunitalcontinuousfunctionalcalculus--1d9684666a69b4d1f83a2401",
  "source": {
    "blob": "0cbdf1ff20c30af0073cf851a2f0988e8c522e45",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 285,
    "path": "GRWTSK/Topology/GeneralTopology/Instances/Variant3f67b4ed5dbc93ff6225493d906cf5c5a58e65fc497879de7ad680a24663e592.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1d9684666a69b4d1f83a24016f80171a1ac7fe9ccbbb5455934f0c10fee55f17",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Instances/Variant3f67b4ed5dbc93ff6225493d906cf5c5a58e65fc497879de7ad680a24663e592.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6b7cc22efeb7c99cb4283edb92c3d6f968cfc0d4bb3033e840435a63d5148f7c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Nonneg.instNonUnitalContinuousFunctionalCalculus :
    NonUnitalContinuousFunctionalCalculus ℝ≥0 A (0 ≤ ·) :=
  QuasispectrumRestricts.cfc (q := IsSelfAdjoint) ContinuousMap.realToNNReal
    NNReal.isClosedEmbedding_coe le_rfl
    (fun _ ↦ nonneg_iff_isSelfAdjoint_and_quasispectrumRestricts)

/-- In a C⋆-algebra, commuting nonnegative elements have nonnegative products. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Instances/Variant3f67b4ed5dbc93ff6225493d906cf5c5a58e65fc497879de7ad680a24663e592.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Instances/Variant3f67b4ed5dbc93ff6225493d906cf5c5a58e65fc497879de7ad680a24663e592.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0cbdf1ff20c30af0073cf851a2f0988e8c522e45` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
