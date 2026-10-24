# limitCurrySwapCompLimIsoLimitCurryCompLim_inv_π_π

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52a5a8f6-8204-daca-dd08-e7d71305ee59",
  "kind": "theorem",
  "lexical_name": "limitCurrySwapCompLimIsoLimitCurryCompLim_inv_π_π",
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
  "slug": "limitcurryswapcomplimisolimitcurrycomplim-inv--04b316d3ce21ad14d493ae18",
  "source": {
    "blob": "14e2d8c5b6583d1cbb0092c22851120b84a61231",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 355,
    "line": 340,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Varianta7f3aa89c0e665e3ae7ac8534082aa2f81e325b351e622a9e0def0b9a3ea4532.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04b316d3ce21ad14d493ae1894cfa202849928568728ef14f8afbd7d9d43bd72",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Varianta7f3aa89c0e665e3ae7ac8534082aa2f81e325b351e622a9e0def0b9a3ea4532.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52a5a8f6-8204-daca-dd08-e7d71305ee59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 340–355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem limitCurrySwapCompLimIsoLimitCurryCompLim_inv_π_π {j} {k} :
    (limitCurrySwapCompLimIsoLimitCurryCompLim G).inv ≫ limit.π _ k ≫ limit.π _ j =
      (limit.π _ j ≫ limit.π _ k : limit (_ ⋙ lim) ⟶ _) := by
  dsimp [limitCurrySwapCompLimIsoLimitCurryCompLim]
  simp only [Iso.refl_hom, Prod.braiding_counitIso_hom_app, Limits.HasLimit.isoOfEquivalence_inv_π,
    Iso.refl_inv, limitIsoLimitCurryCompLim_hom_π_π, eqToIso_refl, Category.assoc]
  erw [NatTrans.id_app]
  -- Porting note: `simp` can do this in lean 4.
  simp
#align category_theory.limits.limit_curry_swap_comp_lim_iso_limit_curry_comp_lim_inv_π_π CategoryTheory.Limits.limitCurrySwapCompLimIsoLimitCurryCompLim_inv_π_π

end

end

end CategoryTheory.Limits
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Varianta7f3aa89c0e665e3ae7ac8534082aa2f81e325b351e622a9e0def0b9a3ea4532.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Varianta7f3aa89c0e665e3ae7ac8534082aa2f81e325b351e622a9e0def0b9a3ea4532.lean#L340).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `14e2d8c5b6583d1cbb0092c22851120b84a61231` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
