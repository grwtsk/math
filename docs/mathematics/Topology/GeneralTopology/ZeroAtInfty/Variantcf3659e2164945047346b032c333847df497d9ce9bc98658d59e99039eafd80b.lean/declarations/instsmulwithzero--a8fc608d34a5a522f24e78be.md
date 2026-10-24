# instSMulWithZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f2dc9df040860d6f94a74214970b83ff97d524f85775de328c3028e1396ad6dc",
  "kind": "instance",
  "lexical_name": "instSMulWithZero",
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
  "slug": "instsmulwithzero--a8fc608d34a5a522f24e78be",
  "source": {
    "blob": "0868213798a1c636cc1a0cbcb614e9944f61bd1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 317,
    "path": "GRWTSK/Topology/GeneralTopology/ZeroAtInfty/Variantcf3659e2164945047346b032c333847df497d9ce9bc98658d59e99039eafd80b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a8fc608d34a5a522f24e78beaab92cf4ef9b8a5709a7d73a96df9a7802d8a230",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ZeroAtInfty/Variantcf3659e2164945047346b032c333847df497d9ce9bc98658d59e99039eafd80b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f2dc9df040860d6f94a74214970b83ff97d524f85775de328c3028e1396ad6dc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 317–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instSMulWithZero [Zero β] {R : Type*} [Zero R] [SMulWithZero R β]
    [ContinuousConstSMul R β] : SMulWithZero R C₀(α, β) :=
  Function.Injective.smulWithZero ⟨_, coe_zero⟩ FunLike.coe_injective coe_smul

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ZeroAtInfty/Variantcf3659e2164945047346b032c333847df497d9ce9bc98658d59e99039eafd80b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ZeroAtInfty/Variantcf3659e2164945047346b032c333847df497d9ce9bc98658d59e99039eafd80b.lean#L317).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0868213798a1c636cc1a0cbcb614e9944f61bd1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
