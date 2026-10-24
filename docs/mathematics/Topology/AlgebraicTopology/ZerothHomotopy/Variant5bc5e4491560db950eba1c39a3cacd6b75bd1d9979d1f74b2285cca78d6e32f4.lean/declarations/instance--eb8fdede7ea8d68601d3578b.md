# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:062c44b5905eb186eb32dc09b5a8987a05f777178424cc307a7f010e1787d488",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--eb8fdede7ea8d68601d3578b",
  "source": {
    "blob": "14bbc2d95b911d16e811828ade1b3ed56d4a4949",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 106,
    "path": "GRWTSK/Topology/AlgebraicTopology/ZerothHomotopy/Variant5bc5e4491560db950eba1c39a3cacd6b75bd1d9979d1f74b2285cca78d6e32f4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eb8fdede7ea8d68601d3578b5c5d8b2eed07f91c92f1168ac961f7b2d5aa1081",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/ZerothHomotopy/Variant5bc5e4491560db950eba1c39a3cacd6b75bd1d9979d1f74b2285cca78d6e32f4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:062c44b5905eb186eb32dc09b5a8987a05f777178424cc307a7f010e1787d488`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [PathConnectedSpace X] : (toSSet.obj X).IsConnected := by
  let : Unique (ZerothHomotopy X) := Nonempty.some (by
    rw [unique_iff_subsingleton_and_nonempty]
    constructor <;> infer_instance)
  rw [SSet.isConnected_iff_nonempty_unique]
  exact ⟨zerothHomotopyEquiv.symm.unique⟩

end TopCat
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/AlgebraicTopology/ZerothHomotopy/Variant5bc5e4491560db950eba1c39a3cacd6b75bd1d9979d1f74b2285cca78d6e32f4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/ZerothHomotopy/Variant5bc5e4491560db950eba1c39a3cacd6b75bd1d9979d1f74b2285cca78d6e32f4.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14bbc2d95b911d16e811828ade1b3ed56d4a4949` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
