# postEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3e4431232619ee79147ff478015c44d7c925ca90f1c32d10ebd5a0dbd2c9575c",
  "kind": "def",
  "lexical_name": "postEquiv",
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
  "slug": "postequiv--7b6e27722df3ca3b40d80383",
  "source": {
    "blob": "b607f5c5e0efc164049fc7fa33fc1d7e3bba2126",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1051,
    "line": 1039,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant08083fc3727a7c26daa94d0a5c48273b537cacf0d3d983d80ff21ab3c174e36e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7b6e27722df3ca3b40d8038313f1780b2bf6a64a8e18b84c47d453d2e9e95a33",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant08083fc3727a7c26daa94d0a5c48273b537cacf0d3d983d80ff21ab3c174e36e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3e4431232619ee79147ff478015c44d7c925ca90f1c32d10ebd5a0dbd2c9575c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1039–1051.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def postEquiv (F : T ≌ D) : Under X ≌ Under (F.functor.obj X) where
  functor := post F.functor
  inverse := post (X := F.functor.obj X) F.inverse ⋙ Under.map (F.unitIso.hom.app X)
  unitIso := NatIso.ofComponents (fun A ↦ Under.isoMk (F.unitIso.app A.right))
  counitIso := NatIso.ofComponents (fun A ↦ Under.isoMk (F.counitIso.app A.right))

open Limits

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
variable {X} in
/-- If `X : T` is initial, then the under category of `X` is equivalent to `T`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant08083fc3727a7c26daa94d0a5c48273b537cacf0d3d983d80ff21ab3c174e36e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant08083fc3727a7c26daa94d0a5c48273b537cacf0d3d983d80ff21ab3c174e36e.lean#L1039).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b607f5c5e0efc164049fc7fa33fc1d7e3bba2126` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
