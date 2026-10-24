# coconeQuotientDiagDesc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:624d98405a48e82d7721de45ec154313a9426199cad241c83ec190a46fbeda93",
  "kind": "def",
  "lexical_name": "coconeQuotientDiagDesc",
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
  "slug": "coconequotientdiagdesc--bd65fc41d51fe8040107fafb",
  "source": {
    "blob": "017cc222f3ec68007cfddfcd22d10a4b99e689a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 165,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant6855fcceff1dec43a7b21fd30f10ffcb25b740831a9ffc808d6f6c9c0138e0ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bd65fc41d51fe8040107fafbba84dfd24f3553377f57b9db3184e313c040b70f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant6855fcceff1dec43a7b21fd30f10ffcb25b740831a9ffc808d6f6c9c0138e0ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:624d98405a48e82d7721de45ec154313a9426199cad241c83ec190a46fbeda93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–192.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def coconeQuotientDiagDesc
    (s : Cocone (quotientDiag V h u ⋙ functorToAction F)) :
      (coconeQuotientDiag h u hUinV).pt ⟶ s.pt where
  hom := Quotient.lift (fun σ ↦ (u.inv ≫ s.ι.app (SingleObj.star _)).hom ⟦σ⟧) <| fun σ τ hst ↦ by
    let J' := quotientDiag V h u ⋙ functorToAction F
    let m : End (SingleObj.star (V.toSubgroup ⧸ Subgroup.subgroupOf U V)) :=
      ⟦⟨σ⁻¹ * τ, (QuotientGroup.leftRel_apply).mp hst⟩⟧
    have h1 : J'.map m ≫ s.ι.app (SingleObj.star _) = s.ι.app (SingleObj.star _) := s.ι.naturality m
    conv_rhs => rw [← h1]
    have h2 : (J'.map m).hom (u.inv.hom ⟦τ⟧) = u.inv.hom ⟦σ⟧ := by
      simp only [comp_obj, quotientDiag_obj, Functor.comp_map, quotientDiag_map, J',
        functorToAction_map_quotientToEndObjectHom V h u m]
      show (u.inv ≫ u.hom ≫ _ ≫ u.inv).hom ⟦τ⟧ = u.inv.hom ⟦σ⟧
      simp [m]
    simp only [← h2, const_obj_obj, Action.comp_hom, FintypeCat.comp_apply]
  comm g := by
    ext (x : Aut F ⧸ V.toSubgroup)
    induction' x using Quotient.inductionOn with σ
    simp only [const_obj_obj]
    show (((Aut F ⧸ₐ U.toSubgroup).ρ g ≫ u.inv.hom) ≫ (s.ι.app (SingleObj.star _)).hom) ⟦σ⟧ =
      ((s.ι.app (SingleObj.star _)).hom ≫ s.pt.ρ g) (u.inv.hom ⟦σ⟧)
    have : ((functorToAction F).obj A).ρ g ≫ (s.ι.app (SingleObj.star _)).hom =
        (s.ι.app (SingleObj.star _)).hom ≫ s.pt.ρ g :=
      (s.ι.app (SingleObj.star _)).comm g
    rw [← this, u.inv.comm g]
    rfl

/-- The constructed cocone `coconeQuotientDiag` on the diagram `quotientDiag` is colimiting. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant6855fcceff1dec43a7b21fd30f10ffcb25b740831a9ffc808d6f6c9c0138e0ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/EssSurj/Variant6855fcceff1dec43a7b21fd30f10ffcb25b740831a9ffc808d6f6c9c0138e0ab.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `017cc222f3ec68007cfddfcd22d10a4b99e689a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
