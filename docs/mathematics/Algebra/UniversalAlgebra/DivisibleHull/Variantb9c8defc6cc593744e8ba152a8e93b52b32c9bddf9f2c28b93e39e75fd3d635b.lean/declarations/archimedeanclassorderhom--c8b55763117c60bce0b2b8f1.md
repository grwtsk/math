# archimedeanClassOrderHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:30dac7ed1ad24e7531d4be0fcc069206492a7bb08dd3af3e9720b2dcc98ce902",
  "kind": "def",
  "lexical_name": "archimedeanClassOrderHom",
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
  "slug": "archimedeanclassorderhom--c8b55763117c60bce0b2b8f1",
  "source": {
    "blob": "d1a386df11ae7fb1a05eeff62d88845871384cf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 385,
    "line": 381,
    "path": "GRWTSK/Algebra/UniversalAlgebra/DivisibleHull/Variantb9c8defc6cc593744e8ba152a8e93b52b32c9bddf9f2c28b93e39e75fd3d635b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c8b55763117c60bce0b2b8f102b9230d43dc4d60592e89c2663e665a8befc6c5",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/DivisibleHull/Variantb9c8defc6cc593744e8ba152a8e93b52b32c9bddf9f2c28b93e39e75fd3d635b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:30dac7ed1ad24e7531d4be0fcc069206492a7bb08dd3af3e9720b2dcc98ce902`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 381–385.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def archimedeanClassOrderHom : ArchimedeanClass M →o ArchimedeanClass (DivisibleHull M) :=
  ArchimedeanClass.orderHom (coeOrderAddMonoidHom M)

set_option backward.privateInPublic true in
/-- See `archimedeanClassOrderIso_symm_apply` for public API. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/DivisibleHull/Variantb9c8defc6cc593744e8ba152a8e93b52b32c9bddf9f2c28b93e39e75fd3d635b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/DivisibleHull/Variantb9c8defc6cc593744e8ba152a8e93b52b32c9bddf9f2c28b93e39e75fd3d635b.lean#L381).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1a386df11ae7fb1a05eeff62d88845871384cf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
