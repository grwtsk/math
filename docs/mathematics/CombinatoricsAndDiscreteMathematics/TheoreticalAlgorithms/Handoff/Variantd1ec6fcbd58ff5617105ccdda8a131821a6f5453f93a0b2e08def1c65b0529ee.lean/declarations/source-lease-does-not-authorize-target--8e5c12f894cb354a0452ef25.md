# source_lease_does_not_authorize_target

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c3b441a-e112-79ae-30b2-7d9d3d96d9e8",
  "kind": "theorem",
  "lexical_name": "source_lease_does_not_authorize_target",
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
  "slug": "source-lease-does-not-authorize-target--8e5c12f894cb354a0452ef25",
  "source": {
    "blob": "1c6a67466842ebcb6fed643507c540919d820bdd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 39,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Handoff/Variantd1ec6fcbd58ff5617105ccdda8a131821a6f5453f93a0b2e08def1c65b0529ee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e5c12f894cb354a0452ef25615256dfe627f2ce409a9ca2a3760ce76b0f0937",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Handoff/Variantd1ec6fcbd58ff5617105ccdda8a131821a6f5453f93a0b2e08def1c65b0529ee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c3b441a-e112-79ae-30b2-7d9d3d96d9e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem source_lease_does_not_authorize_target
    (handoff : HandoffContext)
    (lease : Lease)
    (revocations : List Revocation)
    (time : Nat)
    (request : OperationRequest)
    (sourceBound :
      lease.capability.device = handoff.sourceDevice)
    (targetBound :
      request.device = handoff.targetDevice) :
    ¬ lease.Allows revocations time request := by
  intro authorization
  apply handoff.devices_distinct
  calc
    handoff.sourceDevice = lease.capability.device := sourceBound.symm
    _ = request.device := authorization.device_bound
    _ = handoff.targetDevice := targetBound

end Mathematics.Capability
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Handoff/Variantd1ec6fcbd58ff5617105ccdda8a131821a6f5453f93a0b2e08def1c65b0529ee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Handoff/Variantd1ec6fcbd58ff5617105ccdda8a131821a6f5453f93a0b2e08def1c65b0529ee.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1c6a67466842ebcb6fed643507c540919d820bdd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
