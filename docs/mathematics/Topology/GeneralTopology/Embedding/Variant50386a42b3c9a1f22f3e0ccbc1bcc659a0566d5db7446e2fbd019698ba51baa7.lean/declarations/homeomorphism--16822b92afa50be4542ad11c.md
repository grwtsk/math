# Homeomorphism

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:24bbbacc4047c4476bac11a118e55e0b965e886fb84ffecbe881db365f6f8272",
  "kind": "structure",
  "lexical_name": "Homeomorphism",
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
  "slug": "homeomorphism--16822b92afa50be4542ad11c",
  "source": {
    "blob": "bbe66f5b352fd255138ea39278a4a2da24098f11",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26,
    "line": 16,
    "path": "GRWTSK/Topology/GeneralTopology/Embedding/Variant50386a42b3c9a1f22f3e0ccbc1bcc659a0566d5db7446e2fbd019698ba51baa7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:16822b92afa50be4542ad11cad7cca4728b062f5a6e956a0a79e716a9b2c7ec3",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Embedding/Variant50386a42b3c9a1f22f3e0ccbc1bcc659a0566d5db7446e2fbd019698ba51baa7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:24bbbacc4047c4476bac11a118e55e0b965e886fb84ffecbe881db365f6f8272`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 16–26.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Homeomorphism
    (X : Type u) (Y : Type v)
    (TX : TopologicalSpaceLike X)
    (TY : TopologicalSpaceLike Y) where
  toFun : X → Y
  invFun : Y → X
  leftInverse : ∀ x, invFun (toFun x) = x
  rightInverse : ∀ y, toFun (invFun y) = y
  continuous_toFun : Continuous TX TY toFun
  continuous_invFun : Continuous TY TX invFun

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Embedding/Variant50386a42b3c9a1f22f3e0ccbc1bcc659a0566d5db7446e2fbd019698ba51baa7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Embedding/Variant50386a42b3c9a1f22f3e0ccbc1bcc659a0566d5db7446e2fbd019698ba51baa7.lean#L16).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbe66f5b352fd255138ea39278a4a2da24098f11` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
