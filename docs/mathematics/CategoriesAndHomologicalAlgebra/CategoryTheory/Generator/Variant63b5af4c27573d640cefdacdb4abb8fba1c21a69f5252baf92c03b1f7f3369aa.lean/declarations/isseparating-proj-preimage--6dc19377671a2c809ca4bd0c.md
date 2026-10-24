# isSeparating_proj_preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1e531367-5814-f020-2c6a-fb22c6fa8f27",
  "kind": "theorem",
  "lexical_name": "isSeparating_proj_preimage",
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
  "slug": "isseparating-proj-preimage--6dc19377671a2c809ca4bd0c",
  "source": {
    "blob": "514fda0a493b8817781bf2258b55d4d977a84098",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 389,
    "line": 381,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant63b5af4c27573d640cefdacdb4abb8fba1c21a69f5252baf92c03b1f7f3369aa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6dc19377671a2c809ca4bd0c5872f4fa1146e8b2722c0582ac7d80ea35149c15",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant63b5af4c27573d640cefdacdb4abb8fba1c21a69f5252baf92c03b1f7f3369aa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1e531367-5814-f020-2c6a-fb22c6fa8f27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 381–389.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isSeparating_proj_preimage {𝒢 : Set C} (h𝒢 : IsSeparating 𝒢) :
    IsSeparating ((proj S T).obj ⁻¹' 𝒢) := by
  refine' fun X Y f g hfg => ext _ _ (h𝒢 _ _ fun G hG h => _)
  exact congr_arg CommaMorphism.left (hfg (mk (S.map h ≫ X.hom)) hG (homMk h rfl))
#align category_theory.costructured_arrow.is_separating_proj_preimage CategoryTheory.CostructuredArrow.isSeparating_proj_preimage

end CostructuredArrow

/-- We say that `G` is a separator if the functor `C(G, -)` is faithful. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant63b5af4c27573d640cefdacdb4abb8fba1c21a69f5252baf92c03b1f7f3369aa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Generator/Variant63b5af4c27573d640cefdacdb4abb8fba1c21a69f5252baf92c03b1f7f3369aa.lean#L381).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `514fda0a493b8817781bf2258b55d4d977a84098` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
