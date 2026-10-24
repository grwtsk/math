# AdmittedProjectiveTrajectory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:13d0c2e16cdb1b2bf5e426f38f4793482a90fd61cc400d817316a666f14fa1e3",
  "kind": "structure",
  "lexical_name": "AdmittedProjectiveTrajectory",
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
  "slug": "admittedprojectivetrajectory--12b88e181367eea135cda30a",
  "source": {
    "blob": "ad9f0b1c519ce2c5a6b756eee360d06dede2ade2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 348,
    "line": 331,
    "path": "GRWTSK/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant64474d017db084c6f5b47ae089612cdba75f6d36e5517d24965c7e7aa8faecea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:12b88e181367eea135cda30a58c6067c3327858e9d2aba42e66cff6fa609b510",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant64474d017db084c6f5b47ae089612cdba75f6d36e5517d24965c7e7aa8faecea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:13d0c2e16cdb1b2bf5e426f38f4793482a90fd61cc400d817316a666f14fa1e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–348.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AdmittedProjectiveTrajectory
    {signal : ErrorTrajectory}
    {FineTube CoarseTube Grain : Type*}
    [DecidableEq FineTube] [DecidableEq CoarseTube] [DecidableEq Grain]
    (encoding : SpatialEncodedTrajectory signal FineTube CoarseTube Grain) where
  state : ℝ → H
  state_ne_zero : ∀ parameter, state parameter ≠ 0
  observation : H →L[ℂ] ℂ
  observation_state : ∀ parameter, observation (state parameter) = signal parameter
  gamma_continuous : Continuous (projectiveTrajectory state state_ne_zero)
  flatTransport :
    ProjectivePathFlatnessCertificate
      (projectiveTrajectory state state_ne_zero)
  ledger : AdmissionLedger ℝ (fun source target ↦ source < target)

/-- Honest existence proposition.  No global instance and no inhabitant for a
prime-error signal is installed by this module. -/
@[expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant64474d017db084c6f5b47ae089612cdba75f6d36e5517d24965c7e7aa8faecea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/PrimeWalkTrajectoryAdmission/Variant64474d017db084c6f5b47ae089612cdba75f6d36e5517d24965c7e7aa8faecea.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ad9f0b1c519ce2c5a6b756eee360d06dede2ade2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
