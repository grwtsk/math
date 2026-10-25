# SuccessorCutConnector

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d769f4e17b79edd7cb2cd694a9037aa61a8d5c6e81ad0b525fa23a7c1cbec01e",
  "kind": "structure",
  "lexical_name": "SuccessorCutConnector",
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
  "slug": "successorcutconnector--cc61382c9c8343317e4269bd",
  "source": {
    "blob": "fdaca42a168d4d80b5b818cb766111f09b62564e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 26,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuccessorConnector/Variant025bf75d599a32da9a18c41dda534dba4a4463cba70b023eea23fc185428867f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cc61382c9c8343317e4269bda34a2cbb7cdacc5763d2108af6b709356e089676",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuccessorConnector/Variant025bf75d599a32da9a18c41dda534dba4a4463cba70b023eea23fc185428867f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d769f4e17b79edd7cb2cd694a9037aa61a8d5c6e81ad0b525fa23a7c1cbec01e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure SuccessorCutConnector
    {limits : LimitSemantics}
    {Scale : Type uScale}
    {TestFunction : Type uTest}
    {Schedule : Type uSchedule}
    (low high :
      FiniteReflectiveCut
        limits Scale TestFunction Schedule) where
  successorStratum :
    high.stratum.value =
      low.stratum.value + 1
  embedState :
    low.State → high.State
  projectState :
    high.State → low.State
  project_embed :
    Function.LeftInverse projectState embedState
  projectStateNonexpansive :
    ∀ left right,
      low.closure.system.metric.distance
          (projectState left)
          (projectState right) ≤
        high.closure.system.metric.distance
          left right
  embedLaw :
    low.Law → high.Law
  projectLaw :
    high.Law → low.Law
  projectLaw_embedLaw :
    Function.LeftInverse projectLaw embedLaw
  projectLawNonexpansive :
    ∀ left right,
      low.closure.lawCarrier.wasserstein
          (projectLaw left)
          (projectLaw right) ≤
        high.closure.lawCarrier.wasserstein
          left right
  restrictSchedule :
    Schedule → Schedule
  liftSchedule :
    Schedule → Schedule
  restrict_lift :
    Function.LeftInverse
      restrictSchedule liftSchedule
  kernelCompatible :
    ∀ highSchedule law,
      projectLaw
          (high.closure.lawCarrier.push
            (high.closure.dynamics.kernel
              highSchedule)
            law) =
        low.closure.lawCarrier.push
          (low.closure.dynamics.kernel
            (restrictSchedule highSchedule))
          (projectLaw law)
  stateLawProjectionCompatible : Prop
  stateLawProjectionCompatibleProof :
    stateLawProjectionCompatible
  persistentLineagePreserved : Prop
  persistentLineagePreservedProof :
    persistentLineagePreserved

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuccessorConnector/Variant025bf75d599a32da9a18c41dda534dba4a4463cba70b023eea23fc185428867f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/SuccessorConnector/Variant025bf75d599a32da9a18c41dda534dba4a4463cba70b023eea23fc185428867f.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdaca42a168d4d80b5b818cb766111f09b62564e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
