# exists_cofinal_of_isCardinalAccessibleCategory_cardinalDirectedPoset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2d37949e-7da1-e00e-87fa-c03dbd3d4d91",
  "kind": "lemma",
  "lexical_name": "exists_cofinal_of_isCardinalAccessibleCategory_cardinalDirectedPoset",
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
  "slug": "exists-cofinal-of-iscardinalaccessiblecategory-cardinaldirectedposet--70bea2b0a571138d347d2a20",
  "source": {
    "blob": "17b09ef7bfcebda13fd61fb4ce3f6cacd3d29878",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 142,
    "line": 73,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant90e4767b8e4504c4c4154d2c355b01b3f343ce93e5915bdcdaacff968b189293.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:70bea2b0a571138d347d2a201ebc63b1e0410320d74c19019b4665d5c233b262",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant90e4767b8e4504c4c4154d2c355b01b3f343ce93e5915bdcdaacff968b189293.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2d37949e-7da1-e00e-87fa-c03dbd3d4d91`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 73–142.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public lemma exists_cofinal_of_isCardinalAccessibleCategory_cardinalDirectedPoset
    (h : κ₁ ≤ κ₂) [IsCardinalAccessibleCategory (CardinalDirectedPoset κ₁) κ₂]
    {X : Type w} (hX : HasCardinalLT X κ₂) :
    ∃ (Y : Set (SetCardinalLT κ₁ X)), HasCardinalLT Y κ₂ ∧ IsCofinal Y := by
  -- We write the partially ordered type `SetCardinalLT κ₁ X` of subsets
  -- of `X` of cardinality `< κ₁` as a `κ₂`-filtered colimit (with index
  -- category `J`) of `κ₂`-presentable objects (i.e. partially ordered
  -- types of cardinality `< κ₂`.)
  obtain ⟨J, _, _, ⟨p⟩⟩ := (isCardinalFilteredGenerator_isCardinalPresentable
    (CardinalDirectedPoset κ₁) κ₂).exists_colimitsOfShape (setCardinalLT κ₁ X)
  have : IsCardinalFiltered J κ₁ := .of_le _ h
  have hp (j : J) : HasCardinalLT (p.diag.obj j).obj κ₂ := by
    rw [← CardinalDirectedPoset.isCardinalPresentable_iff _ h]
    exact p.prop_diag_obj j
  -- For each `x : X`, we choose `j : J` in such a way that the singleton
  -- `{x}` belongs to the image of `p.diag.obj j` in `SetCardinalLT κ₁ X`.
  choose j y hy using fun x ↦ Types.jointly_surjective_of_isColimit
    (isColimitOfPreserves (forget (CardinalDirectedPoset κ₁)) p.isColimit)
    (SetCardinalLT.singleton κ₁ x)
  dsimp at y hy
  -- The expected cofinal set `A` will be the range of `p.ι.app j'`
  -- where `j' : J` is such that for any `x : X`, there is a map `j x ⟶ j'`
  let j' := IsCardinalFiltered.max j hX
  let y' (x : X) : (p.diag.obj j').obj :=
    p.diag.map (IsCardinalFiltered.toMax j hX x) (y x)
  have hy' (x : X) : p.ι.app j' (y' x) = SetCardinalLT.singleton κ₁ x := by
    rw [← hy, ← p.w (IsCardinalFiltered.toMax j hX x)]
    rfl
  refine ⟨Set.range (p.ι.app j'), (hp j').of_surjective _
    (Set.rangeFactorization_surjective (f := p.ι.app j')), fun ⟨B, hB⟩ ↦ ?_⟩
  let j'' := IsCardinalFiltered.max (fun b ↦ y' b.val) hB
  refine ⟨_, ⟨j'', rfl⟩, fun b hb ↦ ?_⟩
  have : y' b ≤ j'' := (leOfHom (IsCardinalFiltered.toMax (fun b ↦ y' b.val) hB ⟨b, hb⟩) :)
  refine (p.ι.app j').hom.hom.monotone this ?_
  convert Set.mem_singleton b
  exact Subtype.ext_iff.1 (hy' b)

section

open CardinalDirectedPoset

namespace existsIsCardinalFilteredSetOfExistsCofinal

/-! The definitions in this section are part of the proof of the
lemma `exists_isCardinalFiltered_set_of_exists_cofinal` below,
which is the implication (iii) → (iv) in the characterizations
of `SharplyLT κ₁ κ₂` which appear in the docstring of this file. -/

variable (h₀ : κ₁ < κ₂)
  {X : Type w} [PartialOrder X]
  -- The variables `Y`, `hY` and `hY'` below can be obtained by applying
  -- the `choose` tactic to an assumption of the form
  -- `∃ (Y : Set (SetCardinalLT κ₁ X)), HasCardinalLT Y κ₂ ∧ IsCofinal Y)`
  -- e.g. when the condition (iii) in the docstring of this file is satisfied
  (Y : ∀ (B : Set X) (_ : HasCardinalLT B κ₂), Set (SetCardinalLT κ₁ B))
  (hY : ∀ (B : Set X) (hB : HasCardinalLT B κ₂), HasCardinalLT (Y B hB) κ₂)
  (hY' : ∀ (B : Set X) (hB : HasCardinalLT B κ₂), IsCofinal (Y B hB))
  -- In the proof of `exists_isCardinalFiltered_set_of_exists_cofinal` below,
  -- we shall show that we can find such `m` and `hm`, i.e.
  -- for any `B : Set X`, `hB : HasCardinalLT B κ₂`, `C : SetCardinalLT κ₁ B`,
  -- if `C ∈ Y B hB`, then there exists `m : X` such that all the elements
  -- of `C` are less than or equal to `m`.
  (m : ∀ (B : Set X) (hB : HasCardinalLT B κ₂) (C : SetCardinalLT κ₁ B),
    C ∈ Y B hB → X)
  (hm : ∀ (B : Set X) (hB : HasCardinalLT B κ₂) (C : SetCardinalLT κ₁ B)
    (hC : C ∈ Y B hB) (b : B), b ∈ C.val → b ≤ m B hB C hC)
  (A : Set X) (hA : HasCardinalLT A κ₂)

/-- The subset of `X` given by the union over all `C : Y B hB` of
`C` and `{m B hB C _}`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant90e4767b8e4504c4c4154d2c355b01b3f343ce93e5915bdcdaacff968b189293.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant90e4767b8e4504c4c4154d2c355b01b3f343ce93e5915bdcdaacff968b189293.lean#L73).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `17b09ef7bfcebda13fd61fb4ce3f6cacd3d29878` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
