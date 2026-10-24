# AddGroup.continuousSMul_int

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f1bfb88a6dad11736e72efb04ad51c96b71b102f3bff321ed3e86ae84f4d83f2",
  "kind": "instance",
  "lexical_name": "AddGroup.continuousSMul_int",
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
  "slug": "addgroup-continuoussmul-int--c708df518f7f18eb6cbce601",
  "source": {
    "blob": "c700c2c1d12baa686ee2f9791e165b2cb54926b9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 39,
    "line": 35,
    "path": "GRWTSK/Topology/GeneralTopology/ZPow/Variant3a0d3549b361b3f219d5526a45bd19139b49cc0c83ca59e7400932dbbcea9e75.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c708df518f7f18eb6cbce6018dbde3091d47c069f4709a3f4ddb8c71fd10cbc6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ZPow/Variant3a0d3549b361b3f219d5526a45bd19139b49cc0c83ca59e7400932dbbcea9e75.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f1bfb88a6dad11736e72efb04ad51c96b71b102f3bff321ed3e86ae84f4d83f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 35–39.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance AddGroup.continuousSMul_int {A} [AddGroup A] [TopologicalSpace A]
    [IsTopologicalAddGroup A] : ContinuousSMul ℤ A :=
  ⟨continuous_prod_of_discrete_left.mpr continuous_zsmul⟩

@[to_fun (attr := to_additive (attr := continuity, fun_prop))]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ZPow/Variant3a0d3549b361b3f219d5526a45bd19139b49cc0c83ca59e7400932dbbcea9e75.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ZPow/Variant3a0d3549b361b3f219d5526a45bd19139b49cc0c83ca59e7400932dbbcea9e75.lean#L35).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c700c2c1d12baa686ee2f9791e165b2cb54926b9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
