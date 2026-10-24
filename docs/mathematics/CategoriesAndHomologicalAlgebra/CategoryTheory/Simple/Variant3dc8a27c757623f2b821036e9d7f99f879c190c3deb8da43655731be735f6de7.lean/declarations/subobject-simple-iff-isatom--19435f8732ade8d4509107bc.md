# subobject_simple_iff_isAtom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:24f2e1df-9835-faff-1666-2bbf0ad139d6",
  "kind": "theorem",
  "lexical_name": "subobject_simple_iff_isAtom",
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
  "slug": "subobject-simple-iff-isatom--19435f8732ade8d4509107bc",
  "source": {
    "blob": "0619c135844fcdae76096067ef608f49086f8932",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 254,
    "line": 248,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant3dc8a27c757623f2b821036e9d7f99f879c190c3deb8da43655731be735f6de7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:19435f8732ade8d4509107bcaaa1fcdbb2706aa6238c743e5cda2860aa2df8cc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant3dc8a27c757623f2b821036e9d7f99f879c190c3deb8da43655731be735f6de7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:24f2e1df-9835-faff-1666-2bbf0ad139d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 248–254.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem subobject_simple_iff_isAtom {X : C} (Y : Subobject X) : Simple (Y : C) ↔ IsAtom Y :=
  (simple_iff_subobject_isSimpleOrder _).trans
    ((OrderIso.isSimpleOrder_iff (subobjectOrderIso Y)).trans Set.isSimpleOrder_Iic_iff_isAtom)

end Subobject

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant3dc8a27c757623f2b821036e9d7f99f879c190c3deb8da43655731be735f6de7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Simple/Variant3dc8a27c757623f2b821036e9d7f99f879c190c3deb8da43655731be735f6de7.lean#L248).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0619c135844fcdae76096067ef608f49086f8932` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
