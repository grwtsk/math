import Mathematics.SpectralClosure.TraceStability
import Mathlib.Data.Finset.Lattice.Fold

/-!
# Exact finite bit influence

Influence is the maximum single-flip observable change over the finite admitted
bitfield.  It is sensitivity data, not a concentration theorem.
-/

namespace Mathematics.SpectralClosure

theorem allBitfieldsNonempty
    (width : Nat) :
    (Finset.univ : Finset (Bitfield width)).Nonempty :=
  ⟨fun _ => false, Finset.mem_univ _⟩

noncomputable def bitInfluence
    {width : Nat}
    (observable : Bitfield width → ℝ)
    (coordinate : Fin width) : ℝ :=
  (Finset.univ : Finset (Bitfield width)).sup'
    (allBitfieldsNonempty width)
    (fun field =>
      |observable field -
        observable (flipAt field coordinate)|)

noncomputable def influenceEnergy
    {width : Nat}
    (observable : Bitfield width → ℝ) : ℝ :=
  ∑ coordinate, (bitInfluence observable coordinate) ^ 2

theorem observable_flip_change_le_influence
    {width : Nat}
    (observable : Bitfield width → ℝ)
    (coordinate : Fin width)
    (field : Bitfield width) :
    |observable field -
        observable (flipAt field coordinate)| ≤
      bitInfluence observable coordinate := by
  unfold bitInfluence
  exact Finset.le_sup'
    (fun candidate =>
      |observable candidate -
        observable (flipAt candidate coordinate)|)
    (Finset.mem_univ field)

structure InfluenceEnergyCertificate
    {width : Nat}
    (observable : Bitfield width → ℝ) where
  bound : ℝ
  boundNonnegative : 0 ≤ bound
  certified : influenceEnergy observable ≤ bound
  proofRef : SpectralId

end Mathematics.SpectralClosure
