# coconeQuotientDiag

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6eb39eef4c8f3ba587d4de7b94742c655bfb717d3d6acfefb7d15019e7fe20e8",
  "kind": "def",
  "lexical_name": "coconeQuotientDiag",
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
  "slug": "coconequotientdiag--cba20df0c8d4e89d65cd88c1",
  "source": {
    "blob": "0fcfabe2d1396c1c6065c46909fd981163e2644d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 154,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant4f88c4c26c552a41a2351ae6239c2d302299c44dca7c973f33f2d9f6eee288cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cba20df0c8d4e89d65cd88c1dbe1d142b55cc763a16b18230cd484af4c1bec50",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant4f88c4c26c552a41a2351ae6239c2d302299c44dca7c973f33f2d9f6eee288cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6eb39eef4c8f3ba587d4de7b94742c655bfb717d3d6acfefb7d15019e7fe20e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 154–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def coconeQuotientDiag :
    Cocone (quotientDiag V h u ⋙ functorToAction F) where
  pt := Aut F ⧸ₐ V.toSubgroup
  ι := SingleObj.natTrans (u.hom ≫ quotientToQuotientOfLE V.toSubgroup U.toSubgroup hUinV) <| by
    intro (m : V ⧸ Subgroup.subgroupOf U V)
    simp only [const_obj_obj, Functor.comp_map, const_obj_map, Category.comp_id]
    rw [← cancel_epi (u.inv), Iso.inv_hom_id_assoc]
    apply Action.hom_ext
    ext (x : Aut F ⧸ U.toSubgroup)
    induction' m, x using Quotient.inductionOn₂ with σ μ
    suffices h : ⟦μ * σ⁻¹⟧ = ⟦μ⟧ by
      simp only [quotientToQuotientOfLE_hom_mk, quotientDiag_map,
        functorToAction_map_quotientToEndObjectHom V _ u]
      simpa
    apply Quotient.sound
    apply (QuotientGroup.leftRel_apply).mpr
    simp

@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant4f88c4c26c552a41a2351ae6239c2d302299c44dca7c973f33f2d9f6eee288cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant4f88c4c26c552a41a2351ae6239c2d302299c44dca7c973f33f2d9f6eee288cf.lean#L154).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0fcfabe2d1396c1c6065c46909fd981163e2644d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
