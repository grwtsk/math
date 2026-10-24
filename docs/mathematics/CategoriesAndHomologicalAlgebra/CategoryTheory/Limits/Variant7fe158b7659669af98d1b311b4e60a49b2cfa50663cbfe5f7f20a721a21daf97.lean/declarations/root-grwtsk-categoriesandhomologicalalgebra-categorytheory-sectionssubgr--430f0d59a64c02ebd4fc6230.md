# _root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SectionsSubgroup.Variant21db22ea83d6d001e2714a037a8e9ae86f1c0c389e3d41708df499b270f06b83.AddCommGrpCat.forget_preservesLimits

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:daa2e517f0f1b2dae5807782c8fc3cc854455b6c9f647052c9f8d108a21ddb40",
  "kind": "instance",
  "lexical_name": "_root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SectionsSubgroup.Variant21db22ea83d6d001e2714a037a8e9ae86f1c0c389e3d41708df499b270f06b83.AddCommGrpCat.forget_preservesLimits",
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
  "slug": "root-grwtsk-categoriesandhomologicalalgebra-categorytheory-sectionssubgr--430f0d59a64c02ebd4fc6230",
  "source": {
    "blob": "b8ab78ec5ad6b274ddead82a48b76f6a93cdc62b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 421,
    "line": 417,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant7fe158b7659669af98d1b311b4e60a49b2cfa50663cbfe5f7f20a721a21daf97.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:430f0d59a64c02ebd4fc6230cfe0df9621ddb78a9eeb15a31d84cbb0cedb05a7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant7fe158b7659669af98d1b311b4e60a49b2cfa50663cbfe5f7f20a721a21daf97.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:daa2e517f0f1b2dae5807782c8fc3cc854455b6c9f647052c9f8d108a21ddb40`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 417–421.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance _root_.GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.SectionsSubgroup.Variant21db22ea83d6d001e2714a037a8e9ae86f1c0c389e3d41708df499b270f06b83.AddCommGrpCat.forget_preservesLimits :
    PreservesLimits (forget AddCommGrpCat.{u}) :=
  AddCommGrpCat.forget_preservesLimitsOfSize.{u, u}

@[to_additive existing]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant7fe158b7659669af98d1b311b4e60a49b2cfa50663cbfe5f7f20a721a21daf97.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variant7fe158b7659669af98d1b311b4e60a49b2cfa50663cbfe5f7f20a721a21daf97.lean#L417).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b8ab78ec5ad6b274ddead82a48b76f6a93cdc62b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
