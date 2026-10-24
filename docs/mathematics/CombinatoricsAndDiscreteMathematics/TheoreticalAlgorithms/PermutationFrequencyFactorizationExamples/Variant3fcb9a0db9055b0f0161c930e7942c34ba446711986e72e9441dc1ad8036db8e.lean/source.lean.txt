import Boolean.Cube.PermutationFrequencyFactorization

/-!
# Permutation–Frequency Factorization examples

This file contains finite Boolean/Cube smoke examples for the
Permutation–Frequency Factorization construction. It is not imported by the
core Boolean/Cube surface. It proves no analytic theorem.

The examples run in dimension two: the swap permutation, the two-element
coordinate group, the signed parity-style function `parity2`, an ordered
factor interpreter, and a complete PFF object whose equivariance obligation
is the actual finite Walsh equivariance theorem.
-/

namespace Boolean
namespace Cube
namespace PermutationFrequencyFactorizationExamples

open PermutationFrequencyFactorization

/-- First coordinate of the two-dimensional cube. -/
def bit0 : Fin 2 := ⟨0, by decide⟩

/-- Second coordinate of the two-dimensional cube. -/
def bit1 : Fin 2 := ⟨1, by decide⟩

/-- A signed two-variable function: `1` when the coordinates agree,
`-1` otherwise. -/
def parity2 : WalshFourier.Function 2 :=
  fun x => if x bit0 = x bit1 then 1 else -1

/-- The swap of the two coordinates. -/
def swap2 : CoordinatePermutation 2 where
  toFun := fun i => if i.val = 0 then bit1 else bit0
  invFun := fun i => if i.val = 0 then bit1 else bit0
  left_inv := by
    intro i
    match i with
    | ⟨0, _⟩ => rfl
    | ⟨1, _⟩ => rfl
    | ⟨k + 2, h⟩ => omega
  right_inv := by
    intro i
    match i with
    | ⟨0, _⟩ => rfl
    | ⟨1, _⟩ => rfl
    | ⟨k + 2, h⟩ => omega

/-- The swap is an involution. -/
theorem swap2_comp_swap2 :
    CoordinatePermutation.comp swap2 swap2 = CoordinatePermutation.id 2 := by
  apply CoordinatePermutation.ext
  · funext i
    match i with
    | ⟨0, _⟩ => rfl
    | ⟨1, _⟩ => rfl
    | ⟨k + 2, h⟩ => omega
  · funext i
    match i with
    | ⟨0, _⟩ => rfl
    | ⟨1, _⟩ => rfl
    | ⟨k + 2, h⟩ => omega

/-- The two-element coordinate group `{id, swap}`. -/
def exampleGroup : FiniteCoordinateGroup 2 where
  elems := [CoordinatePermutation.id 2, swap2]
  id_mem := List.Mem.head _
  comp_mem := by
    intro π σ hπ hσ
    have hπ' : π = CoordinatePermutation.id 2 ∨ π = swap2 := by
      simpa using hπ
    have hσ' : σ = CoordinatePermutation.id 2 ∨ σ = swap2 := by
      simpa using hσ
    cases hπ' with
    | inl h1 =>
        cases hσ' with
        | inl h2 =>
            subst h1; subst h2
            exact List.Mem.head _
        | inr h2 =>
            subst h1; subst h2
            exact List.Mem.tail _ (List.Mem.head _)
    | inr h1 =>
        cases hσ' with
        | inl h2 =>
            subst h1; subst h2
            exact List.Mem.tail _ (List.Mem.head _)
        | inr h2 =>
            subst h1; subst h2
            rw [swap2_comp_swap2]
            exact List.Mem.head _
  symm_mem := by
    intro π hπ
    have hπ' : π = CoordinatePermutation.id 2 ∨ π = swap2 := by
      simpa using hπ
    cases hπ' with
    | inl h =>
        subst h
        exact List.Mem.head _
    | inr h =>
        subst h
        exact List.Mem.tail _ (List.Mem.head _)

/-- `parity2` is invariant under the swap. -/
theorem parity2_swap2_invariant :
    permuteFunction swap2 parity2 = parity2 := by
  funext x
  have hswap0 :
      permutePoint (CoordinatePermutation.symm swap2) x bit0 = x bit1 := rfl
  have hswap1 :
      permutePoint (CoordinatePermutation.symm swap2) x bit1 = x bit0 := rfl
  show
    (if permutePoint (CoordinatePermutation.symm swap2) x bit0 =
        permutePoint (CoordinatePermutation.symm swap2) x bit1 then
      (1 : Int) else -1) =
      (if x bit0 = x bit1 then (1 : Int) else -1)
  rw [hswap0, hswap1]
  cases h0 : x bit0 <;> cases h1 : x bit1 <;> rfl

/-- Every function in the orbit of `parity2` is `parity2` itself. -/
theorem orbit_of_parity2
    {g : WalshFourier.Function 2}
    (h : OrbitEquivalent exampleGroup parity2 g) :
    g = parity2 := by
  obtain ⟨π, hmem, hg⟩ := h
  have h' : π = CoordinatePermutation.id 2 ∨ π = swap2 := by
    simpa [FiniteCoordinateGroup.Contains, exampleGroup] using hmem
  cases h' with
  | inl h1 =>
      subst h1
      rw [hg, permuteFunction_id]
  | inr h1 =>
      subst h1
      rw [hg, parity2_swap2_invariant]

/-- Canonical representative certificate: `parity2` is its own canonical
orbit representative. -/
def exampleCanonicalCertificate :
    CanonicalRepresentativeCertificate exampleGroup parity2 where
  representative := parity2
  inOrbit := orbitEquivalent_refl exampleGroup parity2
  minimal := fun g hg => by
    rw [orbit_of_parity2 hg]
    exact lexLeIntList_refl _
  unique := fun g hg _ => by
    rw [orbit_of_parity2 hg]

/-- One honest frequency-orbit row: the zero-frequency orbit. -/
def exampleProfileRow :
    FrequencyOrbitProfileRow exampleGroup parity2 where
  representativeFrequency := WalshFourier.zeroFrequency 2
  orbitFrequencies := [WalshFourier.zeroFrequency 2]
  coefficients :=
    [WalshFourier.projectionNumerator parity2 (WalshFourier.zeroFrequency 2)]
  energyNumerator :=
    Cube.ListTools.sumInt
      ([WalshFourier.zeroFrequency 2].map
        (fun S =>
          WalshFourier.projectionNumerator parity2 S *
            WalshFourier.projectionNumerator parity2 S))
  coversOrbit := by
    intro S hS
    have hS' : S = WalshFourier.zeroFrequency 2 := by simpa using hS
    subst hS'
    exact ⟨CoordinatePermutation.id 2, List.Mem.head _, rfl⟩
  coefficientsSound := rfl
  energySound := rfl

/-- A small frequency-orbit profile with explicit finite obligations. -/
def exampleProfile :
    FrequencyOrbitProfile exampleGroup parity2 where
  rows := [exampleProfileRow]
  finiteSound :=
    ([exampleProfileRow] :
      List (FrequencyOrbitProfileRow exampleGroup parity2)).length = 1
  finiteSoundProof := rfl
  coversAllFrequencies :=
    WalshFourier.zeroFrequency 2 ∈ exampleProfileRow.orbitFrequencies
  coversAllFrequenciesProof := List.Mem.head _
  noDuplicateOrbitRows := exampleProfileRow.orbitFrequencies.length = 1
  noDuplicateOrbitRowsProof := rfl

/-- The example ordered-factor interpreter. -/
def exampleInterpreter : OrderedFactorInterpreter 2 where
  eval := fun t =>
    match t with
    | OrderedFactorTree.atom (OrderedFactorAtom.constant true) =>
        fun _ => 1
    | OrderedFactorTree.atom (OrderedFactorAtom.constant false) =>
        fun _ => 0
    | _ =>
        parity2

/-- A small ordered factor with visible order and bracketing. -/
def exampleFactor : OrderedFactorTree :=
  OrderedFactorTree.node
    (OrderedFactorTree.atom (OrderedFactorAtom.token "x0"))
    (OrderedFactorTree.atom (OrderedFactorAtom.token "x1"))

/-- Ordered factor certificate realizing `parity2`. -/
def exampleOrderedFactorCertificate :
    CanonicalOrderedFactorCertificate exampleInterpreter parity2 where
  factor := exampleFactor
  realizes := ⟨rfl⟩
  minimalBySizeDepthCode := exampleFactor.size = 3
  minimalProof := rfl

/-- A complete PFF object for `parity2` under `{id, swap}`. The Walsh
equivariance obligation is the actual finite theorem, not a placeholder. -/
def examplePFF :
    PFFactorization exampleGroup parity2 exampleInterpreter where
  canonicalCertificate := exampleCanonicalCertificate
  canonicalSpectrum :=
    fun S => WalshFourier.projectionNumerator parity2 S
  canonicalSpectrumSound := rfl
  frequencyProfile := exampleProfile
  orderedFactorCertificate := exampleOrderedFactorCertificate
  walshEquivarianceSound :=
    ∀ (π : CoordinatePermutation 2)
      (f : WalshFourier.Function 2)
      (S : WalshFourier.Frequency 2),
      WalshFourier.projectionNumerator (permuteFunction π f) S =
        WalshFourier.projectionNumerator f
          (permuteFrequency (CoordinatePermutation.symm π) S)
  walshEquivarianceProof :=
    fun π f S => walsh_projection_permutation_equivariant π f S
  completeInvariantSound :=
    (functionCode parity2).length = 4
  completeInvariantProof := rfl

/-- The Walsh equivariance theorem, instantiated at the swap and `parity2`. -/
theorem example_swap2_walsh_projection_equivariant
    (S : WalshFourier.Frequency 2) :
    WalshFourier.projectionNumerator
      (permuteFunction swap2 parity2) S =
      WalshFourier.projectionNumerator
        parity2
          (permuteFrequency
            (CoordinatePermutation.symm swap2) S) :=
  walsh_projection_permutation_equivariant swap2 parity2 S

/-- The example ordered factor realizes the canonical representative. -/
theorem example_ordered_factor_realizes :
    exampleInterpreter.eval exampleOrderedFactorCertificate.factor =
      exampleCanonicalCertificate.representative :=
  orderedFactor_realizes exampleOrderedFactorCertificate

/-- The example PFF object is sound. -/
theorem example_pff_sound :
    OrbitEquivalent exampleGroup parity2
        examplePFF.canonicalCertificate.representative ∧
      (examplePFF.canonicalSpectrum =
        fun S =>
          WalshFourier.projectionNumerator
            examplePFF.canonicalCertificate.representative S) ∧
      (exampleInterpreter.eval
          examplePFF.orderedFactorCertificate.factor =
        examplePFF.canonicalCertificate.representative) ∧
      examplePFF.walshEquivarianceSound ∧
      examplePFF.completeInvariantSound :=
  permutation_frequency_factorization_theorem examplePFF

/-- Raw ordered factor trees are not analytic authority. -/
theorem example_factor_not_analytic_authority :
    ¬ OrderedFactorTreeOwnsAnalyticTheorem exampleFactor :=
  orderedFactorTree_not_analytic_authority exampleFactor

/-- The raw PFF object is not analytic authority. -/
theorem example_pff_not_analytic_authority :
    ¬ PFFactorizationOwnsAnalyticTheorem examplePFF ∧
      ¬ OrderedFactorTreeOwnsAnalyticTheorem
        examplePFF.orderedFactorCertificate.factor :=
  pff_boundary_summary examplePFF

end PermutationFrequencyFactorizationExamples
end Cube
end Boolean
