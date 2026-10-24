# _root_.CompleteSpace.mulOpposite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b9173bc9d1136b10b60eab7a99ec065888e685ed2c3141806db167c8cad1b732",
  "kind": "instance",
  "lexical_name": "_root_.CompleteSpace.mulOpposite",
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
  "slug": "root-completespace-mulopposite--aeb39556e8b5e3c9cbf0a380",
  "source": {
    "blob": "dd6ae3f4c0392ae2c8cdbd5b3ed9f804c20a56ad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 375,
    "line": 369,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Equiv/Variantb4ea52d77fae444b0126ff5eb24782ac667392760473e948b234bda6970c0c8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:aeb39556e8b5e3c9cbf0a380a76077d823baf08915b6f6e5840163e32b0c24a6",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Equiv/Variantb4ea52d77fae444b0126ff5eb24782ac667392760473e948b234bda6970c0c8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b9173bc9d1136b10b60eab7a99ec065888e685ed2c3141806db167c8cad1b732`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 369–375.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance _root_.CompleteSpace.mulOpposite [CompleteSpace α] : CompleteSpace αᵐᵒᵖ :=
  completeSpace_mulOpposite_iff.2 ‹CompleteSpace α›

end

/-- If `ι` has a unique element, then `ι → α` is uniformly isomorphic to `α`. -/
@[simps! -fullyApplied]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Equiv/Variantb4ea52d77fae444b0126ff5eb24782ac667392760473e948b234bda6970c0c8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Equiv/Variantb4ea52d77fae444b0126ff5eb24782ac667392760473e948b234bda6970c0c8b.lean#L369).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd6ae3f4c0392ae2c8cdbd5b3ed9f804c20a56ad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
