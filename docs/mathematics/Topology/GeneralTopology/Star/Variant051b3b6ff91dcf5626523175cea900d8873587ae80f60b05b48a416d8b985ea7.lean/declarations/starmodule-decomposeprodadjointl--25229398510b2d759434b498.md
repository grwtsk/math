# StarModule.decomposeProdAdjointL

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7444194d7ceeee9e9fdfbe17e6b29992e13243b6f16f8bfcb9abbe32f3724518",
  "kind": "def",
  "lexical_name": "StarModule.decomposeProdAdjointL",
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
  "slug": "starmodule-decomposeprodadjointl--25229398510b2d759434b498",
  "source": {
    "blob": "f00629c9cd1c121644dafe22c8d088fe1e68c14d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 128,
    "path": "GRWTSK/Topology/GeneralTopology/Star/Variant051b3b6ff91dcf5626523175cea900d8873587ae80f60b05b48a416d8b985ea7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:25229398510b2d759434b49832ff383214b0cd122fc3b16f5557d68b9ae32502",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Star/Variant051b3b6ff91dcf5626523175cea900d8873587ae80f60b05b48a416d8b985ea7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7444194d7ceeee9e9fdfbe17e6b29992e13243b6f16f8bfcb9abbe32f3724518`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–130.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def StarModule.decomposeProdAdjointL [IsTopologicalAddGroup A] [ContinuousStar A]
    [ContinuousConstSMul R A] : A ≃L[R] selfAdjoint A × skewAdjoint A where
  toLinearEquiv := StarModule.decomposeProdAdjoint R A
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Star/Variant051b3b6ff91dcf5626523175cea900d8873587ae80f60b05b48a416d8b985ea7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Star/Variant051b3b6ff91dcf5626523175cea900d8873587ae80f60b05b48a416d8b985ea7.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f00629c9cd1c121644dafe22c8d088fe1e68c14d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
