/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# The honest local-points resolution and its quotient transition

For the ACTUAL group P=E(Q_v), the two-term complex
 P --[p^(n+1)]--> P (degrees 0,1)
is canonically quasi-isomorphic to the point-corrected cochain cone
in LocalPointKummerFiber via the genuine Kummer exact sequence.

Its H0 is the real local p-power torsion and its H1 is precisely
E(Q_v)/p^(n+1) E(Q_v). The transition from level n+1 to n
uses multiplication by p in degree zero and IDENTITY in degree one.
This is why H1 transitions are REDUCTION rather than multiplication
by p, even though the raw cochain cone transitions all geometric
and rational POINT COORDINATES by p.

This source algebra is generic over the literal additive point group;
its specialization to Tau Ceti actual W.toAffine.Point and the
comparison quasi-isomorphism must be separately verified.
-/

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.KummerPointResolution

variable {P : Type*} [AddCommGroup P]

/-- The genuine local-point multiplier [p^(n+1)]. -/
def localPointD (p n : ℕ) : P →+ P :=
  nsmulAddMonoidHom (p ^ (n + 1))

def localPointHZero (p n : ℕ) : AddSubgroup P :=
  (localPointD (P := P) p n).ker

abbrev localPointHOne (p n : ℕ) :=
  P ⧸ (localPointD (P := P) p n).range

/-- Exact chain commutation: [p^(n+1)] after multiplication by p
is the same as [p^(n+2)] before transition. -/
theorem point_differential_transition (p n : ℕ) (x : P) :
    localPointD (P := P) p n (p • x) =
      localPointD (P := P) p (n + 1) x := by
  change (p ^ (n + 1)) • (p • x) =
    (p ^ ((n + 1) + 1)) • x
  rw [← mul_nsmul, pow_succ]

/-- The quotient at level p^(n+2) maps to that at level p^(n+1)
without any assumption about arithmetic rank or p-divisibility. -/
theorem point_range_level_le (p n : ℕ) :
    (localPointD (P := P) p (n + 1)).range ≤
      (localPointD (P := P) p n).range := by
  rintro x ⟨y, rfl⟩
  refine ⟨p • y, ?_⟩
  exact point_differential_transition (P := P) p n y

/-- The actual canonical reduction on LOCAL POINT QUOTIENTS.
Its domain and target are the specified, not chosen, multipliers. -/
def pointQuotientReduction (p n : ℕ) :
    localPointHOne (P := P) p (n + 1) →+
      localPointHOne (P := P) p n :=
  QuotientAddGroup.lift
    (localPointD (P := P) p (n + 1)).range
    (QuotientAddGroup.mk' (localPointD (P := P) p n).range)
    (by
      intro x hx
      change QuotientAddGroup.mk'
        (localPointD (P := P) p n).range x = 0
      exact (QuotientAddGroup.eq_zero_iff x).mpr
        (point_range_level_le (P := P) p n hx))

/-- This is reduction of THE SAME local rational point, not p times
the local point class. -/
theorem pointQuotientReduction_mk (p n : ℕ) (x : P) :
    pointQuotientReduction (P := P) p n
      (QuotientAddGroup.mk'
        (localPointD (P := P) p (n + 1)).range x) =
      QuotientAddGroup.mk'
        (localPointD (P := P) p n).range x := by
  rfl

/-- Each level reduction is surjective. This is the Mittag--Leffler
input on the degree-one local point quotient tower. -/
theorem pointQuotientReduction_surjective (p n : ℕ) :
    Function.Surjective (pointQuotientReduction (P := P) p n) := by
  intro y
  obtain ⟨x, rfl⟩ :=
    QuotientAddGroup.mk'_surjective
      (localPointD (P := P) p n).range y
  exact ⟨QuotientAddGroup.mk'
    (localPointD (P := P) p (n + 1)).range x, rfl⟩

/-- The local H0 condition is EXACT p-power torsion, not an
arbitrary finite-dimensional spectral kernel. -/
theorem localPointHZero_iff (p n : ℕ) (x : P) :
    x ∈ localPointHZero (P := P) p n ↔
      p ^ (n + 1) • x = 0 := by
  simp [localPointHZero, localPointD,
    AddMonoidHom.mem_ker, nsmulAddMonoidHom_apply]

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.KummerPointResolution
