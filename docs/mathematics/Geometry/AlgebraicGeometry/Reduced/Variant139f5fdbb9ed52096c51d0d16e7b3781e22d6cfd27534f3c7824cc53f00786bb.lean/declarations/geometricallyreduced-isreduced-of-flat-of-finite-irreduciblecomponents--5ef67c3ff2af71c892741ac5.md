# GeometricallyReduced.isReduced_of_flat_of_finite_irreducibleComponents

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b54ce5bb4f3f4dbae2979701ca2036e60e8b0b26",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 74,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/13/139f5fdbb9ed52096c51d0d16e7b3781e22d6cfd27534f3c7824cc53f00786bb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0c469dc3-be19-42e3-87df-f2b254b1053e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:95c2f426-4b77-bfc1-24f8-f25277b4b4c0",
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
  "slug": "geometricallyreduced-isreduced-of-flat-of-finite-irreduciblecomponents--5ef67c3ff2af71c892741ac5",
  "source": {
    "blob": "b54ce5bb4f3f4dbae2979701ca2036e60e8b0b26",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 108,
    "line": 74,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Reduced/Variant139f5fdbb9ed52096c51d0d16e7b3781e22d6cfd27534f3c7824cc53f00786bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ef67c3ff2af71c892741ac520f633dd54452b1cb9994dcc8445f2e902ebd838",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Reduced/Variant139f5fdbb9ed52096c51d0d16e7b3781e22d6cfd27534f3c7824cc53f00786bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:95c2f426-4b77-bfc1-24f8-f25277b4b4c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–108.

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

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Reduced/Variant139f5fdbb9ed52096c51d0d16e7b3781e22d6cfd27534f3c7824cc53f00786bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Reduced/Variant139f5fdbb9ed52096c51d0d16e7b3781e22d6cfd27534f3c7824cc53f00786bb.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b54ce5bb4f3f4dbae2979701ca2036e60e8b0b26` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
