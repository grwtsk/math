# toOpen_comp_locallyRingedSpaceAdjunction_homEquiv_app

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:843e7248-14df-ec23-9d4b-b8b652dfe2ad",
  "kind": "lemma",
  "lexical_name": "toOpen_comp_locallyRingedSpaceAdjunction_homEquiv_app",
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
  "slug": "toopen-comp-locallyringedspaceadjunction-homequiv-app--eab6982787428480fecab79d",
  "source": {
    "blob": "737bd9ec6c97ad20d21b058ff46eaa90fedd89c5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 383,
    "line": 368,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variantfe29af895985fe06610441f9b6f89bee912a26f321cca035dd280dcf22de10f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eab6982787428480fecab79d06dc8d94b687f0674035014311c54ec68a1f47a8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variantfe29af895985fe06610441f9b6f89bee912a26f321cca035dd280dcf22de10f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:843e7248-14df-ec23-9d4b-b8b652dfe2ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 368–383.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma toOpen_comp_locallyRingedSpaceAdjunction_homEquiv_app
    {X : LocallyRingedSpace} {R : Type u} [CommRing R]
    (f : Γ.rightOp.obj X ⟶ op (CommRingCat.of R)) (U) :
    StructureSheaf.toOpen R U.unop ≫
      (locallyRingedSpaceAdjunction.homEquiv X (op <| CommRingCat.of R) f).c.app U =
    f.unop ≫ X.presheaf.map (homOfLE le_top).op := by
  rw [← StructureSheaf.toOpen_res _ _ _ (homOfLE le_top), Category.assoc,
    NatTrans.naturality _ (homOfLE (le_top (a := U.unop))).op,
    show (toOpen R ⊤) = (toOpen R ⊤).op.unop from rfl,
    ← locallyRingedSpaceAdjunction_counit_app']
  simp_rw [← Γ_map_op]
  rw [← Γ.rightOp_map_unop, ← Category.assoc, ← unop_comp, ← Adjunction.homEquiv_counit,
    Equiv.symm_apply_apply]
  rfl

/-- The adjunction `Γ ⊣ Spec` from `CommRingᵒᵖ` to `Scheme`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variantfe29af895985fe06610441f9b6f89bee912a26f321cca035dd280dcf22de10f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variantfe29af895985fe06610441f9b6f89bee912a26f321cca035dd280dcf22de10f1.lean#L368).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `737bd9ec6c97ad20d21b058ff46eaa90fedd89c5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
