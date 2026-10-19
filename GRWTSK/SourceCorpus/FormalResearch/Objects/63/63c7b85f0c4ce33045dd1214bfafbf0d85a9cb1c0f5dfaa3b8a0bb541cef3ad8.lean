import Boolean.Cube.WalshFourier.Orthogonality

namespace Boolean.Cube

namespace WalshFourier

namespace ListTools

@[simp] theorem sumInt_map_mul_left {α : Type u}
    (xs : List α)
    (c : Int)
    (f : α → Int) :
    ListTools.sumInt (xs.map (fun x => c * f x)) =
      c * ListTools.sumInt (xs.map f) := by
  induction xs with
  | nil => simp [ListTools.sumInt]
  | cons x xs ih =>
      simp [ih, Int.mul_add]

end ListTools

/-- Unnormalized sample-space energy, `⟪f, f⟫`. -/
def sampleEnergy {n : Nat}
    (f : WalshFourier.Function n) :
    Int :=
  WalshFourier.innerProduct f f

/-- Product numerator for two Walsh projections at the same frequency. -/
def projectionProductNumerator {n : Nat}
    (f g : WalshFourier.Function n)
    (S : WalshFourier.Frequency n) :
    Int :=
  WalshFourier.projectionNumerator f S *
    WalshFourier.projectionNumerator g S

/-- Sum of squared projection numerators over all Walsh frequencies. -/
def spectralEnergyNumerator {n : Nat}
    (f : WalshFourier.Function n) :
    Int :=
  ListTools.sumInt
    ((Fourier.subsets n).map
      (fun S => projectionProductNumerator f f S))

/-- Bilinear spectral numerator over all Walsh frequencies. -/
def spectralInnerProductNumerator {n : Nat}
    (f g : WalshFourier.Function n) :
    Int :=
  ListTools.sumInt
    ((Fourier.subsets n).map
      (fun S => projectionProductNumerator f g S))

/-- Integer-numerator form of Parseval's identity for the current normalization. -/
def ParsevalNumerator {n : Nat}
    (f : WalshFourier.Function n) :
    Prop :=
  spectralEnergyNumerator f = (2 ^ n : Nat) * sampleEnergy f

/-- Integer-numerator form of Plancherel's identity for the current normalization. -/
def PlancherelNumerator {n : Nat}
    (f g : WalshFourier.Function n) :
    Prop :=
  spectralInnerProductNumerator f g =
    (2 ^ n : Nat) * WalshFourier.innerProduct f g

/-- Restrict a function to the final-coordinate `false` face. -/
def falseSection {n : Nat}
    (f : WalshFourier.Function (n + 1)) :
    WalshFourier.Function n :=
  fun x => f (Hypercube.extend x false)

/-- Restrict a function to the final-coordinate `true` face. -/
def trueSection {n : Nat}
    (f : WalshFourier.Function (n + 1)) :
    WalshFourier.Function n :=
  fun x => f (Hypercube.extend x true)

/-- Even section sum across the final coordinate. -/
def sumSection {n : Nat}
    (f : WalshFourier.Function (n + 1)) :
    WalshFourier.Function n :=
  fun x => falseSection f x + trueSection f x

/-- Odd section difference across the final coordinate. -/
def differenceSection {n : Nat}
    (f : WalshFourier.Function (n + 1)) :
    WalshFourier.Function n :=
  fun x => trueSection f x + -falseSection f x

@[simp] theorem sampleEnergy_eq_innerProduct {n : Nat}
    (f : WalshFourier.Function n) :
    sampleEnergy f = WalshFourier.innerProduct f f := rfl

@[simp] theorem projectionProductNumerator_self {n : Nat}
    (f : WalshFourier.Function n)
    (S : WalshFourier.Frequency n) :
    projectionProductNumerator f f S =
      WalshFourier.projectionNumerator f S *
        WalshFourier.projectionNumerator f S := rfl

@[simp] theorem sampleEnergy_characterFunction {n : Nat}
    (S : WalshFourier.Frequency n) :
    sampleEnergy (WalshFourier.characterFunction S) = (2 ^ n : Nat) := by
  rw [sampleEnergy, ← characterProductSum_eq_innerProduct]
  exact characterProductSum_self S

@[simp] theorem projectionNumerator_characterFunction {n : Nat}
    [DecidableEq (WalshFourier.Frequency n)]
    (S T : WalshFourier.Frequency n) :
    WalshFourier.projectionNumerator
      (WalshFourier.characterFunction S) T =
      if S = T then (2 ^ n : Nat) else 0 := by
  simpa [WalshFourier.projectionNumerator] using
    character_innerProduct_eq_if S T

@[simp] theorem projectionNumerator_extend_false {n : Nat}
    (f : WalshFourier.Function (n + 1))
    (S : WalshFourier.Frequency n) :
    WalshFourier.projectionNumerator f (Hypercube.extend S false) =
      WalshFourier.projectionNumerator (sumSection f) S := by
  unfold WalshFourier.projectionNumerator WalshFourier.innerProduct
    WalshFourier.sumSection WalshFourier.falseSection WalshFourier.trueSection
  simp only [Hypercube.vertices, List.map_flatMap, List.map_cons, List.map_nil]
  rw [ListTools.sumInt_flatMap_pair]
  apply ListTools.sumInt_map_congr
  intro x
  simp [WalshFourier.characterFunction, character_extend, Int.add_mul]

@[simp] theorem projectionNumerator_extend_true {n : Nat}
    (f : WalshFourier.Function (n + 1))
    (S : WalshFourier.Frequency n) :
    WalshFourier.projectionNumerator f (Hypercube.extend S true) =
      WalshFourier.projectionNumerator (differenceSection f) S := by
  unfold WalshFourier.projectionNumerator WalshFourier.innerProduct
    WalshFourier.differenceSection WalshFourier.falseSection
    WalshFourier.trueSection
  simp only [Hypercube.vertices, List.map_flatMap, List.map_cons, List.map_nil]
  rw [ListTools.sumInt_flatMap_pair]
  apply ListTools.sumInt_map_congr
  intro x
  simp [WalshFourier.characterFunction, character_extend,
    Hypercube.spinOfBool, Int.add_mul, Int.neg_mul, Int.mul_neg]
  omega

theorem innerProduct_sections {n : Nat}
    (f g : WalshFourier.Function (n + 1)) :
    WalshFourier.innerProduct (sumSection f) (sumSection g) +
      WalshFourier.innerProduct (differenceSection f) (differenceSection g) =
      2 * WalshFourier.innerProduct f g := by
  unfold WalshFourier.innerProduct WalshFourier.sumSection
    WalshFourier.differenceSection WalshFourier.falseSection
    WalshFourier.trueSection
  rw [← ListTools.sumInt_map_add]
  simp only [Hypercube.vertices, List.map_flatMap, List.map_cons, List.map_nil]
  rw [ListTools.sumInt_flatMap_pair]
  rw [← ListTools.sumInt_map_mul_left]
  apply ListTools.sumInt_map_congr
  intro x
  simp [Int.mul_add, Int.add_mul, Int.neg_mul, Int.mul_neg]
  omega

theorem plancherelNumerator :
    ∀ {n : Nat}
      (f g : WalshFourier.Function n),
      PlancherelNumerator f g
  | 0, f, g => by
      unfold PlancherelNumerator spectralInnerProductNumerator
        projectionProductNumerator WalshFourier.projectionNumerator
        WalshFourier.innerProduct
      simp [Fourier.subsets, Hypercube.vertices,
        WalshFourier.characterFunction, WalshFourier.character,
        Fourier.character, ListTools.sumInt]
  | n + 1, f, g => by
      have ihSum := plancherelNumerator
        (sumSection f) (sumSection g)
      have ihDiff := plancherelNumerator
        (differenceSection f) (differenceSection g)
      unfold PlancherelNumerator spectralInnerProductNumerator at ihSum ihDiff ⊢
      unfold projectionProductNumerator
      simp only [Fourier.subsets, Hypercube.vertices, List.map_flatMap,
        List.map_cons, List.map_nil]
      rw [ListTools.sumInt_flatMap_pair]
      have hpair :
          ListTools.sumInt
            ((Hypercube.vertices n).map
              (fun S =>
                WalshFourier.projectionNumerator f (Hypercube.extend S false) *
                    WalshFourier.projectionNumerator g
                      (Hypercube.extend S false) +
                  WalshFourier.projectionNumerator f (Hypercube.extend S true) *
                    WalshFourier.projectionNumerator g
                      (Hypercube.extend S true))) =
            ListTools.sumInt
              ((Hypercube.vertices n).map
                (fun S =>
                  WalshFourier.projectionNumerator (sumSection f) S *
                      WalshFourier.projectionNumerator (sumSection g) S +
                    WalshFourier.projectionNumerator (differenceSection f) S *
                      WalshFourier.projectionNumerator (differenceSection g) S)) := by
        apply ListTools.sumInt_map_congr
        intro S
        simp
      rw [hpair, ListTools.sumInt_map_add]
      have hSum :
          ListTools.sumInt
              ((Hypercube.vertices n).map
                (fun S =>
                  WalshFourier.projectionNumerator (sumSection f) S *
                    WalshFourier.projectionNumerator (sumSection g) S)) =
            (2 ^ n : Nat) *
              WalshFourier.innerProduct (sumSection f) (sumSection g) := by
        simpa [projectionProductNumerator, Fourier.subsets] using ihSum
      have hDiff :
          ListTools.sumInt
              ((Hypercube.vertices n).map
                (fun S =>
                  WalshFourier.projectionNumerator (differenceSection f) S *
                    WalshFourier.projectionNumerator (differenceSection g) S)) =
            (2 ^ n : Nat) *
              WalshFourier.innerProduct
                (differenceSection f) (differenceSection g) := by
        simpa [projectionProductNumerator, Fourier.subsets] using ihDiff
      rw [hSum, hDiff]
      rw [← Int.mul_add]
      rw [innerProduct_sections]
      simp [Nat.pow_succ, Int.mul_assoc]

theorem parsevalNumerator {n : Nat}
    (f : WalshFourier.Function n) :
    ParsevalNumerator f := by
  exact plancherelNumerator f f

end WalshFourier

end Boolean.Cube
