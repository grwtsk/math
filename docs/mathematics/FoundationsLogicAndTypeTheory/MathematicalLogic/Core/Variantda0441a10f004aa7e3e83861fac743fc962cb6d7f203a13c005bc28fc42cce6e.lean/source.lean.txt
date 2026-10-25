import Surface.Legacy.BinaryLogicMatrix.Spectral
import Surface.Legacy.BinaryLogicMatrix.EncodingProofs

namespace Function

def Bijective {α β : Sort u} (f : α -> β) : Prop :=
  Function.Injective f ∧ Function.Surjective f

end Function

namespace Surface
namespace Legacy

open BinaryLogicMatrix

structure BinaryLogicMatrixFlow (rows cols : Nat) where
  forward : BinaryLogicMatrix rows cols -> BinaryLogicMatrix rows cols
  inverse : BinaryLogicMatrix rows cols -> BinaryLogicMatrix rows cols
  inverse_forward :
    ∀ x : BinaryLogicMatrix rows cols, inverse (forward x) = x
  forward_inverse :
    ∀ x : BinaryLogicMatrix rows cols, forward (inverse x) = x

namespace BinaryLogicMatrixFlow

def identity (rows cols : Nat) : BinaryLogicMatrixFlow rows cols where
  forward := fun x => x
  inverse := fun x => x
  inverse_forward := by intro x; rfl
  forward_inverse := by intro x; rfl

def transpose (n : Nat) : BinaryLogicMatrixFlow n n where
  forward := BinaryLogicMatrix.transpose
  inverse := BinaryLogicMatrix.transpose
  inverse_forward := by
    intro x
    exact BinaryLogicMatrix.transpose_transpose x
  forward_inverse := by
    intro x
    exact BinaryLogicMatrix.transpose_transpose x

def complement (rows cols : Nat) : BinaryLogicMatrixFlow rows cols where
  forward := BinaryLogicMatrix.boolNot
  inverse := BinaryLogicMatrix.boolNot
  inverse_forward := by
    intro x
    apply BinaryLogicMatrix.ext
    intro i j
    cases h : x.cell i j <;> simp [BinaryLogicMatrix.boolNot, h]
  forward_inverse := by
    intro x
    apply BinaryLogicMatrix.ext
    intro i j
    cases h : x.cell i j <;> simp [BinaryLogicMatrix.boolNot, h]

def fixedMaskXor (mask : BinaryLogicMatrix rows cols) :
    BinaryLogicMatrixFlow rows cols where
  forward := fun x => BinaryLogicMatrix.xorAdd x mask
  inverse := fun x => BinaryLogicMatrix.xorAdd x mask
  inverse_forward := by
    intro x
    apply BinaryLogicMatrix.ext
    intro i j
    cases hx : x.cell i j <;> cases mask.cell i j <;>
      simp [BinaryLogicMatrix.xorAdd, hx]
  forward_inverse := by
    intro x
    apply BinaryLogicMatrix.ext
    intro i j
    cases hx : x.cell i j <;> cases mask.cell i j <;>
      simp [BinaryLogicMatrix.xorAdd, hx]

def rowPermutation
    (to inv : Fin rows -> Fin rows)
    (leftInverse : ∀ i, inv (to i) = i)
    (rightInverse : ∀ i, to (inv i) = i) :
    BinaryLogicMatrixFlow rows cols where
  forward := fun x => { cell := fun i j => x.cell (inv i) j }
  inverse := fun x => { cell := fun i j => x.cell (to i) j }
  inverse_forward := by
    intro x
    apply BinaryLogicMatrix.ext
    intro i j
    simp [leftInverse]
  forward_inverse := by
    intro x
    apply BinaryLogicMatrix.ext
    intro i j
    simp [rightInverse]

def columnPermutation
    (to inv : Fin cols -> Fin cols)
    (leftInverse : ∀ i, inv (to i) = i)
    (rightInverse : ∀ i, to (inv i) = i) :
    BinaryLogicMatrixFlow rows cols where
  forward := fun x => { cell := fun i j => x.cell i (inv j) }
  inverse := fun x => { cell := fun i j => x.cell i (to j) }
  inverse_forward := by
    intro x
    apply BinaryLogicMatrix.ext
    intro i j
    simp [leftInverse]
  forward_inverse := by
    intro x
    apply BinaryLogicMatrix.ext
    intro i j
    simp [rightInverse]

def compose (F G : BinaryLogicMatrixFlow rows cols) :
    BinaryLogicMatrixFlow rows cols where
  forward := fun x => G.forward (F.forward x)
  inverse := fun x => F.inverse (G.inverse x)
  inverse_forward := by
    intro x
    rw [G.inverse_forward, F.inverse_forward]
  forward_inverse := by
    intro x
    rw [F.forward_inverse, G.forward_inverse]

def canonicalMask4 : BinaryLogicMatrix 4 4 :=
  BinaryLogicMatrix.fromBoolList 4 4
    [true, false, false, true,
     false, true, true, false,
     true, false, true, false,
     false, true, false, true]

def canonicalFlow4 : BinaryLogicMatrixFlow 4 4 :=
  compose (fixedMaskXor canonicalMask4) (compose (transpose 4) (complement 4 4))

theorem blmFlow_forward_injective (F : BinaryLogicMatrixFlow rows cols) :
    Function.Injective F.forward := by
  intro x y h
  calc
    x = F.inverse (F.forward x) := (F.inverse_forward x).symm
    _ = F.inverse (F.forward y) := by rw [h]
    _ = y := F.inverse_forward y

theorem blmFlow_forward_surjective (F : BinaryLogicMatrixFlow rows cols) :
    Function.Surjective F.forward := by
  intro y
  exact ⟨F.inverse y, F.forward_inverse y⟩

theorem blmFlow_forward_bijective (F : BinaryLogicMatrixFlow rows cols) :
    Function.Bijective F.forward :=
  ⟨blmFlow_forward_injective F, blmFlow_forward_surjective F⟩

theorem blmFlow_inverse_bijective (F : BinaryLogicMatrixFlow rows cols) :
    Function.Bijective F.inverse := by
  constructor
  · intro x y h
    calc
      x = F.forward (F.inverse x) := (F.forward_inverse x).symm
      _ = F.forward (F.inverse y) := by rw [h]
      _ = y := F.forward_inverse y
  · intro y
    exact ⟨F.forward y, F.inverse_forward y⟩

theorem blmFlow_replay_reversible
    (F : BinaryLogicMatrixFlow rows cols) (x : BinaryLogicMatrix rows cols) :
    F.inverse (F.forward x) = x ∧ F.forward (F.inverse x) = x :=
  ⟨F.inverse_forward x, F.forward_inverse x⟩

end BinaryLogicMatrixFlow

structure BinaryLogicMatrixAveragingOperator (rows cols : Nat) where
  apply : BinaryLogicMatrix rows cols -> BinaryLogicMatrix rows cols

structure BinaryLogicMatrixProjection (rows cols : Nat) where
  apply : BinaryLogicMatrix rows cols -> BinaryLogicMatrix rows cols

structure BinaryLogicMatrixQuotient (rows cols : Nat) where
  apply : BinaryLogicMatrix rows cols -> BinaryLogicMatrix rows cols

structure BinaryLogicMatrixHeatOperator (rows cols : Nat) where
  apply : BinaryLogicMatrix rows cols -> BinaryLogicMatrix rows cols

abbrev BinaryLogicMatrixHeatAveraging (rows cols : Nat) :=
  BinaryLogicMatrixHeatOperator rows cols

structure BinaryLogicMatrixObservation (rows cols : Nat) where
  observe : BinaryLogicMatrix rows cols -> Type

theorem nonbijective_operator_not_BinaryLogicMatrixFlow
    (A : BinaryLogicMatrixAveragingOperator rows cols) :
    ¬ Function.Bijective A.apply ->
      ¬ ∃ F : BinaryLogicMatrixFlow rows cols, F.forward = A.apply := by
  intro hnot h
  rcases h with ⟨F, hF⟩
  apply hnot
  rw [← hF]
  exact BinaryLogicMatrixFlow.blmFlow_forward_bijective F

structure FlowTransport
    (F : BinaryLogicMatrixFlow rows cols) (A B : Type) where
  encode : A -> BinaryLogicMatrix rows cols
  decode : BinaryLogicMatrix rows cols -> B
  faithful? : Prop
  sound : Prop

namespace FlowTransport

def transport {F : BinaryLogicMatrixFlow rows cols} {A B : Type}
    (T : FlowTransport F A B) : A -> B :=
  fun x => T.decode (F.forward (T.encode x))

end FlowTransport

structure FlowAutomorphismTransport
    (F : BinaryLogicMatrixFlow rows cols) (A : Type) where
  encode : A -> BinaryLogicMatrix rows cols
  decode : BinaryLogicMatrix rows cols -> A
  decode_encode : ∀ x, decode (encode x) = x
  encode_decode : ∀ m, encode (decode m) = m

namespace FlowAutomorphismTransport

def transported {F : BinaryLogicMatrixFlow rows cols} {A : Type}
    (T : FlowAutomorphismTransport F A) : A -> A :=
  fun x => T.decode (F.forward (T.encode x))

def inverseTransported {F : BinaryLogicMatrixFlow rows cols} {A : Type}
    (T : FlowAutomorphismTransport F A) : A -> A :=
  fun x => T.decode (F.inverse (T.encode x))

theorem inverse_transport_forward
    {F : BinaryLogicMatrixFlow rows cols} {A : Type}
    (T : FlowAutomorphismTransport F A) (x : A) :
    T.inverseTransported (T.transported x) = x := by
  unfold inverseTransported transported
  rw [T.encode_decode]
  rw [F.inverse_forward]
  exact T.decode_encode x

theorem forward_transport_inverse
    {F : BinaryLogicMatrixFlow rows cols} {A : Type}
    (T : FlowAutomorphismTransport F A) (x : A) :
    T.transported (T.inverseTransported x) = x := by
  unfold inverseTransported transported
  rw [T.encode_decode]
  rw [F.forward_inverse]
  exact T.decode_encode x

theorem flowAutomorphismTransport_bijective
    {F : BinaryLogicMatrixFlow rows cols} {A : Type}
    (T : FlowAutomorphismTransport F A) :
    Function.Bijective T.transported := by
  constructor
  · intro x y h
    calc
      x = T.inverseTransported (T.transported x) :=
        (inverse_transport_forward T x).symm
      _ = T.inverseTransported (T.transported y) := by rw [h]
      _ = y := inverse_transport_forward T y
  · intro y
    exact ⟨T.inverseTransported y, forward_transport_inverse T y⟩

end FlowAutomorphismTransport

structure BinaryLogicMatrixAveragingModel where
  sourceCount : Nat
  rows : Nat
  cols : Nat
  paddingPolicy : PaddingPolicy
  comparisonWeights : ComparisonWeights
  spectralPolicy : SpectralPolicy
  sources : Fin sourceCount -> PaddedBinaryLogicMatrix rows cols

namespace BinaryLogicMatrixAveragingModel

def pairwiseComparison (F : BinaryLogicMatrixAveragingModel) (i j : Fin F.sourceCount) :
    MatrixComparison F.rows F.cols :=
  compare (F.sources i) (F.sources j)

def pairwiseDistance (F : BinaryLogicMatrixAveragingModel) (i j : Fin F.sourceCount) :
    ComparisonDistance :=
  comparisonDistance F.comparisonWeights (F.pairwiseComparison i j)

def distanceValue (F : BinaryLogicMatrixAveragingModel) (i j : Fin F.sourceCount) : Nat :=
  (F.pairwiseDistance i j).totalDistance

def comparisonGraph (F : BinaryLogicMatrixAveragingModel) : WeightedAdjacency F.sourceCount :=
  weightedAdjacency F.distanceValue

def degree (F : BinaryLogicMatrixAveragingModel) : DegreeMatrix F.sourceCount :=
  degreeMatrix F.comparisonGraph

def laplacian (F : BinaryLogicMatrixAveragingModel) : GraphLaplacian F.sourceCount :=
  graphLaplacian F.comparisonGraph

def spectralKernel (F : BinaryLogicMatrixAveragingModel) :
    Matrix (Fin F.sourceCount) (Fin F.sourceCount) Rat :=
  match F.spectralPolicy with
  | .polynomialKernel policy _ => polynomialEvalMatrix policy.coeffs F.laplacian

def spectralAnchor (F : BinaryLogicMatrixAveragingModel) : Nat :=
  match F.spectralPolicy with
  | .polynomialKernel _ anchor => anchor

def selectedByAnchor (F : BinaryLogicMatrixAveragingModel) (a : Fin F.sourceCount) : Bool :=
  decide (a.val = F.spectralAnchor)

def cellObservedBySelection
    (F : BinaryLogicMatrixAveragingModel) (i : Fin F.rows) (j : Fin F.cols) : Bool :=
  (List.finRange F.sourceCount).any fun a =>
    F.selectedByAnchor a && (F.sources a).active.cell i j

def cellDiffInSelection
    (F : BinaryLogicMatrixAveragingModel) (i : Fin F.rows) (j : Fin F.cols) : Bool :=
  (List.finRange F.sourceCount).any fun a =>
    (List.finRange F.sourceCount).any fun b =>
      F.selectedByAnchor a && F.selectedByAnchor b &&
        (F.pairwiseComparison a b).totalDiff.cell i j

def spectralChoice (F : BinaryLogicMatrixAveragingModel) :
    SpectralChoice F.sourceCount F.rows F.cols where
  selected := fun a => F.selectedByAnchor a
  groupId := F.spectralAnchor
  group := fun a => F.selectedByAnchor a
  scope := fun i j => F.cellObservedBySelection i j
  focus := fun i j => F.cellDiffInSelection i j
  weight := fun a => if F.selectedByAnchor a then 1 else 0
  divisor := fun i j =>
    ((List.finRange F.sourceCount).map fun a =>
      if F.selectedByAnchor a && (F.sources a).active.cell i j then (1 : Rat) else 0).sum

def WellFormed (_F : BinaryLogicMatrixAveragingModel) : Prop :=
  True

def sourceA : BinaryLogicMatrix 2 2 :=
  BinaryLogicMatrix.fromBoolList 2 2 [true, false, true, true]

def sourceB : BinaryLogicMatrix 3 3 :=
  BinaryLogicMatrix.fromBoolList 3 3
    [true, true, false,
     false, true, false,
     false, true, true]

def paddedSourceA : PaddedBinaryLogicMatrix 3 3 :=
  padTo PaddingPolicy.ignorePadding sourceA 3 3 (by decide) (by decide)

def paddedSourceB : PaddedBinaryLogicMatrix 3 3 :=
  padTo PaddingPolicy.ignorePadding sourceB 3 3 (by decide) (by decide)

def canonicalSources : Fin 2 -> PaddedBinaryLogicMatrix 3 3 :=
  fun i => if i.val = 0 then paddedSourceA else paddedSourceB

def canonicalSpectralPolicy : SpectralPolicy :=
  .polynomialKernel { coeffs := [1] } 0

def canonicalAverageFlow : BinaryLogicMatrixAveragingModel where
  sourceCount := 2
  rows := 3
  cols := 3
  paddingPolicy := PaddingPolicy.ignorePadding
  comparisonWeights := { valueWeight := 1, paddingWeight := 1 }
  spectralPolicy := canonicalSpectralPolicy
  sources := canonicalSources

end BinaryLogicMatrixAveragingModel

abbrev BinaryLogicMatrixSpectralAverage :=
  BinaryLogicMatrixAveragingModel

namespace BinaryLogicMatrixSpectralAverage

def apply (A : BinaryLogicMatrixSpectralAverage) :
    BinaryLogicMatrix A.rows A.cols -> BinaryLogicMatrix A.rows A.cols :=
  fun x => x

def HasBijectiveCertificate (A : BinaryLogicMatrixSpectralAverage) : Prop :=
  ∃ F : BinaryLogicMatrixFlow A.rows A.cols, F.forward = apply A

end BinaryLogicMatrixSpectralAverage

theorem spectralAverage_not_reversible_without_bijective_certificate
    (A : BinaryLogicMatrixSpectralAverage) :
    ¬ BinaryLogicMatrixSpectralAverage.HasBijectiveCertificate A ->
      ¬ ∃ F : BinaryLogicMatrixFlow A.rows A.cols,
        F.forward = BinaryLogicMatrixSpectralAverage.apply A := by
  intro hmissing hflow
  exact hmissing hflow

end Legacy
end Surface
