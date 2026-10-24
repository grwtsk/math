# limitCurrySwapCompLimIsoLimitCurryCompLim_inv_π_π

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8a203a49b24faf9425fbf273d9fdfa91eabd41fd",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 332,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7b/7be21cd24d780e93e5a2d7258d8677ba7420e3cc74b25f97a1b4e6ef4d1e1340.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9a146013-0c5c-28b0-3309-c8f83210563a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:70404fed-b6ac-8965-287a-c735fbf8fafb",
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
  "slug": "limitcurryswapcomplimisolimitcurrycomplim-inv--ce2e470de3c6edb352572498",
  "source": {
    "blob": "8a203a49b24faf9425fbf273d9fdfa91eabd41fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 347,
    "line": 332,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant7be21cd24d780e93e5a2d7258d8677ba7420e3cc74b25f97a1b4e6ef4d1e1340.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce2e470de3c6edb352572498b00fcd088998a394f7a930cbec0f8210b9a08650",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant7be21cd24d780e93e5a2d7258d8677ba7420e3cc74b25f97a1b4e6ef4d1e1340.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:70404fed-b6ac-8965-287a-c735fbf8fafb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–347.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant7be21cd24d780e93e5a2d7258d8677ba7420e3cc74b25f97a1b4e6ef4d1e1340.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Fubini/Variant7be21cd24d780e93e5a2d7258d8677ba7420e3cc74b25f97a1b4e6ef4d1e1340.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8a203a49b24faf9425fbf273d9fdfa91eabd41fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
