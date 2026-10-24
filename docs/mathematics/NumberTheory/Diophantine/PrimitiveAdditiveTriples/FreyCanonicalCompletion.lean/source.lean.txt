/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses Mathlib AdicCompletion and its algebraic universal property (Apache-2.0).
Formalization assistance: OpenAI.

Comparison of the explicit jet inverse limit with Mathlib's AdicCompletion of
the actual affine coordinate ring along the selected section ideal. The N+1
index and the zeroth canonical quotient are retained. No topology, scheme
stalk, arithmetic coefficient completion, metric bound or ABC proof is claimed.
These are unelaborated source proof scripts.
-/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyAdicQuotients
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyJetCompletion
import Mathlib.RingTheory.AdicCompletion.Algebra

set_option autoImplicit false

noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCanonicalCompletion

open FreyJetQuotient FreyAdicQuotients

variable {R : Type*} [CommRing R]

/-- The library type itself, not a renaming of the previously constructed limit. -/
abbrev Canonical (a b r : R) := AdicCompletion (curveSectionIdeal a b r) (Coordinate a b)

/-- The canonical n-th power quotient, restricted to the original coefficient algebra. -/
def canonicalProjection (a b r : R) (n : ℕ) :
    Canonical a b r →ₐ[R] PowerQuotient a b r n :=
  (AdicCompletion.evalₐ (curveSectionIdeal a b r) n).restrictScalars R

/-- Canonical completion projections satisfy the actual ideal-power transition law. -/
theorem canonicalProjection_transition (a b r : R) (m n : ℕ) (hmn : m ≤ n)
    (u : Canonical a b r) :
    transition a b r m n hmn (canonicalProjection a b r n u) =
      canonicalProjection a b r m u := by
  obtain ⟨s, rfl⟩ := AdicCompletion.mk_surjective (curveSectionIdeal a b r) (Coordinate a b) u
  change transition a b r m n hmn
      (AdicCompletion.evalₐ (curveSectionIdeal a b r) n (AdicCompletion.mk _ _ s)) =
    AdicCompletion.evalₐ (curveSectionIdeal a b r) m (AdicCompletion.mk _ _ s)
  rw [AdicCompletion.evalₐ_mk, AdicCompletion.evalₐ_mk, transition_mk]
  exact AdicCompletion.Ideal.mk_eq_mk (curveSectionIdeal a b r) hmn s

/-- Convert canonical exponent N+1 to the existing order-N section jet. -/
def toLimit (a b r : R) : Canonical a b r →ₐ[R] FreyJetCompletion.Limit a b r :=
  FreyJetCompletion.lift a b r
    (fun N => (finiteEquiv a b r N).toAlgHom.comp (canonicalProjection a b r (N + 1)))
    (by
      intro M N hMN u
      change truncate a b r M N hMN
          (finiteEquiv a b r N (canonicalProjection a b r (N + 1) u)) =
        finiteEquiv a b r M (canonicalProjection a b r (M + 1) u)
      rw [← finiteEquiv_transition, canonicalProjection_transition])

@[simp] theorem toLimit_projection (a b r : R) (N : ℕ) (u : Canonical a b r) :
    FreyJetCompletion.projection a b r N (toLimit a b r u) =
      finiteEquiv a b r N (canonicalProjection a b r (N + 1) u) := rfl

/-- Recover every canonical exponent n from order n, then truncate once.
This treats n=0 without equating its zero ring with the order-zero jet. -/
def returnLevel (a b r : R) (n : ℕ) :
    FreyJetCompletion.Limit a b r →ₐ[R] PowerQuotient a b r n :=
  (transition a b r n (n + 1) (Nat.le_succ n)).comp
    ((finiteEquiv a b r n).symm.toAlgHom.comp (FreyJetCompletion.projection a b r n))

/-- Recovery of canonical levels is compatible for all m<=n, including m=0. -/
theorem returnLevel_compatible (a b r : R) {m n : ℕ} (hmn : m ≤ n) :
    (transition a b r m n hmn).comp (returnLevel a b r n) = returnLevel a b r m := by
  apply AlgHom.ext
  intro u
  change transition a b r m n hmn
      (transition a b r n (n + 1) (Nat.le_succ n) ((finiteEquiv a b r n).symm (u.val n))) =
    transition a b r m (m + 1) (Nat.le_succ m) ((finiteEquiv a b r m).symm (u.val m))
  calc
    _ = transition a b r m (n + 1) (hmn.trans (Nat.le_succ n))
        ((finiteEquiv a b r n).symm (u.val n)) :=
      DFunLike.congr_fun (transition_comp a b r m n (n + 1) hmn (Nat.le_succ n)) _
    _ = transition a b r m (m + 1) (Nat.le_succ m)
        (transition a b r (m + 1) (n + 1) (Nat.succ_le_succ hmn)
          ((finiteEquiv a b r n).symm (u.val n))) :=
      (DFunLike.congr_fun (transition_comp a b r m (m + 1) (n + 1)
        (Nat.le_succ m) (Nat.succ_le_succ hmn)) _).symm
    _ = _ := by rw [finiteEquiv_symm_transition, u.property m n hmn]

/-- At a positive exponent, recovery uses exactly the preceding jet order. -/
theorem returnLevel_succ (a b r : R) (N : ℕ) (u : FreyJetCompletion.Limit a b r) :
    returnLevel a b r (N + 1) u = (finiteEquiv a b r N).symm (u.val N) := by
  change transition a b r (N + 1) (N + 1 + 1) (Nat.le_succ (N + 1))
      ((finiteEquiv a b r (N + 1)).symm (u.val (N + 1))) = _
  rw [finiteEquiv_symm_transition a b r N (N + 1) (Nat.le_succ N),
    u.property N (N + 1) (Nat.le_succ N)]

/-- Construct the inverse using the library's universal map, not chosen representatives. -/
def fromLimit (a b r : R) : FreyJetCompletion.Limit a b r →ₐ[R] Canonical a b r :=
  AdicCompletion.liftAlgHom (curveSectionIdeal a b r) (returnLevel a b r)
    (by intro m n hmn; exact returnLevel_compatible a b r hmn)

@[simp] theorem fromLimit_projection (a b r : R) (n : ℕ)
    (u : FreyJetCompletion.Limit a b r) :
    canonicalProjection a b r n (fromLimit a b r u) = returnLevel a b r n u :=
  AdicCompletion.evalₐ_liftAlgHom (curveSectionIdeal a b r) (returnLevel a b r)
    (by intro m n hmn; exact returnLevel_compatible a b r hmn) n u

/-- First inverse identity, proved at every complete order-N quotient. -/
theorem toLimit_fromLimit (a b r : R) (u : FreyJetCompletion.Limit a b r) :
    toLimit a b r (fromLimit a b r u) = u := by
  apply FreyJetCompletion.limit_ext a b r
  intro N
  rw [toLimit_projection, fromLimit_projection, returnLevel_succ, AlgEquiv.apply_symm_apply] <;> rfl

/-- Second inverse identity, including the canonical zeroth ideal-power quotient. -/
theorem fromLimit_toLimit (a b r : R) (u : Canonical a b r) :
    fromLimit a b r (toLimit a b r u) = u := by
  apply AdicCompletion.ext_evalₐ
  intro n
  change canonicalProjection a b r n (fromLimit a b r (toLimit a b r u)) =
    canonicalProjection a b r n u
  rw [fromLimit_projection]
  change transition a b r n (n + 1) (Nat.le_succ n)
      ((finiteEquiv a b r n).symm
        (finiteEquiv a b r n (canonicalProjection a b r (n + 1) u))) = _
  rw [AlgEquiv.symm_apply_apply]
  exact canonicalProjection_transition a b r n (n + 1) (Nat.le_succ n) u

/-- The comparison with canonical AdicCompletion needs no smooth-root assumption. -/
def adicLimitEquiv (a b r : R) : Canonical a b r ≃ₐ[R] FreyJetCompletion.Limit a b r where
  toFun := toLimit a b r
  invFun := fromLimit a b r
  left_inv := fromLimit_toLimit a b r
  right_inv := toLimit_fromLimit a b r
  map_mul' := (toLimit a b r).map_mul
  map_add' := (toLimit a b r).map_add
  commutes' := (toLimit a b r).commutes

/-- The canonical map out of the original affine ring retains polynomial representatives. -/
theorem toLimit_of_coordinate (a b r : R) (N : ℕ) (p : Plane R) :
    FreyJetCompletion.projection a b r N
      (toLimit a b r (AdicCompletion.of (curveSectionIdeal a b r) (Coordinate a b) (coordinateMap a b p))) =
        quotientMap a b r N p := by
  rw [toLimit_projection]
  change finiteEquiv a b r N
      (AdicCompletion.evalₐ (curveSectionIdeal a b r) (N + 1)
        (AdicCompletion.of (curveSectionIdeal a b r) (Coordinate a b) (coordinateMap a b p))) = _
  rw [AdicCompletion.evalₐ_of, finiteEquiv_mk]

/-- The actual library completion is formal series at the selected unit-Jacobian root.
The coefficient ring is unchanged; this is an algebra equivalence, not a topology theorem. -/
def adicSeriesEquiv (a b r j : R)
    (hr : r * (r - a) * (r + b) = 0) (hj : derivative a b r * j = 1) :
    Canonical a b r ≃ₐ[R] PowerSeries R :=
  (adicLimitEquiv a b r).trans (FreyJetCompletion.completionEquiv a b r j hr hj)

/-- Every canonical finite shadow agrees with the existing finite parameter comparison. -/
theorem adicSeries_projection (a b r j : R)
    (hr : r * (r - a) * (r + b) = 0) (hj : derivative a b r * j = 1)
    (N : ℕ) (u : Canonical a b r) :
    FreyParameterSeries.seriesTrunc N (adicSeriesEquiv a b r j hr hj u) =
      algebraEquiv a b r j hr hj N
        (finiteEquiv a b r N (canonicalProjection a b r (N + 1) u)) :=
  FreyJetCompletion.completion_projection a b r j hr hj N (toLimit a b r u)

/-- The canonical finite kernel matches the exact parameter-adic filtration. -/
theorem adicSeries_filtration (a b r j : R)
    (hr : r * (r - a) * (r + b) = 0) (hj : derivative a b r * j = 1)
    (N : ℕ) (u : Canonical a b r) :
    canonicalProjection a b r (N + 1) u = 0 ↔
      (PowerSeries.X : PowerSeries R) ^ (N + 1) ∣ adicSeriesEquiv a b r j hr hj u := by
  rw [← FreyParameterSeries.seriesTrunc_eq_zero_iff, adicSeries_projection]
  constructor
  · intro h
    rw [h, map_zero, map_zero]
  · intro h
    apply (finiteEquiv a b r N).injective
    apply (algebraEquiv a b r j hr hj N).injective
    simpa only [map_zero] using h

/-- The completed image of the original affine Y coordinate is the formal parameter. -/
theorem adicSeries_y (a b r j : R)
    (hr : r * (r - a) * (r + b) = 0) (hj : derivative a b r * j = 1) :
    adicSeriesEquiv a b r j hr hj
      (AdicCompletion.of (curveSectionIdeal a b r) (Coordinate a b)
        (coordinateMap a b (MvPolynomial.X 1))) = PowerSeries.X := by
  have hy : toLimit a b r
      (AdicCompletion.of (curveSectionIdeal a b r) (Coordinate a b)
        (coordinateMap a b (MvPolynomial.X 1))) = FreyJetCompletion.yCoordinate a b r := by
    apply FreyJetCompletion.limit_ext a b r
    intro N
    exact toLimit_of_coordinate a b r N (MvPolynomial.X 1)
  change FreyJetCompletion.completionEquiv a b r j hr hj
    (toLimit a b r (AdicCompletion.of (curveSectionIdeal a b r) (Coordinate a b)
      (coordinateMap a b (MvPolynomial.X 1)))) = PowerSeries.X
  rw [hy]
  exact FreyJetCompletion.completion_y a b r j hr hj

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCanonicalCompletion

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

/-- Canonical library completion along the SAME selected section over S_i=Z[1/d_i]. -/
abbrev FreyCanonicalSectionCompletion (t : PrimitiveAdditiveTriple) (i : Fin 3) :=
  FreyCanonicalCompletion.Canonical (t.a : FreyJetChart t i) (t.b : FreyJetChart t i)
    (algebraMap ℤ (FreyJetChart t i) (t.freyPortRootInt i))

/-- The localized inverse Jacobian supplies the exact hypothesis of the comparison. -/
def PrimitiveAdditiveTriple.freyCanonicalSectionCompletionEquiv
    (t : PrimitiveAdditiveTriple) (i : Fin 3) :
    FreyCanonicalSectionCompletion t i ≃ₐ[FreyJetChart t i] PowerSeries (FreyJetChart t i) :=
  FreyCanonicalCompletion.adicSeriesEquiv _ _ _ (t.freyChartInverse i)
    (t.freySectionJet_root i) (t.freySectionJet_inverse i)

/-- The canonical comparison factors through the PREVIOUS completion equivalence.
No replacement formal series, rational coefficient ring or source anchor is introduced. -/
theorem PrimitiveAdditiveTriple.freyCanonicalSectionCompletion_agrees
    (t : PrimitiveAdditiveTriple) (i : Fin 3) (u : FreyCanonicalSectionCompletion t i) :
    t.freyCanonicalSectionCompletionEquiv i u =
      t.freySectionCompletionEquiv i
        (FreyCanonicalCompletion.toLimit (t.a : FreyJetChart t i) (t.b : FreyJetChart t i)
          (algebraMap ℤ (FreyJetChart t i) (t.freyPortRootInt i)) u) := rfl

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
