# Complete source: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.Augment.Variante8d93773744fe46eca08b5006628fd544e1cdba31a2512eb8de45c0d77ab085d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fe2d9689017c8f461f669e04758e45f7137f4203` · SHA-256 `e8d93773744fe46eca08b5006628fd544e1cdba31a2512eb8de45c0d77ab085d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison
-/
import Mathlib.Algebra.Homology.Single

#align_import algebra.homology.augment from "leanprover-community/mathlib"@"70fd9563a21e7b963887c9360bd29b2393e6225a"

/-!
# Augmentation and truncation of `ℕ`-indexed (co)chain complexes.
-/


noncomputable section

open CategoryTheory Limits HomologicalComplex

universe v u

variable {V : Type u} [Category.{v} V]

namespace ChainComplex

/-- The truncation of an `ℕ`-indexed chain complex,
deleting the object at `0` and shifting everything else down.
-/
@[simps]
def truncate [HasZeroMorphisms V] : ChainComplex V ℕ ⥤ ChainComplex V ℕ where
  obj C :=
    { X := fun i => C.X (i + 1)
      d := fun i j => C.d (i + 1) (j + 1)
      shape := fun i j w => C.shape _ _ <| by simpa }
  map f := { f := fun i => f.f (i + 1) }
#align chain_complex.truncate ChainComplex.truncate

/-- There is a canonical chain map from the truncation of a chain map `C` to
the "single object" chain complex consisting of the truncated object `C.X 0` in degree 0.
The components of this chain map are `C.d 1 0` in degree 0, and zero otherwise.
-/
def truncateTo [HasZeroObject V] [HasZeroMorphisms V] (C : ChainComplex V ℕ) :
    truncate.obj C ⟶ (single₀ V).obj (C.X 0) :=
  (toSingle₀Equiv (truncate.obj C) (C.X 0)).symm ⟨C.d 1 0, by aesop⟩
#align chain_complex.truncate_to ChainComplex.truncateTo

-- PROJECT when `V` is abelian (but not generally?)
-- `[∀ n, Exact (C.d (n+2) (n+1)) (C.d (n+1) n)] [Epi (C.d 1 0)]` iff `QuasiIso (C.truncate_to)`
variable [HasZeroMorphisms V]

/-- We can "augment" a chain complex by inserting an arbitrary object in degree zero
(shifting everything else up), along with a suitable differential.
-/
def augment (C : ChainComplex V ℕ) {X : V} (f : C.X 0 ⟶ X) (w : C.d 1 0 ≫ f = 0) :
    ChainComplex V ℕ where
  X | 0 => X
    | i + 1 => C.X i
  d | 1, 0 => f
    | i + 1, j + 1 => C.d i j
    | _, _ => 0
  shape
    | 1, 0, h => absurd rfl h
    | i + 2, 0, _ => rfl
    | 0, _, _ => rfl
    | i + 1, j + 1, h => by simp only; exact C.shape i j (Nat.succ_ne_succ.1 h)
  d_comp_d'
    | _, _, 0, rfl, rfl => w
    | _, _, k + 1, rfl, rfl => C.d_comp_d _ _ _
#align chain_complex.augment ChainComplex.augment

@[simp]
theorem augment_X_zero (C : ChainComplex V ℕ) {X : V} (f : C.X 0 ⟶ X) (w : C.d 1 0 ≫ f = 0) :
    (augment C f w).X 0 = X :=
  rfl
set_option linter.uppercaseLean3 false in
#align chain_complex.augment_X_zero ChainComplex.augment_X_zero

@[simp]
theorem augment_X_succ (C : ChainComplex V ℕ) {X : V} (f : C.X 0 ⟶ X) (w : C.d 1 0 ≫ f = 0)
    (i : ℕ) : (augment C f w).X (i + 1) = C.X i :=
  rfl
set_option linter.uppercaseLean3 false in
#align chain_complex.augment_X_succ ChainComplex.augment_X_succ

@[simp]
theorem augment_d_one_zero (C : ChainComplex V ℕ) {X : V} (f : C.X 0 ⟶ X) (w : C.d 1 0 ≫ f = 0) :
    (augment C f w).d 1 0 = f :=
  rfl
#align chain_complex.augment_d_one_zero ChainComplex.augment_d_one_zero

@[simp]
theorem augment_d_succ_succ (C : ChainComplex V ℕ) {X : V} (f : C.X 0 ⟶ X) (w : C.d 1 0 ≫ f = 0)
    (i j : ℕ) : (augment C f w).d (i + 1) (j + 1) = C.d i j := by
  cases i <;> rfl
#align chain_complex.augment_d_succ_succ ChainComplex.augment_d_succ_succ

/-- Truncating an augmented chain complex is isomorphic (with components the identity)
to the original complex.
-/
def truncateAugment (C : ChainComplex V ℕ) {X : V} (f : C.X 0 ⟶ X) (w : C.d 1 0 ≫ f = 0) :
    truncate.obj (augment C f w) ≅ C where
  hom := { f := fun i => 𝟙 _ }
  inv :=
    { f := fun i => 𝟙 _
      comm' := fun i j => by
        cases j <;>
          · dsimp
            simp }
  hom_inv_id := by
    ext (_ | i) <;>
      · dsimp
        simp
  inv_hom_id := by
    ext (_ | i) <;>
      · dsimp
        simp
#align chain_complex.truncate_augment ChainComplex.truncateAugment

@[simp]
theorem truncateAugment_hom_f (C : ChainComplex V ℕ) {X : V} (f : C.X 0 ⟶ X) (w : C.d 1 0 ≫ f = 0)
    (i : ℕ) : (truncateAugment C f w).hom.f i = 𝟙 (C.X i) :=
  rfl
#align chain_complex.truncate_augment_hom_f ChainComplex.truncateAugment_hom_f

@[simp]
theorem truncateAugment_inv_f (C : ChainComplex V ℕ) {X : V} (f : C.X 0 ⟶ X) (w : C.d 1 0 ≫ f = 0)
    (i : ℕ) : (truncateAugment C f w).inv.f i = 𝟙 ((truncate.obj (augment C f w)).X i) :=
  rfl
#align chain_complex.truncate_augment_inv_f ChainComplex.truncateAugment_inv_f

@[simp]
theorem chainComplex_d_succ_succ_zero (C : ChainComplex V ℕ) (i : ℕ) : C.d (i + 2) 0 = 0 := by
  rw [C.shape]
  exact i.succ_succ_ne_one.symm
#align chain_complex.chain_complex_d_succ_succ_zero ChainComplex.chainComplex_d_succ_succ_zero

/-- Augmenting a truncated complex with the original object and morphism is isomorphic
(with components the identity) to the original complex.
-/
def augmentTruncate (C : ChainComplex V ℕ) :
    augment (truncate.obj C) (C.d 1 0) (C.d_comp_d _ _ _) ≅ C where
  hom :=
    { f := fun i => by cases i <;> exact 𝟙 _
      comm' := fun i j => by
        -- Porting note: was an rcases n with (_|_|n) but that was causing issues
        match i with
        | 0 | 1 | n+2 => cases' j with j <;> dsimp [augment, truncate] <;> simp }
  inv :=
    { f := fun i => by cases i <;> exact 𝟙 _
      comm' := fun i j => by
        -- Porting note: was an rcases n with (_|_|n) but that was causing issues
        match i with
        | 0 | 1 | n+2 => cases' j with j <;> dsimp [augment, truncate] <;> simp }
  hom_inv_id := by
    ext i
    cases i <;>
      · dsimp
        simp
  inv_hom_id := by
    ext i
    cases i <;>
      · dsimp
        simp
#align chain_complex.augment_truncate ChainComplex.augmentTruncate

@[simp]
theorem augmentTruncate_hom_f_zero (C : ChainComplex V ℕ) :
    (augmentTruncate C).hom.f 0 = 𝟙 (C.X 0) :=
  rfl
#align chain_complex.augment_truncate_hom_f_zero ChainComplex.augmentTruncate_hom_f_zero

@[simp]
theorem augmentTruncate_hom_f_succ (C : ChainComplex V ℕ) (i : ℕ) :
    (augmentTruncate C).hom.f (i + 1) = 𝟙 (C.X (i + 1)) :=
  rfl
#align chain_complex.augment_truncate_hom_f_succ ChainComplex.augmentTruncate_hom_f_succ

@[simp]
theorem augmentTruncate_inv_f_zero (C : ChainComplex V ℕ) :
    (augmentTruncate C).inv.f 0 = 𝟙 (C.X 0) :=
  rfl
#align chain_complex.augment_truncate_inv_f_zero ChainComplex.augmentTruncate_inv_f_zero

@[simp]
theorem augmentTruncate_inv_f_succ (C : ChainComplex V ℕ) (i : ℕ) :
    (augmentTruncate C).inv.f (i + 1) = 𝟙 (C.X (i + 1)) :=
  rfl
#align chain_complex.augment_truncate_inv_f_succ ChainComplex.augmentTruncate_inv_f_succ

/-- A chain map from a chain complex to a single object chain complex in degree zero
can be reinterpreted as a chain complex.

This is the inverse construction of `truncateTo`.
-/
def toSingle₀AsComplex [HasZeroObject V] (C : ChainComplex V ℕ) (X : V)
    (f : C ⟶ (single₀ V).obj X) : ChainComplex V ℕ :=
  let ⟨f, w⟩ := toSingle₀Equiv C X f
  augment C f w
#align chain_complex.to_single₀_as_complex ChainComplex.toSingle₀AsComplex

end ChainComplex

namespace CochainComplex

/-- The truncation of an `ℕ`-indexed cochain complex,
deleting the object at `0` and shifting everything else down.
-/
@[simps]
def truncate [HasZeroMorphisms V] : CochainComplex V ℕ ⥤ CochainComplex V ℕ where
  obj C :=
    { X := fun i => C.X (i + 1)
      d := fun i j => C.d (i + 1) (j + 1)
      shape := fun i j w => by
        apply C.shape
        simpa }
  map f := { f := fun i => f.f (i + 1) }
#align cochain_complex.truncate CochainComplex.truncate

/-- There is a canonical chain map from the truncation of a cochain complex `C` to
the "single object" cochain complex consisting of the truncated object `C.X 0` in degree 0.
The components of this chain map are `C.d 0 1` in degree 0, and zero otherwise.
-/
def toTruncate [HasZeroObject V] [HasZeroMorphisms V] (C : CochainComplex V ℕ) :
    (single₀ V).obj (C.X 0) ⟶ truncate.obj C :=
  (fromSingle₀Equiv (truncate.obj C) (C.X 0)).symm ⟨C.d 0 1, by aesop⟩
#align cochain_complex.to_truncate CochainComplex.toTruncate

variable [HasZeroMorphisms V]

/-- We can "augment" a cochain complex by inserting an arbitrary object in degree zero
(shifting everything else up), along with a suitable differential.
-/
def augment (C : CochainComplex V ℕ) {X : V} (f : X ⟶ C.X 0) (w : f ≫ C.d 0 1 = 0) :
    CochainComplex V ℕ where
  X | 0 => X
    | i + 1 => C.X i
  d | 0, 1 => f
    | i + 1, j + 1 => C.d i j
    | _, _ => 0
  shape i j s := by
    simp at s
    rcases j with (_ | _ | j) <;> cases i <;> try simp
    · simp at s
    · rw [C.shape]
      simp only [ComplexShape.up_Rel]
      contrapose! s
      rw [← s]
      rfl
  d_comp_d' i j k hij hjk := by
    rcases k with (_ | _ | k) <;> rcases j with (_ | _ | j) <;> cases i <;> try simp
    cases k
    · exact w
    · rw [C.shape, comp_zero]
      simp only [Nat.zero_eq, ComplexShape.up_Rel, zero_add]
      exact (Nat.one_lt_succ_succ _).ne
#align cochain_complex.augment CochainComplex.augment

@[simp]
theorem augment_X_zero (C : CochainComplex V ℕ) {X : V} (f : X ⟶ C.X 0) (w : f ≫ C.d 0 1 = 0) :
    (augment C f w).X 0 = X :=
  rfl
set_option linter.uppercaseLean3 false in
#align cochain_complex.augment_X_zero CochainComplex.augment_X_zero

@[simp]
theorem augment_X_succ (C : CochainComplex V ℕ) {X : V} (f : X ⟶ C.X 0) (w : f ≫ C.d 0 1 = 0)
    (i : ℕ) : (augment C f w).X (i + 1) = C.X i :=
  rfl
set_option linter.uppercaseLean3 false in
#align cochain_complex.augment_X_succ CochainComplex.augment_X_succ

@[simp]
theorem augment_d_zero_one (C : CochainComplex V ℕ) {X : V} (f : X ⟶ C.X 0) (w : f ≫ C.d 0 1 = 0) :
    (augment C f w).d 0 1 = f :=
  rfl
#align cochain_complex.augment_d_zero_one CochainComplex.augment_d_zero_one

@[simp]
theorem augment_d_succ_succ (C : CochainComplex V ℕ) {X : V} (f : X ⟶ C.X 0) (w : f ≫ C.d 0 1 = 0)
    (i j : ℕ) : (augment C f w).d (i + 1) (j + 1) = C.d i j :=
  rfl
#align cochain_complex.augment_d_succ_succ CochainComplex.augment_d_succ_succ

/-- Truncating an augmented cochain complex is isomorphic (with components the identity)
to the original complex.
-/
def truncateAugment (C : CochainComplex V ℕ) {X : V} (f : X ⟶ C.X 0) (w : f ≫ C.d 0 1 = 0) :
    truncate.obj (augment C f w) ≅ C where
  hom := { f := fun i => 𝟙 _ }
  inv :=
    { f := fun i => 𝟙 _
      comm' := fun i j => by
        cases j <;>
          · dsimp
            simp }
  hom_inv_id := by
    ext i
    cases i <;>
      · dsimp
        simp
  inv_hom_id := by
    ext i
    cases i <;>
      · dsimp
        simp
#align cochain_complex.truncate_augment CochainComplex.truncateAugment

@[simp]
theorem truncateAugment_hom_f (C : CochainComplex V ℕ) {X : V} (f : X ⟶ C.X 0)
    (w : f ≫ C.d 0 1 = 0) (i : ℕ) : (truncateAugment C f w).hom.f i = 𝟙 (C.X i) :=
  rfl
#align cochain_complex.truncate_augment_hom_f CochainComplex.truncateAugment_hom_f

@[simp]
theorem truncateAugment_inv_f (C : CochainComplex V ℕ) {X : V} (f : X ⟶ C.X 0)
    (w : f ≫ C.d 0 1 = 0) (i : ℕ) :
    (truncateAugment C f w).inv.f i = 𝟙 ((truncate.obj (augment C f w)).X i) :=
  rfl
#align cochain_complex.truncate_augment_inv_f CochainComplex.truncateAugment_inv_f

@[simp]
theorem cochainComplex_d_succ_succ_zero (C : CochainComplex V ℕ) (i : ℕ) : C.d 0 (i + 2) = 0 := by
  rw [C.shape]
  simp only [ComplexShape.up_Rel, zero_add]
  exact (Nat.one_lt_succ_succ _).ne
#align cochain_complex.cochain_complex_d_succ_succ_zero CochainComplex.cochainComplex_d_succ_succ_zero

/-- Augmenting a truncated complex with the original object and morphism is isomorphic
(with components the identity) to the original complex.
-/
def augmentTruncate (C : CochainComplex V ℕ) :
    augment (truncate.obj C) (C.d 0 1) (C.d_comp_d _ _ _) ≅ C where
  hom :=
    { f := fun i => by cases i <;> exact 𝟙 _
      comm' := fun i j => by
        rcases j with (_ | _ | j) <;> cases i <;>
          · dsimp
            -- Porting note: simp can't handle this now but aesop does
            aesop }
  inv :=
    { f := fun i => by cases i <;> exact 𝟙 _
      comm' := fun i j => by
        rcases j with (_ | _ | j) <;> cases' i with i <;>
          · dsimp
            -- Porting note: simp can't handle this now but aesop does
            aesop }
  hom_inv_id := by
    ext i
    cases i <;>
      · dsimp
        simp
  inv_hom_id := by
    ext i
    cases i <;>
      · dsimp
        simp
#align cochain_complex.augment_truncate CochainComplex.augmentTruncate

@[simp]
theorem augmentTruncate_hom_f_zero (C : CochainComplex V ℕ) :
    (augmentTruncate C).hom.f 0 = 𝟙 (C.X 0) :=
  rfl
#align cochain_complex.augment_truncate_hom_f_zero CochainComplex.augmentTruncate_hom_f_zero

@[simp]
theorem augmentTruncate_hom_f_succ (C : CochainComplex V ℕ) (i : ℕ) :
    (augmentTruncate C).hom.f (i + 1) = 𝟙 (C.X (i + 1)) :=
  rfl
#align cochain_complex.augment_truncate_hom_f_succ CochainComplex.augmentTruncate_hom_f_succ

@[simp]
theorem augmentTruncate_inv_f_zero (C : CochainComplex V ℕ) :
    (augmentTruncate C).inv.f 0 = 𝟙 (C.X 0) :=
  rfl
#align cochain_complex.augment_truncate_inv_f_zero CochainComplex.augmentTruncate_inv_f_zero

@[simp]
theorem augmentTruncate_inv_f_succ (C : CochainComplex V ℕ) (i : ℕ) :
    (augmentTruncate C).inv.f (i + 1) = 𝟙 (C.X (i + 1)) :=
  rfl
#align cochain_complex.augment_truncate_inv_f_succ CochainComplex.augmentTruncate_inv_f_succ

/-- A chain map from a single object cochain complex in degree zero to a cochain complex
can be reinterpreted as a cochain complex.

This is the inverse construction of `toTruncate`.
-/
def fromSingle₀AsComplex [HasZeroObject V] (C : CochainComplex V ℕ) (X : V)
    (f : (single₀ V).obj X ⟶ C) : CochainComplex V ℕ :=
  let ⟨f, w⟩ := fromSingle₀Equiv C X f
  augment C f w
#align cochain_complex.from_single₀_as_complex CochainComplex.fromSingle₀AsComplex

end CochainComplex
```
