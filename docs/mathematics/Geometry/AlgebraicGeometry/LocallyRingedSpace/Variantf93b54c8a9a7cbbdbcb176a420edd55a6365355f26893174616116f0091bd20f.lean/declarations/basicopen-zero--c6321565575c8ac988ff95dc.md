# basicOpen_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "4367ae2db3a858e4a4f80a2881cc3f3025db1bfd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 313,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f9/f93b54c8a9a7cbbdbcb176a420edd55a6365355f26893174616116f0091bd20f.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2d04e675-d77a-bada-9989-6304ed06ba6b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:8d31d132-36c2-f364-0cfe-42f7ef0c983f",
  "kind": "theorem",
  "lexical_name": "basicOpen_zero",
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
  "slug": "basicopen-zero--c6321565575c8ac988ff95dc",
  "source": {
    "blob": "4367ae2db3a858e4a4f80a2881cc3f3025db1bfd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 325,
    "line": 313,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf93b54c8a9a7cbbdbcb176a420edd55a6365355f26893174616116f0091bd20f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6321565575c8ac988ff95dc5f17bdbf3ed02029851b19e7100dfcbd27d53bfe",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf93b54c8a9a7cbbdbcb176a420edd55a6365355f26893174616116f0091bd20f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8d31d132-36c2-f364-0cfe-42f7ef0c983f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 313–325.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem basicOpen_zero (X : LocallyRingedSpace) (U : Opens X.carrier) :
    X.toRingedSpace.basicOpen (0 : X.presheaf.obj <| op U) = ⊥ := by
  ext x
  simp only [RingedSpace.basicOpen, Opens.coe_mk, Set.mem_image, Set.mem_setOf_eq, Subtype.exists,
    exists_and_right, exists_eq_right, Opens.coe_bot, Set.mem_empty_iff_false,
    iff_false, not_exists]
  intros hx
  rw [map_zero, isUnit_zero_iff]
  change (0 : X.stalk x) ≠ (1 : X.stalk x)
  exact zero_ne_one
set_option linter.uppercaseLean3 false in
#align algebraic_geometry.LocallyRingedSpace.basic_open_zero AlgebraicGeometry.LocallyRingedSpace.basicOpen_zero

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf93b54c8a9a7cbbdbcb176a420edd55a6365355f26893174616116f0091bd20f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/LocallyRingedSpace/Variantf93b54c8a9a7cbbdbcb176a420edd55a6365355f26893174616116f0091bd20f.lean#L313).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4367ae2db3a858e4a4f80a2881cc3f3025db1bfd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
