# ProjectiveAutomorphismSystem

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:68d9fd103c37e53ce6fa17887c9d9760fdedd68fbba979a1b83e71c994b9433d",
  "kind": "structure",
  "lexical_name": "ProjectiveAutomorphismSystem",
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
  "slug": "projectiveautomorphismsystem--5c274f58b5f5470b5162e9b3",
  "source": {
    "blob": "fff33335a83ffacb25ff9f45d672e2727f695fc3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 19,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LimitAction/Variantb15fc5886d613920d04c510d529c590f1415898aa1272de0bada510cdefb0487.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5c274f58b5f5470b5162e9b3a4eb03c08c4109c5483af278972e26da9fc22f08",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LimitAction/Variantb15fc5886d613920d04c510d529c590f1415898aa1272de0bada510cdefb0487.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:68d9fd103c37e53ce6fa17887c9d9760fdedd68fbba979a1b83e71c994b9433d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure ProjectiveAutomorphismSystem
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (system :
      ProjectiveBoundarySystem
        limits Scale TestFunction Schedule) where
  reduce :
    ∀ {high low},
      low ≤ high →
      (system.cut high).Automorphism →
      (system.cut low).Automorphism
  reduceIdentity :
    ∀ {high low}
      (low_le : low ≤ high),
      reduce low_le 1 = 1
  reduceMultiplication :
    ∀ {high low}
      (low_le : low ≤ high)
      left right,
      reduce low_le (left * right) =
        reduce low_le left *
          reduce low_le right
  reduce_refl :
    ∀ stage automorphism,
      reduce (le_refl stage) automorphism =
        automorphism
  reduce_trans :
    ∀ {top middle low}
      (middle_le : middle ≤ top)
      (low_le : low ≤ middle)
      automorphism,
      reduce low_le
          (reduce middle_le automorphism) =
        reduce
          (low_le.trans middle_le)
          automorphism
  stateProjectionEquivariant :
    ∀ {high low}
      (low_le : low ≤ high)
      automorphism state,
      system.projectState low_le
          ((system.cut high).closure.crossedProduct.action.act
            automorphism state) =
        (system.cut low).closure.crossedProduct.action.act
          (reduce low_le automorphism)
          (system.projectState low_le state)
  lawProjectionEquivariant :
    ∀ {high low}
      (low_le : low ≤ high)
      automorphism law,
      system.projectLaw low_le
          ((system.cut high).cutEquivariance.lawAction
            automorphism law) =
        (system.cut low).cutEquivariance.lawAction
          (reduce low_le automorphism)
          (system.projectLaw low_le law)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LimitAction/Variantb15fc5886d613920d04c510d529c590f1415898aa1272de0bada510cdefb0487.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/LimitAction/Variantb15fc5886d613920d04c510d529c590f1415898aa1272de0bada510cdefb0487.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fff33335a83ffacb25ff9f45d672e2727f695fc3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
