# aux_archimedeanClassOrderHom_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f624efb3-f5c8-191a-cf3f-8c0c94746748",
  "kind": "theorem",
  "lexical_name": "aux_archimedeanClassOrderHom_injective",
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
  "slug": "aux-archimedeanclassorderhom-injective--1142414f1d44eb6436bce6cd",
  "source": {
    "blob": "d1a386df11ae7fb1a05eeff62d88845871384cf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 399,
    "line": 392,
    "path": "GRWTSK/Algebra/UniversalAlgebra/DivisibleHull/Variantb9c8defc6cc593744e8ba152a8e93b52b32c9bddf9f2c28b93e39e75fd3d635b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1142414f1d44eb6436bce6cde569bf481e34d360613a252e89b0655d6c0a379c",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/DivisibleHull/Variantb9c8defc6cc593744e8ba152a8e93b52b32c9bddf9f2c28b93e39e75fd3d635b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f624efb3-f5c8-191a-cf3f-8c0c94746748`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 392–399.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem aux_archimedeanClassOrderHom_injective :
    Function.Injective (archimedeanClassOrderHom M) :=
  ArchimedeanClass.orderHom_injective coe_injective

set_option backward.privateInPublic true in
variable (M) in
/-- Backward direction of `archimedeanClassOrderIso`. -/
private noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/DivisibleHull/Variantb9c8defc6cc593744e8ba152a8e93b52b32c9bddf9f2c28b93e39e75fd3d635b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/DivisibleHull/Variantb9c8defc6cc593744e8ba152a8e93b52b32c9bddf9f2c28b93e39e75fd3d635b.lean#L392).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1a386df11ae7fb1a05eeff62d88845871384cf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
