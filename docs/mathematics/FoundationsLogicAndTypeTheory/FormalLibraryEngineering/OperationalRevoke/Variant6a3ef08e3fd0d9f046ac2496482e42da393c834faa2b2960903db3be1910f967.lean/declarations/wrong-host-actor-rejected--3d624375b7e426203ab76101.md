# wrong_host_actor_rejected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6e0e383b-e5c5-cc28-e747-f489e2bd87ff",
  "kind": "theorem",
  "lexical_name": "wrong_host_actor_rejected",
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
  "slug": "wrong-host-actor-rejected--3d624375b7e426203ab76101",
  "source": {
    "blob": "3d9b11fd270b6d951d40194a39c1da277a0708be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 459,
    "line": 448,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperationalRevoke/Variant6a3ef08e3fd0d9f046ac2496482e42da393c834faa2b2960903db3be1910f967.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3d624375b7e426203ab7610164c35b585ff9908f0ae92e98ce88716a57f6b543",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperationalRevoke/Variant6a3ef08e3fd0d9f046ac2496482e42da393c834faa2b2960903db3be1910f967.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6e0e383b-e5c5-cc28-e747-f489e2bd87ff`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 448–459.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem wrong_host_actor_rejected {L R E : Type} (state : State L R E) (event : Event)
    (host : HostEvent) (inputCount : ℕ) (wrong : host.actor ≠ event.actor) :
    checkAdmission state event host inputCount = false := by
  have rejected : ¬ Admission state event host inputCount := fun admitted => wrong admitted.2.1.1
  simp [checkAdmission, rejected]

namespace NativeFixture

/- The fixtures retain the native core projection. Ledger, resources and events
are erased to Unit here; their general preservation is `revokeCore_fixed_fields`.
No theorem below identifies an entire native session state with this projection. -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperationalRevoke/Variant6a3ef08e3fd0d9f046ac2496482e42da393c834faa2b2960903db3be1910f967.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperationalRevoke/Variant6a3ef08e3fd0d9f046ac2496482e42da393c834faa2b2960903db3be1910f967.lean#L448).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3d9b11fd270b6d951d40194a39c1da277a0708be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
