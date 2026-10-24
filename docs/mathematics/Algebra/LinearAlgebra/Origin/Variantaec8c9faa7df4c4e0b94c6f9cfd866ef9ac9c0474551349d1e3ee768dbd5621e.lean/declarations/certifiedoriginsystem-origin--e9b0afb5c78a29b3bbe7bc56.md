# CertifiedOriginSystem.origin

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ac371a9f8a7820f78a4b5b82de9c8a063d9ac6bc80beee67bd062b8520078dbf",
  "kind": "def",
  "lexical_name": "CertifiedOriginSystem.origin",
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
  "slug": "certifiedoriginsystem-origin--e9b0afb5c78a29b3bbe7bc56",
  "source": {
    "blob": "a33b2098da94acc06d40cfeb33c78a653f15672e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 36,
    "path": "GRWTSK/Algebra/LinearAlgebra/Origin/Variantaec8c9faa7df4c4e0b94c6f9cfd866ef9ac9c0474551349d1e3ee768dbd5621e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e9b0afb5c78a29b3bbe7bc565f3b5a549e05597ba7d81a4b9cc5cfca182cc6f6",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Origin/Variantaec8c9faa7df4c4e0b94c6f9cfd866ef9ac9c0474551349d1e3ee768dbd5621e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ac371a9f8a7820f78a4b5b82de9c8a063d9ac6bc80beee67bd062b8520078dbf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CertifiedOriginSystem.origin
    [Field 𝔽]
    [Fintype 𝔽]
    [AddCommGroup V]
    [Module 𝔽 V]
    (system : CertifiedOriginSystem 𝔽 V Obligation)
    (obligation : Obligation) :
    V :=
  system.project (system.encode obligation)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Origin/Variantaec8c9faa7df4c4e0b94c6f9cfd866ef9ac9c0474551349d1e3ee768dbd5621e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Origin/Variantaec8c9faa7df4c4e0b94c6f9cfd866ef9ac9c0474551349d1e3ee768dbd5621e.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a33b2098da94acc06d40cfeb33c78a653f15672e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
