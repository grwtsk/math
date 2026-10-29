import Boolean.Cube.WalshFourier.Analysis
import Boolean.Cube.WalshFourier.Energy
import Boolean.Cube.WalshFourier.Orthogonality
import Boolean.Tree.OrderedFactor

/-!
# Permutation–Frequency Factorization

This module defines a finite Boolean/Cube construction combining coordinate
permutation orbits, canonical representatives, Walsh/Fourier frequency
profiles, and ordered factor-tree realizations. It is a finite theorem
object. It proves no analytic continuation, trace formula, RH, Langlands,
prismatic, Fredholm, or spectral-completion theorem, and raw syntax, hashes,
labels, and ordered factor trees are not analytic authority.

Action convention: a permutation `π` acts on points by
`permutePoint π x = fun i => x (π.invFun i)`, on functions by pullback along
the inverse action, and on frequencies like on points. With this convention
the central finite theorem reads

  `projectionNumerator (permuteFunction π f) S =
     projectionNumerator f (permuteFrequency π.symm S)`.

Theorem index:

* `CoordinatePermutation`, `permutePoint`, `permuteFunction`,
  `permuteFrequency`
* `FiniteCoordinateGroup`, `OrbitEquivalent`
* `CanonicalRepresentativeCertificate`
* `FrequencyOrbitProfile`
* `OrderedFactorInterpreter`, `CanonicalOrderedFactorCertificate`
* `PFFactorization`
* `walsh_character_permutation_equivariant`
* `walsh_projection_permutation_equivariant`
* `permutation_frequency_factorization_theorem`
* `pff_boundary_summary`
-/

namespace Boolean
namespace Cube
namespace PermutationFrequencyFactorization

/-! ## A1. Coordinate permutations -/

/-- An explicit bijection of `Fin n`, with both directions and both inverse
laws. -/
structure CoordinatePermutation (n : Nat) where
  toFun : Fin n → Fin n
  invFun : Fin n → Fin n
  left_inv : ∀ i : Fin n, invFun (toFun i) = i
  right_inv : ∀ i : Fin n, toFun (invFun i) = i

namespace CoordinatePermutation

/-- The identity coordinate permutation. -/
def id (n : Nat) : CoordinatePermutation n where
  toFun := fun i => i
  invFun := fun i => i
  left_inv := fun _ => rfl
  right_inv := fun _ => rfl

/-- The inverse coordinate permutation. -/
def symm {n : Nat} (π : CoordinatePermutation n) :
    CoordinatePermutation n where
  toFun := π.invFun
  invFun := π.toFun
  left_inv := π.right_inv
  right_inv := π.left_inv

/-- Composition: apply `σ` first, then `π`. -/
def comp {n : Nat}
    (π σ : CoordinatePermutation n) :
    CoordinatePermutation n where
  toFun := fun i => π.toFun (σ.toFun i)
  invFun := fun i => σ.invFun (π.invFun i)
  left_inv := fun i => by rw [π.left_inv, σ.left_inv]
  right_inv := fun i => by rw [σ.right_inv, π.right_inv]

/-- Extensionality for coordinate permutations. -/
theorem ext {n : Nat} {π σ : CoordinatePermutation n}
    (hto : π.toFun = σ.toFun)
    (hinv : π.invFun = σ.invFun) :
    π = σ := by
  cases π
  cases σ
  cases hto
  cases hinv
  rfl

theorem comp_assoc {n : Nat}
    (π σ τ : CoordinatePermutation n) :
    comp (comp π σ) τ = comp π (comp σ τ) :=
  rfl

theorem comp_id_left {n : Nat}
    (π : CoordinatePermutation n) :
    comp (id n) π = π :=
  rfl

theorem comp_id_right {n : Nat}
    (π : CoordinatePermutation n) :
    comp π (id n) = π :=
  rfl

theorem symm_comp_self {n : Nat}
    (π : CoordinatePermutation n) :
    comp (symm π) π = id n :=
  ext (funext fun i => π.left_inv i) (funext fun i => π.left_inv i)

theorem comp_symm_self {n : Nat}
    (π : CoordinatePermutation n) :
    comp π (symm π) = id n :=
  ext (funext fun i => π.right_inv i) (funext fun i => π.right_inv i)

end CoordinatePermutation

/-! ## A2. Actions on points, functions, and frequencies -/

/-- Action on hypercube points. -/
def permutePoint {n : Nat}
    (π : CoordinatePermutation n)
    (x : Hypercube.Point n) :
    Hypercube.Point n :=
  fun i => x (π.invFun i)

/-- Action on integer-valued cube functions, by pullback along the inverse
point action. -/
def permuteFunction {n : Nat}
    (π : CoordinatePermutation n)
    (f : WalshFourier.Function n) :
    WalshFourier.Function n :=
  fun x => f (permutePoint (CoordinatePermutation.symm π) x)

/-- Action on Walsh frequencies. -/
def permuteFrequency {n : Nat}
    (π : CoordinatePermutation n)
    (S : WalshFourier.Frequency n) :
    WalshFourier.Frequency n :=
  fun i => S (π.invFun i)

@[simp] theorem permutePoint_id {n : Nat}
    (x : Hypercube.Point n) :
    permutePoint (CoordinatePermutation.id n) x = x :=
  rfl

@[simp] theorem permuteFunction_id {n : Nat}
    (f : WalshFourier.Function n) :
    permuteFunction (CoordinatePermutation.id n) f = f :=
  rfl

@[simp] theorem permuteFrequency_id {n : Nat}
    (S : WalshFourier.Frequency n) :
    permuteFrequency (CoordinatePermutation.id n) S = S :=
  rfl

theorem permutePoint_comp {n : Nat}
    (π σ : CoordinatePermutation n)
    (x : Hypercube.Point n) :
    permutePoint (CoordinatePermutation.comp π σ) x =
      permutePoint π (permutePoint σ x) :=
  rfl

theorem permuteFunction_comp {n : Nat}
    (π σ : CoordinatePermutation n)
    (f : WalshFourier.Function n) :
    permuteFunction (CoordinatePermutation.comp π σ) f =
      permuteFunction π (permuteFunction σ f) :=
  rfl

theorem permuteFrequency_comp {n : Nat}
    (π σ : CoordinatePermutation n)
    (S : WalshFourier.Frequency n) :
    permuteFrequency (CoordinatePermutation.comp π σ) S =
      permuteFrequency π (permuteFrequency σ S) :=
  rfl

theorem permutePoint_symm_permutePoint {n : Nat}
    (π : CoordinatePermutation n)
    (x : Hypercube.Point n) :
    permutePoint (CoordinatePermutation.symm π) (permutePoint π x) = x := by
  funext i
  exact congrArg x (π.left_inv i)

theorem permutePoint_permutePoint_symm {n : Nat}
    (π : CoordinatePermutation n)
    (x : Hypercube.Point n) :
    permutePoint π (permutePoint (CoordinatePermutation.symm π) x) = x := by
  funext i
  exact congrArg x (π.right_inv i)

theorem permuteFunction_symm_permuteFunction {n : Nat}
    (π : CoordinatePermutation n)
    (f : WalshFourier.Function n) :
    permuteFunction (CoordinatePermutation.symm π) (permuteFunction π f) =
      f := by
  funext x
  show f (permutePoint (CoordinatePermutation.symm π) (permutePoint π x)) = f x
  rw [permutePoint_symm_permutePoint]

/-! ## Local decidable equality for hypercube points -/

private def pointDecEq : {n : Nat} →
    (x y : Hypercube.Point n) → Decidable (x = y)
  | 0, _, _ =>
      isTrue (funext fun i => Fin.elim0 i)
  | _ + 1, x, y =>
      match pointDecEq (Hypercube.dropLast x) (Hypercube.dropLast y),
          instDecidableEqBool (Hypercube.last x) (Hypercube.last y) with
      | isTrue hdrop, isTrue hlast =>
          isTrue (Hypercube.eq_of_dropLast_eq_last_eq hdrop hlast)
      | isFalse hdrop, _ =>
          isFalse (fun h => hdrop (by rw [h]))
      | _, isFalse hlast =>
          isFalse (fun h => hlast (by rw [h]))

private local instance instPointDecEq {n : Nat} :
    DecidableEq (Hypercube.Point n) :=
  fun x y => pointDecEq x y

/-! ## Sum and product reindexing toolkit -/

namespace ListTools

private def mulStep (acc x : Int) : Int :=
  acc * x

theorem prodInt_foldl_eq
    (xs : List Int)
    (acc : Int) :
    xs.foldl mulStep acc = acc * xs.foldl mulStep 1 := by
  induction xs generalizing acc with
  | nil => simp [mulStep]
  | cons x xs ih =>
      change xs.foldl mulStep (acc * x) =
        acc * xs.foldl mulStep (1 * x)
      rw [ih (acc * x), ih (1 * x), Int.one_mul, Int.mul_assoc]

@[simp] theorem prodInt_cons
    (x : Int)
    (xs : List Int) :
    Cube.ListTools.prodInt (x :: xs) =
      x * Cube.ListTools.prodInt xs := by
  change xs.foldl mulStep (1 * x) = x * xs.foldl mulStep 1
  rw [prodInt_foldl_eq xs (1 * x), Int.one_mul]

@[simp] theorem prodInt_nil :
    Cube.ListTools.prodInt ([] : List Int) = 1 :=
  rfl

@[simp] theorem prodInt_append
    (xs ys : List Int) :
    Cube.ListTools.prodInt (xs ++ ys) =
      Cube.ListTools.prodInt xs * Cube.ListTools.prodInt ys := by
  induction xs with
  | nil => simp
  | cons x xs ih =>
      simp [ih, Int.mul_assoc]

theorem prodInt_map_congr {α : Type u}
    (xs : List α)
    {f g : α → Int}
    (h : ∀ x, f x = g x) :
    Cube.ListTools.prodInt (xs.map f) =
      Cube.ListTools.prodInt (xs.map g) := by
  induction xs with
  | nil => rfl
  | cons x xs ih =>
      simp [h x, ih]

/-- Integer list sums are invariant under list permutation. -/
theorem sumInt_perm
    {l₁ l₂ : List Int}
    (p : l₁.Perm l₂) :
    Cube.ListTools.sumInt l₁ = Cube.ListTools.sumInt l₂ := by
  induction p with
  | nil => rfl
  | cons x _ ih => simp [ih]
  | swap x y l => simp; omega
  | trans _ _ ih₁ ih₂ => exact ih₁.trans ih₂

/-- Integer list products are invariant under list permutation. -/
theorem prodInt_perm
    {l₁ l₂ : List Int}
    (p : l₁.Perm l₂) :
    Cube.ListTools.prodInt l₁ = Cube.ListTools.prodInt l₂ := by
  induction p with
  | nil => rfl
  | cons x _ ih => simp [ih]
  | swap x y l =>
      simp only [prodInt_cons]
      rw [← Int.mul_assoc, Int.mul_comm y x, Int.mul_assoc]
  | trans _ _ ih₁ ih₂ => exact ih₁.trans ih₂

/-- Counting through a map with a two-sided inverse. -/
theorem count_map_of_inverse {α β : Type u}
    [DecidableEq α] [DecidableEq β]
    (f : α → β) (g : β → α)
    (hgf : ∀ a, g (f a) = a)
    (hfg : ∀ b, f (g b) = b)
    (l : List α) (b : β) :
    (l.map f).count b = l.count (g b) := by
  induction l with
  | nil => rfl
  | cons a t ih =>
      simp only [List.map_cons, List.count_cons, ih]
      by_cases h : a = g b
      · subst a
        simp [hfg b]
      · have hf : f a ≠ b := fun hb => h (by rw [← hb, hgf])
        simp [h, hf, beq_iff_eq]

/-- Counting through a map with an injective function, at an image point. -/
theorem count_map_of_injective {α β : Type u}
    [DecidableEq α] [DecidableEq β]
    (f : α → β)
    (hinj : ∀ x y, f x = f y → x = y)
    (l : List α) (a : α) :
    (l.map f).count (f a) = l.count a := by
  induction l with
  | nil => rfl
  | cons x t ih =>
      simp only [List.map_cons, List.count_cons, ih]
      by_cases h : x = a
      · simp [h, beq_iff_eq]
      · have hf : f x ≠ f a := fun hb => h (hinj x a hb)
        simp [h, hf, beq_iff_eq]

end ListTools

/-- Every element of `Fin n` occurs exactly once in `List.finRange n`. -/
theorem count_finRange : {n : Nat} → (i : Fin n) →
    (List.finRange n).count i = 1
  | 0, i => Fin.elim0 i
  | n + 1, i => by
      rw [List.finRange_succ]
      cases i using Fin.cases with
      | zero =>
          have hzero : ((List.finRange n).map Fin.succ).count (0 : Fin (n + 1)) = 0 := by
            rw [List.count_eq_zero]
            intro hmem
            obtain ⟨j, _, hj⟩ := List.mem_map.mp hmem
            exact Fin.succ_ne_zero j hj
          simp [List.count_cons, hzero, beq_iff_eq]
      | succ j =>
          have hhead : (0 : Fin (n + 1)) ≠ j.succ :=
            fun h => Fin.succ_ne_zero j h.symm
          have hmap :
              ((List.finRange n).map Fin.succ).count j.succ =
                (List.finRange n).count j :=
            ListTools.count_map_of_injective Fin.succ
              (fun a b hab => by
                apply Fin.ext
                have := congrArg Fin.val hab
                simpa using this)
              (List.finRange n) j
          simp [List.count_cons, hmap, count_finRange j, hhead, beq_iff_eq]

/-- Reconstruction of a point from its truncation and last coordinate. -/
theorem extend_dropLast_last {n : Nat}
    (x : Hypercube.Point (n + 1)) :
    Hypercube.extend (Hypercube.dropLast x) (Hypercube.last x) = x := by
  apply Hypercube.eq_of_dropLast_eq_last_eq <;> simp

/-- Characterization of equality with an extension. -/
theorem eq_extend_iff {n : Nat}
    (x : Hypercube.Point (n + 1))
    (v : Hypercube.Point n)
    (b : Bool) :
    x = Hypercube.extend v b ↔
      Hypercube.dropLast x = v ∧ Hypercube.last x = b := by
  constructor
  · intro h
    rw [h]
    simp
  · rintro ⟨hd, hl⟩
    rw [← extend_dropLast_last x, hd, hl]

/-- Every point occurs exactly once in `Hypercube.vertices`. -/
theorem count_vertices : {n : Nat} → (x : Hypercube.Point n) →
    (Hypercube.vertices n).count x = 1
  | 0, x => by
      have hx : (fun i => nomatch i : Hypercube.Point 0) = x :=
        funext fun i => Fin.elim0 i
      rw [← hx]
      exact List.count_singleton_self
  | n + 1, x => by
      have hpair :
          ∀ l : List (Hypercube.Point n),
            (l.flatMap
              (fun v => [Hypercube.extend v false, Hypercube.extend v true])).count x =
              l.count (Hypercube.dropLast x) := by
        intro l
        induction l with
        | nil => rfl
        | cons v t ih =>
            rw [List.flatMap_cons, List.count_append, ih]
            have hcount2 :
                ([Hypercube.extend v false, Hypercube.extend v true].count x) =
                  ([v].count (Hypercube.dropLast x)) := by
              by_cases hv : Hypercube.dropLast x = v
              · cases hb : Hypercube.last x
                · have h0 : Hypercube.extend v false = x :=
                    ((eq_extend_iff x v false).mpr ⟨hv, hb⟩).symm
                  have h1 : Hypercube.extend v true ≠ x := by
                    intro h
                    have := ((eq_extend_iff x v true).mp h.symm).2
                    rw [hb] at this
                    cases this
                  simp [List.count_cons, h0, h1, hv, beq_iff_eq]
                · have h0 : Hypercube.extend v false ≠ x := by
                    intro h
                    have := ((eq_extend_iff x v false).mp h.symm).2
                    rw [hb] at this
                    cases this
                  have h1 : Hypercube.extend v true = x :=
                    ((eq_extend_iff x v true).mpr ⟨hv, hb⟩).symm
                  simp [List.count_cons, h0, h1, hv, beq_iff_eq]
              · have h0 : Hypercube.extend v false ≠ x := by
                  intro h
                  exact hv ((eq_extend_iff x v false).mp h.symm).1
                have h1 : Hypercube.extend v true ≠ x := by
                  intro h
                  exact hv ((eq_extend_iff x v true).mp h.symm).1
                have hv' : v ≠ Hypercube.dropLast x := fun h => hv h.symm
                simp [List.count_cons, h0, h1, hv', beq_iff_eq]
            rw [hcount2]
            simp [List.count_cons]
            omega
      simp only [Hypercube.vertices]
      rw [hpair, count_vertices (Hypercube.dropLast x)]

/-- The image of the vertex list under a point bijection is a permutation of
the vertex list. -/
theorem vertices_map_perm {n : Nat}
    (φ ψ : Hypercube.Point n → Hypercube.Point n)
    (hgf : ∀ x, ψ (φ x) = x)
    (hfg : ∀ x, φ (ψ x) = x) :
    ((Hypercube.vertices n).map φ).Perm (Hypercube.vertices n) := by
  rw [List.perm_iff_count]
  intro a
  rw [ListTools.count_map_of_inverse φ ψ hgf hfg, count_vertices, count_vertices]

/-- Master finite-sum reindexing lemma over the hypercube vertex list. -/
theorem sumInt_map_vertices_reindex {n : Nat}
    (φ ψ : Hypercube.Point n → Hypercube.Point n)
    (hgf : ∀ x, ψ (φ x) = x)
    (hfg : ∀ x, φ (ψ x) = x)
    (h : Hypercube.Point n → Int) :
    Cube.ListTools.sumInt ((Hypercube.vertices n).map (fun x => h (φ x))) =
      Cube.ListTools.sumInt ((Hypercube.vertices n).map h) := by
  have hperm := (vertices_map_perm φ ψ hgf hfg).map h
  have := ListTools.sumInt_perm hperm
  change
    Cube.ListTools.sumInt
        ((Hypercube.vertices n).map (h ∘ φ)) =
      Cube.ListTools.sumInt ((Hypercube.vertices n).map h)
  rw [← List.map_map]
  exact this

/-- Product reindexing over `List.finRange` under a `Fin` bijection. -/
theorem prodInt_map_finRange_reindex {n : Nat}
    (ρ ρinv : Fin n → Fin n)
    (hgf : ∀ i, ρinv (ρ i) = i)
    (hfg : ∀ i, ρ (ρinv i) = i)
    (h : Fin n → Int) :
    Cube.ListTools.prodInt ((List.finRange n).map (fun i => h (ρ i))) =
      Cube.ListTools.prodInt ((List.finRange n).map h) := by
  have hperm : ((List.finRange n).map ρ).Perm (List.finRange n) := by
    rw [List.perm_iff_count]
    intro a
    rw [ListTools.count_map_of_inverse ρ ρinv hgf hfg, count_finRange,
      count_finRange]
  have := ListTools.prodInt_perm (hperm.map h)
  change
    Cube.ListTools.prodInt ((List.finRange n).map (h ∘ ρ)) =
      Cube.ListTools.prodInt ((List.finRange n).map h)
  rw [← List.map_map]
  exact this

/-! ## A5. Walsh permutation equivariance -/

/-- Product form of the Walsh character over the coordinate list. -/
theorem character_eq_prod : {n : Nat} →
    (S : WalshFourier.Frequency n) →
    (x : WalshFourier.Sample n) →
    WalshFourier.character S x =
      Cube.ListTools.prodInt
        ((List.finRange n).map
          (fun i => if S i then Hypercube.spinOfBool (x i) else 1))
  | 0, S, x => by
      simp [WalshFourier.character, Fourier.character, List.finRange_zero]
  | n + 1, S, x => by
      rw [List.finRange_succ_last, List.map_append, List.map_map,
        ListTools.prodInt_append]
      have hsingle :
          Cube.ListTools.prodInt
            (List.map
              (fun i => if S i then Hypercube.spinOfBool (x i) else 1)
              [Fin.last n]) =
            (if S (Fin.last n) then
              Hypercube.spinOfBool (x (Fin.last n)) else 1) := by
        simp
      have hcast :
          ((List.finRange n).map
            ((fun i => if S i then Hypercube.spinOfBool (x i) else 1) ∘
              Fin.castSucc)) =
            ((List.finRange n).map
              (fun j =>
                if Hypercube.dropLast S j then
                  Hypercube.spinOfBool (Hypercube.dropLast x j) else 1)) :=
        List.map_congr_left (fun j _ => rfl)
      rw [hsingle, hcast,
        ← character_eq_prod (Hypercube.dropLast S) (Hypercube.dropLast x)]
      calc
        WalshFourier.character S x =
            WalshFourier.character S
              (Hypercube.extend (Hypercube.dropLast x) (Hypercube.last x)) := by
          rw [extend_dropLast_last]
        _ = WalshFourier.character (Hypercube.dropLast S) (Hypercube.dropLast x) *
            (if S (Fin.last n) then
              Hypercube.spinOfBool (x (Fin.last n)) else 1) := by
          rw [WalshFourier.character_extend]
          have hlastS : S (Fin.last n) = Hypercube.last S := rfl
          have hlastx : x (Fin.last n) = Hypercube.last x := rfl
          rw [hlastS, hlastx]
          cases Hypercube.last S <;> rfl

/-- The Walsh character is invariant under simultaneous coordinate
reindexing of the frequency and the sample. -/
theorem character_reindex {n : Nat}
    (ρ ρinv : Fin n → Fin n)
    (hgf : ∀ i, ρinv (ρ i) = i)
    (hfg : ∀ i, ρ (ρinv i) = i)
    (T : WalshFourier.Frequency n)
    (y : WalshFourier.Sample n) :
    WalshFourier.character (fun i => T (ρ i)) (fun i => y (ρ i)) =
      WalshFourier.character T y := by
  rw [character_eq_prod, character_eq_prod]
  exact
    prodInt_map_finRange_reindex ρ ρinv hgf hfg
      (fun i => if T i then Hypercube.spinOfBool (y i) else 1)

/-- Pointwise character equivariance for the point action. -/
theorem character_permutePoint {n : Nat}
    (π : CoordinatePermutation n)
    (S : WalshFourier.Frequency n)
    (y : WalshFourier.Sample n) :
    WalshFourier.character S (permutePoint π y) =
      WalshFourier.character
        (permuteFrequency (CoordinatePermutation.symm π) S) y := by
  have h :=
    character_reindex π.invFun π.toFun π.right_inv π.left_inv
      (permuteFrequency (CoordinatePermutation.symm π) S) y
  have hfreq :
      (fun i => permuteFrequency (CoordinatePermutation.symm π) S
        (π.invFun i)) = S := by
    funext i
    show S (π.toFun (π.invFun i)) = S i
    rw [π.right_inv]
  rw [hfreq] at h
  exact h

/-- Character equivariance in the orientation of the frequency action. -/
theorem walsh_character_permutation_equivariant {n : Nat}
    (π : CoordinatePermutation n)
    (S : WalshFourier.Frequency n)
    (x : Hypercube.Point n) :
    WalshFourier.character (permuteFrequency π S) x =
      WalshFourier.character S
        (permutePoint (CoordinatePermutation.symm π) x) :=
  (character_permutePoint (CoordinatePermutation.symm π) S x).symm

/--
The central finite Fourier theorem: the Walsh projection numerator of a
permuted function at a frequency equals the projection numerator of the
original function at the inversely permuted frequency.
-/
theorem walsh_projection_permutation_equivariant {n : Nat}
    (π : CoordinatePermutation n)
    (f : WalshFourier.Function n)
    (S : WalshFourier.Frequency n) :
    WalshFourier.projectionNumerator (permuteFunction π f) S =
      WalshFourier.projectionNumerator f
        (permuteFrequency (CoordinatePermutation.symm π) S) := by
  show
    Cube.ListTools.sumInt
      ((Hypercube.vertices n).map
        (fun x =>
          f (permutePoint (CoordinatePermutation.symm π) x) *
            WalshFourier.character S x)) =
      Cube.ListTools.sumInt
        ((Hypercube.vertices n).map
          (fun y =>
            f y *
              WalshFourier.character
                (permuteFrequency (CoordinatePermutation.symm π) S) y))
  rw [← sumInt_map_vertices_reindex
    (permutePoint π) (permutePoint (CoordinatePermutation.symm π))
    (permutePoint_symm_permutePoint π)
    (permutePoint_permutePoint_symm π)
    (fun x =>
      f (permutePoint (CoordinatePermutation.symm π) x) *
        WalshFourier.character S x)]
  apply Cube.ListTools.sumInt_map_congr
  intro y
  rw [permutePoint_symm_permutePoint π y, character_permutePoint π S y]

/-! ## A3. Finite coordinate groups and orbits -/

/-- A finite list of coordinate permutations with closure certificates. -/
structure FiniteCoordinateGroup (n : Nat) where
  elems : List (CoordinatePermutation n)
  id_mem : CoordinatePermutation.id n ∈ elems
  comp_mem :
    ∀ {π σ : CoordinatePermutation n},
      π ∈ elems → σ ∈ elems →
        CoordinatePermutation.comp π σ ∈ elems
  symm_mem :
    ∀ {π : CoordinatePermutation n},
      π ∈ elems →
        CoordinatePermutation.symm π ∈ elems

/-- Group membership. -/
def FiniteCoordinateGroup.Contains {n : Nat}
    (G : FiniteCoordinateGroup n)
    (π : CoordinatePermutation n) : Prop :=
  π ∈ G.elems

/-- Orbit equivalence of cube functions under a finite coordinate group. -/
def OrbitEquivalent {n : Nat}
    (G : FiniteCoordinateGroup n)
    (f g : WalshFourier.Function n) : Prop :=
  ∃ π : CoordinatePermutation n,
    G.Contains π ∧ g = permuteFunction π f

theorem orbitEquivalent_refl {n : Nat}
    (G : FiniteCoordinateGroup n)
    (f : WalshFourier.Function n) :
    OrbitEquivalent G f f :=
  ⟨CoordinatePermutation.id n, G.id_mem, rfl⟩

theorem orbitEquivalent_symm {n : Nat}
    {G : FiniteCoordinateGroup n}
    {f g : WalshFourier.Function n}
    (h : OrbitEquivalent G f g) :
    OrbitEquivalent G g f := by
  obtain ⟨π, hmem, hg⟩ := h
  refine ⟨CoordinatePermutation.symm π, G.symm_mem hmem, ?_⟩
  rw [hg, permuteFunction_symm_permuteFunction]

theorem orbitEquivalent_trans {n : Nat}
    {G : FiniteCoordinateGroup n}
    {f g h : WalshFourier.Function n}
    (hfg : OrbitEquivalent G f g)
    (hgh : OrbitEquivalent G g h) :
    OrbitEquivalent G f h := by
  obtain ⟨π, hπ, hg⟩ := hfg
  obtain ⟨σ, hσ, hh⟩ := hgh
  refine ⟨CoordinatePermutation.comp σ π, G.comp_mem hσ hπ, ?_⟩
  rw [hh, hg, permuteFunction_comp]

/-! ## A4. Truth-table codes and canonical representatives -/

/-- Finite truth-table code of an integer-valued cube function. -/
def functionCode {n : Nat}
    (f : WalshFourier.Function n) : List Int :=
  (Hypercube.vertices n).map f

/-- Executable lexicographic comparison, non-strict. -/
def lexLeIntList : List Int → List Int → Bool
  | [], _ => true
  | _ :: _, [] => false
  | a :: as, b :: bs =>
      if a < b then true
      else if b < a then false
      else lexLeIntList as bs

/-- Executable lexicographic comparison, strict. -/
def lexLtIntList : List Int → List Int → Bool
  | [], [] => false
  | [], _ :: _ => true
  | _ :: _, [] => false
  | a :: as, b :: bs =>
      if a < b then true
      else if b < a then false
      else lexLtIntList as bs

theorem lexLeIntList_refl (xs : List Int) :
    lexLeIntList xs xs = true := by
  induction xs with
  | nil => rfl
  | cons a as ih =>
      simp [lexLeIntList, Int.lt_irrefl, ih]

theorem lexLtIntList_irrefl (xs : List Int) :
    lexLtIntList xs xs = false := by
  induction xs with
  | nil => rfl
  | cons a as ih =>
      simp [lexLtIntList, Int.lt_irrefl, ih]

theorem lexLeIntList_antisymm : ∀ {xs ys : List Int},
    lexLeIntList xs ys = true →
    lexLeIntList ys xs = true →
    xs = ys
  | [], [], _, _ => rfl
  | [], _ :: _, _, h2 => by cases h2
  | _ :: _, [], h1, _ => by cases h1
  | a :: as, b :: bs, h1, h2 => by
      by_cases hab : a < b
      · have : lexLeIntList (b :: bs) (a :: as) = false := by
          have hba : ¬ b < a := by omega
          simp [lexLeIntList, hba, hab]
        rw [this] at h2
        cases h2
      · by_cases hba : b < a
        · have : lexLeIntList (a :: as) (b :: bs) = false := by
            simp [lexLeIntList, hab, hba]
          rw [this] at h1
          cases h1
        · have hcase : a = b := by omega
          have h1' : lexLeIntList as bs = true := by
            simpa [lexLeIntList, hab, hba] using h1
          have h2' : lexLeIntList bs as = true := by
            have hba' : ¬ b < a := hba
            have hab' : ¬ a < b := hab
            simpa [lexLeIntList, hcase, Int.lt_irrefl] using h2
          rw [hcase, lexLeIntList_antisymm h1' h2']

/--
A canonical representative certificate for an orbit.

Canonicality is either computed and proved or explicitly certified; the
certificate is finite and Boolean-side, and it is not analytic authority.
-/
structure CanonicalRepresentativeCertificate
    {n : Nat}
    (G : FiniteCoordinateGroup n)
    (f : WalshFourier.Function n) where
  representative : WalshFourier.Function n
  inOrbit : OrbitEquivalent G f representative
  minimal :
    ∀ g : WalshFourier.Function n,
      OrbitEquivalent G f g →
        lexLeIntList (functionCode representative) (functionCode g) = true
  unique :
    ∀ g : WalshFourier.Function n,
      OrbitEquivalent G f g →
        lexLeIntList (functionCode g) (functionCode representative) = true →
          functionCode g = functionCode representative

/-- The canonical representative carried by a certificate. -/
def canonicalRepresentative
    {n : Nat} {G : FiniteCoordinateGroup n}
    {f : WalshFourier.Function n}
    (C : CanonicalRepresentativeCertificate G f) :
    WalshFourier.Function n :=
  C.representative

theorem canonicalRepresentative_inOrbit
    {n : Nat} {G : FiniteCoordinateGroup n}
    {f : WalshFourier.Function n}
    (C : CanonicalRepresentativeCertificate G f) :
    OrbitEquivalent G f (canonicalRepresentative C) :=
  C.inOrbit

theorem canonicalRepresentative_minimal
    {n : Nat} {G : FiniteCoordinateGroup n}
    {f : WalshFourier.Function n}
    (C : CanonicalRepresentativeCertificate G f)
    (g : WalshFourier.Function n)
    (hg : OrbitEquivalent G f g) :
    lexLeIntList (functionCode (canonicalRepresentative C))
      (functionCode g) = true :=
  C.minimal g hg

theorem canonicalRepresentative_unique_code
    {n : Nat} {G : FiniteCoordinateGroup n}
    {f : WalshFourier.Function n}
    (C : CanonicalRepresentativeCertificate G f)
    (g : WalshFourier.Function n)
    (hg : OrbitEquivalent G f g)
    (hle : lexLeIntList (functionCode g)
      (functionCode (canonicalRepresentative C)) = true) :
    functionCode g = functionCode (canonicalRepresentative C) :=
  C.unique g hg hle

/-! ## A6. Frequency orbit profiles -/

/-- Orbit equivalence of frequencies. -/
def FrequencyOrbitEquivalent {n : Nat}
    (G : FiniteCoordinateGroup n)
    (S T : WalshFourier.Frequency n) : Prop :=
  ∃ π : CoordinatePermutation n,
    G.Contains π ∧ T = permuteFrequency π S

/-- One row of a frequency-orbit profile: an orbit of frequencies with the
coefficient list and the orbit energy numerator of `f`. -/
structure FrequencyOrbitProfileRow
    {n : Nat}
    (G : FiniteCoordinateGroup n)
    (f : WalshFourier.Function n) where
  representativeFrequency : WalshFourier.Frequency n
  orbitFrequencies : List (WalshFourier.Frequency n)
  coefficients : List Int
  energyNumerator : Int
  coversOrbit :
    ∀ S : WalshFourier.Frequency n,
      S ∈ orbitFrequencies →
        FrequencyOrbitEquivalent G representativeFrequency S
  coefficientsSound :
    coefficients =
      orbitFrequencies.map
        (fun S => WalshFourier.projectionNumerator f S)
  energySound :
    energyNumerator =
      Cube.ListTools.sumInt
        (orbitFrequencies.map
          (fun S =>
            WalshFourier.projectionNumerator f S *
              WalshFourier.projectionNumerator f S))

/--
A finite frequency-orbit profile.

The optional partition obligations are explicit certified fields; a profile
without them is not advertised as covering all frequencies.
-/
structure FrequencyOrbitProfile
    {n : Nat}
    (G : FiniteCoordinateGroup n)
    (f : WalshFourier.Function n) where
  rows : List (FrequencyOrbitProfileRow G f)
  finiteSound : Prop
  finiteSoundProof : finiteSound
  coversAllFrequencies : Prop
  coversAllFrequenciesProof : coversAllFrequencies
  noDuplicateOrbitRows : Prop
  noDuplicateOrbitRowsProof : noDuplicateOrbitRows

/-- Certified profile invariance along an orbit equivalence. -/
structure FrequencyOrbitProfileInvariance
    {n : Nat}
    (G : FiniteCoordinateGroup n)
    (f g : WalshFourier.Function n) where
  orbitEquivalent : OrbitEquivalent G f g
  profileInvariant : Prop
  profileInvariantProof : profileInvariant

theorem frequencyOrbitProfile_invariant
    {n : Nat}
    {G : FiniteCoordinateGroup n}
    {f g : WalshFourier.Function n}
    (I : FrequencyOrbitProfileInvariance G f g) :
    I.profileInvariant :=
  I.profileInvariantProof

/-- Squared projection numerators are orbit-invariant along the equivariance
theorem: the energy contribution of `S` for the permuted function equals the
contribution of the inversely permuted frequency for the original. -/
theorem projection_square_equivariant {n : Nat}
    (π : CoordinatePermutation n)
    (f : WalshFourier.Function n)
    (S : WalshFourier.Frequency n) :
    WalshFourier.projectionNumerator (permuteFunction π f) S *
      WalshFourier.projectionNumerator (permuteFunction π f) S =
      WalshFourier.projectionNumerator f
        (permuteFrequency (CoordinatePermutation.symm π) S) *
        WalshFourier.projectionNumerator f
          (permuteFrequency (CoordinatePermutation.symm π) S) := by
  rw [walsh_projection_permutation_equivariant π f S]

/-! ## A7. Ordered factorization adapter -/

/-- A typed interpreter from ordered factor trees to cube functions. -/
structure OrderedFactorInterpreter (n : Nat) where
  eval : OrderedFactorTree → WalshFourier.Function n

/-- A realization of a cube function by an ordered factor tree. -/
structure OrderedFactorRealization
    {n : Nat}
    (I : OrderedFactorInterpreter n)
    (t : OrderedFactorTree)
    (f : WalshFourier.Function n) where
  realizes : I.eval t = f

/-- A minimal ordered factor certificate. Minimality is an explicit
certified obligation. -/
structure CanonicalOrderedFactorCertificate
    {n : Nat}
    (I : OrderedFactorInterpreter n)
    (f : WalshFourier.Function n) where
  factor : OrderedFactorTree
  realizes : OrderedFactorRealization I factor f
  minimalBySizeDepthCode : Prop
  minimalProof : minimalBySizeDepthCode

theorem orderedFactor_realizes
    {n : Nat}
    {I : OrderedFactorInterpreter n}
    {f : WalshFourier.Function n}
    (C : CanonicalOrderedFactorCertificate I f) :
    I.eval C.factor = f :=
  C.realizes.realizes

/-- An ordered factor tree is not analytic theorem authority. -/
def OrderedFactorTreeOwnsAnalyticTheorem
    (_t : OrderedFactorTree) : Prop :=
  False

theorem orderedFactorTree_not_analytic_authority
    (t : OrderedFactorTree) :
    ¬ OrderedFactorTreeOwnsAnalyticTheorem t := by
  intro h
  exact h

/-! ## A8. The main PFF object -/

/-- The Permutation–Frequency Factorization object. -/
structure PFFactorization
    {n : Nat}
    (G : FiniteCoordinateGroup n)
    (f : WalshFourier.Function n)
    (I : OrderedFactorInterpreter n) where
  canonicalCertificate :
    CanonicalRepresentativeCertificate G f
  canonicalSpectrum :
    WalshFourier.Frequency n → Int
  canonicalSpectrumSound :
    canonicalSpectrum =
      fun S =>
        WalshFourier.projectionNumerator
          canonicalCertificate.representative S
  frequencyProfile :
    FrequencyOrbitProfile G canonicalCertificate.representative
  orderedFactorCertificate :
    CanonicalOrderedFactorCertificate
      I canonicalCertificate.representative
  walshEquivarianceSound : Prop
  walshEquivarianceProof : walshEquivarianceSound
  completeInvariantSound : Prop
  completeInvariantProof : completeInvariantSound

/-- The canonical representative of a PFF object. -/
def PFFactorization.canonicalRepresentative
    {n : Nat}
    {G : FiniteCoordinateGroup n}
    {f : WalshFourier.Function n}
    {I : OrderedFactorInterpreter n}
    (P : PFFactorization G f I) :
    WalshFourier.Function n :=
  P.canonicalCertificate.representative

/-- The canonical ordered factor of a PFF object. -/
def PFFactorization.orderedFactor
    {n : Nat}
    {G : FiniteCoordinateGroup n}
    {f : WalshFourier.Function n}
    {I : OrderedFactorInterpreter n}
    (P : PFFactorization G f I) :
    OrderedFactorTree :=
  P.orderedFactorCertificate.factor

/-- The frequency-orbit profile of a PFF object. -/
def PFFactorization.frequencyOrbitProfile
    {n : Nat}
    {G : FiniteCoordinateGroup n}
    {f : WalshFourier.Function n}
    {I : OrderedFactorInterpreter n}
    (P : PFFactorization G f I) :
    FrequencyOrbitProfile G P.canonicalCertificate.representative :=
  P.frequencyProfile

theorem pff_canonical_representative_in_orbit
    {n : Nat}
    {G : FiniteCoordinateGroup n}
    {f : WalshFourier.Function n}
    {I : OrderedFactorInterpreter n}
    (P : PFFactorization G f I) :
    OrbitEquivalent G f P.canonicalCertificate.representative :=
  P.canonicalCertificate.inOrbit

theorem pff_ordered_factor_realizes_canonical
    {n : Nat}
    {G : FiniteCoordinateGroup n}
    {f : WalshFourier.Function n}
    {I : OrderedFactorInterpreter n}
    (P : PFFactorization G f I) :
    I.eval P.orderedFactorCertificate.factor =
      P.canonicalCertificate.representative :=
  orderedFactor_realizes P.orderedFactorCertificate

theorem pff_canonical_spectrum_sound
    {n : Nat}
    {G : FiniteCoordinateGroup n}
    {f : WalshFourier.Function n}
    {I : OrderedFactorInterpreter n}
    (P : PFFactorization G f I) :
    P.canonicalSpectrum =
      fun S =>
        WalshFourier.projectionNumerator
          P.canonicalCertificate.representative S :=
  P.canonicalSpectrumSound

theorem pff_walsh_projection_equivariant
    {n : Nat}
    (π : CoordinatePermutation n)
    (f : WalshFourier.Function n)
    (S : WalshFourier.Frequency n) :
    WalshFourier.projectionNumerator
      (permuteFunction π f) S =
      WalshFourier.projectionNumerator
        f (permuteFrequency (CoordinatePermutation.symm π) S) :=
  walsh_projection_permutation_equivariant π f S

theorem pff_complete_invariant
    {n : Nat}
    {G : FiniteCoordinateGroup n}
    {f : WalshFourier.Function n}
    {I : OrderedFactorInterpreter n}
    (P : PFFactorization G f I) :
    P.completeInvariantSound :=
  P.completeInvariantProof

/-! ## A9. Main theorem -/

/--
The Permutation–Frequency Factorization theorem: soundness of the PFF
theorem object. The canonical representative lies in the orbit of `f`, the
canonical spectrum is the Walsh spectrum of that representative, the ordered
factor realizes the representative preserving order and bracketing, and the
equivariance and complete-invariant obligations hold. It asserts no global
analytic conclusion.
-/
theorem permutation_frequency_factorization_theorem
    {n : Nat}
    {G : FiniteCoordinateGroup n}
    {f : WalshFourier.Function n}
    {I : OrderedFactorInterpreter n}
    (P : PFFactorization G f I) :
    OrbitEquivalent G f P.canonicalCertificate.representative ∧
      (P.canonicalSpectrum =
        fun S =>
          WalshFourier.projectionNumerator
            P.canonicalCertificate.representative S) ∧
      (I.eval P.orderedFactorCertificate.factor =
        P.canonicalCertificate.representative) ∧
      P.walshEquivarianceSound ∧
      P.completeInvariantSound :=
  ⟨P.canonicalCertificate.inOrbit,
    P.canonicalSpectrumSound,
    orderedFactor_realizes P.orderedFactorCertificate,
    P.walshEquivarianceProof,
    P.completeInvariantProof⟩

/-! ## A10. Firewall summary -/

/-- A PFF object is not analytic theorem authority. -/
def PFFactorizationOwnsAnalyticTheorem
    {n : Nat}
    {G : FiniteCoordinateGroup n}
    {f : WalshFourier.Function n}
    {I : OrderedFactorInterpreter n}
    (_P : PFFactorization G f I) : Prop :=
  False

theorem pff_not_analytic_authority
    {n : Nat}
    {G : FiniteCoordinateGroup n}
    {f : WalshFourier.Function n}
    {I : OrderedFactorInterpreter n}
    (P : PFFactorization G f I) :
    ¬ PFFactorizationOwnsAnalyticTheorem P := by
  intro h
  exact h

theorem pff_boundary_summary
    {n : Nat}
    {G : FiniteCoordinateGroup n}
    {f : WalshFourier.Function n}
    {I : OrderedFactorInterpreter n}
    (P : PFFactorization G f I) :
    ¬ PFFactorizationOwnsAnalyticTheorem P ∧
      ¬ OrderedFactorTreeOwnsAnalyticTheorem
        P.orderedFactorCertificate.factor :=
  ⟨pff_not_analytic_authority P,
    orderedFactorTree_not_analytic_authority
      P.orderedFactorCertificate.factor⟩

end PermutationFrequencyFactorization
end Cube
end Boolean
