# colimitFlipCompColimIsoColimitCompColim_ι_ι_inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bfcb400f-d5b6-1de1-be71-639918f19a6d",
  "kind": "theorem",
  "lexical_name": "colimitFlipCompColimIsoColimitCompColim_ι_ι_inv",
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
  "slug": "colimitflipcompcolimisocolimitcompcolim-inv--c482c30b70ea011e7579ab6a",
  "source": {
    "blob": "a6efcff2998a3fcc0db95052f7c0624f71424f56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 614,
    "line": 597,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant53dd12a7258c51895796a62403bb01abe119c90ad040fec15ed6f525f0f0f9c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c482c30b70ea011e7579ab6a1acb8c9b90916208e27fe41cb3dbe4ba68756de8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant53dd12a7258c51895796a62403bb01abe119c90ad040fec15ed6f525f0f0f9c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bfcb400f-d5b6-1de1-be71-639918f19a6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 597–614.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem colimitFlipCompColimIsoColimitCompColim_ι_ι_inv (k) (j) :
    colimit.ι (F.obj j) k ≫ colimit.ι (F ⋙ colim) j ≫
      (colimitFlipCompColimIsoColimitCompColim F).inv =
        (colimit.ι _ j ≫ colimit.ι (F.flip ⋙ colim) k : _ ⟶ colimit (F.flip ⋙ colim)) := by
  dsimp [colimitFlipCompColimIsoColimitCompColim]
  conv_lhs => slice 1 3
  simp [Equivalence.counitInv]

end

section

variable [HasLimitsOfShape K C] [HasLimit (curry.obj G ⋙ lim)]

/-- The Fubini theorem for a functor `G : J × K ⥤ C`,
showing that the limit of `G` can be computed as
the limit of the limits of the functors `G.obj (j, _)`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant53dd12a7258c51895796a62403bb01abe119c90ad040fec15ed6f525f0f0f9c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant53dd12a7258c51895796a62403bb01abe119c90ad040fec15ed6f525f0f0f9c3.lean#L597).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6efcff2998a3fcc0db95052f7c0624f71424f56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
