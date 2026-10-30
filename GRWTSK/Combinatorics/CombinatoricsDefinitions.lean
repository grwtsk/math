/- Copyright (c) 2026 grwtsk contributors. MIT.
Formalization assistance: OpenAI. -/
import Mathlib.Data.Real.Basic
import Mathlib.Data.Fintype.Pi
import Mathlib.Data.Finset.Lattice.Fold
import Mathlib.Algebra.BigOperators.Group.Finset.Basic

/-! # Exact finite-cube influence and certificate data
Selected declarations are copied verbatim from these archives at math
`cec4a4f2372ab961091b73b6a9f679060fba27f5`:
- `GRWTSK/Analysis/FunctionalAnalysis/Bitfield/Variant59defd17787cf33798d31d5ccc19e14ea46bdd31a566bc9c8f31843301ad0eef.lean`,
  Git blob `6188ed5b51a44e2d728898fd13e9d17f69005063`, SHA-256 `59defd17787cf33798d31d5ccc19e14ea46bdd31a566bc9c8f31843301ad0eef`.
- `GRWTSK/CombinatoricsAndDiscreteMathematics/Influence/Variant8006641981cd4404cf553f390ebaf65f902cc8e9e09d0394a392377258b57fba.lean`,
  Git blob `d783ead032dca7af15a8ee16cef775c208944162`, SHA-256 `8006641981cd4404cf553f390ebaf65f902cc8e9e09d0394a392377258b57fba`.

The observable ranges over the entire finite Boolean cube Fin width → Bool.
The influence is the exact maximum single-coordinate flip change; its energy
is the sum of squared influences. The certificate retains both a nonnegative
bound and a proof of the energy bound. The status enumeration and string
references are data and imply no proposition. No coordinate-registry claim,
admissibility restriction, law, independence premise, concentration tail bound
or soundness bridge is supplied. Native compilation/kernel/axiom checks are NOT_RUN.
-/

set_option autoImplicit false
open scoped BigOperators
namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteBitInfluence.Basic

abbrev SpectralId := String
abbrev Bitfield (width : Nat) := Fin width → Bool

inductive ProofDisposition
  | proved
  | open
  | refuted
  deriving DecidableEq, Repr


def flipAt
    {width : Nat}
    (field : Bitfield width)
    (coordinate : Fin width) :
    Bitfield width :=
  fun candidate =>
    if candidate = coordinate then !(field candidate) else field candidate



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

end GRWTSK.CombinatoricsAndDiscreteMathematics.FiniteBitInfluence.Basic
