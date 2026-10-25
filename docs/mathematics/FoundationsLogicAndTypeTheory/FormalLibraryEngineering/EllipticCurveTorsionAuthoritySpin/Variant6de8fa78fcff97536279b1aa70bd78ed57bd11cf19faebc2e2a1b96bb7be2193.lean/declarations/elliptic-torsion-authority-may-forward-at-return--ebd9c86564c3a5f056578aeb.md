# elliptic_torsion_authority_may_forward_at_return

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f4643f8808ed91af19231dcd02eee234ad3f319f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 176,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6de8fa78fcff97536279b1aa70bd78ed57bd11cf19faebc2e2a1b96bb7be2193.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:87150645-b45d-4869-d904-47432f832523",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c1d2e8b1-44dd-efad-3038-b19362691c71",
  "kind": "theorem",
  "lexical_name": "elliptic_torsion_authority_may_forward_at_return",
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
  "slug": "elliptic-torsion-authority-may-forward-at-return--ebd9c86564c3a5f056578aeb",
  "source": {
    "blob": "f4643f8808ed91af19231dcd02eee234ad3f319f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 187,
    "line": 176,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticCurveTorsionAuthoritySpin/Variant6de8fa78fcff97536279b1aa70bd78ed57bd11cf19faebc2e2a1b96bb7be2193.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ebd9c86564c3a5f056578aeb02cfc5f679cfe6c161eb8245837679b6c40f456a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticCurveTorsionAuthoritySpin/Variant6de8fa78fcff97536279b1aa70bd78ed57bd11cf19faebc2e2a1b96bb7be2193.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c1d2e8b1-44dd-efad-3038-b19362691c71`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 176–187.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem elliptic_torsion_authority_may_forward_at_return
    {Curve : Type u} {Point : Type v} {torsionN authorityN : Nat}
    (B : EllipticCurveTorsionAuthoritySpinBridge Curve Point torsionN authorityN) :
    AuthorityRingMayForward
      (B.authorityOrbit.stateAt
        (transitionIterate
          B.authorityOrbit.carrier.transition
          B.authorityOrbit.period
          B.authorityOrbit.start)) :=
  authority_proof_closed_orbit_may_forward_at_return B.authorityOrbit

/-- Combined bridge: Bertrand certificate, Erdős children, and elliptic torsion closure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticCurveTorsionAuthoritySpin/Variant6de8fa78fcff97536279b1aa70bd78ed57bd11cf19faebc2e2a1b96bb7be2193.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/EllipticCurveTorsionAuthoritySpin/Variant6de8fa78fcff97536279b1aa70bd78ed57bd11cf19faebc2e2a1b96bb7be2193.lean#L176).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f4643f8808ed91af19231dcd02eee234ad3f319f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
