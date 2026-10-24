# piComparison_fac

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0ca455ce80b2f6d1611c6c87b8da956818a9aa7b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 48,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fcf2cf69438b88ad9dd0c18a941f682f1e168627ef45ad5ff7b5e6de4d31e72d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2a8ae0a3-f2cd-6bee-85ed-7912b0748f46",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0427fa1c-f153-11ec-1bfd-c262ed86b01c",
  "kind": "theorem",
  "lexical_name": "piComparison_fac",
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
  "slug": "picomparison-fac--bd8feaa1e457ad0d45a39f66",
  "source": {
    "blob": "0ca455ce80b2f6d1611c6c87b8da956818a9aa7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 48,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variantfcf2cf69438b88ad9dd0c18a941f682f1e168627ef45ad5ff7b5e6de4d31e72d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bd8feaa1e457ad0d45a39f66558483619b2ae39b3a4aa633e07d0d61e71fed3d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variantfcf2cf69438b88ad9dd0c18a941f682f1e168627ef45ad5ff7b5e6de4d31e72d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0427fa1c-f153-11ec-1bfd-c262ed86b01c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem piComparison_fac {α : Type} (X : α → TopCat) :
    piComparison (yonedaPresheaf'.{w, w'} Y) (fun x ↦ op (X x)) =
    (yonedaPresheaf' Y).map ((opCoproductIsoProduct X).inv ≫ (TopCat.sigmaIsoSigma X).inv.op) ≫
    (equivEquivIso (sigmaEquiv Y (fun x ↦ (X x).1))).inv ≫ (Types.productIso _).inv := by
  rw [← Category.assoc, Iso.eq_comp_inv]
  ext
  simp only [yonedaPresheaf', unop_op, piComparison, types_comp_apply,
    Types.productIso_hom_comp_eval_apply, Types.pi_lift_π_apply, comp_apply, TopCat.coe_of,
    unop_comp, Quiver.Hom.unop_op, sigmaEquiv, equivEquivIso_hom, Equiv.toIso_inv,
    Equiv.coe_fn_symm_mk, comp_assoc, sigmaMk_apply, ← opCoproductIsoProduct_inv_comp_ι]
  rfl

/-- The universe polymorphic Yoneda presheaf on `TopCat` preserves finite products. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variantfcf2cf69438b88ad9dd0c18a941f682f1e168627ef45ad5ff7b5e6de4d31e72d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Yoneda/Variantfcf2cf69438b88ad9dd0c18a941f682f1e168627ef45ad5ff7b5e6de4d31e72d.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ca455ce80b2f6d1611c6c87b8da956818a9aa7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
