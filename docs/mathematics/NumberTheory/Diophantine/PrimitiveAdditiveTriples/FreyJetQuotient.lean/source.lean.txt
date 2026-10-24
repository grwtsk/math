/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses Mathlib polynomial evaluation, ideal quotients and AdjoinRoot (Apache-2.0).
Formalization assistance: OpenAI.

A finite relative section-ideal quotient, with explicit mutually inverse ring
maps. This is not a completed-local-ring theorem, a global section-space
identification, a metric estimate, or an ABC proof. Source proof scripts only.
-/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyFormalNeighborhood
import Mathlib.Algebra.MvPolynomial.Eval
import Mathlib.RingTheory.Ideal.Quotient.Operations

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyJetQuotient

open FreyJetRecursion

variable {R : Type*} [CommRing R]

abbrev Plane (R : Type*) [CommRing R] := MvPolynomial (Fin 2) R

/-- The full cubic relation in the original, unshifted X,Y coordinates. -/
def equation (a b : R) : Plane R :=
  MvPolynomial.X 0 * (MvPolynomial.X 0 - MvPolynomial.C a) *
    (MvPolynomial.X 0 + MvPolynomial.C b) - MvPolynomial.X 1 ^ 2

/-- The relative section ideal (X-r,Y); r is a fixed selected source root. -/
def sectionIdeal (r : R) : Ideal (Plane R) :=
  Ideal.span {MvPolynomial.X 0 - MvPolynomial.C r, MvPolynomial.X 1}

/-- The ideal SUM (cubic)+(X-r,Y)^(N+1), including all mixed monomials. -/
def relations (a b r : R) (N : ℕ) : Ideal (Plane R) :=
  Ideal.span {equation a b} ⊔ sectionIdeal r ^ (N + 1)

abbrev Jet (a b r : R) (N : ℕ) := Plane R ⧸ relations a b r N
abbrev Parameter (R : Type*) [CommRing R] (N : ℕ) :=
  AdjoinRoot ((Polynomial.X : Polynomial R) ^ (N + 1))

/-- The quotient homomorphism, used rather than selected normal forms. -/
def quotientMap (a b r : R) (N : ℕ) : Plane R →+* Jet a b r N :=
  Ideal.Quotient.mk (relations a b r N)

def scalar (a b r : R) (N : ℕ) : R →+* Jet a b r N :=
  (quotientMap a b r N).comp MvPolynomial.C

def x (a b r : R) (N : ℕ) : Jet a b r N :=
  quotientMap a b r N (MvPolynomial.X 0)

def y (a b r : R) (N : ℕ) : Jet a b r N :=
  quotientMap a b r N (MvPolynomial.X 1)

def displacement (a b r : R) (N : ℕ) : Jet a b r N :=
  quotientMap a b r N (MvPolynomial.X 0 - MvPolynomial.C r)

/-- The image of the whole section ideal, not merely the principal y ideal. -/
def neighborhoodIdeal (a b r : R) (N : ℕ) : Ideal (Jet a b r N) :=
  (sectionIdeal r).map (quotientMap a b r N)

noncomputable def parameter (R : Type*) [CommRing R] (N : ℕ) : Parameter R N :=
  AdjoinRoot.root ((Polynomial.X : Polynomial R) ^ (N + 1))

def parameterScalar (R : Type*) [CommRing R] (N : ℕ) : R →+* Parameter R N :=
  AdjoinRoot.of ((Polynomial.X : Polynomial R) ^ (N + 1))

def derivative (a b r : R) : R := 3 * r ^ 2 + 2 * (b - a) * r - a * b
def quadratic (a b r : R) : R := 3 * r + b - a

lemma cubic_shift (a b r z : R) (hr : r * (r - a) * (r + b) = 0) :
    (r + z) * (r + z - a) * (r + z + b) =
      derivative a b r * z + quadratic a b r * z ^ 2 + z ^ 3 := by
  calc
    _ = r * (r - a) * (r + b) +
        derivative a b r * z + quadratic a b r * z ^ 2 + z ^ 3 := by
      unfold derivative quadratic
      ring
    _ = _ := by rw [hr, zero_add]

@[simp] theorem parameter_pow (N : ℕ) : parameter R N ^ (N + 1) = 0 := by
  simpa [parameter] using
    AdjoinRoot.eval₂_root ((Polynomial.X : Polynomial R) ^ (N + 1))

@[simp] theorem displacement_eq (a b r : R) (N : ℕ) :
    displacement a b r N = x a b r N - scalar a b r N r := by
  simp only [displacement, x, scalar, RingHom.comp_apply, map_sub]

/-- Nilpotence of the entire relative section ideal follows from the quotient. -/
theorem neighborhoodIdeal_pow (a b r : R) (N : ℕ) :
    neighborhoodIdeal a b r N ^ (N + 1) = ⊥ := by
  rw [neighborhoodIdeal, ← Ideal.map_pow]
  exact Ideal.map_mk_eq_bot_of_le
    (show sectionIdeal r ^ (N + 1) ≤ relations a b r N from le_sup_right)

theorem displacement_mem (a b r : R) (N : ℕ) :
    displacement a b r N ∈ neighborhoodIdeal a b r N :=
  Ideal.mem_map_of_mem _ (Ideal.subset_span (by simp))

theorem y_mem (a b r : R) (N : ℕ) : y a b r N ∈ neighborhoodIdeal a b r N :=
  Ideal.mem_map_of_mem _ (Ideal.subset_span (by simp))

theorem y_pow (a b r : R) (N : ℕ) : y a b r N ^ (N + 1) = 0 :=
  FreyFormalNeighborhood.element_power_zero _ _ (neighborhoodIdeal_pow a b r N)
    _ (y_mem a b r N)

theorem quotient_cubic (a b r : R) (N : ℕ) :
    x a b r N * (x a b r N - scalar a b r N a) *
      (x a b r N + scalar a b r N b) = y a b r N ^ 2 := by
  have he : quotientMap a b r N (equation a b) = 0 :=
    Ideal.Quotient.eq_zero_iff_mem.mpr
      (le_sup_left (Ideal.subset_span (by simp)))
  apply sub_eq_zero.mp
  simpa only [equation, x, y, scalar, RingHom.comp_apply,
    map_sub, map_add, map_mul, map_pow] using he

/-- The universal displacement, not just a chosen test solution, is the iterate. -/
theorem displacement_eq_iterate (a b r j : R)
    (hr : r * (r - a) * (r + b) = 0) (hj : derivative a b r * j = 1) (N : ℕ) :
    displacement a b r N =
      iterate (scalar a b r N j) (scalar a b r N (quadratic a b r)) (y a b r N) N := by
  let c := scalar a b r N
  have hr' : c r * (c r - c a) * (c r + c b) = 0 := by
    simpa only [map_mul, map_sub, map_add, map_zero] using congrArg c hr
  have hj' : c (derivative a b r) * c j = 1 := by
    rw [← map_mul, hj, map_one]
  have hs := cubic_shift (c a) (c b) (c r) (displacement a b r N) hr'
  have hx : c r + displacement a b r N = x a b r N := by
    rw [displacement_eq]
    dsimp only [c]
    ring
  rw [hx, quotient_cubic] at hs
  have hsol : c (derivative a b r) * displacement a b r N +
      c (quadratic a b r) * displacement a b r N ^ 2 +
      displacement a b r N ^ 3 = y a b r N ^ 2 := by
    simpa only [derivative, quadratic, map_add, map_sub, map_mul, map_pow, map_ofNat]
      using hs.symm
  apply FreyFormalNeighborhood.solution_unique (neighborhoodIdeal a b r N) (N + 1)
    (neighborhoodIdeal_pow a b r N) (c (derivative a b r)) (c j)
    (c (quadratic a b r)) (y a b r N) _ _ hj'
    (displacement_mem a b r N)
    (FreyFormalNeighborhood.iterate_mem _ _ _ _ (y_mem a b r N) N) hsol
  exact iterate_solves _ _ _ _ hj' N
    (power_zero_of_le _ (y_pow a b r N) (by omega))

/-- Polynomial substitution at the recursively lifted source root. -/
noncomputable def evaluate (a b r j : R) (N : ℕ) : Plane R →+* Parameter R N :=
  MvPolynomial.eval₂Hom (parameterScalar R N)
    ![parameterScalar R N r +
        iterate (parameterScalar R N j) (parameterScalar R N (quadratic a b r))
          (parameter R N) N,
      parameter R N]

/-- Both the cubic relation and the full ideal power are killed. -/
theorem relations_le_kernel (a b r j : R)
    (hr : r * (r - a) * (r + b) = 0) (hj : derivative a b r * j = 1) (N : ℕ) :
    relations a b r N ≤ RingHom.ker (evaluate a b r j N) := by
  let c := parameterScalar R N
  let e := parameter R N
  let z := iterate (c j) (c (quadratic a b r)) e N
  have hj' : c (derivative a b r) * c j = 1 := by
    rw [← map_mul, hj, map_one]
  have hz : c (derivative a b r) * z + c (quadratic a b r) * z ^ 2 + z ^ 3 = e ^ 2 :=
    iterate_solves _ _ _ _ hj' N (power_zero_of_le _ (parameter_pow N) (by omega))
  have hr' : c r * (c r - c a) * (c r + c b) = 0 := by
    simpa only [map_mul, map_sub, map_add, map_zero] using congrArg c hr
  have hcurve : (c r + z) * (c r + z - c a) * (c r + z + c b) = e ^ 2 := by
    rw [cubic_shift _ _ _ _ hr']
    simpa only [derivative, quadratic, map_add, map_sub, map_mul, map_pow, map_ofNat]
      using hz
  have he : e ∈ (Ideal.span {e} : Ideal (Parameter R N)) := Ideal.subset_span (by simp)
  have hmap : (sectionIdeal r).map (evaluate a b r j N) ≤ Ideal.span {e} := by
    apply Ideal.map_le_iff_le_comap.mpr
    apply Ideal.span_le.mpr
    intro p hp
    simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hp
    rcases hp with rfl | rfl
    · change evaluate a b r j N (MvPolynomial.X 0 - MvPolynomial.C r) ∈ _
      simpa [evaluate, c, e] using
        (FreyFormalNeighborhood.iterate_mem (Ideal.span {e}) (c j)
          (c (quadratic a b r)) e he N)
    · change evaluate a b r j N (MvPolynomial.X 1) ∈ _
      simpa [evaluate, e] using he
  have hpow : (sectionIdeal r ^ (N + 1)).map (evaluate a b r j N) = ⊥ := by
    apply le_antisymm _ bot_le
    calc
      _ = ((sectionIdeal r).map (evaluate a b r j N)) ^ (N + 1) := Ideal.map_pow _ _ _
      _ ≤ (Ideal.span {e}) ^ (N + 1) := Ideal.pow_right_mono hmap _
      _ = ⊥ := by rw [Ideal.span_singleton_pow]; simp [e, parameter_pow]
  apply sup_le
  · apply Ideal.span_le.mpr
    intro p hp
    have hp' : p = equation a b := Set.mem_singleton_iff.mp hp
    subst p
    change evaluate a b r j N (equation a b) = 0
    simpa [evaluate, equation, c, e, z] using sub_eq_zero.mpr hcurve
  · exact Ideal.map_eq_bot_iff_le_ker.mp hpow

/-- Forward homomorphism from the actual relation quotient. -/
noncomputable def toParameter (a b r j : R)
    (hr : r * (r - a) * (r + b) = 0) (hj : derivative a b r * j = 1) (N : ℕ) :
    Jet a b r N →+* Parameter R N :=
  Ideal.Quotient.lift _ (evaluate a b r j N) (relations_le_kernel a b r j hr hj N)

/-- Inverse homomorphism sends T to the actual quotient coordinate Y. -/
noncomputable def fromParameter (a b r : R) (N : ℕ) : Parameter R N →+* Jet a b r N :=
  AdjoinRoot.lift (scalar a b r N) (y a b r N) (by
    simpa using y_pow a b r N)

@[simp] theorem toParameter_scalar (a b r j : R)
    (hr : r * (r - a) * (r + b) = 0) (hj : derivative a b r * j = 1) (N : ℕ) (s : R) :
    toParameter a b r j hr hj N (scalar a b r N s) = parameterScalar R N s := by
  simp [toParameter, scalar, quotientMap, evaluate]

@[simp] theorem toParameter_x (a b r j : R)
    (hr : r * (r - a) * (r + b) = 0) (hj : derivative a b r * j = 1) (N : ℕ) :
    toParameter a b r j hr hj N (x a b r N) = parameterScalar R N r +
      iterate (parameterScalar R N j) (parameterScalar R N (quadratic a b r))
        (parameter R N) N := by
  simp [toParameter, x, quotientMap, evaluate]

@[simp] theorem toParameter_y (a b r j : R)
    (hr : r * (r - a) * (r + b) = 0) (hj : derivative a b r * j = 1) (N : ℕ) :
    toParameter a b r j hr hj N (y a b r N) = parameter R N := by
  simp [toParameter, y, quotientMap, evaluate]

@[simp] theorem fromParameter_scalar (a b r : R) (N : ℕ) (s : R) :
    fromParameter a b r N (parameterScalar R N s) = scalar a b r N s := by
  simp [fromParameter, parameterScalar]

@[simp] theorem fromParameter_parameter (a b r : R) (N : ℕ) :
    fromParameter a b r N (parameter R N) = y a b r N := by
  simp [fromParameter, parameter]

/-- Equality on coefficients and X,Y determines maps on the whole quotient. -/
theorem hom_ext (a b r : R) (N : ℕ) {B : Type*} [CommRing B]
    {f g : Jet a b r N →+* B}
    (hc : ∀ s, f (scalar a b r N s) = g (scalar a b r N s))
    (hx : f (x a b r N) = g (x a b r N))
    (hy : f (y a b r N) = g (y a b r N)) : f = g := by
  apply Ideal.Quotient.ringHom_ext
  apply MvPolynomial.ringHom_ext
  · exact hc
  · intro i
    fin_cases i
    · exact hx
    · exact hy

/-- The difficult inverse identity uses uniqueness in the universal nilpotent ideal. -/
theorem from_to (a b r j : R)
    (hr : r * (r - a) * (r + b) = 0) (hj : derivative a b r * j = 1) (N : ℕ) :
    (fromParameter a b r N).comp (toParameter a b r j hr hj N) =
      RingHom.id (Jet a b r N) := by
  apply hom_ext a b r N
  · intro s
    simp
  · simp only [RingHom.comp_apply, toParameter_x, map_add, map_iterate,
      fromParameter_scalar, fromParameter_parameter, RingHom.id_apply]
    rw [← displacement_eq_iterate a b r j hr hj N, displacement_eq]
    ring
  · simp

/-- The other inverse identity holds on all of the parameter ring, not samples. -/
theorem to_from (a b r j : R)
    (hr : r * (r - a) * (r + b) = 0) (hj : derivative a b r * j = 1) (N : ℕ) :
    (toParameter a b r j hr hj N).comp (fromParameter a b r N) =
      RingHom.id (Parameter R N) := by
  apply AdjoinRoot.ringHom_ext
  · ext s
    change toParameter a b r j hr hj N
      (fromParameter a b r N (parameterScalar R N s)) = parameterScalar R N s
    simp
  · change toParameter a b r j hr hj N
      (fromParameter a b r N (parameter R N)) = parameter R N
    simp

/-- Explicit ring isomorphism for the full relative section-ideal quotient. -/
noncomputable def ringEquiv (a b r j : R)
    (hr : r * (r - a) * (r + b) = 0) (hj : derivative a b r * j = 1) (N : ℕ) :
    Jet a b r N ≃+* Parameter R N where
  toFun := toParameter a b r j hr hj N
  invFun := fromParameter a b r N
  left_inv u := DFunLike.congr_fun (from_to a b r j hr hj N) u
  right_inv u := DFunLike.congr_fun (to_from a b r j hr hj N) u
  map_mul' := map_mul (toParameter a b r j hr hj N)
  map_add' := map_add (toParameter a b r j hr hj N)

/-- Completeness of the presentation: substitution kills exactly the declared ideal.
This excludes extra relations as well as unwanted cubic branches. -/
theorem kernel_evaluate (a b r j : R)
    (hr : r * (r - a) * (r + b) = 0) (hj : derivative a b r * j = 1) (N : ℕ) :
    RingHom.ker (evaluate a b r j N) = relations a b r N := by
  apply le_antisymm _ (relations_le_kernel a b r j hr hj N)
  intro p hp
  apply Ideal.Quotient.eq_zero_iff_mem.mp
  apply (ringEquiv a b r j hr hj N).injective
  change toParameter a b r j hr hj N (quotientMap a b r N p) =
    toParameter a b r j hr hj N 0
  rw [map_zero]
  exact hp

/-- The isomorphism preserves the declared coefficient algebra, not only rings. -/
noncomputable def algebraEquiv (a b r j : R)
    (hr : r * (r - a) * (r + b) = 0) (hj : derivative a b r * j = 1) (N : ℕ) :
    Jet a b r N ≃ₐ[R] Parameter R N where
  __ := ringEquiv a b r j hr hj N
  commutes' s := by
    change toParameter a b r j hr hj N (scalar a b r N s) = parameterScalar R N s
    exact toParameter_scalar a b r j hr hj N s

/-- The thickening order goes from N down to M, never the other way. -/
theorem relations_antitone (a b r : R) (M N : ℕ) (hMN : M ≤ N) :
    relations a b r N ≤ relations a b r M :=
  sup_le_sup le_rfl (Ideal.pow_le_pow_right (Nat.succ_le_succ hMN))

/-- Actual quotient truncation, independent of the chosen inverse j. -/
def truncate (a b r : R) (M N : ℕ) (hMN : M ≤ N) : Jet a b r N →+* Jet a b r M :=
  Ideal.Quotient.lift _ (quotientMap a b r M) (fun p hp =>
    Ideal.Quotient.eq_zero_iff_mem.mpr (relations_antitone a b r M N hMN hp))

@[simp] theorem truncate_scalar (a b r : R) (M N : ℕ) (hMN : M ≤ N) (s : R) :
    truncate a b r M N hMN (scalar a b r N s) = scalar a b r M s := rfl
@[simp] theorem truncate_x (a b r : R) (M N : ℕ) (hMN : M ≤ N) :
    truncate a b r M N hMN (x a b r N) = x a b r M := rfl
@[simp] theorem truncate_y (a b r : R) (M N : ℕ) (hMN : M ≤ N) :
    truncate a b r M N hMN (y a b r N) = y a b r M := rfl

noncomputable def parameterTruncate (R : Type*) [CommRing R]
    (M N : ℕ) (hMN : M ≤ N) : Parameter R N →+* Parameter R M :=
  AdjoinRoot.map (RingHom.id R) ((Polynomial.X : Polynomial R) ^ (N + 1))
    ((Polynomial.X : Polynomial R) ^ (M + 1)) (by
      simp only [Polynomial.map_id]
      refine ⟨(Polynomial.X : Polynomial R) ^ (N - M), ?_⟩
      rw [← pow_add]
      congr 1
      omega)

@[simp] theorem parameterTruncate_scalar (M N : ℕ) (hMN : M ≤ N) (s : R) :
    parameterTruncate R M N hMN (parameterScalar R N s) = parameterScalar R M s := by
  simp [parameterTruncate, parameterScalar]
@[simp] theorem parameterTruncate_parameter (M N : ℕ) (hMN : M ≤ N) :
    parameterTruncate R M N hMN (parameter R N) = parameter R M := by
  simp [parameterTruncate, parameter]

/-- Commuting square for the inverse maps follows from its two generators. -/
theorem fromParameter_truncate (a b r : R) (M N : ℕ) (hMN : M ≤ N) :
    (fromParameter a b r M).comp (parameterTruncate R M N hMN) =
      (truncate a b r M N hMN).comp (fromParameter a b r N) := by
  apply AdjoinRoot.ringHom_ext
  · ext s
    change fromParameter a b r M
      (parameterTruncate R M N hMN (parameterScalar R N s)) =
      truncate a b r M N hMN (fromParameter a b r N (parameterScalar R N s))
    simp
  · change fromParameter a b r M (parameterTruncate R M N hMN (parameter R N)) =
      truncate a b r M N hMN (fromParameter a b r N (parameter R N))
    simp

/-- The forward isomorphisms commute with the independently defined truncations. -/
theorem toParameter_truncate (a b r j : R)
    (hr : r * (r - a) * (r + b) = 0) (hj : derivative a b r * j = 1)
    (M N : ℕ) (hMN : M ≤ N) (u : Jet a b r N) :
    toParameter a b r j hr hj M (truncate a b r M N hMN u) =
      parameterTruncate R M N hMN (toParameter a b r j hr hj N u) := by
  apply (ringEquiv a b r j hr hj M).symm.injective
  change fromParameter a b r M (toParameter a b r j hr hj M
      (truncate a b r M N hMN u)) =
    fromParameter a b r M (parameterTruncate R M N hMN
      (toParameter a b r j hr hj N u))
  rw [show fromParameter a b r M (toParameter a b r j hr hj M
      (truncate a b r M N hMN u)) = truncate a b r M N hMN u from
    DFunLike.congr_fun (from_to a b r j hr hj M) _]
  have h := DFunLike.congr_fun (fromParameter_truncate a b r M N hMN)
    (toParameter a b r j hr hj N u)
  simpa only [RingHom.comp_apply,
    show fromParameter a b r N (toParameter a b r j hr hj N u) = u from
      DFunLike.congr_fun (from_to a b r j hr hj N) u] using h.symm

theorem truncate_id (a b r : R) (N : ℕ) :
    truncate a b r N N (le_refl N) = RingHom.id (Jet a b r N) := by
  apply hom_ext a b r N <;> intros <;> rfl

theorem truncate_comp (a b r : R) (L M N : ℕ) (hLM : L ≤ M) (hMN : M ≤ N) :
    (truncate a b r L M hLM).comp (truncate a b r M N hMN) =
      truncate a b r L N (hLM.trans hMN) := by
  apply hom_ext a b r N <;> intros <;> rfl

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyJetQuotient
