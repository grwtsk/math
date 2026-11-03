/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Exact finite Selmer cardinal accounting, with the Sha defect intact

The TRUE elliptic m-Selmer exact sequence is
  0 -> E(K)/m E(K) -> Sel_m(E/K) -> Sha(E/K)[m] -> 0.
The actual Kummer map, its injectivity, exactness and the Sha quotient
are supplied in Tau Ceti's GaloisCohomology/Selmer/Basic.lean at
source commit 041e4b26b134b0b92a1f69dea2c4e744bba37b8e.

This file proves the finite-group cardinal identity from the EXACT
maps, not from an assigned rank or an abstract sequence of numbers.
The elliptic maps remain external theorem inputs until their newer
Lean v4.36.0-rc1 source can be reconciled with local Lean v4.34.1.

For a genuine prime p, the Mordell--Weil decomposition gives
  |E(Q)/pE(Q)| = p^r * |E(Q)[p]|,
where r is the actual algebraic rank. Combining the two equalities:
  |Sel_p(E/Q)| = p^r * |E(Q)[p]| * |Sha(E/Q)[p]|.
No full Sha finiteness, complex L-zero multiplicity, analytic BSD,
real-height factorization through a finite quotient or p-adic-to-
complex field identification is asserted.

Hostile controls: nonzero Sha[p] can inflate the Selmer dimension;
a finite 2-Selmer upper bound is NOT a proof of equality of BSD ranks.
-/

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.SelmerExactCard

variable {MWq Sel ShaTor : Type*}
variable [AddCommGroup MWq] [AddCommGroup Sel] [AddCommGroup ShaTor]

/-- The actual right-exact Selmer cardinal accounting. No numerical
rank or torsion cardinality is smuggled into this statement. -/
theorem card_of_genuine_short_exact
    (kummer : MWq →+ Sel) (toSha : Sel →+ ShaTor)
    (hinj : Function.Injective kummer)
    (hexact : kummer.range = toSha.ker)
    (hsurj : Function.Surjective toSha) :
    Nat.card Sel = Nat.card MWq * Nat.card ShaTor := by
  have hker : Nat.card toSha.ker = Nat.card MWq := by
    rw [← hexact]
    exact (Nat.card_congr (Equiv.ofInjective kummer hinj)).symm
  have hindex : toSha.ker.index = Nat.card ShaTor := by
    change Nat.card (Sel ⧸ toSha.ker) = Nat.card ShaTor
    exact Nat.card_congr
      (QuotientAddGroup.quotientKerEquivOfSurjective toSha hsurj).toEquiv
  calc
    Nat.card Sel = Nat.card toSha.ker * toSha.ker.index :=
      (AddSubgroup.card_mul_index toSha.ker).symm
    _ = Nat.card MWq * Nat.card ShaTor := by rw [hker, hindex]

/-- The actual free rank-r residue packet has p^r elements.
The rank r only becomes E(Q)'s rank after supplying its genuine
Mordell--Weil decomposition, not by labeling it so. -/
theorem card_free_residue_packet (p r : ℕ) [NeZero p] :
    Nat.card (Fin r → ZMod p) = p ^ r := by
  rw [Nat.card_fun, Nat.card_zmod]
  simp

variable {Tor : Type*} [AddCommGroup Tor]

/-- Rank-and-torsion decomposition is an explicit *arithmetic input*:
MWq is the actual quotient E(Q)/pE(Q), and Tor is E(Q)[p].
No claim is made that a chosen abstract group models the elliptic curve.
-/
theorem card_exact_of_rank_torsion_decomposition
    (p r : ℕ) [NeZero p] [Finite Tor]
    (kummer : MWq →+ Sel) (toSha : Sel →+ ShaTor)
    (hinj : Function.Injective kummer)
    (hexact : kummer.range = toSha.ker)
    (hsurj : Function.Surjective toSha)
    (sourceDecomposition :
      MWq ≃+ ((Fin r → ZMod p) × Tor)) :
    Nat.card Sel =
      p ^ r * Nat.card Tor * Nat.card ShaTor := by
  have hd : Nat.card MWq = p ^ r * Nat.card Tor := by
    calc
      Nat.card MWq = Nat.card ((Fin r → ZMod p) × Tor) :=
        Nat.card_congr sourceDecomposition.toEquiv
      _ = Nat.card (Fin r → ZMod p) * Nat.card Tor :=
        Nat.card_prod
      _ = p ^ r * Nat.card Tor := by
        rw [card_free_residue_packet]
  rw [card_of_genuine_short_exact kummer toSha hinj hexact hsurj,
      hd, mul_assoc]

/-- When the actual finite p-torsion of E(Q) is trivial, the Selmer
factor remaining beyond p^rank is EXACTLY the Sha[p] contribution. -/
theorem card_exact_of_no_rational_p_torsion
    (p r : ℕ) [NeZero p]
    (kummer : MWq →+ Sel) (toSha : Sel →+ ShaTor)
    (hinj : Function.Injective kummer)
    (hexact : kummer.range = toSha.ker)
    (hsurj : Function.Surjective toSha)
    (sourceDecomposition : MWq ≃+ (Fin r → ZMod p)) :
    Nat.card Sel = p ^ r * Nat.card ShaTor := by
  have hd : Nat.card MWq = p ^ r := by
    calc
      Nat.card MWq = Nat.card (Fin r → ZMod p) :=
        Nat.card_congr sourceDecomposition.toEquiv
      _ = p ^ r := card_free_residue_packet p r
  rw [card_of_genuine_short_exact kummer toSha hinj hexact hsurj, hd]

/-- A truly trivial Sha[p] factor eliminates just that defect; it
does not imply any complex L-function rank equality. -/
theorem card_exact_of_trivial_sha
    (kummer : MWq →+ Sel) (toSha : Sel →+ ShaTor)
    (hinj : Function.Injective kummer)
    (hexact : kummer.range = toSha.ker)
    (hsurj : Function.Surjective toSha)
    (hsha : Nat.card ShaTor = 1) :
    Nat.card Sel = Nat.card MWq := by
  rw [card_of_genuine_short_exact kummer toSha hinj hexact hsurj,
      hsha, mul_one]

/-- The algebraic rank factor divides the Selmer order, but this
alone never detects the unknown Sha obstruction. -/
theorem p_pow_rank_dvd_selmer
    (p r : ℕ) [NeZero p] [Finite Tor]
    (kummer : MWq →+ Sel) (toSha : Sel →+ ShaTor)
    (hinj : Function.Injective kummer)
    (hexact : kummer.range = toSha.ker)
    (hsurj : Function.Surjective toSha)
    (sourceDecomposition :
      MWq ≃+ ((Fin r → ZMod p) × Tor)) :
    p ^ r ∣ Nat.card Sel := by
  rw [card_exact_of_rank_torsion_decomposition p r kummer toSha
    hinj hexact hsurj sourceDecomposition]
  exact ⟨Nat.card Tor * Nat.card ShaTor, by ring⟩

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.SelmerExactCard
