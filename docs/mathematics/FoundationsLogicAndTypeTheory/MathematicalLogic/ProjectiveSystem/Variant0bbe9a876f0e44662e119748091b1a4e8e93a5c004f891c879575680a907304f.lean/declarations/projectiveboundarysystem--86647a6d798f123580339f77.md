# ProjectiveBoundarySystem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d61e510ee4113341f5bd4ec129f6305d794287e2e4cb1a44c6d7ea5db4e4b336",
  "kind": "structure",
  "lexical_name": "ProjectiveBoundarySystem",
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
  "slug": "projectiveboundarysystem--86647a6d798f123580339f77",
  "source": {
    "blob": "e915dcae6c58c72116ee66b7afe53ab7f6ed2476",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ProjectiveSystem/Variant0bbe9a876f0e44662e119748091b1a4e8e93a5c004f891c879575680a907304f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:86647a6d798f123580339f7700da2b8338f22c863604332a73821f2cd571fbf2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ProjectiveSystem/Variant0bbe9a876f0e44662e119748091b1a4e8e93a5c004f891c879575680a907304f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d61e510ee4113341f5bd4ec129f6305d794287e2e4cb1a44c6d7ea5db4e4b336`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ProjectiveBoundarySystem
    (limits : LimitSemantics)
    (Scale : Type uScale)
    (TestFunction : Type uTest)
    (Schedule : Type uSchedule) where
  registeredLimit :
    RegisteredCountableLimit
  cut :
    Nat →
      FiniteReflectiveCut
        limits Scale TestFunction Schedule
  stratumMatches :
    ∀ stage,
      (cut stage).stratum.value =
        (registeredLimit.approximation stage).value
  projectState :
    ∀ {high low},
      low ≤ high →
      (cut high).State →
      (cut low).State
  projectLaw :
    ∀ {high low},
      low ≤ high →
      (cut high).Law →
      (cut low).Law
  restrictSchedule :
    ∀ {high low},
      low ≤ high →
      Schedule → Schedule
  liftSchedule :
    ∀ {high low},
      low ≤ high →
      Schedule → Schedule
  projectState_refl :
    ∀ stage state,
      projectState (le_refl stage) state =
        state
  projectState_trans :
    ∀ {top middle low}
      (middle_le : middle ≤ top)
      (low_le : low ≤ middle)
      state,
      projectState low_le
          (projectState middle_le state) =
        projectState
          (low_le.trans middle_le) state
  projectStateSurjective :
    ∀ {high low}
      (low_le : low ≤ high),
      Function.Surjective
        (projectState low_le)
  projectLaw_refl :
    ∀ stage law,
      projectLaw (le_refl stage) law =
        law
  projectLaw_trans :
    ∀ {top middle low}
      (middle_le : middle ≤ top)
      (low_le : low ≤ middle)
      law,
      projectLaw low_le
          (projectLaw middle_le law) =
        projectLaw
          (low_le.trans middle_le) law
  restrictSchedule_refl :
    ∀ stage schedule,
      restrictSchedule
          (le_refl stage) schedule =
        schedule
  restrictSchedule_trans :
    ∀ {top middle low}
      (middle_le : middle ≤ top)
      (low_le : low ≤ middle)
      schedule,
      restrictSchedule low_le
          (restrictSchedule middle_le schedule) =
        restrictSchedule
          (low_le.trans middle_le) schedule
  restrict_lift :
    ∀ {high low}
      (low_le : low ≤ high),
      Function.LeftInverse
        (restrictSchedule low_le)
        (liftSchedule low_le)
  defaultScheduleCompatible :
    ∀ {high low}
      (low_le : low ≤ high),
      restrictSchedule low_le
          (cut high).closure.dynamics.defaultSchedule =
        (cut low).closure.dynamics.defaultSchedule
  projectStateNonexpansive :
    ∀ {high low}
      (low_le : low ≤ high)
      left right,
      (cut low).closure.system.metric.distance
          (projectState low_le left)
          (projectState low_le right) ≤
        (cut high).closure.system.metric.distance
          left right
  projectLawNonexpansive :
    ∀ {high low}
      (low_le : low ≤ high)
      left right,
      (cut low).closure.lawCarrier.wasserstein
          (projectLaw low_le left)
          (projectLaw low_le right) ≤
        (cut high).closure.lawCarrier.wasserstein
          left right
  kernelCompatible :
    ∀ {high low}
      (low_le : low ≤ high)
      schedule law,
      projectLaw low_le
          ((cut high).closure.lawCarrier.push
            ((cut high).closure.dynamics.kernel
              schedule)
            law) =
        (cut low).closure.lawCarrier.push
          ((cut low).closure.dynamics.kernel
            (restrictSchedule low_le schedule))
          (projectLaw low_le law)
  uniformContraction : ℝ≥0
  uniformContraction_lt_one :
    uniformContraction < 1
  contractionUniform :
    ∀ stage,
      (cut stage).closure.dynamics.contraction ≤
        uniformContraction

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ProjectiveSystem/Variant0bbe9a876f0e44662e119748091b1a4e8e93a5c004f891c879575680a907304f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ProjectiveSystem/Variant0bbe9a876f0e44662e119748091b1a4e8e93a5c004f891c879575680a907304f.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e915dcae6c58c72116ee66b7afe53ab7f6ed2476` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
