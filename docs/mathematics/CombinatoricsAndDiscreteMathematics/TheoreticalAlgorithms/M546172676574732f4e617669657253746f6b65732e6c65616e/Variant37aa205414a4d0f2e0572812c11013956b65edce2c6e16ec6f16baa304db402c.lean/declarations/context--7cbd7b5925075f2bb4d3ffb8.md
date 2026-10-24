# Context

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:268d31d1062501dd76be0719ea35ad616a2aefd9f793d6c1808236a80226beec",
  "kind": "structure",
  "lexical_name": "Context",
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
  "slug": "context--7cbd7b5925075f2bb4d3ffb8",
  "source": {
    "blob": "6e37eec675624d86c9a176487a5d64c70eed73ee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 22,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f4e617669657253746f6b65732e6c65616e/Variant37aa205414a4d0f2e0572812c11013956b65edce2c6e16ec6f16baa304db402c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7cbd7b5925075f2bb4d3ffb8afe0321bb2b899839f1c3ca170f59c25574c335d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f4e617669657253746f6b65732e6c65616e/Variant37aa205414a4d0f2e0572812c11013956b65edce2c6e16ec6f16baa304db402c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:268d31d1062501dd76be0719ea35ad616a2aefd9f793d6c1808236a80226beec`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Context where
  VelocityField : Type
  PressureField : Type
  InitialData : Type
  IsSmooth : VelocityField -> Prop
  SolvesNSE : VelocityField -> PressureField -> InitialData -> Prop
  DivergenceFree : InitialData -> Prop
  GlobalInTime : VelocityField -> Prop
  Unique : VelocityField -> Prop
  HasFiniteScheduler : Nat -> Prop
  HasFiniteEnergyGuard : Nat -> Prop
  SchedulerModelsPDE : Prop
  HasUniformPDEEstimate : Prop
  HasVelocityPressureSemantics : Prop
  HasPressureReconstruction : Prop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f4e617669657253746f6b65732e6c65616e/Variant37aa205414a4d0f2e0572812c11013956b65edce2c6e16ec6f16baa304db402c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/M546172676574732f4e617669657253746f6b65732e6c65616e/Variant37aa205414a4d0f2e0572812c11013956b65edce2c6e16ec6f16baa304db402c.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6e37eec675624d86c9a176487a5d64c70eed73ee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
