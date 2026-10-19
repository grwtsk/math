module

public meta import Surface.Core.Classification
public import Surface.Core.ConductorThreeVonMangoldt
public import Surface.Core.PrimeLattice.MomentPath
public import Mathlib.Data.Nat.Sqrt
import Mathlib.Tactic

/-!
# Exact finite conductor-three Vaughan decomposition

This module isolates the algebraic part of the proposed packet route.  It
defines the fourth-root cutoff, the truncated Mangoldt and Möbius arithmetic
functions, the four signed Vaughan components, and a finite four-component
atomization through `2 * N`.

Everything in this file is an unconditional finite identity.  In particular,
no Type II estimate, packet estimate, Wang--Zahl hypothesis, or GRH premise is
stored in the atomization.
-/

public section

namespace Surface.Core.ConductorThreeTwistedVaughan

noncomputable section

open scoped ArithmeticFunction BigOperators
open Surface.Core.ConductorThreeCharacterArithmetic
open Surface.Core.ConductorThreeVonMangoldt
open Surface.Core.PrimeLattice.MomentPath

/-- The fixed cutoff `max 2 (floor ((2N)^(1/4)))`, implemented by two exact
natural square roots. -/
@[expose]
def vaughanFourthRootCutoff (N : ℕ) : ℕ :=
  max 2 (Nat.sqrt (Nat.sqrt (2 * N)))

@[surface_novel, surface_published]
theorem two_le_vaughanFourthRootCutoff (N : ℕ) :
    2 ≤ vaughanFourthRootCutoff N := by
  simp [vaughanFourthRootCutoff]

/-- Truncate an arithmetic function to indices at most `bound`. -/
@[expose]
def truncateArithmeticFunction
    (f : ArithmeticFunction ℝ) (bound : ℕ) : ArithmeticFunction ℝ :=
  ⟨fun n ↦ if n ≤ bound then f n else 0, by simp⟩

@[surface_novel, surface_published, simp]
theorem truncateArithmeticFunction_apply
    (f : ArithmeticFunction ℝ) (bound n : ℕ) :
    truncateArithmeticFunction f bound n = if n ≤ bound then f n else 0 :=
  rfl

/-- `Λ_{≤ U}`. -/
@[expose]
def vaughanMangoldtBelow (U : ℕ) : ArithmeticFunction ℝ :=
  truncateArithmeticFunction ArithmeticFunction.vonMangoldt U

/-- `Λ_{> U}`. -/
@[expose]
def vaughanMangoldtAbove (U : ℕ) : ArithmeticFunction ℝ :=
  ArithmeticFunction.vonMangoldt - vaughanMangoldtBelow U

/-- Exact support form of `Λ_{>U}`. -/
@[surface_novel, surface_published]
theorem vaughanMangoldtAbove_apply (U n : ℕ) :
    vaughanMangoldtAbove U n =
      if U < n then ArithmeticFunction.vonMangoldt n else 0 := by
  change ArithmeticFunction.vonMangoldt n -
      (if n ≤ U then ArithmeticFunction.vonMangoldt n else 0) = _
  by_cases hn : n ≤ U
  · simp [hn, Nat.not_lt.mpr hn]
  · have hun : U < n := Nat.lt_of_not_ge hn
    simp [hn, hun]

/-- `μ_{≤ V}`, coerced to a real-valued arithmetic function. -/
@[expose]
def vaughanMoebiusBelow (V : ℕ) : ArithmeticFunction ℝ :=
  truncateArithmeticFunction
    (ArithmeticFunction.moebius : ArithmeticFunction ℝ) V

/-- The truncated divisor coefficient
`b_V(k) = ∑_{d∣k, d≤V} μ(d)`. -/
@[expose]
def vaughanDivisorCoefficient (V : ℕ) : ArithmeticFunction ℝ :=
  vaughanMoebiusBelow V * ArithmeticFunction.zeta

/-- Below the truncation boundary, `b_V` is the complete divisor sum of the
Möbius function. -/
@[surface_novel, surface_published]
theorem vaughanDivisorCoefficient_eq_full_sum
    {V k : ℕ} (hk : k ≤ V) :
    vaughanDivisorCoefficient V k =
      ∑ d ∈ k.divisors, (ArithmeticFunction.moebius d : ℝ) := by
  rw [vaughanDivisorCoefficient, ArithmeticFunction.coe_mul_zeta_apply]
  apply Finset.sum_congr rfl
  intro d hd
  have hk0 : k ≠ 0 := by
    rintro rfl
    simp at hd
  have hdk : d ≤ k :=
    Nat.le_of_dvd (Nat.pos_of_ne_zero hk0) (Nat.dvd_of_mem_divisors hd)
  simp [vaughanMoebiusBelow, truncateArithmeticFunction,
    hdk.trans hk]

@[surface_novel, surface_published]
theorem vaughanDivisorCoefficient_one {V : ℕ} (hV : 1 ≤ V) :
    vaughanDivisorCoefficient V 1 = 1 := by
  rw [vaughanDivisorCoefficient_eq_full_sum hV]
  simp

/-- Exact support theorem for the truncated divisor coefficient:
`b_V(k) = 0` whenever `1 < k ≤ V`. -/
@[surface_novel, surface_published]
theorem vaughanDivisorCoefficient_eq_zero
    {V k : ℕ} (hk : 1 < k) (hkV : k ≤ V) :
    vaughanDivisorCoefficient V k = 0 := by
  rw [vaughanDivisorCoefficient_eq_full_sum hkV]
  have hconv :
      (((ArithmeticFunction.moebius : ArithmeticFunction ℝ) *
        ArithmeticFunction.zeta) k) = 0 := by
    rw [ArithmeticFunction.coe_moebius_mul_coe_zeta]
    exact ArithmeticFunction.one_apply_ne hk.ne'
  rw [ArithmeticFunction.coe_mul_zeta_apply] at hconv
  exact hconv

/-- Therefore every nominal Type II pair with `1 < k ≤ V` contributes
zero, independently of the left factor. -/
@[surface_novel, surface_published]
theorem typeII_pair_zero_of_le_cutoff
    (U : ℕ) {V m k : ℕ} (hk : 1 < k) (hkV : k ≤ V) :
    vaughanMangoldtAbove U m * vaughanDivisorCoefficient V k = 0 := by
  rw [vaughanDivisorCoefficient_eq_zero hk hkV, mul_zero]

/-- The untwisted small Mangoldt component. -/
@[expose]
def vaughanTypeZeroScalar (U n : ℕ) : ℝ :=
  vaughanMangoldtBelow U n

/-- The first Type I component, with its Vaughan minus sign included. -/
@[expose]
def vaughanTypeI1Scalar (U V n : ℕ) : ℝ :=
  -((vaughanMangoldtBelow U * vaughanDivisorCoefficient V) n)

/-- The second Type I component `(μ_{≤V} * log)(n)`. -/
@[expose]
def vaughanTypeI2Scalar (V n : ℕ) : ℝ :=
  (vaughanMoebiusBelow V * ArithmeticFunction.log) n

/-- The Type II component.  Subtracting the `k = 1` contribution makes this
exactly the negative convolution over `m > U` and `k > 1`. -/
@[expose]
def vaughanTypeIIScalar (U V n : ℕ) : ℝ :=
  -(((vaughanMangoldtAbove U * vaughanDivisorCoefficient V) n) -
      vaughanMangoldtAbove U n)

/-- Algebraic Vaughan identity before applying the conductor-three
character.  This formulation is valid at `n = 0` as well because arithmetic
functions vanish there. -/
@[surface_novel, surface_published]
theorem vaughan_scalar_identity (U V n : ℕ) :
    ArithmeticFunction.vonMangoldt n =
      vaughanTypeZeroScalar U n +
      vaughanTypeI1Scalar U V n +
      vaughanTypeI2Scalar V n +
      vaughanTypeIIScalar U V n := by
  have hlog : ArithmeticFunction.log =
      ArithmeticFunction.vonMangoldt * ArithmeticFunction.zeta := by
    exact ArithmeticFunction.vonMangoldt_mul_zeta.symm
  have hfun : ArithmeticFunction.vonMangoldt =
      vaughanMangoldtBelow U -
        vaughanMangoldtBelow U *
          (vaughanMoebiusBelow V * ArithmeticFunction.zeta) +
        vaughanMoebiusBelow V * ArithmeticFunction.log -
        ((ArithmeticFunction.vonMangoldt - vaughanMangoldtBelow U) *
          (vaughanMoebiusBelow V * ArithmeticFunction.zeta) -
          (ArithmeticFunction.vonMangoldt - vaughanMangoldtBelow U)) := by
    rw [hlog]
    ring
  exact congrArg (fun f : ArithmeticFunction ℝ ↦ f n) hfun

/-- The exact conductor-three twisted Vaughan identity.  The character is
applied to the complete coefficient, so this theorem does not assume or hide
any cancellation. -/
@[surface_novel, surface_published]
theorem twisted_vaughan_identity (U V n : ℕ) :
    twistedVonMangoldtThree n =
      (conductorThreeIntegerValue n : ℝ) * vaughanTypeZeroScalar U n +
      (conductorThreeIntegerValue n : ℝ) * vaughanTypeI1Scalar U V n +
      (conductorThreeIntegerValue n : ℝ) * vaughanTypeI2Scalar V n +
      (conductorThreeIntegerValue n : ℝ) * vaughanTypeIIScalar U V n := by
  rw [twistedVonMangoldtThree, vaughan_scalar_identity U V n]
  ring

/-- The conductor-three character factors exactly across each Type II pair. -/
@[surface_novel, surface_published]
theorem conductorThreeCharacter_typeII_factor (m k : ℕ) :
    (conductorThreeIntegerValue (m * k) : ℝ) =
      (conductorThreeIntegerValue m : ℝ) *
        (conductorThreeIntegerValue k : ℝ) := by
  rw [conductorThreeIntegerValue_mul]
  norm_cast

/-- Finite prefix of one real Vaughan component. -/
@[expose]
def vaughanPrefix (component : ℕ → ℝ) (x : ℕ) : ℝ :=
  ∑ n ∈ Finset.range (x + 1), component n

/-- The exact four-term decomposition of every conductor-three prefix. -/
@[surface_novel, surface_published]
theorem conductorThreePsi_eq_vaughan_prefixes (U V x : ℕ) :
    conductorThreePsi x =
      vaughanPrefix
          (fun n ↦ (conductorThreeIntegerValue n : ℝ) *
            vaughanTypeZeroScalar U n) x +
      vaughanPrefix
          (fun n ↦ (conductorThreeIntegerValue n : ℝ) *
            vaughanTypeI1Scalar U V n) x +
      vaughanPrefix
          (fun n ↦ (conductorThreeIntegerValue n : ℝ) *
            vaughanTypeI2Scalar V n) x +
      vaughanPrefix
          (fun n ↦ (conductorThreeIntegerValue n : ℝ) *
            vaughanTypeIIScalar U V n) x := by
  simp only [conductorThreePsi, vaughanPrefix]
  rw [← Finset.sum_add_distrib, ← Finset.sum_add_distrib,
    ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n _
  exact twisted_vaughan_identity U V n

/-! ## Coefficient-level finite factor atoms

The following finite types expose the actual one-, two-, and three-factor
indices used by the displayed Vaughan sums.  Unlike the checked
four-component atomization below, their complete fiberwise collapse still
requires a finite convolution-reindexing adapter.  That exact remaining
statement is named `ExactTwistedVaughanFactorCollapse`; it is deliberately a
proposition, not a proof field or an axiom.
-/

abbrev VaughanScaleIndex (N : ℕ) := Fin (2 * N + 1)
abbrev VaughanFactorPair (N : ℕ) :=
  VaughanScaleIndex N × VaughanScaleIndex N
abbrev VaughanFactorTriple (N : ℕ) :=
  VaughanScaleIndex N × VaughanScaleIndex N × VaughanScaleIndex N

@[expose]
def IsVaughanTypeZeroFactor (N : ℕ) (n : VaughanScaleIndex N) : Prop :=
  0 < n.1 ∧ n.1 ≤ vaughanFourthRootCutoff N

@[expose]
def IsVaughanTypeI1Factor (N : ℕ) (q : VaughanFactorTriple N) : Prop :=
  q.1.1 * q.2.1.1 * q.2.2.1 ≤ 2 * N ∧
    0 < q.1.1 ∧ 0 < q.2.1.1 ∧ 0 < q.2.2.1 ∧
    q.1.1 ≤ vaughanFourthRootCutoff N ∧
    q.2.1.1 ≤ vaughanFourthRootCutoff N

@[expose]
def IsVaughanTypeI2Factor (N : ℕ) (q : VaughanFactorPair N) : Prop :=
  q.1.1 * q.2.1 ≤ 2 * N ∧
    0 < q.1.1 ∧ 0 < q.2.1 ∧
    q.1.1 ≤ vaughanFourthRootCutoff N

/-- Effective Type II support.  The right factor is required to exceed `V=U`;
the checked `vaughanDivisorCoefficient_eq_zero` theorem justifies deleting
the nominal range `1 < k ≤ V`. -/
@[expose]
def IsVaughanTypeIIFactor (N : ℕ) (q : VaughanFactorPair N) : Prop :=
  q.1.1 * q.2.1 ≤ 2 * N ∧
    vaughanFourthRootCutoff N < q.1.1 ∧
    vaughanFourthRootCutoff N < q.2.1

abbrev VaughanTypeZeroFactorAtom (N : ℕ) :=
  {n : VaughanScaleIndex N // IsVaughanTypeZeroFactor N n}
abbrev VaughanTypeI1FactorAtom (N : ℕ) :=
  {q : VaughanFactorTriple N // IsVaughanTypeI1Factor N q}
abbrev VaughanTypeI2FactorAtom (N : ℕ) :=
  {q : VaughanFactorPair N // IsVaughanTypeI2Factor N q}
abbrev VaughanTypeIIFactorAtom (N : ℕ) :=
  {q : VaughanFactorPair N // IsVaughanTypeIIFactor N q}

/-- Disjoint sum of the four coefficient-level Vaughan atom classes. -/
abbrev VaughanFactorAtom (N : ℕ) :=
  VaughanTypeZeroFactorAtom N ⊕
    VaughanTypeI1FactorAtom N ⊕
    VaughanTypeI2FactorAtom N ⊕
    VaughanTypeIIFactorAtom N

@[expose]
def vaughanTypeI1FactorIndex {N : ℕ}
    (a : VaughanTypeI1FactorAtom N) : VaughanScaleIndex N :=
  ⟨a.1.1.1 * a.1.2.1.1 * a.1.2.2.1,
    Nat.lt_succ_iff.mpr a.2.1⟩

@[expose]
def vaughanTypeI2FactorIndex {N : ℕ}
    (a : VaughanTypeI2FactorAtom N) : VaughanScaleIndex N :=
  ⟨a.1.1.1 * a.1.2.1, Nat.lt_succ_iff.mpr a.2.1⟩

@[expose]
def vaughanTypeIIFactorIndex {N : ℕ}
    (a : VaughanTypeIIFactorAtom N) : VaughanScaleIndex N :=
  ⟨a.1.1.1 * a.1.2.1, Nat.lt_succ_iff.mpr a.2.1⟩

@[expose]
def vaughanFactorIndex {N : ℕ} :
    VaughanFactorAtom N → VaughanScaleIndex N
  | .inl a => a.1
  | .inr (.inl a) => vaughanTypeI1FactorIndex a
  | .inr (.inr (.inl a)) => vaughanTypeI2FactorIndex a
  | .inr (.inr (.inr a)) => vaughanTypeIIFactorIndex a

@[expose]
def vaughanFactorKind {N : ℕ} : VaughanFactorAtom N → VaughanAtomKind
  | .inl _ => .boundary
  | .inr (.inl _) => .typeI
  | .inr (.inr (.inl _)) => .typeI
  | .inr (.inr (.inr _)) => .typeII

/-- Exact coefficient carried by one factor atom.  The Type II coefficient is
already split using complete multiplicativity of `χ₃`; this is arithmetic
data, not a polarization estimate. -/
@[expose]
def vaughanFactorCoefficient {N : ℕ} : VaughanFactorAtom N → ℂ
  | .inl a =>
      ((conductorThreeIntegerValue a.1 : ℝ) *
        ArithmeticFunction.vonMangoldt a.1 : ℝ)
  | .inr (.inl a) =>
      (-((conductorThreeIntegerValue (vaughanTypeI1FactorIndex a) : ℝ) *
        ArithmeticFunction.vonMangoldt a.1.1.1 *
        (ArithmeticFunction.moebius a.1.2.1.1 : ℝ)) : ℝ)
  | .inr (.inr (.inl a)) =>
      (((conductorThreeIntegerValue (vaughanTypeI2FactorIndex a) : ℝ) *
        (ArithmeticFunction.moebius a.1.1.1 : ℝ) *
        Real.log a.1.2.1) : ℝ)
  | .inr (.inr (.inr a)) =>
      (-((conductorThreeIntegerValue a.1.1.1 : ℝ) *
        ArithmeticFunction.vonMangoldt a.1.1.1 *
        (conductorThreeIntegerValue a.1.2.1 : ℝ) *
        vaughanDivisorCoefficient (vaughanFourthRootCutoff N) a.1.2.1) : ℝ)

local instance (N : ℕ) : Fintype (VaughanTypeIIFactorAtom N) :=
  @Subtype.fintype _ (IsVaughanTypeIIFactor N)
    (by intro q; unfold IsVaughanTypeIIFactor; infer_instance) inferInstance

/-- Reindex a bounded finite pair fiber by the corresponding divisor
antidiagonal.  Unlike the unrestricted helper needed by the Type I terms,
the supplied predicate itself certifies that both factors are positive. -/
private theorem boundedRestrictedPair_sum_eq_divisorsAntidiagonal
    (N : ℕ) (n : VaughanScaleIndex N)
    (cut : ℕ → ℕ → Prop) [DecidableRel cut]
    (hcutpos : ∀ m k, cut m k → 0 < m ∧ 0 < k)
    (F : ℕ → ℕ → ℂ) :
    (∑ a : {q : VaughanFactorPair N //
        q.1.1 * q.2.1 ≤ 2 * N ∧ cut q.1.1 q.2.1},
      if a.1.1.1 * a.1.2.1 = n.1 then F a.1.1.1 a.1.2.1 else 0) =
      ∑ q ∈ n.1.divisorsAntidiagonal with cut q.1 q.2, F q.1 q.2 := by
  classical
  let carrier : Finset (VaughanFactorPair N) :=
    Finset.univ.filter fun q =>
      q.1.1 * q.2.1 ≤ 2 * N ∧ cut q.1.1 q.2.1
  let fiber : Finset (VaughanFactorPair N) :=
    carrier.filter fun q => q.1.1 * q.2.1 = n.1
  let divisors : Finset (ℕ × ℕ) :=
    n.1.divisorsAntidiagonal.filter fun q => cut q.1 q.2
  calc
    (∑ a : {q : VaughanFactorPair N //
        q.1.1 * q.2.1 ≤ 2 * N ∧ cut q.1.1 q.2.1},
      if a.1.1.1 * a.1.2.1 = n.1 then F a.1.1.1 a.1.2.1 else 0) =
        ∑ q ∈ carrier,
          if q.1.1 * q.2.1 = n.1 then F q.1.1 q.2.1 else 0 := by
            apply (Finset.sum_subtype carrier ?_ fun q =>
              if q.1.1 * q.2.1 = n.1 then F q.1.1 q.2.1 else 0).symm
            intro q
            simp [carrier]
    _ = ∑ q ∈ fiber, F q.1.1 q.2.1 := by
          exact (Finset.sum_filter (fun q : VaughanFactorPair N =>
            q.1.1 * q.2.1 = n.1) (fun q => F q.1.1 q.2.1)).symm
    _ = ∑ q ∈ divisors, F q.1 q.2 := by
      apply Finset.sum_bij (fun q _ => (q.1.1, q.2.1))
      · intro q hq
        simp only [fiber, carrier, Finset.mem_filter, Finset.mem_univ,
          true_and] at hq
        simp only [divisors, Finset.mem_filter]
        have hpos := hcutpos q.1.1 q.2.1 hq.1.2
        refine ⟨Nat.mem_divisorsAntidiagonal.mpr ⟨hq.2, ?_⟩, hq.1.2⟩
        rw [← hq.2]
        exact ne_of_gt (Nat.mul_pos hpos.1 hpos.2)
      · intro q₁ hq₁ q₂ hq₂ heq
        apply Prod.ext
        · exact Fin.ext (Prod.mk.inj heq).1
        · exact Fin.ext (Prod.mk.inj heq).2
      · intro p hp
        simp only [divisors, Finset.mem_filter] at hp
        have hpn := Nat.mem_divisorsAntidiagonal.mp hp.1
        have hp1le : p.1 < 2 * N + 1 :=
          lt_of_le_of_lt
            (Nat.le_of_dvd (Nat.pos_of_ne_zero hpn.2) ⟨p.2, hpn.1.symm⟩)
            n.2
        have hp2le : p.2 < 2 * N + 1 :=
          lt_of_le_of_lt
            (Nat.le_of_dvd (Nat.pos_of_ne_zero hpn.2)
              ⟨p.1, by simpa [mul_comm] using hpn.1.symm⟩)
            n.2
        let q : VaughanFactorPair N := (⟨p.1, hp1le⟩, ⟨p.2, hp2le⟩)
        have hq : q ∈ fiber := by
          simp only [fiber, carrier, Finset.mem_filter, Finset.mem_univ,
            true_and, q]
          have hnle : n.1 ≤ 2 * N := Nat.le_of_lt_succ n.2
          exact ⟨⟨by simpa [hpn.1] using hnle, hp.2⟩, hpn.1⟩
        exact ⟨q, hq, rfl⟩
      · intro q hq
        rfl
    _ = ∑ q ∈ n.1.divisorsAntidiagonal with cut q.1 q.2,
          F q.1 q.2 := rfl

/-- The effective Type II factor atoms are exactly the divisor pairs
`m * k = n` with `m > U` and `k > U`.  This is a finite reindexing theorem;
it asserts no cancellation estimate. -/
@[surface_novel, surface_published]
theorem vaughanTypeIIFactor_fiber_expansion (N : ℕ)
    (n : VaughanScaleIndex N) :
    (∑ a : VaughanTypeIIFactorAtom N,
      if vaughanTypeIIFactorIndex a = n then
        vaughanFactorCoefficient (.inr (.inr (.inr a))) else 0) =
      ∑ q ∈ n.1.divisorsAntidiagonal with
        vaughanFourthRootCutoff N < q.1 ∧
          vaughanFourthRootCutoff N < q.2,
        ((-((conductorThreeIntegerValue q.1 : ℝ) *
          ArithmeticFunction.vonMangoldt q.1 *
          (conductorThreeIntegerValue q.2 : ℝ) *
          vaughanDivisorCoefficient (vaughanFourthRootCutoff N) q.2) : ℝ) : ℂ) := by
  simp only [vaughanTypeIIFactorIndex, vaughanFactorCoefficient]
  simp_rw [Fin.ext_iff]
  convert boundedRestrictedPair_sum_eq_divisorsAntidiagonal N n
    (fun m k => vaughanFourthRootCutoff N < m ∧
      vaughanFourthRootCutoff N < k)
    (by
      intro m k h
      exact ⟨lt_of_le_of_lt (Nat.zero_le _) h.1,
        lt_of_le_of_lt (Nat.zero_le _) h.2⟩)
    (fun m k => ((-((conductorThreeIntegerValue m : ℝ) *
      ArithmeticFunction.vonMangoldt m *
      (conductorThreeIntegerValue k : ℝ) *
      vaughanDivisorCoefficient (vaughanFourthRootCutoff N) k) : ℝ) : ℂ)) using 1
  apply Finset.sum_congr
  · apply Finset.ext
    intro a
    constructor <;> intro _ <;> exact Finset.mem_univ a
  · intro a _
    rfl

/-- The scalar Type II convolution is the same effective restricted divisor
sum.  The deleted `k = 1` term is exactly `Λ_{>U}(n)`, while
`b_U(k) = 0` for `1 < k ≤ U`. -/
@[surface_novel, surface_published]
theorem vaughanTypeIIScalar_eq_restricted_sum (N : ℕ)
    (n : VaughanScaleIndex N) :
    vaughanTypeIIScalar (vaughanFourthRootCutoff N)
        (vaughanFourthRootCutoff N) n =
      -∑ q ∈ n.1.divisorsAntidiagonal with
        vaughanFourthRootCutoff N < q.1 ∧
          vaughanFourthRootCutoff N < q.2,
        ArithmeticFunction.vonMangoldt q.1 *
          vaughanDivisorCoefficient (vaughanFourthRootCutoff N) q.2 := by
  let U := vaughanFourthRootCutoff N
  by_cases hn0 : n.1 = 0
  · simp [vaughanTypeIIScalar, hn0]
  · have hnmem : (n.1, 1) ∈ n.1.divisorsAntidiagonal :=
      Nat.mem_divisorsAntidiagonal.mpr ⟨by simp, hn0⟩
    have hfirst :
        (∑ q ∈ n.1.divisorsAntidiagonal,
          if q.2 = 1 then
            vaughanMangoldtAbove U q.1 *
              vaughanDivisorCoefficient U q.2 else 0) =
          vaughanMangoldtAbove U n.1 := by
      rw [Finset.sum_eq_single (n.1, 1)]
      · simp [vaughanDivisorCoefficient_one
          (show 1 ≤ U from (two_le_vaughanFourthRootCutoff N).trans' (by decide))]
      · intro q hq hne
        by_cases hq2 : q.2 = 1
        · exfalso
          apply hne
          have hprod := (Nat.mem_divisorsAntidiagonal.mp hq).1
          apply Prod.ext
          · simpa [hq2] using hprod
          · exact hq2
        · simp [hq2]
      · intro hnot
        exact (hnot hnmem).elim
    unfold vaughanTypeIIScalar
    simp only [ArithmeticFunction.mul_apply]
    rw [show vaughanMangoldtAbove (vaughanFourthRootCutoff N) =
      vaughanMangoldtAbove U from rfl]
    rw [show vaughanDivisorCoefficient (vaughanFourthRootCutoff N) =
      vaughanDivisorCoefficient U from rfl]
    rw [← hfirst]
    congr 1
    rw [← Finset.sum_sub_distrib]
    rw [Finset.sum_filter]
    apply Finset.sum_congr rfl
    intro q hq
    have hq2pos := Nat.pos_of_ne_zero
      (Nat.right_ne_zero_of_mem_divisorsAntidiagonal hq)
    change vaughanMangoldtAbove U q.1 * vaughanDivisorCoefficient U q.2 -
        (if q.2 = 1 then
          vaughanMangoldtAbove U q.1 * vaughanDivisorCoefficient U q.2 else 0) =
      if U < q.1 ∧ U < q.2 then
        ArithmeticFunction.vonMangoldt q.1 * vaughanDivisorCoefficient U q.2 else 0
    by_cases hq2one : q.2 = 1
    · have hnotlarge : ¬ U < q.2 := by
        rw [hq2one]
        have hU : 1 ≤ U := le_trans (by decide)
          (show 2 ≤ U from two_le_vaughanFourthRootCutoff N)
        omega
      simp only [if_pos hq2one, hnotlarge, and_false, if_false]
      ring
    · have hq2gt : 1 < q.2 := lt_of_le_of_ne (Nat.one_le_iff_ne_zero.mpr
          (Nat.ne_of_gt hq2pos)) (Ne.symm hq2one)
      by_cases hq1large : U < q.1
      · by_cases hq2large : U < q.2
        · simp [vaughanMangoldtAbove_apply, hq1large, hq2large, hq2one]
        · have hq2le : q.2 ≤ U := Nat.le_of_not_gt hq2large
          rw [vaughanDivisorCoefficient_eq_zero hq2gt hq2le]
          simp [vaughanMangoldtAbove_apply, hq1large, hq2large, hq2one]
      · simp [vaughanMangoldtAbove_apply, hq1large, hq2one]

/-- The expanded effective Type II atom fiber equals the Type II component
of the exact twisted Vaughan identity. -/
@[surface_novel, surface_published]
theorem vaughanTypeIIFactor_fiber_eq_component (N : ℕ)
    (n : VaughanScaleIndex N) :
    (∑ a : VaughanTypeIIFactorAtom N,
      if vaughanTypeIIFactorIndex a = n then
        vaughanFactorCoefficient (.inr (.inr (.inr a))) else 0) =
      (((conductorThreeIntegerValue n : ℝ) *
        vaughanTypeIIScalar (vaughanFourthRootCutoff N)
          (vaughanFourthRootCutoff N) n : ℝ) : ℂ) := by
  rw [vaughanTypeIIFactor_fiber_expansion]
  rw [vaughanTypeIIScalar_eq_restricted_sum]
  norm_cast
  rw [mul_neg, Finset.mul_sum, ← Finset.sum_neg_distrib]
  apply Finset.sum_congr rfl
  intro q hq
  simp only [Finset.mem_filter] at hq
  have hprod := (Nat.mem_divisorsAntidiagonal.mp hq.1).1
  have hchi := conductorThreeCharacter_typeII_factor q.1 q.2
  rw [hprod] at hchi
  rw [hchi]
  ring

/-- The remaining finite reindexing statement for the Type Zero and Type I
factor atoms.  The Type II branch is discharged by
`vaughanTypeIIFactor_fiber_eq_component`; this proposition is not assumed by
the module. -/
def ExactTwistedVaughanFactorCollapse (N : ℕ) : Prop :=
  by
    classical
    exact ∀ n : VaughanScaleIndex N,
      (∑ a : VaughanFactorAtom N,
        if vaughanFactorIndex a = n then vaughanFactorCoefficient a else 0) =
          (twistedVonMangoldtThree n : ℂ)

/-- Every effective Type II atom has both factors beyond the fixed
fourth-root cutoff. -/
@[surface_novel, surface_published]
theorem typeIIFactor_support {N : ℕ} (a : VaughanTypeIIFactorAtom N) :
    vaughanFourthRootCutoff N < a.1.1.1 ∧
      vaughanFourthRootCutoff N < a.1.2.1 :=
  ⟨a.2.2.1, a.2.2.2⟩

/-- Four finite component atoms are retained at every arithmetic index. -/
abbrev VaughanComponentAtom (N : ℕ) := Fin (2 * N + 1) × Fin 4

/-- Component tag for the exact four-term identity. -/
@[expose]
def vaughanComponentKind {N : ℕ} (a : VaughanComponentAtom N) :
    VaughanAtomKind :=
  match a.2.1 with
  | 0 => .boundary
  | 1 => .typeI
  | 2 => .typeI
  | _ => .typeII

/-- Complex coefficient of one of the four exact Vaughan components. -/
@[expose]
def vaughanComponentCoefficient (N : ℕ)
    (a : VaughanComponentAtom N) : ℂ :=
  let U := vaughanFourthRootCutoff N
  let chi : ℝ := conductorThreeIntegerValue a.1
  match a.2.1 with
  | 0 => (chi * vaughanTypeZeroScalar U a.1 : ℝ)
  | 1 => (chi * vaughanTypeI1Scalar U U a.1 : ℝ)
  | 2 => (chi * vaughanTypeI2Scalar U a.1 : ℝ)
  | _ => (chi * vaughanTypeIIScalar U U a.1 : ℝ)

/-- Finite, estimate-free Vaughan atomization.  The fields contain only the
fixed cutoff, finite atoms, arithmetic entry indices, tags, coefficients, and
the exact fiberwise collapse theorem. -/
structure ConductorThreeVaughanAtomization (N : ℕ) where
  U : ℕ
  V : ℕ
  cutoff_eq : U = vaughanFourthRootCutoff N
  cutoff_eq' : V = U
  Atom : Type
  atomFintype : Fintype Atom
  index : Atom → Fin (2 * N + 1)
  kind : Atom → VaughanAtomKind
  coefficient : Atom → ℂ
  collapse : ∀ n : Fin (2 * N + 1),
    (∑ a : Atom, if index a = n then coefficient a else 0) =
      (twistedVonMangoldtThree n : ℂ)

attribute [instance] ConductorThreeVaughanAtomization.atomFintype

/-- The canonical fixed fourth-root atomization. -/
@[expose]
def exactTwistedVaughanAtomization (N : ℕ) :
    ConductorThreeVaughanAtomization N where
  U := vaughanFourthRootCutoff N
  V := vaughanFourthRootCutoff N
  cutoff_eq := rfl
  cutoff_eq' := rfl
  Atom := VaughanComponentAtom N
  atomFintype := inferInstance
  index := Prod.fst
  kind := vaughanComponentKind
  coefficient := vaughanComponentCoefficient N
  collapse := by
    intro n
    rw [Fintype.sum_prod_type]
    simp only
    rw [Finset.sum_eq_single n]
    · simp only [if_pos]
      rw [Fin.sum_univ_four]
      simp only [vaughanComponentCoefficient, Fin.isValue, Fin.val_zero,
        Fin.val_one, Fin.val_two]
      norm_cast
      exact_mod_cast (twisted_vaughan_identity
        (vaughanFourthRootCutoff N) (vaughanFourthRootCutoff N) n).symm
    · intro m _ hmn
      simp [hmn]
    · simp

end

end Surface.Core.ConductorThreeTwistedVaughan
