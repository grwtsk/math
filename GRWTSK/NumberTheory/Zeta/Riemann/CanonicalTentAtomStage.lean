/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI GPT-5.6 Sol.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Chebyshev.HigherPrimePowerSource
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalTentLedger
import Mathlib.Analysis.Real.Sqrt
import Mathlib.Tactic

set_option autoImplicit false

open scoped BigOperators ArithmeticFunction

/-!
# Canonical square-tent prime-power atom stage

The existing finite prime-power pair inventory is transported injectively to
the source-faithful atom type.  The logarithmic tent readout recovers the
canonical square-tent von Mangoldt source exactly.

Because the tent is nonnegative, its square root is an independently defined
amplitude.  The positive finite Gram of that amplitude equals the SAME
arithmetic source exactly.  This is a change-of-test identity
  R(g) = Q(sqrt g),
not the false same-test identity R(g) = Q(g).

No square root of a Weil form, signed quartic, or unknown target is used.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalTentAtomStage

open GRWTSK.NumberTheory.ArithmeticFunctions.PrimeExponentScale
open GRWTSK.NumberTheory.ArithmeticFunctions.PrimePowerAtoms
open GRWTSK.NumberTheory.ArithmeticFunctions.PrimePowerVonMangoldt
open GRWTSK.NumberTheory.Chebyshev.TentSource
open GRWTSK.NumberTheory.Chebyshev.HigherPrimePowerSource
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalTentLedger
open GRWTSK.Analysis.Real.TentWeight

/-- The already-source-bound finite prime/exponent inventory, retained as a
finite type. -/
abbrev SquarePair (n : ℕ) :=
  {kp : ℕ × ℕ // kp ∈ primePowerPairs n}

noncomputable instance squarePairFintype (n : ℕ) : Fintype (SquarePair n) :=
  Fintype.ofFinset (primePowerPairs n) (fun kp => Iff.rfl)

theorem squarePair_exponent_pos {n : ℕ} (kp : SquarePair n) :
    0 < kp.1.1 :=
  ((mem_primePowerPairs_iff n kp.1.1 kp.1.2).mp kp.2).1

theorem squarePair_prime {n : ℕ} (kp : SquarePair n) :
    Nat.Prime kp.1.2 :=
  ((mem_primePowerPairs_iff n kp.1.1 kp.1.2).mp kp.2).2.1

/-- Source-faithful atom corresponding to one exact finite pair. -/
def pairAtom (n : ℕ) (kp : SquarePair n) : PrimePowerAtom :=
  atom ⟨kp.1.2, squarePair_prime kp⟩ kp.1.1 (squarePair_exponent_pos kp)

@[simp]
theorem pairAtom_prime_val (n : ℕ) (kp : SquarePair n) :
    (pairAtom n kp).prime.1 = kp.1.2 :=
  rfl

@[simp]
theorem pairAtom_exponent_val (n : ℕ) (kp : SquarePair n) :
    (pairAtom n kp).exponent.1 = kp.1.1 :=
  rfl

theorem pairAtom_injective (n : ℕ) :
    Function.Injective (pairAtom n) := by
  intro x y h
  apply Subtype.ext
  apply Prod.ext
  · exact congrArg (fun a : PrimePowerAtom => a.exponent.1) h
  · exact congrArg (fun a : PrimePowerAtom => a.prime.1) h

def pairAtomEmbedding (n : ℕ) : SquarePair n ↪ PrimePowerAtom :=
  ⟨pairAtom n, pairAtom_injective n⟩

/-- Exactly the prime-power atoms occurring in the square interval. -/
noncomputable def squareStageAtoms (n : ℕ) : Finset PrimePowerAtom :=
  Finset.univ.map (pairAtomEmbedding n)

/-- Dynamically sized fourth-channel stage for the square interval. -/
noncomputable def squareAtomStage (n : ℕ) : PrimePowerWitnessStage where
  atoms := squareStageAtoms n

/-- Each source pair gives one witness index in the finite atom stage. -/
noncomputable def pairToWitness (n : ℕ) (kp : SquarePair n) :
    (squareAtomStage n).WitnessIndex :=
  ⟨pairAtom n kp, by
    simp [squareAtomStage, squareStageAtoms]⟩

theorem pairToWitness_injective (n : ℕ) :
    Function.Injective (pairToWitness n) := by
  intro x y h
  apply pairAtom_injective n
  exact congrArg Subtype.val h

theorem pairToWitness_surjective (n : ℕ) :
    Function.Surjective (pairToWitness n) := by
  intro a
  rcases a with ⟨a, ha⟩
  change a ∈ squareStageAtoms n at ha
  rcases Finset.mem_map.mp ha with ⟨kp, _, hkp⟩
  refine ⟨kp, ?_⟩
  apply Subtype.ext
  exact hkp

/-- Pair inventory and witness-channel indices are literally in bijection. -/
noncomputable def pairWitnessEquiv (n : ℕ) :
    SquarePair n ≃ (squareAtomStage n).WitnessIndex :=
  Equiv.ofBijective (pairToWitness n)
    ⟨pairToWitness_injective n, pairToWitness_surjective n⟩

/-- Reindex the stage readout by the source pair inventory. -/
theorem stageReadout_reindex (n : ℕ) (f : ℝ → ℝ) :
    stageReadout (squareAtomStage n) f =
      ∑ kp : SquarePair n,
        atomWeight (pairAtom n kp) * f (logLocation (pairAtom n kp)) := by
  symm
  exact Fintype.sum_equiv (pairWitnessEquiv n)
    (fun kp : SquarePair n =>
      atomWeight (pairAtom n kp) * f (logLocation (pairAtom n kp)))
    (fun a : (squareAtomStage n).WitnessIndex =>
      atomWeight a.1 * f (logLocation a.1))
    (fun _ => rfl)

/-- Reindex the stage energy by the same exact source pair inventory. -/
theorem stageEnergy_reindex (n : ℕ) (f : ℝ → ℝ) :
    stageEnergy (squareAtomStage n) f =
      ∑ kp : SquarePair n,
        atomWeight (pairAtom n kp) *
          (f (logLocation (pairAtom n kp))) ^ 2 := by
  symm
  exact Fintype.sum_equiv (pairWitnessEquiv n)
    (fun kp : SquarePair n =>
      atomWeight (pairAtom n kp) *
        (f (logLocation (pairAtom n kp))) ^ 2)
    (fun a : (squareAtomStage n).WitnessIndex =>
      atomWeight a.1 * (f (logLocation a.1)) ^ 2)
    (fun _ => rfl)

/-- The Archimedean exponential of an atom location recovers its actual
natural prime power. -/
theorem exp_logLocation_pairAtom (n : ℕ) (kp : SquarePair n) :
    Real.exp (logLocation (pairAtom n kp)) =
      ((kp.1.2 ^ kp.1.1 : ℕ) : ℝ) := by
  change
    Real.exp ((kp.1.1 : ℝ) * Real.log (kp.1.2 : ℝ)) =
      ((kp.1.2 ^ kp.1.1 : ℕ) : ℝ)
  rw [Real.exp_nat_mul]
  rw [Real.exp_log (by exact_mod_cast (squarePair_prime kp).pos)]
  norm_cast

/-- The exact logarithmic test whose atom value is the existing square tent
weight at the represented prime power. -/
noncomputable def squareLogTest (n : ℕ) (u : ℝ) : ℝ :=
  tent (squareCenter n) (squareRadius n) (Real.exp u)

theorem squareLogTest_pairAtom (n : ℕ) (kp : SquarePair n) :
    squareLogTest n (logLocation (pairAtom n kp)) =
      squareWeight n (kp.1.2 ^ kp.1.1) := by
  rw [squareLogTest, squareWeight, exp_logLocation_pairAtom]

/-- Finite pair expression for the weighted square-tent arithmetic source. -/
noncomputable def pairTentMass (n : ℕ) : ℝ :=
  ∑ kp ∈ primePowerPairs n,
    Real.log kp.2 * squareWeight n (kp.2 ^ kp.1)

/-- Existing unique prime-power factorization reindexes the full square-tent
von Mangoldt source by exact prime/exponent pairs. -/
theorem pairTentMass_eq_squareTentMangoldt (n : ℕ) :
    pairTentMass n = squareTentMangoldt n := by
  classical
  unfold pairTentMass squareTentMangoldt
  calc
    (∑ kp ∈ primePowerPairs n,
        Real.log kp.2 * squareWeight n (kp.2 ^ kp.1)) =
      ∑ m ∈ (Finset.Ioc (n ^ 2) ((n + 1) ^ 2)).filter IsPrimePow,
        ArithmeticFunction.vonMangoldt m * squareWeight n m := by
      refine Finset.sum_bij (i := fun kp _ => kp.2 ^ kp.1) ?_ ?_ ?_ ?_
      · rintro ⟨k, p⟩ hkp
        have h := (mem_primePowerPairs_iff n k p).mp hkp
        exact Finset.mem_filter.mpr
          ⟨Finset.mem_Ioc.mpr h.2.2, h.2.1.isPrimePow.pow h.1.ne'⟩
      · rintro ⟨k, p⟩ hkp ⟨l, q⟩ hlq heq
        have hp := (mem_primePowerPairs_iff n k p).mp hkp
        have hq := (mem_primePowerPairs_iff n l q).mp hlq
        have hb : p = q := by
          have hm := congrArg Nat.minFac heq
          simpa only [hp.2.1.pow_minFac hp.1.ne',
            hq.2.1.pow_minFac hq.1.ne'] using hm
        subst q
        have he : k = l := Nat.pow_right_injective hp.2.1.two_le heq
        exact Prod.ext he rfl
      · intro m hm
        have h := Finset.mem_filter.mp hm
        obtain ⟨p, k, hp, hk, rfl⟩ := (isPrimePow_nat_iff m).mp h.2
        exact ⟨(k, p), (mem_primePowerPairs_iff n k p).mpr
          ⟨hk, hp, (Finset.mem_Ioc.mp h.1).1,
            (Finset.mem_Ioc.mp h.1).2⟩, rfl⟩
      · rintro ⟨k, p⟩ hkp
        have h := (mem_primePowerPairs_iff n k p).mp hkp
        rw [ArithmeticFunction.vonMangoldt_apply_pow h.1.ne',
          ArithmeticFunction.vonMangoldt_apply_prime h.2.1]
    _ = ∑ m ∈ Finset.Ioc (n ^ 2) ((n + 1) ^ 2),
        ArithmeticFunction.vonMangoldt m * squareWeight n m := by
      apply Finset.sum_subset (Finset.filter_subset _ _)
      intro m hm hnot
      have hnpp : ¬ IsPrimePow m := by
        intro hp
        exact hnot (Finset.mem_filter.mpr ⟨hm, hp⟩)
      rw [ArithmeticFunction.vonMangoldt_eq_zero_iff.mpr hnpp, zero_mul]

/-- Fintype form of the same weighted pair mass. -/
theorem pairAtom_tent_sum_eq_pairTentMass (n : ℕ) :
    (∑ kp : SquarePair n,
      atomWeight (pairAtom n kp) *
        squareWeight n (kp.1.2 ^ kp.1.1)) = pairTentMass n := by
  classical
  unfold pairTentMass
  rw [Finset.univ_eq_attach]
  rw [(primePowerPairs n).sum_attach
    (fun kp => Real.log kp.2 * squareWeight n (kp.2 ^ kp.1))]
  apply Finset.sum_congr rfl
  intro kp hkp
  simp [pairAtom, atomWeight_eq_log]

/-- The source-faithful finite atom readout equals the canonical square-tent
von Mangoldt observable exactly. -/
theorem stageReadout_squareLogTest_eq (n : ℕ) :
    stageReadout (squareAtomStage n) (squareLogTest n) =
      squareTentMangoldt n := by
  rw [stageReadout_reindex]
  calc
    _ = ∑ kp : SquarePair n,
        atomWeight (pairAtom n kp) *
          squareWeight n (kp.1.2 ^ kp.1.1) := by
      apply Finset.sum_congr rfl
      intro kp _
      rw [squareLogTest_pairAtom]
    _ = pairTentMass n := pairAtom_tent_sum_eq_pairTentMass n
    _ = squareTentMangoldt n := pairTentMass_eq_squareTentMangoldt n

/-- The requested alignment record is now constructed, rather than merely
declared as a future interface. -/
noncomputable def squareAtomStageAlignment (n : ℕ) :
    AtomStageAlignment n where
  stage := squareAtomStage n
  test := squareLogTest n
  readout_eq := stageReadout_squareLogTest_eq n

/-- Positive square-root amplitude of the independently nonnegative tent
test. -/
noncomputable def squareRootAmplitude (n : ℕ) (u : ℝ) : ℝ :=
  Real.sqrt (squareLogTest n u)

theorem squareLogTest_pairAtom_nonneg (n : ℕ) (kp : SquarePair n) :
    0 ≤ squareLogTest n (logLocation (pairAtom n kp)) := by
  rw [squareLogTest_pairAtom]
  exact squareWeight_nonneg n (kp.1.2 ^ kp.1.1)

theorem squareRootAmplitude_sq_pairAtom (n : ℕ) (kp : SquarePair n) :
    (squareRootAmplitude n (logLocation (pairAtom n kp))) ^ 2 =
      squareWeight n (kp.1.2 ^ kp.1.1) := by
  unfold squareRootAmplitude
  rw [Real.sq_sqrt (squareLogTest_pairAtom_nonneg n kp)]
  exact squareLogTest_pairAtom n kp

/-- The positive Gram of the square-root amplitude equals the same canonical
arithmetic source exactly. -/
theorem stageEnergy_squareRootAmplitude_eq (n : ℕ) :
    stageEnergy (squareAtomStage n) (squareRootAmplitude n) =
      squareTentMangoldt n := by
  rw [stageEnergy_reindex]
  calc
    _ = ∑ kp : SquarePair n,
        atomWeight (pairAtom n kp) *
          squareWeight n (kp.1.2 ^ kp.1.1) := by
      apply Finset.sum_congr rfl
      intro kp _
      rw [squareRootAmplitude_sq_pairAtom]
    _ = pairTentMass n := pairAtom_tent_sum_eq_pairTentMass n
    _ = squareTentMangoldt n := pairTentMass_eq_squareTentMangoldt n

/-- Exact change-of-test quadraticization. This is NOT the same-test equality
R(g)=Q(g): the quadratic amplitude is sqrt(g). -/
theorem squareRoot_quadraticization (n : ℕ) :
    stageReadout (squareAtomStage n) (squareLogTest n) =
      stageEnergy (squareAtomStage n) (squareRootAmplitude n) := by
  rw [stageReadout_squareLogTest_eq, stageEnergy_squareRootAmplitude_eq]

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalTentAtomStage
