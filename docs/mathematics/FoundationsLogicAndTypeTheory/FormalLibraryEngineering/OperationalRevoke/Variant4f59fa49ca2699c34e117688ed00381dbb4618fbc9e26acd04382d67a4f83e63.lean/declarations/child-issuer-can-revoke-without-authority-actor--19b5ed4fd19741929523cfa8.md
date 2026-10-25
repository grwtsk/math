# child_issuer_can_revoke_without_authority_actor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe8ab36b-3d89-6008-5c3b-90b5c3227756",
  "kind": "theorem",
  "lexical_name": "child_issuer_can_revoke_without_authority_actor",
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
  "slug": "child-issuer-can-revoke-without-authority-actor--19b5ed4fd19741929523cfa8",
  "source": {
    "blob": "88fac1787917981abc37a2801379433e08cb65c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 566,
    "line": 560,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperationalRevoke/Variant4f59fa49ca2699c34e117688ed00381dbb4618fbc9e26acd04382d67a4f83e63.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19b5ed4fd19741929523cfa80f9b5b4e994e00057d4a05a87f584c8fc46ad1f0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperationalRevoke/Variant4f59fa49ca2699c34e117688ed00381dbb4618fbc9e26acd04382d67a4f83e63.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe8ab36b-3d89-6008-5c3b-90b5c3227756`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 560–566.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem child_issuer_can_revoke_without_authority_actor :
    let event := { delegationEvent with actor := "alice", target := .reference ("alice", "c1") }
    (revokeCore delegationState event).1 = .revoked ∧
      lookup (revokeCore delegationState event).2.grants ("owner", "g1") = some rootRecord := by
  simp [revokeCore, delegationState, authorizedActor, targetKey, lookup,
    childRecord, changed, markRevoked]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperationalRevoke/Variant4f59fa49ca2699c34e117688ed00381dbb4618fbc9e26acd04382d67a4f83e63.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperationalRevoke/Variant4f59fa49ca2699c34e117688ed00381dbb4618fbc9e26acd04382d67a4f83e63.lean#L560).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `88fac1787917981abc37a2801379433e08cb65c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
