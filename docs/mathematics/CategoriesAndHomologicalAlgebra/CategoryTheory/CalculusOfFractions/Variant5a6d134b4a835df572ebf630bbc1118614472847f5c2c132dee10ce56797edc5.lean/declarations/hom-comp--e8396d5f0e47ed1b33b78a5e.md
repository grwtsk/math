# Hom.comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ac7edb0718155f1a7a6b205d2608e2edd2ec8b13b8f77c20b9369706834e35f4",
  "kind": "def",
  "lexical_name": "Hom.comp",
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
  "slug": "hom-comp--e8396d5f0e47ed1b33b78a5e",
  "source": {
    "blob": "c01295b1dc3a498f42a51e28c160231afd3a4311",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 426,
    "line": 348,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CalculusOfFractions/Variant5a6d134b4a835df572ebf630bbc1118614472847f5c2c132dee10ce56797edc5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e8396d5f0e47ed1b33b78a5ea35929434cfa64548ee18dbe3ad7d3d96f379469",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CalculusOfFractions/Variant5a6d134b4a835df572ebf630bbc1118614472847f5c2c132dee10ce56797edc5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ac7edb0718155f1a7a6b205d2608e2edd2ec8b13b8f77c20b9369706834e35f4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 348–426.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Hom.comp {X Y Z : C} (z₁ : Hom W X Y) (z₂ : Hom W Y Z) : Hom W X Z := by
  refine Quot.lift₂ (fun a b => a.comp b) ?_ ?_ z₁ z₂
  · rintro a b₁ b₂ ⟨U, t₁, t₂, hst, hft, ht⟩
    obtain ⟨z₁, fac₁⟩ := exists_leftFraction (RightFraction.mk a.s a.hs b₁.f)
    obtain ⟨z₂, fac₂⟩ := exists_leftFraction (RightFraction.mk a.s a.hs b₂.f)
    obtain ⟨w₁, fac₁'⟩ := exists_leftFraction (RightFraction.mk z₁.s z₁.hs t₁)
    obtain ⟨w₂, fac₂'⟩ := exists_leftFraction (RightFraction.mk z₂.s z₂.hs t₂)
    obtain ⟨u, fac₃⟩ := exists_leftFraction (RightFraction.mk w₁.s w₁.hs w₂.s)
    dsimp at fac₁ fac₂ fac₁' fac₂' fac₃ ⊢
    have eq : a.s ≫ z₁.f ≫ w₁.f ≫ u.f = a.s ≫ z₂.f ≫ w₂.f ≫ u.s := by
      rw [← reassoc_of% fac₁, ← reassoc_of% fac₂, ← reassoc_of% fac₁', ← reassoc_of% fac₂',
        reassoc_of% hft, fac₃]
    obtain ⟨Z, p, hp, fac₄⟩ := HasLeftCalculusOfFractions.ext _ _ _ a.hs eq
    simp only [assoc] at fac₄
    rw [comp_eq _ _ z₁ fac₁, comp_eq _ _ z₂ fac₂]
    apply Quot.sound
    refine ⟨Z, w₁.f ≫ u.f ≫ p, w₂.f ≫ u.s ≫ p, ?_, ?_, ?_⟩
    · dsimp
      simp only [assoc, ← reassoc_of% fac₁', ← reassoc_of% fac₂',
        reassoc_of% hst, reassoc_of% fac₃]
    · dsimp
      simp only [assoc, fac₄]
    · dsimp
      simp only [assoc]
      rw [← reassoc_of% fac₁', ← reassoc_of% fac₃, ← assoc]
      exact W.comp_mem _ _ ht (W.comp_mem _ _ w₂.hs (W.comp_mem _ _ u.hs hp))
  · rintro a₁ a₂ b ⟨U, t₁, t₂, hst, hft, ht⟩
    obtain ⟨z₁, fac₁⟩ := exists_leftFraction (RightFraction.mk a₁.s a₁.hs b.f)
    obtain ⟨z₂, fac₂⟩ := exists_leftFraction (RightFraction.mk a₂.s a₂.hs b.f)
    obtain ⟨w₁, fac₁'⟩ := exists_leftFraction (RightFraction.mk (a₁.s ≫ t₁) ht (b.f ≫ z₁.s))
    obtain ⟨w₂, fac₂'⟩ := exists_leftFraction (RightFraction.mk (a₂.s ≫ t₂)
      (show W _ by rw [← hst]; exact ht) (b.f ≫ z₂.s))
    let p₁ : W.LeftFraction X Z := LeftFraction.mk (a₁.f ≫ t₁ ≫ w₁.f) (b.s ≫ z₁.s ≫ w₁.s)
      (W.comp_mem _ _ b.hs (W.comp_mem _ _ z₁.hs w₁.hs))
    let p₂ : W.LeftFraction X Z := LeftFraction.mk (a₂.f ≫ t₂ ≫ w₂.f) (b.s ≫ z₂.s ≫ w₂.s)
      (W.comp_mem _ _ b.hs (W.comp_mem _ _ z₂.hs w₂.hs))
    dsimp at fac₁ fac₂ fac₁' fac₂' ⊢
    simp only [assoc] at fac₁' fac₂'
    rw [comp_eq _ _ z₁ fac₁, comp_eq _ _ z₂ fac₂]
    apply Quot.sound
    refine LeftFractionRel.trans ?_ ((?_ : LeftFractionRel p₁ p₂).trans ?_)
    · have eq : a₁.s ≫ z₁.f ≫ w₁.s = a₁.s ≫ t₁ ≫ w₁.f := by rw [← fac₁', reassoc_of% fac₁]
      obtain ⟨Z, u, hu, fac₃⟩ := HasLeftCalculusOfFractions.ext _ _ _ a₁.hs eq
      simp only [assoc] at fac₃
      refine ⟨Z, w₁.s ≫ u, u, ?_, ?_, ?_⟩
      · dsimp [p₁]
        simp only [assoc]
      · dsimp [p₁]
        simp only [assoc, fac₃]
      · dsimp
        simp only [assoc]
        exact W.comp_mem _ _ b.hs (W.comp_mem _ _ z₁.hs (W.comp_mem _ _ w₁.hs hu))
    · obtain ⟨q, fac₃⟩ := exists_leftFraction (RightFraction.mk (z₁.s ≫ w₁.s)
        (W.comp_mem _ _ z₁.hs w₁.hs) (z₂.s ≫ w₂.s))
      dsimp at fac₃
      simp only [assoc] at fac₃
      have eq : a₁.s ≫ t₁ ≫ w₁.f ≫ q.f = a₁.s ≫ t₁ ≫ w₂.f ≫ q.s := by
        rw [← reassoc_of% fac₁', ← fac₃, reassoc_of% hst, reassoc_of% fac₂']
      obtain ⟨Z, u, hu, fac₄⟩ := HasLeftCalculusOfFractions.ext _ _ _ a₁.hs eq
      simp only [assoc] at fac₄
      refine ⟨Z, q.f ≫ u, q.s ≫ u, ?_, ?_, ?_⟩
      · simp only [p₁, p₂, assoc, reassoc_of% fac₃]
      · rw [assoc, assoc, assoc, assoc, fac₄, reassoc_of% hft]
      · simp only [p₁, p₂, assoc, ← reassoc_of% fac₃]
        exact W.comp_mem _ _ b.hs (W.comp_mem _ _ z₂.hs
          (W.comp_mem _ _ w₂.hs (W.comp_mem _ _ q.hs hu)))
    · have eq : a₂.s ≫ z₂.f ≫ w₂.s = a₂.s ≫ t₂ ≫ w₂.f := by
        rw [← fac₂', reassoc_of% fac₂]
      obtain ⟨Z, u, hu, fac₄⟩ := HasLeftCalculusOfFractions.ext _ _ _ a₂.hs eq
      simp only [assoc] at fac₄
      refine ⟨Z, u, w₂.s ≫ u, ?_, ?_, ?_⟩
      · dsimp [p₁, p₂]
        simp only [assoc]
      · dsimp [p₁, p₂]
        simp only [assoc, fac₄]
      · dsimp [p₁, p₂]
        simp only [assoc]
        exact W.comp_mem _ _ b.hs (W.comp_mem _ _ z₂.hs (W.comp_mem _ _ w₂.hs hu))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CalculusOfFractions/Variant5a6d134b4a835df572ebf630bbc1118614472847f5c2c132dee10ce56797edc5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CalculusOfFractions/Variant5a6d134b4a835df572ebf630bbc1118614472847f5c2c132dee10ce56797edc5.lean#L348).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c01295b1dc3a498f42a51e28c160231afd3a4311` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
