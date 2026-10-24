# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Orthogonality.Variantabc0a3517055ea5c570c37f0fd36bf293dbeffb19cd04f8fffb8437b6f451fc2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b57e637fba452324ea1524fab02ca7f3896451cc` · SHA-256 `abc0a3517055ea5c570c37f0fd36bf293dbeffb19cd04f8fffb8437b6f451fc2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Boolean.Cube.WalshFourier

namespace Boolean.Cube

namespace ListTools

private def addInt (acc x : Int) : Int :=
  acc + x

theorem sumInt_foldl_eq
    (xs : List Int)
    (acc : Int) :
    xs.foldl addInt acc = acc + xs.foldl addInt 0 := by
  induction xs generalizing acc with
  | nil => simp
  | cons x xs ih =>
      change xs.foldl addInt (acc + x) =
        acc + xs.foldl addInt (0 + x)
      rw [ih (acc + x), ih (0 + x)]
      omega

@[simp] theorem sumInt_cons
    (x : Int)
    (xs : List Int) :
    ListTools.sumInt (x :: xs) = x + ListTools.sumInt xs := by
  change xs.foldl addInt (0 + x) = x + xs.foldl addInt 0
  rw [sumInt_foldl_eq xs (0 + x)]
  omega

@[simp] theorem sumInt_append
    (xs ys : List Int) :
    ListTools.sumInt (xs ++ ys) =
      ListTools.sumInt xs + ListTools.sumInt ys := by
  induction xs with
  | nil => simp [ListTools.sumInt]
  | cons x xs ih =>
      simp [ih]
      omega

@[simp] theorem sumInt_map_neg {α : Type u}
    (xs : List α)
    (f : α → Int) :
    ListTools.sumInt (xs.map (fun x => - f x)) =
      -ListTools.sumInt (xs.map f) := by
  induction xs with
  | nil => simp [ListTools.sumInt]
  | cons x xs ih =>
      simp [ih]
      omega

@[simp] theorem sumInt_map_add {α : Type u}
    (xs : List α)
    (f g : α → Int) :
    ListTools.sumInt (xs.map (fun x => f x + g x)) =
      ListTools.sumInt (xs.map f) + ListTools.sumInt (xs.map g) := by
  induction xs with
  | nil => simp [ListTools.sumInt]
  | cons x xs ih =>
      simp [ih]
      omega

@[simp] theorem sumInt_map_zero {α : Type u}
    (xs : List α) :
    ListTools.sumInt (xs.map (fun _ => (0 : Int))) = 0 := by
  induction xs with
  | nil => simp [ListTools.sumInt]
  | cons _ xs ih =>
      simp [ih]

@[simp] theorem sumInt_map_one {α : Type u}
    (xs : List α) :
    ListTools.sumInt (xs.map (fun _ => (1 : Int))) = xs.length := by
  induction xs with
  | nil => simp [ListTools.sumInt]
  | cons _ xs ih =>
      simp [ih]
      omega

theorem sumInt_flatMap_pair {α : Type u}
    (xs : List α)
    (f g : α → Int) :
    ListTools.sumInt (xs.flatMap (fun x => [f x, g x])) =
      ListTools.sumInt (xs.map (fun x => f x + g x)) := by
  induction xs with
  | nil => simp [ListTools.sumInt]
  | cons x xs ih =>
      simp [ih]
      omega

theorem sumInt_map_congr {α : Type u}
    (xs : List α)
    {f g : α → Int}
    (h : ∀ x, f x = g x) :
    ListTools.sumInt (xs.map f) = ListTools.sumInt (xs.map g) := by
  induction xs with
  | nil => rfl
  | cons x xs ih =>
      simp [h x, ih]

end ListTools

namespace WalshFourier

/-- The unnormalized inner product of two Walsh characters over `Hypercube.vertices`. -/
def characterProductSum {n : Nat}
    (S T : WalshFourier.Frequency n) :
    Int :=
  ListTools.sumInt
    ((Hypercube.vertices n).map
      (fun x => WalshFourier.character S x * WalshFourier.character T x))

@[simp] theorem characterProductSum_eq_innerProduct {n : Nat}
    (S T : WalshFourier.Frequency n) :
    characterProductSum S T =
      WalshFourier.innerProduct
        (WalshFourier.characterFunction S)
        (WalshFourier.characterFunction T) := rfl

@[simp] theorem character_extend {n : Nat}
    (S : WalshFourier.Frequency (n + 1))
    (x : Hypercube.Point n)
    (b : Bool) :
    WalshFourier.character S (Hypercube.extend x b) =
      WalshFourier.character (Hypercube.dropLast S) x *
        match Hypercube.last S with
        | true => Hypercube.spinOfBool b
        | false => 1 := by
  change
    (Fourier.character (Hypercube.dropLast S)
        (Hypercube.dropLast (Hypercube.extend x b)) *
      (match Hypercube.last S with
      | true =>
          Hypercube.spinOfBool
            (Hypercube.last (Hypercube.extend x b))
      | false => 1)) =
    (Fourier.character (Hypercube.dropLast S) x *
      (match Hypercube.last S with
      | true => Hypercube.spinOfBool b
      | false => 1))
  simp

theorem character_eq_neg_one_or_one :
    ∀ {n : Nat}
      (S : WalshFourier.Frequency n)
      (x : WalshFourier.Sample n),
      WalshFourier.character S x = -1 ∨
        WalshFourier.character S x = 1
  | 0, _S, _x => by
      right
      simp [WalshFourier.character, Fourier.character]
  | n + 1, S, x => by
      have ih :=
        character_eq_neg_one_or_one
          (Hypercube.dropLast S) (Hypercube.dropLast x)
      rcases ih with h | h
      · have hf :
          Fourier.character (Hypercube.dropLast S)
              (Hypercube.dropLast x) = -1 := by
          simpa [WalshFourier.character] using h
        cases hs : Hypercube.last S <;>
          cases hx : Hypercube.last x <;>
          simp [WalshFourier.character, Fourier.character, hf, hs, hx,
            Hypercube.spinOfBool]
      · have hf :
          Fourier.character (Hypercube.dropLast S)
              (Hypercube.dropLast x) = 1 := by
          simpa [WalshFourier.character] using h
        cases hs : Hypercube.last S <;>
          cases hx : Hypercube.last x <;>
          simp [WalshFourier.character, Fourier.character, hf, hs, hx,
            Hypercube.spinOfBool]

@[simp] theorem character_mul_self {n : Nat}
    (S : WalshFourier.Frequency n)
    (x : WalshFourier.Sample n) :
    WalshFourier.character S x * WalshFourier.character S x = 1 := by
  rcases character_eq_neg_one_or_one S x with h | h <;> simp [h]

private theorem neg_mul_neg_eq_mul_of_character
    {a b : Int}
    (ha : a = -1 ∨ a = 1)
    (hb : b = -1 ∨ b = 1) :
    (-a) * (-b) = a * b := by
  rcases ha with ha | ha <;>
    rcases hb with hb | hb <;>
    simp [ha, hb]

private theorem mul_neg_eq_neg_mul_of_character
    {a b : Int}
    (ha : a = -1 ∨ a = 1)
    (hb : b = -1 ∨ b = 1) :
    a * (-b) = -(a * b) := by
  rcases ha with ha | ha <;>
    rcases hb with hb | hb <;>
    simp [ha, hb]

private theorem neg_mul_eq_neg_mul_of_character
    {a b : Int}
    (ha : a = -1 ∨ a = 1)
    (hb : b = -1 ∨ b = 1) :
    (-a) * b = -(a * b) := by
  rcases ha with ha | ha <;>
    rcases hb with hb | hb <;>
    simp [ha, hb]

theorem characterProductSum_eq_zero_of_ne :
    ∀ {n : Nat}
      (S T : WalshFourier.Frequency n),
      S ≠ T →
      characterProductSum S T = 0
  | 0, S, T, hne => by
      have hST : S = T := by
        funext i
        exact Fin.elim0 i
      exact False.elim (hne hST)
  | n + 1, S, T, hne => by
      by_cases hlast : Hypercube.last S = Hypercube.last T
      · have hdrop : Hypercube.dropLast S ≠ Hypercube.dropLast T := by
          intro h
          exact hne (Hypercube.eq_of_dropLast_eq_last_eq h hlast)
        have ih := characterProductSum_eq_zero_of_ne
          (Hypercube.dropLast S) (Hypercube.dropLast T) hdrop
        cases hs : Hypercube.last S <;>
          cases ht : Hypercube.last T
        · unfold characterProductSum at ih ⊢
          simp only [Hypercube.vertices, List.map_flatMap, List.map_cons,
            List.map_nil]
          rw [ListTools.sumInt_flatMap_pair]
          let lower : Hypercube.Point n → Int :=
            fun x =>
              character (Hypercube.dropLast S) x *
                character (Hypercube.dropLast T) x
          have hpair :
              ListTools.sumInt
                ((Hypercube.vertices n).map
                  (fun x =>
                    character S (Hypercube.extend x false) *
                        character T (Hypercube.extend x false) +
                      character S (Hypercube.extend x true) *
                        character T (Hypercube.extend x true))) =
                ListTools.sumInt
                  ((Hypercube.vertices n).map
                    (fun x => lower x + lower x)) := by
            apply ListTools.sumInt_map_congr
            intro x
            simp [lower, character_extend, hs, ht]
          change
            ListTools.sumInt ((Hypercube.vertices n).map lower) = 0 at ih
          rw [hpair, ListTools.sumInt_map_add, ih]
          simp
        · have h : False := by
            simp [hs, ht] at hlast
          exact False.elim h
        · have h : False := by
            simp [hs, ht] at hlast
          exact False.elim h
        · unfold characterProductSum at ih ⊢
          simp only [Hypercube.vertices, List.map_flatMap, List.map_cons,
            List.map_nil]
          rw [ListTools.sumInt_flatMap_pair]
          let lower : Hypercube.Point n → Int :=
            fun x =>
              character (Hypercube.dropLast S) x *
                character (Hypercube.dropLast T) x
          have hpair :
              ListTools.sumInt
                ((Hypercube.vertices n).map
                  (fun x =>
                    character S (Hypercube.extend x false) *
                        character T (Hypercube.extend x false) +
                      character S (Hypercube.extend x true) *
                        character T (Hypercube.extend x true))) =
                ListTools.sumInt
                  ((Hypercube.vertices n).map
                    (fun x => lower x + lower x)) := by
            apply ListTools.sumInt_map_congr
            intro x
            have hneg := neg_mul_neg_eq_mul_of_character
              (character_eq_neg_one_or_one (Hypercube.dropLast S) x)
              (character_eq_neg_one_or_one (Hypercube.dropLast T) x)
            simp [lower, character_extend, hs, ht, Hypercube.spinOfBool,
              hneg]
          change
            ListTools.sumInt ((Hypercube.vertices n).map lower) = 0 at ih
          rw [hpair, ListTools.sumInt_map_add, ih]
          simp
      · cases hs : Hypercube.last S <;>
          cases ht : Hypercube.last T
        · exact False.elim (hlast (by simp [hs, ht]))
        · unfold characterProductSum
          simp only [Hypercube.vertices, List.map_flatMap, List.map_cons,
            List.map_nil]
          rw [ListTools.sumInt_flatMap_pair]
          let lower : Hypercube.Point n → Int :=
            fun x =>
              character (Hypercube.dropLast S) x *
                character (Hypercube.dropLast T) x
          have hpair :
              ListTools.sumInt
                ((Hypercube.vertices n).map
                  (fun x =>
                    character S (Hypercube.extend x false) *
                        character T (Hypercube.extend x false) +
                      character S (Hypercube.extend x true) *
                        character T (Hypercube.extend x true))) =
                ListTools.sumInt
                  ((Hypercube.vertices n).map (fun _ => (0 : Int))) := by
            apply ListTools.sumInt_map_congr
            intro x
            have hneg := mul_neg_eq_neg_mul_of_character
              (character_eq_neg_one_or_one (Hypercube.dropLast S) x)
              (character_eq_neg_one_or_one (Hypercube.dropLast T) x)
            simp [character_extend, hs, ht, Hypercube.spinOfBool, hneg]
            omega
          rw [hpair]
          simp
        · unfold characterProductSum
          simp only [Hypercube.vertices, List.map_flatMap, List.map_cons,
            List.map_nil]
          rw [ListTools.sumInt_flatMap_pair]
          let lower : Hypercube.Point n → Int :=
            fun x =>
              character (Hypercube.dropLast S) x *
                character (Hypercube.dropLast T) x
          have hpair :
              ListTools.sumInt
                ((Hypercube.vertices n).map
                  (fun x =>
                    character S (Hypercube.extend x false) *
                        character T (Hypercube.extend x false) +
                      character S (Hypercube.extend x true) *
                        character T (Hypercube.extend x true))) =
                ListTools.sumInt
                  ((Hypercube.vertices n).map (fun _ => (0 : Int))) := by
            apply ListTools.sumInt_map_congr
            intro x
            have hneg := neg_mul_eq_neg_mul_of_character
              (character_eq_neg_one_or_one (Hypercube.dropLast S) x)
              (character_eq_neg_one_or_one (Hypercube.dropLast T) x)
            simp [character_extend, hs, ht, Hypercube.spinOfBool, hneg]
            omega
          rw [hpair]
          simp
        · exact False.elim (hlast (by simp [hs, ht]))

/-- A Walsh character has squared norm `2^n` over `Hypercube.vertices`. -/
theorem characterProductSum_self {n : Nat}
    (S : WalshFourier.Frequency n) :
    characterProductSum S S = (2 ^ n : Nat) := by
  unfold characterProductSum
  have h :
      ListTools.sumInt
        ((Hypercube.vertices n).map
          (fun x => character S x * character S x)) =
        ListTools.sumInt
          ((Hypercube.vertices n).map (fun _ => (1 : Int))) := by
    apply ListTools.sumInt_map_congr
    intro x
    simp
  rw [h]
  simp

/--
Walsh character orthogonality over `Hypercube.vertices`, including the diagonal
normalization.
-/
theorem characterProductSum_eq_if {n : Nat}
    [DecidableEq (WalshFourier.Frequency n)]
    (S T : WalshFourier.Frequency n) :
    characterProductSum S T =
      if S = T then (2 ^ n : Nat) else 0 := by
  by_cases h : S = T
  · subst T
    rw [characterProductSum_self]
    simp
  · rw [characterProductSum_eq_zero_of_ne S T h]
    simp [h]

/--
Walsh character orthogonality in inner-product form, including the diagonal
normalization.
-/
theorem character_innerProduct_eq_if {n : Nat}
    [DecidableEq (WalshFourier.Frequency n)]
    (S T : WalshFourier.Frequency n) :
    WalshFourier.innerProduct
      (WalshFourier.characterFunction S)
      (WalshFourier.characterFunction T) =
      if S = T then (2 ^ n : Nat) else 0 := by
  rw [← characterProductSum_eq_innerProduct]
  exact characterProductSum_eq_if S T

/-- Distinct Walsh characters are orthogonal over `Hypercube.vertices`. -/
theorem character_orthogonal_of_ne {n : Nat}
    {S T : WalshFourier.Frequency n}
    (hne : S ≠ T) :
    WalshFourier.innerProduct
      (WalshFourier.characterFunction S)
      (WalshFourier.characterFunction T) = 0 := by
  rw [← characterProductSum_eq_innerProduct]
  exact characterProductSum_eq_zero_of_ne S T hne

end WalshFourier

end Boolean.Cube
```
