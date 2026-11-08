/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors.

SOURCE_PROOF_CANDIDATE / LEAN_ELABORATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN /
INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilCyclotomicFullWindowReturn
import Mathlib.Data.Nat.Factorization.PrimePow
import Mathlib.Tactic

/-!
# Canonical prime-power witnesses for the actual unramified Weil support

Start with the ORIGINAL finite source:
LowSchur.activePrimePowers T and the exact support restriction
CyclotomicFullWindowReturn.activeUnramifiedPrimePowers T.

For each actual integer index n in this support, Mathlib proves
  n.minFac ^ n.factorization n.minFac = n
whenever IsPrimePow n. The distinguished prime is n.minFac and the
positive exponent is n.factorization n.minFac. These ARE the canonical
prime/exponent data; no arbitrary witness, residue-only decoding, or
choice of a favorable subset is made.

ZMod.isUnit_iff_coprime turns the original unramified membership into
Nat.Coprime n q, and its divisor-closure transports the coprimality
to n.minFac. The resulting UnramifiedPrimePower q is therefore an
actual inhabitant of the existing CyclotomicFrobeniusPrimeBridge API.

The canonical tag's index equals n. The original source
pairedPrimeWeight χ n equals its genuine cyclotomic Frobenius
weight. For a fixed χ, T and every complete finite support index,
all signed factors and the original sine logarithmic translation
are returned. The full pairedPrimeResponse and the complete
primitivePairSineMatrix entry consume the same original indexed
sum, now with the canonical Frobenius coefficient. Multiplicities
are not introduced or dropped by an image map: summation remains
on the exact ORIGINAL Finset of natural source indices.

Uniqueness is substantive: any admissible prime/exponent tag with
the same original integer index has the same prime and exponent.
This is Mathlib prime-power uniqueness, not a claim that Frobenius
residues or individual character values determine prime labels.
For example, primes 2 and 7 share a residue mod 5 but differ in
their natural index and logarithmic shift.

The full gamma, conductor, parity and pole terms are UNCHANGED.
This arithmetic reconstruction proves no positivity, spectral
coercivity, full-form sign, cofinal stage lower bound, or RH/GRH.
No mathematical novelty is claimed for the standard unique
factorization; its typed consumption by the literal Weil source
is the local mathematical increment.

Sources: Connes--Consani--Moscovici, Zeta Spectral Triples,
arXiv:2511.22755v1, (3.19)--(3.20). Mathlib
IsPrimePow.minFac_pow_factorization_eq, Nat.factorization_minFac_ne_zero,
Nat.minFac_prime, Nat.pow_right_injective and
ZMod.isUnit_iff_coprime. Exact GRWTSK source read at the task pin;
no native Lean, kernel or independent analytical review performed.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.CyclotomicCanonicalWitness

open GRWTSK.NumberTheory.WeilQuadraticForm.LowSchur
open GRWTSK.NumberTheory.WeilQuadraticForm.OddRootProjection
open GRWTSK.NumberTheory.WeilQuadraticForm.CyclotomicFullWindowReturn
open GRWTSK.NumberTheory.WeilQuadraticForm.CyclotomicFrobeniusPrimeBridge

variable {q : ℕ} [NeZero q]

/-- The canonical prime is the unique prime divisor of an actual prime-power
index; it is not the residue of the prime modulo the conductor. -/
def canonicalPrime (n : ℕ) : ℕ := n.minFac

/-- The canonical positive exponent is the valuation of the original index
at its distinguished prime factor. -/
def canonicalExponent (n : ℕ) : ℕ :=
  n.factorization n.minFac

/-- For every prime-power source index these canonical data multiply
back to the exact original integer, not merely an equivalent residue. -/
theorem canonical_pow_eq_index (n : ℕ) (hn : IsPrimePow n) :
    canonicalPrime n ^ canonicalExponent n = n := by
  exact hn.minFac_pow_factorization_eq

theorem canonical_prime_is_prime (n : ℕ) (hn : IsPrimePow n) :
    Nat.Prime (canonicalPrime n) := by
  exact Nat.minFac_prime hn.ne_one

theorem canonical_exponent_pos (n : ℕ) (hn : IsPrimePow n) :
    0 < canonicalExponent n := by
  exact Nat.pos_of_ne_zero (Nat.factorization_minFac_ne_zero hn.one_lt)

/-- The canonical exponent is the one forced by unique factorization.
The bound 2 ≤ p makes the map k ↦ p^k injective. -/
theorem canonical_exponent_unique (n k : ℕ) (hn : IsPrimePow n)
    (hk : canonicalPrime n ^ k = n) :
    k = canonicalExponent n := by
  apply Nat.pow_right_injective
    (canonical_prime_is_prime n hn).two_le
  exact hk.trans (canonical_pow_eq_index n hn).symm

/-- Canonical actual prime-power tag for each member of the ORIGINAL
unramified source support. No arbitrary choice is needed. -/
noncomputable def canonicalTag (T : ℝ) (n : ℕ)
    (hn : n ∈ activeUnramifiedPrimePowers (q := q) T) :
    UnramifiedPrimePower q := by
  have hs := (mem_activeUnramifiedPrimePowers_iff (q := q) T n).mp hn
  have hpp : IsPrimePow n := hs.2.1
  have hunit : IsUnit (n : ZMod q) := hs.2.2
  have hcop : Nat.Coprime n q := (ZMod.isUnit_iff_coprime n q).mp hunit
  have hpow : n.minFac ^ n.factorization n.minFac = n :=
    hpp.minFac_pow_factorization_eq
  have hk : 0 < n.factorization n.minFac :=
    Nat.pos_of_ne_zero (Nat.factorization_minFac_ne_zero hpp.one_lt)
  have hdiv : n.minFac ∣ n := by
    rw [← hpow]
    exact dvd_pow_self _ hk.ne'
  exact {
    prime := n.minFac
    exponent := n.factorization n.minFac
    prime_prime := Nat.minFac_prime hpp.ne_one
    exponent_pos := hk
    coprime := hcop.of_dvd_left hdiv
  }

/-- The canonical tag recovers precisely the original source index. -/
theorem canonicalTag_index (T : ℝ) (n : ℕ)
    (hn : n ∈ activeUnramifiedPrimePowers (q := q) T) :
    (canonicalTag (q := q) T n hn).index = n := by
  have hs := (mem_activeUnramifiedPrimePowers_iff (q := q) T n).mp hn
  change n.minFac ^ n.factorization n.minFac = n
  exact hs.2.1.minFac_pow_factorization_eq

/-- Any source-faithful prime-power tag with the same original integer
index necessarily has the same prime, not merely the same residue. -/
theorem tag_prime_unique (n : ℕ) (tag : UnramifiedPrimePower q)
    (hindex : tag.index = n) :
    tag.prime = n.minFac := by
  calc
    tag.prime = (tag.prime ^ tag.exponent).minFac :=
      (tag.prime_prime.pow_minFac tag.exponent_pos.ne').symm
    _ = n.minFac := by
      rw [← hindex]
      rfl

/-- And it has the same exponent: a *canonical* decoder, not a
set-theoretic arbitrary witness. -/
theorem tag_exponent_unique (n : ℕ) (tag : UnramifiedPrimePower q)
    (hindex : tag.index = n) :
    tag.exponent = n.factorization n.minFac := by
  have hpp : IsPrimePow n := by
    have h : tag.prime ^ tag.exponent = n := hindex
    exact (isPrimePow_nat_iff n).mpr
      ⟨tag.prime, tag.exponent, tag.prime_prime, tag.exponent_pos, h⟩
  have hp := tag_prime_unique n tag hindex
  have hpow : n.minFac ^ tag.exponent = n.minFac ^ n.factorization n.minFac := by
    calc
      n.minFac ^ tag.exponent = tag.prime ^ tag.exponent := by rw [hp]
      _ = n := hindex
      _ = n.minFac ^ n.factorization n.minFac :=
        hpp.minFac_pow_factorization_eq.symm
  exact Nat.pow_right_injective (Nat.minFac_prime hpp.ne_one).two_le hpow

/-- Exact pair of uniquely recovered prime and exponent, for any compatible
tag with the same natural-number source index. -/
theorem tag_prime_exponent_unique (n : ℕ) (tag : UnramifiedPrimePower q)
    (hindex : tag.index = n) :
    tag.prime = canonicalPrime n ∧
      tag.exponent = canonicalExponent n :=
  ⟨tag_prime_unique n tag hindex, tag_exponent_unique n tag hindex⟩

/-- A total real-valued source readout on natural-number indices.
Outside the original active unramified set it is zero by definition.
Inside it uses the distinguished actual Frobenius tag. -/
noncomputable def canonicalFrobeniusWeight
    (χ : DirichletCharacter ℂ q) (T : ℝ) (n : ℕ) : ℝ :=
  if hn : n ∈ activeUnramifiedPrimePowers (q := q) T then
    (canonicalTag (q := q) T n hn).frobeniusWeight χ
  else 0

/-- At every active support index, the canonical readout is exactly
the ORIGINAL signed coefficient, not its magnitude or a positive model. -/
theorem canonicalFrobeniusWeight_eq_source
    (χ : DirichletCharacter ℂ q) (T : ℝ) (n : ℕ)
    (hn : n ∈ activeUnramifiedPrimePowers (q := q) T) :
    canonicalFrobeniusWeight χ T n = pairedPrimeWeight χ n := by
  rw [canonicalFrobeniusWeight, dif_pos hn]
  calc
    (canonicalTag (q := q) T n hn).frobeniusWeight χ =
        (canonicalTag (q := q) T n hn).sourceWeight χ :=
      (UnramifiedPrimePower.sourceWeight_eq_frobeniusWeight χ _).symm
    _ = pairedPrimeWeight χ n := by
      simp only [UnramifiedPrimePower.sourceWeight, canonicalTag_index]

/-- The complete original finite real paired prime response now consumes
a canonical Frobenius weight at every contributing source index. -/
theorem pairedPrimeResponse_canonical_frobenius
    (χ : DirichletCharacter ℂ q) (T : ℝ) (c : ℕ → ℝ) :
    pairedPrimeResponse χ T (fun n => (c n : ℂ)) =
      2 * ∑ n ∈ activeUnramifiedPrimePowers (q := q) T,
        canonicalFrobeniusWeight χ T n * c n := by
  calc
    _ = 2 * ∑ n ∈ activeUnramifiedPrimePowers (q := q) T,
        pairedPrimeWeight χ n * c n := by
          simpa only [Complex.ofReal_re] using
            pairedPrimeResponse_unramified χ T (fun n => (c n : ℂ))
    _ = _ := by
      congr 1
      apply Finset.sum_congr rfl
      intro n hn
      rw [canonicalFrobeniusWeight_eq_source χ T n hn]

/-- Full entry of the ACTUAL primitive nonprincipal sine matrix. The
original conductor, gamma parity and archimedean integral are untouched.
Only the arithmetic coefficient is read via its canonical Frobenius tag. -/
theorem primitivePairSineMatrix_canonical_frobenius
    (χ : DirichletCharacter ℂ q)
    (hprimitive : χ.IsPrimitive) (hnonprincipal : χ ≠ 1)
    (T : ℝ) (M : ℕ) (i j : Fin M) :
    primitivePairSineMatrix χ hprimitive hnonprincipal T M i j =
      sineArchimedeanEntry T (gammaConstant q (gammaParity χ))
        (gammaParity χ) (i.val + 1) (j.val + 1) -
      ∑ n ∈ activeUnramifiedPrimePowers (q := q) T,
        canonicalFrobeniusWeight χ T n *
          sineShiftEntry T (i.val + 1) (j.val + 1)
            (Real.log (n : ℝ)) := by
  calc
    _ = sineArchimedeanEntry T (gammaConstant q (gammaParity χ))
        (gammaParity χ) (i.val + 1) (j.val + 1) -
      ∑ n ∈ activeUnramifiedPrimePowers (q := q) T,
        pairedPrimeWeight χ n *
          sineShiftEntry T (i.val + 1) (j.val + 1)
            (Real.log (n : ℝ)) :=
      primitivePairSineMatrix_unramified χ hprimitive hnonprincipal T M i j
    _ = _ := by
      congr 1
      apply Finset.sum_congr rfl
      intro n hn
      rw [canonicalFrobeniusWeight_eq_source χ T n hn]

end GRWTSK.NumberTheory.WeilQuadraticForm.CyclotomicCanonicalWitness
