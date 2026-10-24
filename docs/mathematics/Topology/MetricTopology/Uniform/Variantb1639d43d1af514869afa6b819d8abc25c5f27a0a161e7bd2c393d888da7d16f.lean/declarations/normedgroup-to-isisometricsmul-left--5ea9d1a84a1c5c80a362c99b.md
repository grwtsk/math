# NormedGroup.to_isIsometricSMul_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:09ba87b52ea0acf0034266b7cd95e2413aaaf53fddf2c29665b6ee29adeb407e",
  "kind": "instance",
  "lexical_name": "NormedGroup.to_isIsometricSMul_left",
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
  "slug": "normedgroup-to-isisometricsmul-left--5ea9d1a84a1c5c80a362c99b",
  "source": {
    "blob": "8a9b3355a7c933dd6917d0b676aa637e6470b729",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 201,
    "path": "GRWTSK/Topology/MetricTopology/Uniform/Variantb1639d43d1af514869afa6b819d8abc25c5f27a0a161e7bd2c393d888da7d16f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5ea9d1a84a1c5c80a362c99bd2f9baac5733eacc33e83a8980161dee7994b90a",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Uniform/Variantb1639d43d1af514869afa6b819d8abc25c5f27a0a161e7bd2c393d888da7d16f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:09ba87b52ea0acf0034266b7cd95e2413aaaf53fddf2c29665b6ee29adeb407e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance NormedGroup.to_isIsometricSMul_left : IsIsometricSMul E E :=
  ⟨fun a => Isometry.of_dist_eq fun b c => by simp [dist_eq_norm_div]⟩

@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Uniform/Variantb1639d43d1af514869afa6b819d8abc25c5f27a0a161e7bd2c393d888da7d16f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Uniform/Variantb1639d43d1af514869afa6b819d8abc25c5f27a0a161e7bd2c393d888da7d16f.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a9b3355a7c933dd6917d0b676aa637e6470b729` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
