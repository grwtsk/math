# continuousMulEquivToLimit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3463fe79577953c8cd9be45aaccd6bd8992e28a6095e46fdd719626dc87ebd3d",
  "kind": "def",
  "lexical_name": "continuousMulEquivToLimit",
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
  "slug": "continuousmulequivtolimit--505f993e0eb1d1771a379ce8",
  "source": {
    "blob": "98372cc718b11d7a6fb37c36e84f8c25d91de54f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 315,
    "line": 310,
    "path": "GRWTSK/Topology/GeneralTopology/Profinite/Variant9f73dd5f9c68e7fca047cab0fe80d8167586347d35621779abf2a56ac44c83ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:505f993e0eb1d1771a379ce821583c2492049f9e7806c850e120fa47fa25c2a0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Profinite/Variant9f73dd5f9c68e7fca047cab0fe80d8167586347d35621779abf2a56ac44c83ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3463fe79577953c8cd9be45aaccd6bd8992e28a6095e46fdd719626dc87ebd3d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–315.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def continuousMulEquivToLimit [IsGalois k K] :
    (K ≃ₐ[k] K) ≃ₜ* limit (asProfiniteGaloisGroupFunctor k K) where
  toMulEquiv := mulEquivToLimit k K
  continuous_toFun := algEquivToLimit_continuous
  continuous_invFun := mulEquivToLimit_symm_continuous

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Profinite/Variant9f73dd5f9c68e7fca047cab0fe80d8167586347d35621779abf2a56ac44c83ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Profinite/Variant9f73dd5f9c68e7fca047cab0fe80d8167586347d35621779abf2a56ac44c83ab.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `98372cc718b11d7a6fb37c36e84f8c25d91de54f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
