# GeometricallyReduced.isReduced_of_flat_of_finite_irreducibleComponents

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2664bd88-55f8-a466-1cc8-0c3b116d79d1",
  "kind": "lemma",
  "lexical_name": "GeometricallyReduced.isReduced_of_flat_of_finite_irreducibleComponents",
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
  "slug": "geometricallyreduced-isreduced-of-flat-of-finite-irreduciblecomponents--64a678ffa7d549734ec4b5dc",
  "source": {
    "blob": "b2113119dd69efe32780a5e171c3f112f5c98293",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 82,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Reduced/Variant83ea1cb7ff326773d24feca6c1509f0132afb62b112c7d53160de00e1092f754.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:64a678ffa7d549734ec4b5dc4b3c4cb5055a321f1818fb5c00c5d0392d7f7ee9",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Reduced/Variant83ea1cb7ff326773d24feca6c1509f0132afb62b112c7d53160de00e1092f754.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2664bd88-55f8-a466-1cc8-0c3b116d79d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma GeometricallyReduced.isReduced_of_flat_of_finite_irreducibleComponents
    (f : X ⟶ Y) [GeometricallyReduced f] [Flat f]
    [IsReduced Y] [Finite (irreducibleComponents Y)] : IsReduced X := by
  let pt (Z : irreducibleComponents Y) := Y.presheaf.stalk Z.property.1.genericPoint
  have hpt (Z : _) : IsField (pt Z) :=
    isField_stalk_of_closure_mem_irreducibleComponents _ _ (by
      rw [Z.property.1.closure_genericPoint (isClosed_of_mem_irreducibleComponents _ Z.property)]
      exact Z.property)
  let (Z : _) := (hpt Z).toField
  let Z := ∐ fun Z ↦ Spec (pt Z)
  let g : Z ⟶ Y := Sigma.desc fun Z ↦ Y.fromSpecStalk _
  have : Finite Z := (sigmaMk _).finite_iff.mp inferInstance
  have : QuasiCompact g := ⟨fun _ _ _ ↦ (Set.toFinite _).isCompact⟩
  have H : IsSchemeTheoreticallyDominant g := by
    rw [isSchemeTheoreticallyDominant_iff_isDominant, isDominant_iff, denseRange_iff_closure_range,
      Set.eq_univ_iff_forall]
    intro y
    let z : Z := Sigma.ι (fun Z ↦ Spec (pt Z)) ⟨_, irreducibleComponent_mem_irreducibleComponents y⟩
      (IsLocalRing.closedPoint _)
    have hz : g z ⤳ y := by
      simp only [g, z, Z, ← Scheme.Hom.comp_apply, Sigma.ι_comp_desc, pt,
        Scheme.fromSpecStalk_closedPoint]
      exact (IsIrreducible.isGenericPoint_genericPoint _
        isClosed_irreducibleComponent).specializes mem_irreducibleComponent
    exact hz.mem_closed isClosed_closure (subset_closure ⟨_, rfl⟩)
  suffices IsReduced (pullback f g) from IsSchemeTheoreticallyDominant.isReduced (pullback.fst f g)
  have H := IsUniversalColimit.isPullback_of_isColimit_left
    (X := fun Z ↦ Spec (pt Z))
    (FinitaryPreExtensive.isUniversal_finiteCoproducts (coproductIsCoproduct _))
    (fun Z ↦ Y.fromSpecStalk _) g f _ _ (fun _ ↦ .of_hasPullback _ _) (coproductIsCoproduct _)
  apply +allowSynthFailures @isReduced_of_isOpenImmersion (f := H.isoPullback.inv)
  apply +allowSynthFailures @IsReduced.of_openCover (𝒰 := sigmaOpenCover _)
  exact fun i ↦ GeometricallyReduced.geometrically_isReduced _ _ _ (.of_hasPullback _ _)

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Reduced/Variant83ea1cb7ff326773d24feca6c1509f0132afb62b112c7d53160de00e1092f754.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Reduced/Variant83ea1cb7ff326773d24feca6c1509f0132afb62b112c7d53160de00e1092f754.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2113119dd69efe32780a5e171c3f112f5c98293` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
