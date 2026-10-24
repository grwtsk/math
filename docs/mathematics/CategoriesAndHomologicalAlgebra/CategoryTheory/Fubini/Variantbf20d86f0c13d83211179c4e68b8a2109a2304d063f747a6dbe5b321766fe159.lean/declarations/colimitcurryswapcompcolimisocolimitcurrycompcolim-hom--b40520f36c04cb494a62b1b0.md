# colimitCurrySwapCompColimIsoColimitCurryCompColim_ι_ι_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:34d11102-08be-a180-8b20-360a1f019628",
  "kind": "theorem",
  "lexical_name": "colimitCurrySwapCompColimIsoColimitCurryCompColim_ι_ι_hom",
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
  "slug": "colimitcurryswapcompcolimisocolimitcurrycompcolim-hom--b40520f36c04cb494a62b1b0",
  "source": {
    "blob": "939ceb4c1d9088653e2199fab5a7241a98fce3c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 709,
    "line": 701,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variantbf20d86f0c13d83211179c4e68b8a2109a2304d063f747a6dbe5b321766fe159.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b40520f36c04cb494a62b1b027ffe24b133308ae1be5c65b879afe77e92c8c17",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variantbf20d86f0c13d83211179c4e68b8a2109a2304d063f747a6dbe5b321766fe159.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34d11102-08be-a180-8b20-360a1f019628`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 701–709.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem colimitCurrySwapCompColimIsoColimitCurryCompColim_ι_ι_hom {j} {k} :
    colimit.ι _ j ≫ colimit.ι (curry.obj (Prod.swap K J ⋙ G) ⋙ colim) k ≫
      (colimitCurrySwapCompColimIsoColimitCurryCompColim G).hom =
        (colimit.ι _ k ≫ colimit.ι (curry.obj G ⋙ colim) j : _ ⟶ colimit (curry.obj G⋙ colim)) := by
  dsimp [colimitCurrySwapCompColimIsoColimitCurryCompColim]
  slice_lhs 1 3 => simp only []
  simp

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variantbf20d86f0c13d83211179c4e68b8a2109a2304d063f747a6dbe5b321766fe159.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variantbf20d86f0c13d83211179c4e68b8a2109a2304d063f747a6dbe5b321766fe159.lean#L701).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `939ceb4c1d9088653e2199fab5a7241a98fce3c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
