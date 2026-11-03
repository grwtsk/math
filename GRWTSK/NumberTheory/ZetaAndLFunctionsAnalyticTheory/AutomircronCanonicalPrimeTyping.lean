/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.AutomircronPrimeKernel
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.AutomircronDirichletFrame
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.SignedWaveformEnergyTarget
import Mathlib

/-!
# Canonical prime-typed source and automorphic phase framing

Local attribution: grwtsk contributors.

We adapt the existing dependent `PrimeIndex` and `Sigma Fiber` types to
EVERY literal positive integer of the original signed Mobius causal source.
The index 1 is its own atom; n>=2 has its unique least-prime-factor tag.
The payload is the COMPLETE original integer n. Its other prime factors,
prime-power exponents, squareful zeros and original Mobius sign are retained,
not replaced by the selected prime or by the size of a cyclic group.

The exact positive-source equivalence gives a genuine finite-sum transport
back to the actual A_j, real causal waveform, ordered full Gram and ordered
signed off-diagonal Gram, with both orientations and the n=1 atom intact.

The unchanged AutomircronKernel interface also admits a prime-local cyclic
phase auxiliary type. Reflection of this auxiliary phase is a genuine typed
fiber equivalence that preserves the original integer source index and hence
the original causal Gram. It does not manufacture arithmetic cancellation:
Dirichlet odd reflection cancels only the corresponding WOUND readout.

Source-candidate statements; lake build NOT_RUN, fresh kernel NOT_RUN,
transitive axiom audit NOT_RUN, numerical browser refinement NOT_RUN.
No new RH or PDE supplier is asserted.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.AutomircronCanonicalPrimeTyping

open scoped BigOperators
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.SignedWaveformEnergy
open GRWTSK.NumberTheory.AutomircronPrimeKernel
open GRWTSK.NumberTheory.AutomircronDirichletFrame

/-- The SAME PrimeIndex used by the existing prime-fiber transport. -/
abbrev PrimeIndex :=
  GRWTSK.NumberTheory.Zeta.Riemann.PrimeFiberFiniteTestTransport.PrimeIndex

/-- A canonical prime tag together with the actual WHOLE integer it tags. -/
def CanonicalPrimeFiber (p : PrimeIndex) : Type :=
  {n : ℕ // 2 ≤ n ∧ n.minFac = p.1}

/-- Each nonunit positive source index has exactly one tagged occurrence. -/
abbrev PrimeAtom := Sigma CanonicalPrimeFiber

/-- The original index 1 is a genuine separate atom, not a phantom prime. -/
abbrev SourceAtom := Option PrimeAtom

/-- Source interpretation; all original integer labels are retained. -/
def sourceIndex : SourceAtom → ℕ
  | none => 1
  | some a => a.2.val

/-- Canonical prime-typed representation of an integer at least two. -/
def tag (n : ℕ) (hn : 2 ≤ n) : PrimeAtom :=
  ⟨⟨n.minFac, Nat.minFac_prime (by omega)⟩,
    ⟨n, hn, rfl⟩⟩

@[simp] theorem sourceIndex_tag (n : ℕ) (hn : 2 ≤ n) :
    sourceIndex (some (tag n hn)) = n := rfl

/-- The literal one atom is not lost in the prime-fiber summation. -/
@[simp] theorem sourceIndex_one : sourceIndex none = 1 := rfl

/-- Encode the positive-number domain; 0 is outside this contract. -/
def encode (n : ℕ) : SourceAtom :=
  if hn : 2 ≤ n then some (tag n hn) else none

/-- Source numbers round-trip, including 1 and every composite/prime power. -/
theorem sourceIndex_encode {n : ℕ} (hn : 1 ≤ n) :
    sourceIndex (encode n) = n := by
  by_cases htwo : 2 ≤ n
  · simp [encode, htwo]
  · have hone : n = 1 := by omega
    subst n
    simp [encode, sourceIndex]

/-- Distinct prime-fiber source atoms cannot carry the same whole integer. -/
theorem primeAtom_index_injective :
    Function.Injective (fun a : PrimeAtom => a.2.val) := by
  intro a b h
  rcases a with ⟨p, ⟨n, hn⟩⟩
  rcases b with ⟨q, ⟨m, hm⟩⟩
  change n = m at h
  have hpq : p = q := by
    apply Subtype.ext
    calc
      p.val = n.minFac := hn.2.symm
      _ = m.minFac := congrArg Nat.minFac h
      _ = q.val := hm.2
  cases hpq
  cases h
  rfl

/-- Every well-typed atom is recovered from its original integer index. -/
theorem encode_sourceIndex (a : SourceAtom) :
    encode (sourceIndex a) = a := by
  cases a with
  | none =>
      rfl
  | some x =>
      have htwo : 2 ≤ x.2.val := x.2.property.1
      have hx : tag x.2.val htwo = x := by
        apply primeAtom_index_injective
        rfl
      change encode x.2.val = some x
      simpa [encode, htwo] using congrArg some hx

/-- A real equivalence, not a surjective quotient or a chosen representative. -/
def positiveSourceEquiv : {n : ℕ // 1 ≤ n} ≃ SourceAtom where
  toFun n := encode n.val
  invFun a := ⟨sourceIndex a, by
    cases a with
    | none => simp [sourceIndex]
    | some x =>
        have hn := x.2.property.1
        simp only [sourceIndex]
        omega⟩
  left_inv n := by
    apply Subtype.ext
    exact sourceIndex_encode n.property
  right_inv a := encode_sourceIndex a

/-- No double counting: the literal source index is injectively decoded. -/
theorem sourceIndex_injective : Function.Injective sourceIndex := by
  intro a b h
  calc
    a = encode (sourceIndex a) := (encode_sourceIndex a).symm
    _ = encode (sourceIndex b) := congrArg encode h
    _ = b := encode_sourceIndex b

/-- The prime tag records one genuine prime divisor, not all prime factors. -/
theorem primeAtom_selected_prime_dvd (a : PrimeAtom) :
    a.1.val ∣ a.2.val := by
  have hmin : a.2.val.minFac = a.1.val := a.2.property.2
  rw [← hmin]
  exact Nat.minFac_dvd a.2.val

/-- The complete factorization function (and all exponents) is preserved. -/
theorem factorization_preserved (a : PrimeAtom) :
    (sourceIndex (some a)).factorization = a.2.val.factorization := rfl

/-- This canonical index system discharges the open support+surjectivity type. -/
def canonicalKernel : AutomircronKernel CanonicalPrimeFiber where
  sourceIndex := fun a => a.2.val
  primeFrame := fun p => Equiv.refl (CanonicalPrimeFiber p)

/-- The existing broad interface is inhabited by a complete, unique source. -/
theorem canonicalKernel_completePrimeSupport :
    canonicalKernel.CompletePrimeSupport := by
  constructor
  · intro a
    exact primeAtom_selected_prime_dvd a
  · intro n hn
    exact ⟨tag n hn, rfl⟩

/-- This canonical source is faithful, so source-preserving frames are rigid. -/
theorem canonicalKernel_sourceIndex_injective :
    Function.Injective canonicalKernel.sourceIndex :=
  primeAtom_index_injective

/-- Finite whole-source inventory, with n=1 rather than an invented prime. -/
def typedInventory (N : ℕ) : Finset SourceAtom :=
  (Finset.Icc 1 N).image encode

private theorem encode_inj_on (N : ℕ) :
    ∀ a ∈ Finset.Icc 1 N, ∀ b ∈ Finset.Icc 1 N,
      encode a = encode b → a = b := by
  intro a ha b hb h
  have ha' := sourceIndex_encode (Finset.mem_Icc.mp ha).1
  have hb' := sourceIndex_encode (Finset.mem_Icc.mp hb).1
  calc
    a = sourceIndex (encode a) := ha'.symm
    _ = sourceIndex (encode b) := congrArg sourceIndex h
    _ = b := hb'

/-- Exact finite sum, for ANY additive observation: not a statistical mean. -/
theorem typed_sum_eq_source (N : ℕ) (f : ℕ → ℝ) :
    (∑ a ∈ typedInventory N, f (sourceIndex a)) =
      ∑ n ∈ Finset.Icc 1 N, f n := by
  classical
  unfold typedInventory
  rw [Finset.sum_image (encode_inj_on N)]
  apply Finset.sum_congr rfl
  intro n hn
  rw [sourceIndex_encode (Finset.mem_Icc.mp hn).1]

/-- Both ordered orientations and diagonal are preserved by typed transport. -/
theorem typed_double_sum_eq_source (N : ℕ) (f : ℕ → ℕ → ℝ) :
    (∑ a ∈ typedInventory N, ∑ b ∈ typedInventory N,
        f (sourceIndex a) (sourceIndex b)) =
      ∑ m ∈ Finset.Icc 1 N, ∑ n ∈ Finset.Icc 1 N, f m n := by
  rw [typed_sum_eq_source N
    (fun m => ∑ b ∈ typedInventory N, f m (sourceIndex b))]
  apply Finset.sum_congr rfl
  intro m hm
  exact typed_sum_eq_source N (f m)

/-- Actual original A_j at full source index j. -/
def typedAj (j : ℕ) : ℝ :=
  ∑ a ∈ typedInventory j,
    moebiusReal (sourceIndex a) * (Real.sqrt (sourceIndex a))⁻¹

/-- Typed A_j is exactly the existing five-moment A_j, including n=1. -/
theorem typedAj_eq_Aj (j : ℕ) :
    typedAj j = Aj j := by
  exact typed_sum_eq_source j
    (fun n => moebiusReal n * (Real.sqrt n)⁻¹)

/-- At the literal causal response; 1 and zero coefficients remain present. -/
def typedWave (N : ℕ) (u : ℝ) : ℝ :=
  ∑ a ∈ typedInventory N,
    moebiusReal (sourceIndex a) * pickupResponse (sourceIndex a) u

/-- The same literal inventory before the square, at every time. -/
theorem typedWave_eq_sourceWave (u : ℝ) :
    typedWave ⌊Real.exp u⌋₊ u =
      GRWTSK.NumberTheory.SignedWaveformEnergy.waveform u := by
  exact typed_sum_eq_source ⌊Real.exp u⌋₊
    (fun n => moebiusReal n * pickupResponse n u)

/-- The exact arithmetic signed causal Gram readout on typed atoms. -/
def typedSignedGram (T : ℝ) (a b : SourceAtom) : ℝ :=
  moebiusReal (sourceIndex a) * moebiusReal (sourceIndex b) *
    pickupResponseGram T (sourceIndex a) (sourceIndex b)

/-- Fully expanded source Gram, including its actual diagonal. -/
def typedFullGram (T : ℝ) : ℝ :=
  ∑ a ∈ typedInventory ⌊Real.exp T⌋₊,
    ∑ b ∈ typedInventory ⌊Real.exp T⌋₊, typedSignedGram T a b

/-- No change in source kernel, coefficients, signs, or cutoff. -/
theorem typedFullGram_eq_pickupFullGram (T : ℝ) :
    typedFullGram T = pickupFullGram T := by
  exact typed_double_sum_eq_source ⌊Real.exp T⌋₊
    (fun m n => moebiusReal m * moebiusReal n * pickupResponseGram T m n)

/-- Ordered OFF-diagonal source, without forcing mixed terms positive. -/
def typedCross (T : ℝ) : ℝ :=
  ∑ a ∈ typedInventory ⌊Real.exp T⌋₊,
    ∑ b ∈ typedInventory ⌊Real.exp T⌋₊,
      if sourceIndex a ≠ sourceIndex b then typedSignedGram T a b else 0

/-- Exact signed return to the unchanged two-orientation `pickupCross`. -/
theorem typedCross_eq_pickupCross (T : ℝ) :
    typedCross T = pickupCross T := by
  exact typed_double_sum_eq_source ⌊Real.exp T⌋₊
    (fun m n => if m ≠ n then
      moebiusReal m * moebiusReal n * pickupResponseGram T m n else 0)

/-- The character-unit flag is a readout on the ORIGINAL integer label.
Dirichlet characters vanish on the complementary nonunit sector, but the
untwisted signed Gram does not. -/
noncomputable def unitFlag (q : ℕ) [NeZero q] (a : SourceAtom) : Bool := by
  classical
  exact decide (IsUnit ((sourceIndex a : ℕ) : ZMod q))

/-- A sector of an arbitrary signed observation, including the two ordered
mixed sectors. `f` is NOT assumed positive, Hermitian, or diagonal. -/
def pairSector (q : ℕ) [NeZero q] (N : ℕ)
    (f : SourceAtom → SourceAtom → ℝ) (u v : Bool) : ℝ :=
  ∑ a ∈ typedInventory N, ∑ b ∈ typedInventory N,
    if unitFlag q a = u ∧ unitFlag q b = v then f a b else 0

private theorem pairTerm_four_sectors (q : ℕ) [NeZero q]
    (f : SourceAtom → SourceAtom → ℝ) (a b : SourceAtom) :
    (if unitFlag q a = true ∧ unitFlag q b = true then f a b else 0) +
    (if unitFlag q a = true ∧ unitFlag q b = false then f a b else 0) +
    (if unitFlag q a = false ∧ unitFlag q b = true then f a b else 0) +
    (if unitFlag q a = false ∧ unitFlag q b = false then f a b else 0) =
      f a b := by
  cases ha : unitFlag q a <;> cases hb : unitFlag q b <;>
    simp [ha, hb]

/-- The four sectors are an EXACT partition, not four separate variance
upper bounds. Their signs and all ordered pairs remain inside the sum. -/
theorem pairSector_complete (q : ℕ) [NeZero q] (N : ℕ)
    (f : SourceAtom → SourceAtom → ℝ) :
    (∑ a ∈ typedInventory N, ∑ b ∈ typedInventory N, f a b) =
      pairSector q N f true true + pairSector q N f true false +
        pairSector q N f false true + pairSector q N f false false := by
  calc
    (∑ a ∈ typedInventory N, ∑ b ∈ typedInventory N, f a b) =
      ∑ a ∈ typedInventory N, ∑ b ∈ typedInventory N,
        ((if unitFlag q a = true ∧ unitFlag q b = true then f a b else 0) +
         (if unitFlag q a = true ∧ unitFlag q b = false then f a b else 0) +
         (if unitFlag q a = false ∧ unitFlag q b = true then f a b else 0) +
         (if unitFlag q a = false ∧ unitFlag q b = false then f a b else 0)) := by
      apply Finset.sum_congr rfl
      intro a ha
      apply Finset.sum_congr rfl
      intro b hb
      exact (pairTerm_four_sectors q f a b).symm
    _ = _ := by
      simp only [Finset.sum_add_distrib, pairSector]
      ring

/-- The full signed Möbius Gram through ALL four character-unit sectors. -/
theorem pickupFullGram_eq_four_prime_sectors (q : ℕ) [NeZero q]
    (T : ℝ) :
    pickupFullGram T =
      pairSector q ⌊Real.exp T⌋₊ (typedSignedGram T) true true +
      pairSector q ⌊Real.exp T⌋₊ (typedSignedGram T) true false +
      pairSector q ⌊Real.exp T⌋₊ (typedSignedGram T) false true +
      pairSector q ⌊Real.exp T⌋₊ (typedSignedGram T) false false := by
  rw [← typedFullGram_eq_pickupFullGram T]
  exact pairSector_complete q ⌊Real.exp T⌋₊ (typedSignedGram T)

/-- Off-diagonal sectors preserve BOTH mixed orientations and the exact
source diagonal deletion. An odd character readout cannot erase these. -/
def sourceOffDiagonal (T : ℝ) (a b : SourceAtom) : ℝ :=
  if sourceIndex a ≠ sourceIndex b then typedSignedGram T a b else 0

theorem pickupCross_eq_four_prime_sectors (q : ℕ) [NeZero q]
    (T : ℝ) :
    pickupCross T =
      pairSector q ⌊Real.exp T⌋₊ (sourceOffDiagonal T) true true +
      pairSector q ⌊Real.exp T⌋₊ (sourceOffDiagonal T) true false +
      pairSector q ⌊Real.exp T⌋₊ (sourceOffDiagonal T) false true +
      pairSector q ⌊Real.exp T⌋₊ (sourceOffDiagonal T) false false := by
  rw [← typedCross_eq_pickupCross T]
  exact pairSector_complete q ⌊Real.exp T⌋₊ (sourceOffDiagonal T)

/-- The local coordinate group truly depends on the prime-valued type index. -/
instance (p : PrimeIndex) : NeZero p.1 := ⟨p.2.ne_zero⟩

/-- Add an auxiliary prime-local cyclic phase without changing source n. -/
def PhaseFiber (p : PrimeIndex) := CanonicalPrimeFiber p × ZMod p.1

/-- Prime-local reflection acts on phase, not on the physical source index. -/
def reflectPhase (p : PrimeIndex) : PhaseFiber p ≃ PhaseFiber p where
  toFun a := (a.1, -a.2)
  invFun a := (a.1, -a.2)
  left_inv := by
    intro a
    rcases a with ⟨n, z⟩
    simp
  right_inv := by
    intro a
    rcases a with ⟨n, z⟩
    simp

/-- A genuine dependent frame on phase-enlarged prime fibers. -/
def phaseKernel : AutomircronKernel PhaseFiber where
  sourceIndex := fun a => a.2.1.val
  primeFrame := reflectPhase

/-- The literal integer index is fixed under local phase reflection. -/
theorem phaseKernel_sourcePreserving : phaseKernel.SourcePreserving := by
  intro a
  rfl

/-- The source Gram is unaffected by phase framing; this alone is NOT
an arithmetic cancellation, even though the auxiliary frame can move. -/
theorem phaseKernel_gramDefect_zero (T : ℝ) (a b : Sigma PhaseFiber) :
    phaseKernel.gramDefect T a b = 0 :=
  phaseKernel.gramDefect_zero_of_sourcePreserving
    phaseKernel_sourcePreserving T a b

/-- The actual prime-indexed Dirichlet character acts on the SAME local
`ZMod p`; its odd reflection zero is a readout, not a source Gram zero. -/
theorem odd_prime_wind_flic (p : PrimeIndex)
    (χ : DirichletCharacter ℂ p.1) (v : ZMod p.1 → ℂ)
    (hχ : χ.Odd) :
    windDirichlet χ v + windDirichlet χ (flic v) = 0 :=
  odd_dirichlet_reflection_cancellation χ v hχ

end GRWTSK.NumberTheory.AutomircronCanonicalPrimeTyping
