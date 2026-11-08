/- Copyright (c) 2026 grwtsk contributors. MIT.
ISOLATED_UPSTREAM_SOURCE_PROOF_CANDIDATE /
PARSING_NOT_RUN / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.

The Tau Ceti contributors: original upstream proofs, Apache-2.0.
TauCetiProject/TauCeti @ 2bdb755239d3bd84760e99bc83166bdf7cc75a6b
Lean v4.36.0-rc1; NOT a grwtsk/math v4.34.1 root import.
-/
import TauCeti.NumberTheory.ClassFieldTheory.Local.Duality.Perfect
import TauCeti.NumberTheory.ClassFieldTheory.Brauer.RootsOfUnity

set_option autoImplicit false
noncomputable section

/-!
# Local Tate duality with the ACTUAL normalized Brauer invariant

The existing upstream theorem tateDualityPairing_perfect_mixed
already proves local Tate-duality perfectness for EVERY finite smooth
discrete ZMod n Galois representation in mixed characteristic.
It takes a trace identification as an argument. We specialize it
to the already-constructed h2MuEquivZMod, whose normalization is
Brauer invariant k/n -> residue k (not a freely assigned trace).

This is a genuine unconditional ARITHMETIC consumer of two upstream
theorems, for the exact GalRep n F coefficient object passed in.
It is NOT YET an elliptic E[n] specialization: that requires an
actual representation GalRep n F built from W.TorsionCoeff n,
its source Galois action transported across the separable/algebraic
closure equivalence, a comparison of Weil pairing with tateDual,
and orthogonality of the actual Kummer local-condition subgroups.

Do not conflate local perfectness with those outstanding comparisons,
global Poitou--Tate, compact/discrete derived limits, or BSD.
-/

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.NormalizedLocalTate

open TauCeti.ClassFieldTheory

variable (F : Type) [Field F] [CharZero F]
  [ValuativeRel F] [TopologicalSpace F] [IsNonarchimedeanLocalField F]
  (n : ℕ) (hn : n ≠ 0)

/-- The ORIGINAL class-field-theoretic trace H²(F,mu_n) ≃ ZMod n,
normalized through the real Brauer invariant, not chosen to fit an
arithmetic determinant. -/
def normalizedTrace :
    continuousCohomology 2 (muNRep n F) ≃+ ZMod n :=
  h2MuEquivZMod F (Nat.cast_ne_zero.mpr hn).isUnit

/-- Explicit arithmetic normalization: the class whose local
Brauer invariant is k/n is sent to residue k. -/
theorem normalizedTrace_toRatAddCircle
    (x : continuousCohomology 2 (muNRep n F)) :
    ZMod.toRatAddCircle n (normalizedTrace F n hn x) =
      invMap F (h2MuToBr n F x) := by
  exact toRatAddCircle_h2MuEquivZMod F
    (Nat.cast_ne_zero.mpr hn).isUnit x

/-- Unconditional local Tate perfectness for the ORIGINAL smooth
finite GalRep n F, with the canonical normalized trace. The
elliptic coefficient comparison is NOT a premise silently built in:
a future consumer must construct it. -/
theorem normalized_localTate_perfect
    (A : GalRep n F) (hA : Finite A.V)
    [DiscreteTopology A.V] [Fact (IsSmoothDiscrete (ZMod n) A)]
    (i j : ℕ) (hij : i + j = 2) :
    (∀ x : continuousCohomology i (tateDual A),
        (∀ y : continuousCohomology j A,
          tateDualityPairing A (normalizedTrace F n hn)
            i j hij x y = 0) → x = 0) ∧
      ∀ φ : continuousCohomology j A →+ ZMod n,
        ∃ x : continuousCohomology i (tateDual A),
          ∀ y : continuousCohomology j A,
            tateDualityPairing A (normalizedTrace F n hn)
              i j hij x y = φ y := by
  exact tateDualityPairing_perfect_mixed F n hn A
    (normalizedTrace F n hn) hA i j hij

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.NormalizedLocalTate
