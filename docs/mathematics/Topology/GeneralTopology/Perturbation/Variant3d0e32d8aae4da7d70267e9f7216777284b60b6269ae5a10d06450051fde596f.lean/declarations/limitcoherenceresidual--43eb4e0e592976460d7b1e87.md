# LimitCoherenceResidual

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8bad7ae23783e8b61b09453fbd5075887bf30ec42cba2dbffff05f2307ff6c92",
  "kind": "structure",
  "lexical_name": "LimitCoherenceResidual",
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
  "slug": "limitcoherenceresidual--43eb4e0e592976460d7b1e87",
  "source": {
    "blob": "4befcae1aaadb31e0455d5b6acf838cbbf3f1209",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 143,
    "path": "GRWTSK/Topology/GeneralTopology/Perturbation/Variant3d0e32d8aae4da7d70267e9f7216777284b60b6269ae5a10d06450051fde596f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:43eb4e0e592976460d7b1e87cab85aac50f08549e4be1f1f031d785e4801553d",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Perturbation/Variant3d0e32d8aae4da7d70267e9f7216777284b60b6269ae5a10d06450051fde596f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8bad7ae23783e8b61b09453fbd5075887bf30ec42cba2dbffff05f2307ff6c92`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 143–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LimitCoherenceResidual where
  residual : Nat → ℝ≥0
  exactProjectiveClosure : Prop
  exactProjectiveClosure_iff :
    exactProjectiveClosure ↔
      ∀ stage, residual stage = 0
  approximateProjectiveClosure : Prop
  approximateProjectiveClosure_iff :
    approximateProjectiveClosure ↔
      Tendsto residual atTop (𝓝 0)

end Mathematics.StratifiedBoundary.Boundary
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Perturbation/Variant3d0e32d8aae4da7d70267e9f7216777284b60b6269ae5a10d06450051fde596f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Perturbation/Variant3d0e32d8aae4da7d70267e9f7216777284b60b6269ae5a10d06450051fde596f.lean#L143).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4befcae1aaadb31e0455d5b6acf838cbbf3f1209` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
