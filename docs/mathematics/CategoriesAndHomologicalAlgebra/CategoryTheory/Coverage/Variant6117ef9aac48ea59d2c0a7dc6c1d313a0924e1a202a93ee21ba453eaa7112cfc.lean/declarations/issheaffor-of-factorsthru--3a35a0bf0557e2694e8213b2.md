# isSheafFor_of_factorsThru

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:17c1be09-3b04-4811-9940-48a7ab5302e7",
  "kind": "lemma",
  "lexical_name": "isSheafFor_of_factorsThru",
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
  "slug": "issheaffor-of-factorsthru--3a35a0bf0557e2694e8213b2",
  "source": {
    "blob": "c3fec638e7a98836422b4553d968b45db814b5b1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 107,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant6117ef9aac48ea59d2c0a7dc6c1d313a0924e1a202a93ee21ba453eaa7112cfc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3a35a0bf0557e2694e8213b224383dbe8e4674ec082279f9fffd5a6a12e2bf94",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant6117ef9aac48ea59d2c0a7dc6c1d313a0924e1a202a93ee21ba453eaa7112cfc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:17c1be09-3b04-4811-9940-48a7ab5302e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isSheafFor_of_factorsThru
    {X : C} {S T : Presieve X}
    (P : Cᵒᵖ ⥤ Type*)
    (H : S.FactorsThru T) (hS : S.IsSheafFor P)
    (h : ∀ ⦃Y : C⦄ ⦃f : Y ⟶ X⦄, T f → ∃ (R : Presieve Y),
      R.IsSeparatedFor P ∧ R.FactorsThruAlong S f) :
    T.IsSheafFor P := by
  simp only [← Presieve.isSeparatedFor_and_exists_isAmalgamation_iff_isSheafFor] at *
  choose W i e h1 h2 using H
  refine ⟨?_, fun x hx => ?_⟩
  · intro x y₁ y₂ h₁ h₂
    refine hS.1.ext (fun Y g hg => ?_)
    simp only [← h2 hg, op_comp, P.map_comp, types_comp_apply, h₁ _ (h1 _ ), h₂ _ (h1 _)]
  let y : S.FamilyOfElements P := fun Y g hg => P.map (i _).op (x (e hg) (h1 _))
  have hy : y.Compatible := by
    intro Y₁ Y₂ Z g₁ g₂ f₁ f₂ h₁ h₂ h
    rw [← types_comp_apply (P.map (i h₁).op) (P.map g₁.op),
      ← types_comp_apply (P.map (i h₂).op) (P.map g₂.op),
      ← P.map_comp, ← op_comp, ← P.map_comp, ← op_comp]
    apply hx
    simp only [h2, h, Category.assoc]
  let ⟨_, h2'⟩ := hS
  obtain ⟨z, hz⟩ := h2' y hy
  refine ⟨z, fun Y g hg => ?_⟩
  obtain ⟨R, hR1, hR2⟩ := h hg
  choose WW ii ee hh1 hh2 using hR2
  refine hR1.ext (fun Q t ht => ?_)
  rw [← types_comp_apply (P.map g.op) (P.map t.op), ← P.map_comp, ← op_comp, ← hh2 ht,
    op_comp, P.map_comp, types_comp_apply, hz _ (hh1 _),
    ← types_comp_apply _ (P.map (ii ht).op), ← P.map_comp, ← op_comp]
  apply hx
  simp only [Category.assoc, h2, hh2]


end Presieve

variable (C) in
/--
The type `Coverage C` of coverages on `C`.
A coverage is a collection of *covering* presieves on every object `X : C`,
which satisfies a *pullback compatibility* condition.
Explicitly, this condition says that whenever `S` is a covering presieve for `X` and
`f : Y ⟶ X` is a morphism, then there exists some covering presieve `T` for `Y`
such that `T` factors through `S` along `f`.
-/
@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant6117ef9aac48ea59d2c0a7dc6c1d313a0924e1a202a93ee21ba453eaa7112cfc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Coverage/Variant6117ef9aac48ea59d2c0a7dc6c1d313a0924e1a202a93ee21ba453eaa7112cfc.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c3fec638e7a98836422b4553d968b45db814b5b1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
