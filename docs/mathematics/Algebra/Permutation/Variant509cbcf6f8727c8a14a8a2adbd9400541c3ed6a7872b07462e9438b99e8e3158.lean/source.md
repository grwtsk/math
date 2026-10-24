# Complete source: GRWTSK.Algebra.Permutation.Variant509cbcf6f8727c8a14a8a2adbd9400541c3ed6a7872b07462e9438b99e8e3158

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a06f25b10cce3c8305f6bd655dc7457000874341` · SHA-256 `1d86802029361d39b0afbb995115592071b952e011904b8d249b04fe08ab6e96`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.Round.Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.Round.Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BitMatrix/Network/Permutation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import BitMatrix.Dynamics.Avalanche
import Mathlib.Algebra.Order.BigOperators.Group.Finset

/-!
# Correct guarantees for permutation networks

This module separates properties that are often conflated:

* totality is supplied by an ordinary Lean function;
* bijectivity is supplied structurally by `Equiv` and is preserved by
  composition;
* deterministic linear activity is measured by branch number;
* SAC balance and differential concentration are the aggregate invariants from
  `BitMatrix.Dynamics.Avalanche` and do not follow from bijectivity.

The counterexamples below make the boundary explicit.  A cyclic coordinate
rotation is bijective and preserves Hamming weight, but merely relocates a
one-bit difference and has zero SAC positivity scores.  A state-dependent XOR
correction can collapse even the identity permutation.  Trivial first
cohomology in the elementary complex used here means only that every closed
degree-one element is exact; it says nothing about injectivity of an unrelated
state transformation.

The square-zero theorem is likewise deliberately elementary.  Connes' `B`
operator is degree-changing in the cyclic complex.  If such an operator is
totalized as a square-zero endomorphism, square-zero obstructs invertibility on
a nontrivial state space.  The theorem here does not formalize the full cyclic
module or bicomplex construction.
-/


namespace GRWTSK.Algebra.Round.Variant04be4475986f7694376e2d519ff8ee0f6db4b15d3d9b64d4612d0286d4f1ab7a

universe u

namespace BitMatrix.Network.Permutation

open BitMatrix.Reduction.SAT
open BitMatrix.Dynamics.Avalanche
open scoped BigOperators

/-! ## Generic permutation rounds -/

/-- XOR by a constant is a self-inverse equivalence. -/
def xorTranslation {n : Nat} (c : Bits n) : Bits n ≃ Bits n where
  toFun x := xorBits x c
  invFun x := xorBits x c
  left_inv x := xorBits_cancel_self_right x c
  right_inv x := xorBits_cancel_self_right x c

@[simp]
theorem xorTranslation_apply {n : Nat} (c x : Bits n) :
    xorTranslation c x = xorBits x c :=
  rfl

@[simp]
theorem xorTranslation_symm_apply {n : Nat} (c x : Bits n) :
    (xorTranslation c).symm x = xorBits x c :=
  rfl

/-- One key–substitution–linear–key permutation round. -/
structure Round (n : Nat) where
  preKey : Bits n
  substitution : Bits n ≃ Bits n
  linear : Bits n ≃ Bits n
  postKey : Bits n

/-- The structural equivalence `x ↦ L(S(x ⊕ a)) ⊕ b`. -/
def Round.toEquiv {n : Nat} (R : Round n) : Bits n ≃ Bits n :=
  (((xorTranslation R.preKey).trans R.substitution).trans R.linear).trans
    (xorTranslation R.postKey)

/-- Execute one permutation round. -/
def Round.run {n : Nat} (R : Round n) (x : Bits n) : Bits n :=
  R.toEquiv x

@[simp]
theorem Round.run_apply {n : Nat} (R : Round n) (x : Bits n) :
    R.run x =
      xorBits (R.linear (R.substitution (xorBits x R.preKey))) R.postKey :=
  rfl

/-- A round is bijective because it is a composition of explicit equivalences. -/
theorem Round.run_bijective {n : Nat} (R : Round n) :
    Function.Bijective R.run :=
  R.toEquiv.bijective

/-- The exact inverse map exposed by the composed equivalence. -/
def Round.inverse {n : Nat} (R : Round n) : Bits n → Bits n :=
  R.toEquiv.symm

@[simp]
theorem Round.inverse_run {n : Nat} (R : Round n) (x : Bits n) :
    R.inverse (R.run x) = x :=
  R.toEquiv.symm_apply_apply x

@[simp]
theorem Round.run_inverse {n : Nat} (R : Round n) (x : Bits n) :
    R.run (R.inverse x) = x :=
  R.toEquiv.apply_symm_apply x

/--
Compose `[R₁, …, Rₛ]` as `Rₛ ∘ … ∘ R₁`: the head executes first.
-/
def composeRounds {n : Nat} : List (Round n) → Bits n ≃ Bits n
  | [] => Equiv.refl _
  | R :: rounds => R.toEquiv.trans (composeRounds rounds)

/-- Execute a list of rounds from head to tail. -/
def runRounds {n : Nat} (rounds : List (Round n)) (x : Bits n) : Bits n :=
  composeRounds rounds x

@[simp]
theorem composeRounds_nil {n : Nat} :
    composeRounds ([] : List (Round n)) = Equiv.refl _ :=
  rfl

@[simp]
theorem composeRounds_cons {n : Nat} (R : Round n) (rounds : List (Round n)) :
    composeRounds (R :: rounds) = R.toEquiv.trans (composeRounds rounds) :=
  rfl

@[simp]
theorem runRounds_nil {n : Nat} (x : Bits n) :
    runRounds ([] : List (Round n)) x = x :=
  rfl

@[simp]
theorem runRounds_cons {n : Nat} (R : Round n)
    (rounds : List (Round n)) (x : Bits n) :
    runRounds (R :: rounds) x = runRounds rounds (R.run x) :=
  rfl

/-- Any list of explicit permutation rounds remains bijective. -/
theorem runRounds_bijective {n : Nat} (rounds : List (Round n)) :
    Function.Bijective (runRounds rounds) :=
  (composeRounds rounds).bijective

/-! ## Bijectivity without avalanche -/

/-- The round with zero keys and identity substitution and linear layers. -/
def identityRound (n : Nat) : Round n where
  preKey := zeroBits n
  substitution := Equiv.refl _
  linear := Equiv.refl _
  postKey := zeroBits n

@[simp]
theorem identityRound_run {n : Nat} (x : Bits n) :
    (identityRound n).run x = x := by
  simp [Round.run, Round.toEquiv, identityRound]

theorem identityRound_sacScore {n : Nat} (hn : 0 < n) :
    sacScore (identityRound n).run = 0 := by
  have hrun : (identityRound n).run = (id : Bits n → Bits n) := by
    funext x
    exact identityRound_run x
  rw [hrun]
  exact identity_sacScore hn

theorem identityRound_varianceScore {n : Nat} (hn : 0 < n) :
    varianceScore (identityRound n).run = 0 := by
  have hrun : (identityRound n).run = (id : Bits n → Bits n) := by
    funext x
    exact identityRound_run x
  rw [hrun]
  exact identity_varianceScore hn

/--
Compositional bijectivity makes no SAC claim: an explicit bijective round can
have both avalanche positivity scores equal to zero.
-/
theorem exists_bijective_round_with_zero_avalanche {n : Nat} (hn : 0 < n) :
    ∃ R : Round n,
      Function.Bijective R.run ∧
      sacScore R.run = 0 ∧
      varianceScore R.run = 0 := by
  exact ⟨identityRound n, (identityRound n).run_bijective,
    identityRound_sacScore hn, identityRound_varianceScore hn⟩

/-! ## Coordinate permutations and rotation -/

/--
Permute coordinates so that input coordinate `i` moves to output coordinate
`π i`; hence output `j` reads input `π⁻¹ j`.
-/
def coordinatePermutation {n : Nat} (π : Equiv.Perm (Fin n)) :
    Bits n ≃ Bits n where
  toFun x j := x (π.symm j)
  invFun x j := x (π j)
  left_inv x := by
    funext j
    simp
  right_inv x := by
    funext j
    simp

@[simp]
theorem coordinatePermutation_apply {n : Nat} (π : Equiv.Perm (Fin n))
    (x : Bits n) (j : Fin n) :
    coordinatePermutation π x j = x (π.symm j) :=
  rfl

/-- Coordinate permutations preserve pointwise XOR. -/
theorem coordinatePermutation_xor {n : Nat} (π : Equiv.Perm (Fin n))
    (x y : Bits n) :
    coordinatePermutation π (xorBits x y) =
      xorBits (coordinatePermutation π x) (coordinatePermutation π y) :=
  rfl

/-- Coordinate permutations preserve Hamming weight exactly. -/
theorem hammingWeight_coordinatePermutation {n : Nat}
    (π : Equiv.Perm (Fin n)) (x : Bits n) :
    hammingWeight (coordinatePermutation π x) = hammingWeight x := by
  classical
  unfold hammingWeight
  apply Finset.card_equiv π.symm
  intro j
  simp

/-- A coordinate permutation has the deterministic derivative `π(δ)`. -/
theorem coordinatePermutation_derivative {n : Nat}
    (π : Equiv.Perm (Fin n)) (δ x : Bits n) :
    derivative (coordinatePermutation π) δ x =
      coordinatePermutation π δ := by
  rw [derivative, coordinatePermutation_xor, ← xorBits_assoc,
    xorBits_self, xorBits_zero_left]

private theorem coordinatePermutation_basisBit {n : Nat}
    (π : Equiv.Perm (Fin n)) (i : Fin n) :
    coordinatePermutation π (basisBit i) = basisBit (π i) := by
  funext j
  simp only [coordinatePermutation_apply, basisBit]
  apply (decide_eq_decide).2
  exact Equiv.symm_apply_eq π

/-- A one-bit derivative stays one-bit and moves from `i` to `π i`. -/
theorem coordinatePermutation_bitDerivative {n : Nat}
    (π : Equiv.Perm (Fin n)) (i : Fin n) (x : Bits n) :
    bitDerivative (coordinatePermutation π) i x = basisBit (π i) := by
  rw [bitDerivative, coordinatePermutation_derivative,
    coordinatePermutation_basisBit]

/-- Exact SAC counts of a coordinate permutation: one full entry per row. -/
theorem coordinatePermutation_sacCount {n : Nat}
    (π : Equiv.Perm (Fin n)) (i j : Fin n) :
    sacCount (coordinatePermutation π) i j =
      if π i = j then 2 ^ n else 0 := by
  classical
  simp only [sacCount, derivativeBit, coordinatePermutation_bitDerivative]
  by_cases hij : π i = j
  · subst j
    simp [basisBit]
  · have hji : j ≠ π i := Ne.symm hij
    simp [basisBit, hij, hji]

private theorem coordinatePermutation_sacEntry {n : Nat}
    (π : Equiv.Perm (Fin n)) (i j : Fin n) :
    sacEntry (coordinatePermutation π) i j =
      if π i = j then 1 else 0 := by
  rw [sacEntry, coordinatePermutation_sacCount]
  split_ifs
  · norm_num
  · simp

/-- Every positive-width coordinate permutation has zero absolute-bias score. -/
theorem coordinatePermutation_sacScore {n : Nat}
    (π : Equiv.Perm (Fin n)) (hn : 0 < n) :
    sacScore (coordinatePermutation π) = 0 := by
  have hterm (i j : Fin n) :
      |2 * sacEntry (coordinatePermutation π) i j - 1| = 1 := by
    rw [coordinatePermutation_sacEntry]
    by_cases hij : π i = j
    · rw [if_pos hij]
      norm_num
    · rw [if_neg hij]
      norm_num
  rw [sacScore, if_neg (Nat.ne_of_gt hn)]
  simp [hterm, Nat.ne_of_gt hn]

/-- Every positive-width coordinate permutation has zero variance score. -/
theorem coordinatePermutation_varianceScore {n : Nat}
    (π : Equiv.Perm (Fin n)) (hn : 0 < n) :
    varianceScore (coordinatePermutation π) = 0 := by
  rw [varianceScore, if_neg (Nat.ne_of_gt hn)]
  simp [coordinatePermutation_sacEntry]

/-! ## XOR-linear equivalences and branch number -/

/-- An invertible Boolean-linear layer, expressed through preservation of XOR. -/
structure XorLinearEquiv (n : Nat) extends Bits n ≃ Bits n where
  map_xor : ∀ x y,
    toFun (xorBits x y) = xorBits (toFun x) (toFun y)

/-- Every coordinate permutation is an XOR-linear equivalence. -/
def XorLinearEquiv.ofCoordinatePermutation {n : Nat}
    (π : Equiv.Perm (Fin n)) : XorLinearEquiv n where
  toEquiv := coordinatePermutation π
  map_xor := coordinatePermutation_xor π

/-- An XOR-linear equivalence maps zero to zero. -/
@[simp]
theorem XorLinearEquiv.map_zero {n : Nat} (L : XorLinearEquiv n) :
    L.toFun (zeroBits n) = zeroBits n := by
  have h := L.map_xor (zeroBits n) (zeroBits n)
  simpa using h

private def activities {n : Nat} (L : XorLinearEquiv n) : Finset Nat :=
  ((Finset.univ.filter fun v : Bits n => v ≠ zeroBits n).image fun v =>
    hammingWeight v + hammingWeight (L.toFun v))

private theorem activities_nonempty {n : Nat} (L : XorLinearEquiv n)
    (hn : 0 < n) : (activities L).Nonempty := by
  classical
  rw [activities, Finset.image_nonempty]
  refine ⟨basisBit ⟨0, hn⟩, ?_⟩
  simp [basisBit_ne_zero]

/--
Minimum nonzero input/output activity. At width zero the defining set is empty,
so the branch number is defined by convention to be zero. This is a
deterministic one-layer activity guarantee, not a SAC or multi-round avalanche
theorem.
-/
def branchNumber {n : Nat} (L : XorLinearEquiv n) : Nat :=
  if hn : n = 0 then
    0
  else
    (activities L).min' (activities_nonempty L (Nat.pos_of_ne_zero hn))

/-- The documented empty-width convention. -/
@[simp]
theorem branchNumber_zero (L : XorLinearEquiv 0) : branchNumber L = 0 := by
  simp [branchNumber]

/-- Every nonzero input activity is bounded below by the branch number. -/
theorem branchNumber_le_activity {n : Nat} (L : XorLinearEquiv n)
    (hn : 0 < n) {v : Bits n} (hv : v ≠ zeroBits n) :
    branchNumber L ≤ hammingWeight v + hammingWeight (L.toFun v) := by
  classical
  rw [branchNumber, dif_neg (Nat.ne_of_gt hn)]
  apply Finset.min'_le
  exact Finset.mem_image.mpr ⟨v, by simp [hv], rfl⟩

private theorem hammingWeight_basisBit {n : Nat} (i : Fin n) :
    hammingWeight (basisBit i) = 1 := by
  have hfilter :
      (Finset.univ.filter fun j : Fin n => basisBit i j = true) = {i} := by
    ext j
    simp [basisBit]
  rw [hammingWeight, hfilter]
  simp

private theorem two_le_branchNumber {n : Nat} (L : XorLinearEquiv n)
    (hn : 0 < n) : 2 ≤ branchNumber L := by
  classical
  rw [branchNumber, dif_neg (Nat.ne_of_gt hn)]
  have hmem := Finset.min'_mem (activities L) (activities_nonempty L hn)
  rcases Finset.mem_image.mp hmem with ⟨v, hv, hactivity⟩
  rw [← hactivity]
  have hv0 : v ≠ zeroBits n :=
    (Finset.mem_filter.mp hv).2
  have hout0 : L.toFun v ≠ zeroBits n := by
    intro hout
    apply hv0
    exact L.toEquiv.injective (hout.trans L.map_zero.symm)
  have hvpos : 0 < hammingWeight v := by
    apply Nat.pos_of_ne_zero
    intro h
    exact hv0 ((hammingWeight_eq_zero_iff v).mp h)
  have houtpos : 0 < hammingWeight (L.toFun v) := by
    apply Nat.pos_of_ne_zero
    intro h
    exact hout0 ((hammingWeight_eq_zero_iff (L.toFun v)).mp h)
  omega

/-- A coordinate permutation has the minimal possible positive branch number `2`. -/
theorem branchNumber_coordinatePermutation {n : Nat}
    (π : Equiv.Perm (Fin n)) (hn : 0 < n) :
    branchNumber (XorLinearEquiv.ofCoordinatePermutation π) = 2 := by
  apply Nat.le_antisymm
  · let i : Fin n := ⟨0, hn⟩
    calc
      branchNumber (XorLinearEquiv.ofCoordinatePermutation π) ≤
          hammingWeight (basisBit i) +
            hammingWeight
              ((XorLinearEquiv.ofCoordinatePermutation π).toFun
                (basisBit i)) :=
        branchNumber_le_activity _ hn (basisBit_ne_zero i)
      _ = 2 := by
        change hammingWeight (basisBit i) +
          hammingWeight (coordinatePermutation π (basisBit i)) = 2
        rw [hammingWeight_coordinatePermutation]
        simp [hammingWeight_basisBit]
  · exact two_le_branchNumber _ hn

/-! ## State-dependent corrections -/

/-- Add a state-dependent correction pointwise by Boolean XOR. -/
def addCorrection {n : Nat} (D ω : Bits n → Bits n) : Bits n → Bits n :=
  fun x => xorBits (D x) (ω x)

@[simp]
theorem identity_add_identity_correction {n : Nat} (x : Bits n) :
    addCorrection
        (id : Bits n → Bits n)
        (id : Bits n → Bits n)
        x =
      zeroBits n := by
  exact xorBits_self x

/-- At positive width the identity correction collapses all inputs to zero. -/
theorem identity_add_identity_not_injective {n : Nat} (hn : 0 < n) :
    ¬ Function.Injective
        (addCorrection
          (id : Bits n → Bits n)
          (id : Bits n → Bits n)) := by
  intro hinjective
  let i : Fin n := ⟨0, hn⟩
  have heq : basisBit i = zeroBits n := by
    apply hinjective
    simp
  exact basisBit_ne_zero i heq

/-- A state-dependent correction can destroy the bijectivity of its base map. -/
theorem state_dependent_correction_can_destroy_bijectivity
    {n : Nat} (hn : 0 < n) :
    ∃ D ω : Bits n → Bits n,
      Function.Bijective D ∧
      ¬ Function.Injective (addCorrection D ω) := by
  refine ⟨id, id, Function.bijective_id, ?_⟩
  exact identity_add_identity_not_injective hn

/-- Unlike a state-dependent correction, a constant XOR translation is an equivalence. -/
theorem constant_translation_preserves_bijectivity
    {n : Nat} (D : Bits n → Bits n) (hD : Function.Bijective D)
    (c : Bits n) :
    Function.Bijective (fun x => xorBits (D x) c) := by
  simpa [Function.comp_def] using (xorTranslation c).bijective.comp hD

/-! ## Elementary two-step cohomology -/

/-- A minimal two-step cochain interface, sufficient for the counterexample. -/
structure TwoStepComplex (A : Type u) where
  zero : A
  d₀ : A → A
  d₁ : A → A
  d_sq : ∀ x, d₁ (d₀ x) = zero

/-- A degree-one element is closed when its next differential is zero. -/
def TwoStepComplex.Closed₁ {A : Type u} (C : TwoStepComplex A) (ω : A) : Prop :=
  C.d₁ ω = C.zero

/-- A degree-one element is exact when it lies in the image of `d₀`. -/
def TwoStepComplex.Exact₁ {A : Type u} (C : TwoStepComplex A) (ω : A) : Prop :=
  ∃ η, C.d₀ η = ω

/-- `H¹` is trivial here precisely when every closed degree-one element is exact. -/
def TwoStepComplex.H1Trivial {A : Type u} (C : TwoStepComplex A) : Prop :=
  ∀ ω, C.Closed₁ ω → C.Exact₁ ω

/-- The elementary complex `A --id--> A --0--> A`. -/
def identityZeroComplex (A : Type u) (zero : A) : TwoStepComplex A where
  zero := zero
  d₀ := id
  d₁ := fun _ => zero
  d_sq := by
    intro x
    rfl

/-- The identity-to-zero complex has trivial first cohomology. -/
theorem identityZeroComplex_h1Trivial (A : Type u) (zero : A) :
    (identityZeroComplex A zero).H1Trivial := by
  intro ω _
  exact ⟨ω, rfl⟩

/-- Endomaps of the Boolean state space. -/
abbrev EndMap (n : Nat) := Bits n → Bits n

/-- The constant-zero Boolean endomap. -/
def zeroEndMap (n : Nat) : EndMap n :=
  fun _ => zeroBits n

/-- The identity-to-zero complex on Boolean endomaps. -/
def endMapComplex (n : Nat) : TwoStepComplex (EndMap n) :=
  identityZeroComplex (EndMap n) (zeroEndMap n)

theorem identityCorrection_closed (n : Nat) :
    (endMapComplex n).Closed₁ (id : EndMap n) := by
  rfl

theorem identityCorrection_exact (n : Nat) :
    (endMapComplex n).Exact₁ (id : EndMap n) := by
  exact ⟨id, rfl⟩

/--
Trivial `H¹` does not make the corrected state map collision-free: the exact,
closed identity correction collapses the bijective identity transformation.
-/
theorem trivial_H1_does_not_preserve_bijectivity {n : Nat} (hn : 0 < n) :
    (endMapComplex n).H1Trivial ∧
    (endMapComplex n).Closed₁ (id : EndMap n) ∧
    (endMapComplex n).Exact₁ (id : EndMap n) ∧
    Function.Bijective (id : EndMap n) ∧
    ¬ Function.Injective
        (addCorrection
          (id : EndMap n)
          (id : EndMap n)) := by
  exact ⟨identityZeroComplex_h1Trivial _ _,
    identityCorrection_closed n,
    identityCorrection_exact n,
    Function.bijective_id,
    identity_add_identity_not_injective hn⟩

/-! ## Square-zero endomorphisms -/

/-- A zero-preserving square-zero map on a nontrivial type cannot be injective. -/
theorem not_injective_of_square_zero
    {V : Type u} (zero : V) (B : V → V)
    (hzero : B zero = zero)
    (hsquare : ∀ x, B (B x) = zero)
    (hnontrivial : ∃ x, x ≠ zero) :
    ¬ Function.Injective B := by
  intro hinjective
  obtain ⟨x, hx⟩ := hnontrivial
  have hBx : B x = zero := by
    apply hinjective
    simpa [hzero] using hsquare x
  have hxzero : x = zero := by
    apply hinjective
    simpa [hzero] using hBx
  exact hx hxzero

/-- A zero-preserving square-zero map on a nontrivial type cannot be bijective. -/
theorem not_bijective_of_square_zero
    {V : Type u} (zero : V) (B : V → V)
    (hzero : B zero = zero)
    (hsquare : ∀ x, B (B x) = zero)
    (hnontrivial : ∃ x, x ≠ zero) :
    ¬ Function.Bijective B := by
  intro hbijective
  exact not_injective_of_square_zero zero B hzero hsquare hnontrivial
    hbijective.injective

end BitMatrix.Network.Permutation
```
