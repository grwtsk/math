/- Copyright (c) 2026 grwtsk contributors. MIT.
ISOLATED_TAUCETI_SOURCE_PROOF_CANDIDATE /
LEAN_PARSING_NOT_RUN / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.

Original upstream mathematical and code authors: The Tau Ceti contributors,
Apache-2.0, TauCetiProject/TauCeti
@ 2bdb755239d3bd84760e99bc83166bdf7cc75a6b,
Lean v4.36.0-rc1. Not an import into grwtsk/math v4.34.1.
-/
import TauCeti.AlgebraicGeometry.EllipticCurve.GaloisCohomology.WeilPairing.Basic
import TauCeti.AlgebraicGeometry.EllipticCurve.GaloisCohomology.Descent
import TauCeti.RepresentationTheory.Homological.ContCohomology.Cup.Product
import TauCeti.RepresentationTheory.Homological.ContCohomology.Cup.Comparison

set_option autoImplicit false
noncomputable section

/-!
# The exact original E[n] Weil/Kummer cup as a continuous 2-cocycle

This file instantiates the ALREADY-PROVED original Tau Ceti
`ContCohomology.explicitCup11_mk` with the genuine source elliptic
Weil pairing and the original Kummer difference
    κ_Q(τ) = τ Q - Q,  n Q = P ∈ E(F).

For an actual E[n]-valued cocycle a, the resulting 2-cocycle is
    z_a,Q(σ,τ) = e_n(a_σ, σ(τ Q - Q)).
It is the precise finite-coefficient side of Fisher's local
Poincare/Kummer comparison, NOT a freely chosen bilinear form.

The next GEOMETRIC theorem must build a divisor/function
cocycle for the locally defined Poincare pairing and prove that
its difference from z_a,Q is a continuous 2-COBOUNDARY.
A theorem saying that the equality is true, or a chosen
local Tate pairing, is not substituted for that witness.
No BSD or local Weil--Chatelet vanishing conclusion follows.
-/

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.WeilCupKummerCocycle

open TauCeti TauCeti.ContCohomology

variable {F : Type*} [Field F] [DecidableEq F]
  (W : WeierstrassCurve F) [W.IsElliptic]
  (n : ℕ) (hn : IsUnit (n : F))

private abbrev G := AbsoluteGaloisGroup F
private abbrev A := W.TorsionCoeff n
private abbrev μ := KummerCoeff F n

/-- Original Galois-equivariant pairing of the actual n-torsion
over the separable closure. No chosen basis/Gram operator. -/
def sourceWeilBiadditive : A W n →+ A W n →+ μ (F := F) n :=
  W.torsionCoeffWeilPairing n hn

/-- Source Galois equivariance, with both twisted arguments
and all coefficient actions retained. -/
theorem sourceWeilBiadditive_equivariant
    (σ : G (F := F)) (a b : A W n) :
    sourceWeilBiadditive W n hn (σ • a) (σ • b) =
      σ • sourceWeilBiadditive W n hn a b := by
  exact W.torsionCoeffWeilPairing_smul n hn σ a b

/-- The ORIGINAL Weil pairing is skew: alternating in
the real elliptic source, not a property imposed on a
chosen matrix. When combined with source graded cup
commutativity in degree (1,1), the two minus signs
cancel in the local Weil H¹-cup orientation. -/
theorem sourceWeilBiadditive_skew
    (a b : A W n) :
    sourceWeilBiadditive W n hn a b =
      -sourceWeilBiadditive W n hn b a := by
  have h : sourceWeilBiadditive W n hn a b +
      sourceWeilBiadditive W n hn b a = 0 := by
    have hh := W.torsionCoeffWeilPairing_self n hn (a + b)
    simp only [map_add, AddMonoidHom.add_apply,
      W.torsionCoeffWeilPairing_self, zero_add, add_zero] at hh
    simpa [sourceWeilBiadditive, add_comm, add_left_comm, add_assoc] using hh
  exact (eq_neg_iff_add_eq_zero).2 h

/-- The original source Weil pairing on finite discrete
coefficient modules is jointly continuous. -/
theorem continuous_sourceWeilBiadditive :
    Continuous (fun ab : A W n × A W n =>
      sourceWeilBiadditive W n hn ab.1 ab.2) :=
  continuous_of_discreteTopology

/-- The ACTUAL explicit degree-(1,1) continuous Galois cup,
with the original elliptic Weil coefficients. -/
noncomputable def originalWeilCup :
    H1 (G (F := F)) (A W n) →+
      H1 (G (F := F)) (A W n) →+
        H2 (G (F := F)) (μ (F := F) n) :=
  explicitCup11 (G (F := F)) (A W n) (A W n) (μ (F := F) n)
    (sourceWeilBiadditive W n hn)
    (continuous_sourceWeilBiadditive W n hn)
    (sourceWeilBiadditive_equivariant W n hn)

/-- The ORIGINAL Kummer class of a point with n-division Q
is the class of the actual cocycle σ ↦ σQ-Q. -/
theorem originalKummerClass_eq_cocycle
    {P : W.toAffine.Point} {Q : W.PointCoeff}
    (hQ : n • Q = W.basePointCoeff P) :
    W.kummerMap n hn P =
      ((⟨W.kummerCocycle hQ, W.kummerCocycle_mem_Z1 hQ⟩ :
        Z1 (G (F := F)) (A W n)) : H1 (G (F := F)) (A W n)) := by
  exact W.kummerMap_eq_H1pi hQ

/-- The ORIGINAL e_n(a_σ,σ(τQ-Q)) is an ACTUAL continuous
two-cocycle, by the upstream explicitCup11 construction.
No new cohomology/cocycle axiom is added. -/
noncomputable def originalWeilCupKummerCocycle
    (a : Z1 (G (F := F)) (A W n))
    {P : W.toAffine.Point} {Q : W.PointCoeff}
    (hQ : n • Q = W.basePointCoeff P) :
    Z2 (G (F := F)) (μ (F := F) n) :=
  ⟨fun z : G (F := F) × G (F := F) =>
      sourceWeilBiadditive W n hn (a z.1)
        (z.1 • W.kummerCocycle hQ z.2),
    cup11_mem_Z2 (G (F := F)) (A W n) (A W n)
      (μ (F := F) n) (sourceWeilBiadditive W n hn)
      (continuous_sourceWeilBiadditive W n hn)
      (sourceWeilBiadditive_equivariant W n hn)
      a.property (W.kummerCocycle_mem_Z1 hQ)⟩

/-- This is the exact ORIGINAL signed inhomogeneous cocycle,
with no hidden inverse or cup-argument reversal. -/
theorem originalWeilCupKummerCocycle_apply
    (a : Z1 (G (F := F)) (A W n))
    {P : W.toAffine.Point} {Q : W.PointCoeff}
    (hQ : n • Q = W.basePointCoeff P)
    (σ τ : G (F := F)) :
    originalWeilCupKummerCocycle W n hn a hQ (σ,τ) =
      W.torsionCoeffWeilPairing n hn
        (a σ) (σ • (W.kummerCocycle hQ τ)) :=
  rfl

/-- Source-level return: the cohomology class of that exact
2-cocycle IS the original Weil cup of the original elliptic
H¹ class against the true rational-point Kummer map. -/
theorem originalWeilCup_kummer_eq_class
    (a : Z1 (G (F := F)) (A W n))
    {P : W.toAffine.Point} {Q : W.PointCoeff}
    (hQ : n • Q = W.basePointCoeff P) :
    originalWeilCup W n hn (a : H1 (G (F := F)) (A W n))
        (W.kummerMap n hn P) =
      (originalWeilCupKummerCocycle W n hn a hQ :
        H2 (G (F := F)) (μ (F := F) n)) := by
  rw [originalKummerClass_eq_cocycle W n hn hQ]
  simpa only [originalWeilCup, originalWeilCupKummerCocycle] using
    (explicitCup11_mk (G (F := F))
      (A W n) (A W n) (μ (F := F) n)
      (sourceWeilBiadditive W n hn)
      (continuous_sourceWeilBiadditive W n hn)
      (sourceWeilBiadditive_equivariant W n hn)
      a ⟨W.kummerCocycle hQ, W.kummerCocycle_mem_Z1 hQ⟩)

/-! ## Explicit independent divisor/Poincare COCYCLE certificate

Fisher's geometric calculation constructs a second genuine
two-cocycle from divisor evaluation, and a CONTINUOUS
one-cochain witnessing that its difference from the
above original Weil/Kummer cup is a coboundary. The source
theorem H2pi_eq_iff is exactly the cohomology quotient
criterion, including the required continuous primitive.

This certificate is NOT obtained by choosing the desired
abelian pairing: the witness must come from the actual
divisor/rational-function construction and must satisfy
the signed pointwise equation below.
-/

/-- Exact signed geometric certificate obligation:
give an actual continuous divisor-evaluation two-cocycle
and a continuous one-cochain whose d¹ is the difference
between the REAL Weil/Kummer cocycle and that divisor cocycle.
The equality of cohomology classes is then PROVED by the
source original H2pi_eq_iff, not assumed.

The geometric divisor cocycle and its witness have not
yet been constructed in Lean. This lemma only discharges
their genuine homological-algebra consequence. -/
theorem originalWeilCup_eq_divisorClass_of_continuousWitness
    (a : Z1 (G (F := F)) (A W n))
    {P : W.toAffine.Point} {Q : W.PointCoeff}
    (hQ : n • Q = W.basePointCoeff P)
    (divisorCocycle : Z2 (G (F := F)) (μ (F := F) n))
    (hwitness : ∃ t : G (F := F) → μ (F := F) n,
      Continuous t ∧ ∀ σ τ : G (F := F),
        σ • t τ - t (σ * τ) + t σ =
          originalWeilCupKummerCocycle W n hn a hQ (σ, τ) -
          divisorCocycle (σ, τ)) :
    originalWeilCup W n hn (a : H1 (G (F := F)) (A W n))
        (W.kummerMap n hn P) =
      (divisorCocycle : H2 (G (F := F)) (μ (F := F) n)) := by
  rw [originalWeilCup_kummer_eq_class W n hn a hQ]
  rw [H2pi_eq_iff]
  apply (mem_B2_iff').2
  obtain ⟨t, ht, htd⟩ := hwitness
  refine ⟨t, ht, ?_⟩
  intro σ τ
  simpa only [Pi.sub_apply] using htd σ τ

/-! The precise next arithmetic supplier is the geometric
divisor/rational-function coboundary witness in the
original characteristic-zero elliptic function field,
following Fisher §2.1, Proposition 2.1.

It must also establish the sign in Tate's original
(point,Weil--Chatelet-class) convention, where the
divisor-evaluation pairing includes a minus sign.
The finite and abelian pairings must not be conflated
prior to this geometric comparison. -/

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.WeilCupKummerCocycle
