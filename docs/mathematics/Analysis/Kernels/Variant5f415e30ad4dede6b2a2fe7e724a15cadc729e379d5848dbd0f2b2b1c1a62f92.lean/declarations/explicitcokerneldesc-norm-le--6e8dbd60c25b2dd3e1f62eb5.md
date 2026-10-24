# explicitCokernelDesc_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9e75b1fa-17ec-59b6-6197-f35caddf33ee",
  "kind": "theorem",
  "lexical_name": "explicitCokernelDesc_norm_le",
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
  "slug": "explicitcokerneldesc-norm-le--6e8dbd60c25b2dd3e1f62eb5",
  "source": {
    "blob": "e238e1e26c1fd7077231d8b68c2bede27497d7d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 368,
    "line": 361,
    "path": "GRWTSK/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6e8dbd60c25b2dd3e1f62eb521243791fae13ffed347a3195bbc622583f3d060",
  "verification": {
    "reference": "docs/verification/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9e75b1fa-17ec-59b6-6197-f35caddf33ee`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 361–368.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem explicitCokernelDesc_norm_le {X Y Z : SemiNormedGroupCat.{u}} {f : X ⟶ Y} {g : Y ⟶ Z}
    (w : f ≫ g = 0) : ‖explicitCokernelDesc w‖ ≤ ‖g‖ :=
  explicitCokernelDesc_norm_le_of_norm_le w ‖g‖₊ le_rfl
set_option linter.uppercaseLean3 false in
#align SemiNormedGroup.explicit_cokernel_desc_norm_le SemiNormedGroupCat.explicitCokernelDesc_norm_le

/-- The explicit cokernel is isomorphic to the usual cokernel. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/Kernels/Variant5f415e30ad4dede6b2a2fe7e724a15cadc729e379d5848dbd0f2b2b1c1a62f92.lean#L361).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e238e1e26c1fd7077231d8b68c2bede27497d7d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
