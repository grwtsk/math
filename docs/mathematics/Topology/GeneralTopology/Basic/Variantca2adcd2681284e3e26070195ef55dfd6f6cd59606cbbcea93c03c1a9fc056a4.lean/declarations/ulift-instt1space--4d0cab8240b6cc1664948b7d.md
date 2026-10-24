# ULift.instT1Space

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2b81eccf28f3d27c06256c96a10a44d9db9781a0dfbe4e7ab9f476bf955cd22b",
  "kind": "instance",
  "lexical_name": "ULift.instT1Space",
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
  "slug": "ulift-instt1space--4d0cab8240b6cc1664948b7d",
  "source": {
    "blob": "0c592c2fa323e46713beb19aa30831ced6a00d94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 593,
    "line": 590,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantca2adcd2681284e3e26070195ef55dfd6f6cd59606cbbcea93c03c1a9fc056a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4d0cab8240b6cc1664948b7dc70ec4bab7eb1b6b53d0d0124daa93b002e9451e",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantca2adcd2681284e3e26070195ef55dfd6f6cd59606cbbcea93c03c1a9fc056a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2b81eccf28f3d27c06256c96a10a44d9db9781a0dfbe4e7ab9f476bf955cd22b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 590–593.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance ULift.instT1Space [T1Space X] : T1Space (ULift X) :=
  IsEmbedding.uliftDown.t1Space

-- see Note [lower instance priority]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantca2adcd2681284e3e26070195ef55dfd6f6cd59606cbbcea93c03c1a9fc056a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantca2adcd2681284e3e26070195ef55dfd6f6cd59606cbbcea93c03c1a9fc056a4.lean#L590).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c592c2fa323e46713beb19aa30831ced6a00d94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
