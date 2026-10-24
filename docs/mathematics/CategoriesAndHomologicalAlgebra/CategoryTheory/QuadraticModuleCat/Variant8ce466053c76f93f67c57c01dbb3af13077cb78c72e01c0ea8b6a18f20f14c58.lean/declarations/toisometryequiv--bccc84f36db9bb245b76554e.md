# toIsometryEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0ed861c788a15f059a72f70c700e15052adf43289186166e899e189da40fd7e3",
  "kind": "def",
  "lexical_name": "toIsometryEquiv",
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
  "slug": "toisometryequiv--bccc84f36db9bb245b76554e",
  "source": {
    "blob": "41e3a83462bc3958c4a8ecf1ed13a65169b5be4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 147,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/QuadraticModuleCat/Variant8ce466053c76f93f67c57c01dbb3af13077cb78c72e01c0ea8b6a18f20f14c58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bccc84f36db9bb245b76554ec2db585155fa82fcf201ee9d5b8875ba8f00234e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/QuadraticModuleCat/Variant8ce466053c76f93f67c57c01dbb3af13077cb78c72e01c0ea8b6a18f20f14c58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0ed861c788a15f059a72f70c700e15052adf43289186166e899e189da40fd7e3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 147–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toIsometryEquiv (i : X ≅ Y) : X.form.IsometryEquiv Y.form where
  toFun := i.hom.toIsometry
  invFun := i.inv.toIsometry
  left_inv x := by
    change (i.hom ≫ i.inv).toIsometry x = x
    simp
  right_inv x := by
    change (i.inv ≫ i.hom).toIsometry x = x
    simp
  map_add' := map_add _
  map_smul' := map_smul _
  map_app' := QuadraticMap.Isometry.map_app _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/QuadraticModuleCat/Variant8ce466053c76f93f67c57c01dbb3af13077cb78c72e01c0ea8b6a18f20f14c58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/QuadraticModuleCat/Variant8ce466053c76f93f67c57c01dbb3af13077cb78c72e01c0ea8b6a18f20f14c58.lean#L147).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `41e3a83462bc3958c4a8ecf1ed13a65169b5be4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
