/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
Source baseline: grwtsk/math c779a67fa824da8f9b75384f7d61c46baeb2ce1f.
Exact target: DirichletStageChain.PrimitiveStageLower modThreeQuadratic
  modThreeQuadratic_primitive modThreeQuadratic_nonprincipal 3,
with the original proofs supplied at their actual source declarations.
Written source comparison below; finite enumeration statements at the end.
No radius-four stage, RH or Dirichlet GRH proof is claimed by enumeration.
-/
import Mathlib.Tactic

/-!
# The actual conductor-three radius-four source inventory

Start from `DirichletStageChain.PrimitiveStageLower chi3 hp hn 3`, not a
new target: EVERY `Admissible chi3 4 f` must satisfy Q_4(f)>=-E(f)/8.
Here f is real odd C2, compactly supported and zero outside [-4,4],
liftReal f is physical Lebesgue L2(dt), and its original parity-one
gamma correction is integrable. E=integral_R |f(t)|^2 dt.

The actual character is modThreeQuadratic, residue table (0,1,-1),
primitive nonprincipal, conductor3, gamma parity1. Keep precisely

 c3=log(3/pi)+psi(3/4),
 Gamma1(f)=integral_(r>0) exp(-3r/2)/(1-exp(-2r))
                                      *||f(.+r)-f||_2^2 dr,
 C_f(r)=integral_R f(t)f(t+r)dt,
 Q_4(f)=c3 E+Gamma1(f)-2 sum_(n=p^e<exp8,p!=3)
                                 log(p)/sqrt(n)*chi3(n)*C_f(log n).

This is `primitiveArithmeticValue chi3 hp hn 4 (liftReal f)`, using
the source's strict activePrimePowers cutoff. It is not a new Weil
form or a phase-erased prime operator. Its positive-angular Fourier
return uses F(xi)=integral f(t)exp(i xi t)dt and dxi/(2pi).

Positive-term rational exponential Taylor series with geometric
remainders prove 2980<exp8<2981. The source therefore has EXACTLY
458 nonzero atoms:428 primes and30 higher powers, largest atom2971.
There are365 atoms absent at radius3, whose old nonzero inventory
had93 atoms. Exponents above11 are impossible because2^12>2980.
The finite declarations below check all prime/exponent pairs, not a
sample. The analytic strict cutoff comparison remains a written proof.

The next nonzero atom is2999. Every integer2981,...,2998 is NOT a
prime power; this too is checked by the complete inventories below.
Hence for ANY auxiliary physical radius T with
  4<=T<log(2999)/2,
the nonzero chi3 inventory is still exactly this458-atom inventory.
The prime-free support gap, not a rounded exponential, justifies the
return to the original source. The old low filter's support increment
.00612 exceeds it and introduces2999,3001,3011. It cannot be reused
with the old inventory. The new source-exact low/high constructions
retain their smaller actual support increments separately.

## Why the radius-three bound does not propagate automatically

For an input supported in [-3,3], C_f(r)=0 for r>=6. Thus the native
window-change theorem really identifies Q_4(f)=Q_3(f) on that domain.
It does not identify the forms on all radius-four inputs.

For an explicit hostile test set r=log419, so6<r<8 and chi3(419)=-1.
Take a nonzero real even C_c^infinity bump eta supported in [-eps,eps],
with eps<min(r/4,(8-r)/2), and put
 f(t)=eta(t-r/2)-eta(t+r/2).
Then f is an ORIGINAL odd radius-four admissible test. Its gamma
integrability follows from the shift bound
 ||tau_s f-f||^2<=min(s^2||f'||^2,4E).
The two supports are disjoint, E=2||eta||^2, and exact integration
gives C_f(r)=-E/2. The NEW419 atom alone contributes
 -log419/sqrt419 *E to Q_4. This term is invisible on every radius3
test. This does NOT refute the actual radius4 inequality: all other
signed source terms and gamma must still be paid.

As a rigorous logical boundary, the model quadratic
 Qstar=-E/20+2log419/sqrt419*C_f(log419)
satisfies the old bound on every radius3 test, but violates -E/8 on
the displayed radius4 test: log419>6, sqrt419<21, so its extra loss
exceeds2/7>3/40. No actual-source equality with Qstar is asserted.
Thus localization or density alone cannot prove the requested stage.

## Typed heat, coding and target return

The inventory is a finite list of exact (prime, exponent, prime-power)
triples. Source proof data retain that list, chi3 table/parity, all
source revisions/declarations, physical/Fourier normalization, support
and strict cutoff proofs, every approximation and entire-tail law,
dependent binder context, certificates and separate evidence status.
Representable real/function parameters are source syntax or bound
variables, not finitely sampled arbitrary semantic L2 objects.

This list and its finite tagged context have the existing dependent
finite-description lossless instance: constructor tags and lengths
encode each field, decoding recursively reads exactly those fields.
Induction on the finite record/tree gives decode(encode x)=some x;
on the encoder image decodeImage(encode x)=x. The inventory itself
has an actual finite instance below. No discarded historical witness
is reconstructed by merely rerunning its recipe.

Heat here is exhaustive branch COVERAGE only: enumerate full typed
records by natural codes, retain invalid-code status, pi_n=2^(-n-1),
sum_(n>=J)pi_n=2^(-J). On l1 states Kx=(x+(sum x)pi)/2 has exact
source return x=2Kx-(sum Kx)pi. A full signed or absolute arithmetic
tail still needs its own bound; positive pi and decoding give no sign.
Actual spectral heat and any finite Euler sign test need their own
physical operator/domain and signed-source return, not this coverage.

If the requested radius4 bound is eventually proved, it supplies
exactly the j=3 entry of SmallConductorStages chi3 hp hn. The existing
DirichletStageChain.dirichletGRH_of_source_chains additionally consumes
the separate RH source, PrimitiveNegativeWitness and ALL remaining
primitive nonprincipal character stages, both parities and complex
sectors. The exact target is Conditional.DirichletGRH for every complex
Dirichlet character of every positive modulus, open-strip zeros on
Re(s)=1/2. Imprimitive return uses its nonzero inducing Euler factors;
the primitive principal sector is the actual zeta/RH specialization.
Neither this finite inventory nor one stage gives that cofinal family.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourInventory

/-- Fixed finite trial division; the cap hypothesis in its law is essential. -/
def primeTest (p : ℕ) : Bool :=
  decide (2 ≤ p) && (List.range 55).all
    (fun m => decide (m < 2 ∨ p ≤ m ∨ ¬m ∣ p))

theorem primeTest_iff (p : ℕ) (hcap : p < 3025) :
    primeTest p = true ↔ Nat.Prime p := by
  rw [primeTest, Bool.and_eq_true, decide_eq_true_eq, List.all_eq_true]
  constructor
  · rintro ⟨hp, htest⟩
    apply Nat.prime_def_le_sqrt.mpr
    refine ⟨hp, ?_⟩
    intro m hm hle
    have hs : Nat.sqrt p < 55 := Nat.sqrt_lt.mpr hcap
    have ht := of_decide_eq_true (htest m (List.mem_range.mpr (lt_of_le_of_lt hle hs)))
    rcases ht with h | h | h
    · omega
    · have hslt : Nat.sqrt p < p := Nat.sqrt_lt_self (by omega)
      omega
    · exact h
  · intro hp
    refine ⟨hp.two_le, ?_⟩
    intro m hm
    apply decide_eq_true
    by_cases hsmall : m < 2
    · exact Or.inl hsmall
    · by_cases hlarge : p ≤ m
      · exact Or.inr (Or.inl hlarge)
      · right; right
        intro hdiv
        rcases (Nat.dvd_prime hp).mp hdiv with h | h
        · omega
        · omega

/-- (prime, exponent, prime-power), complete up to the finite cap. -/
def inventory (cap : ℕ) : List (ℕ × ℕ × ℕ) :=
  (List.range (cap + 1)).flatMap fun p =>
    if primeTest p && decide (p ≠ 3) then
      (List.range 12).filterMap fun e =>
        if 0 < e ∧ p ^ e ≤ cap then some (p, e, p ^ e) else none
    else []

/-- This finite proof-data encoder retains each atom's three dependent source fields. -/
def encodeAtoms : List (ℕ × ℕ × ℕ) → List ℕ
  | [] => []
  | (p, e, n) :: xs => p :: e :: n :: encodeAtoms xs

def decodeAtoms : List ℕ → Option (List (ℕ × ℕ × ℕ))
  | [] => some []
  | p :: e :: n :: xs => (decodeAtoms xs).map ((p, e, n) :: ·)
  | _ => none

theorem atoms_roundtrip (xs : List (ℕ × ℕ × ℕ)) :
    decodeAtoms (encodeAtoms xs) = some xs := by
  induction xs with
  | nil => rfl
  | cons a xs ih =>
    rcases a with ⟨p, e, n⟩
    simp only [encodeAtoms, decodeAtoms, ih, Option.map_some]

theorem native_inventory_roundtrip :
    decodeAtoms (encodeAtoms (inventory 2980)) = some (inventory 2980) :=
  atoms_roundtrip _

theorem native_atom_count : (inventory 2980).length = 458 := by decide

theorem prime_atom_count :
    ((inventory 2980).filter (fun a => decide (a.2.1 = 1))).length = 428 := by decide

theorem higher_power_count :
    ((inventory 2980).filter (fun a => decide (1 < a.2.1))).length = 30 := by decide

theorem old_inventory_count : (inventory 403).length = 93 := by decide

theorem genuinely_new_count : 458 - 93 = (365 : ℕ) := by norm_num

theorem native_largest_atom :
    ((inventory 2980).map (fun a => a.2.2)).foldl Nat.max 0 = 2971 := by decide

theorem entire_prime_free_gap : inventory 2998 = inventory 2980 := by decide

theorem next_atom_is_prime : Nat.Prime 2999 ∧ 2999 % 3 = 2 := by norm_num

theorem exponent_tail_excluded : 2980 < (2 : ℕ) ^ 12 := by norm_num

theorem automatic_propagation_counterexample_margin :
    (3 / 40 : ℚ) < 6 / 21 ∧ (419 : ℕ) < 21 ^ 2 := by norm_num

end GRWTSK.NumberTheory.WeilQuadraticForm.ConductorThreeRadiusFourInventory
