/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses Mathlib polynomial and ideal quotient maps (Apache-2.0).
Formalization assistance: OpenAI.

Source-faithful coefficient transport on finite relative jet algebras.
The map is induced on the polynomial presentation BEFORE using the jet
isomorphism. No flatness, injectivity, tensor comparison, or metric law is
assumed silently. These are unelaborated source proof scripts.
-/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyParameterSeries

set_option autoImplicit false

noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyJetBaseChange

open FreyJetQuotient

variable {R S U : Type*} [CommRing R] [CommRing S] [CommRing U]

/-- Coefficient transport fixes the TWO named variables, not a relabeled root. -/
def planeMap (f : R →+* S) : Plane R →+* Plane S :=
  MvPolynomial.eval₂Hom (MvPolynomial.C.comp f) MvPolynomial.X

@[simp] theorem planeMap_C (f : R →+* S) (c : R) :
    planeMap f (MvPolynomial.C c) = MvPolynomial.C (f c) := by
  simp [planeMap]

@[simp] theorem planeMap_X (f : R →+* S) (i : Fin 2) :
    planeMap f (MvPolynomial.X i) = MvPolynomial.X i := by
  simp [planeMap]

@[simp] theorem planeMap_equation (f : R →+* S) (a b : R) :
    planeMap f (equation a b) = equation (f a) (f b) := by
  simp [equation]

/-- The section ideal maps into the ideal of the MAPPED selected section. -/
theorem sectionIdeal_map_le (f : R →+* S) (r : R) :
    (sectionIdeal r).map (planeMap f) ≤ sectionIdeal (f r) := by
  apply Ideal.map_le_iff_le_comap.mpr
  apply Ideal.span_le.mpr
  intro p hp
  simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hp
  rcases hp with rfl | rfl
  · change planeMap f (MvPolynomial.X 0 - MvPolynomial.C r) ∈ sectionIdeal (f r)
    simpa using (Ideal.subset_span
      (by simp : MvPolynomial.X (0 : Fin 2) - MvPolynomial.C (f r) ∈
        ({MvPolynomial.X 0 - MvPolynomial.C (f r), MvPolynomial.X 1} : Set (Plane S))))
  · change planeMap f (MvPolynomial.X 1) ∈ sectionIdeal (f r)
    simpa using (Ideal.subset_span
      (by simp : MvPolynomial.X (1 : Fin 2) ∈
        ({MvPolynomial.X 0 - MvPolynomial.C (f r), MvPolynomial.X 1} : Set (Plane S))))

/-- Quotient descent includes the entire mixed ideal power at the same order. -/
theorem relations_map_le (f : R →+* S) (a b r : R) (N : ℕ) :
    (relations a b r N).map (planeMap f) ≤ relations (f a) (f b) (f r) N := by
  apply Ideal.map_le_iff_le_comap.mpr
  apply sup_le
  · apply Ideal.span_le.mpr
    intro p hp
    have hp' : p = equation a b := Set.mem_singleton_iff.mp hp
    subst p
    change planeMap f (equation a b) ∈ relations (f a) (f b) (f r) N
    rw [planeMap_equation]
    exact le_sup_left (Ideal.subset_span (by simp))
  · apply Ideal.map_le_iff_le_comap.mp
    calc
      (sectionIdeal r ^ (N + 1)).map (planeMap f) =
          ((sectionIdeal r).map (planeMap f)) ^ (N + 1) := Ideal.map_pow _ _ _
      _ ≤ sectionIdeal (f r) ^ (N + 1) :=
        Ideal.pow_right_mono (sectionIdeal_map_le f r) (N + 1)
      _ ≤ relations (f a) (f b) (f r) N := le_sup_right

/-- The actual quotient map. It exists without a unit derivative or flatness. -/
def jetMap (f : R →+* S) (a b r : R) (N : ℕ) :
    Jet a b r N →+* Jet (f a) (f b) (f r) N :=
  Ideal.Quotient.lift _ ((quotientMap (f a) (f b) (f r) N).comp (planeMap f))
    (fun p hp => Ideal.Quotient.eq_zero_iff_mem.mpr
      (relations_map_le f a b r N (Ideal.mem_map_of_mem (planeMap f) hp)))

@[simp] theorem jetMap_scalar (f : R →+* S) (a b r : R) (N : ℕ) (c : R) :
    jetMap f a b r N (scalar a b r N c) = scalar (f a) (f b) (f r) N (f c) := by
  simp [jetMap, scalar, quotientMap]

@[simp] theorem jetMap_x (f : R →+* S) (a b r : R) (N : ℕ) :
    jetMap f a b r N (x a b r N) = x (f a) (f b) (f r) N := by
  simp [jetMap, x, quotientMap]

@[simp] theorem jetMap_y (f : R →+* S) (a b r : R) (N : ℕ) :
    jetMap f a b r N (y a b r N) = y (f a) (f b) (f r) N := by
  simp [jetMap, y, quotientMap]

/-- Identity holds on the entire relation quotient, not only sampled jets. -/
theorem jetMap_id (a b r : R) (N : ℕ) :
    jetMap (RingHom.id R) a b r N = RingHom.id (Jet a b r N) := by
  apply hom_ext a b r N <;> intros <;> simp

/-- The mapped source parameters and the coefficient map compose together. -/
theorem jetMap_comp (f : R →+* S) (g : S →+* U) (a b r : R) (N : ℕ) :
    (jetMap g (f a) (f b) (f r) N).comp (jetMap f a b r N) =
      jetMap (g.comp f) a b r N := by
  apply hom_ext a b r N <;> intros <;> simp [RingHom.comp_apply]

/-- Coefficient transport commutes with independently defined order truncation. -/
theorem jetMap_truncate (f : R →+* S) (a b r : R)
    (M N : ℕ) (hMN : M ≤ N) :
    (truncate (f a) (f b) (f r) M N hMN).comp (jetMap f a b r N) =
      (jetMap f a b r M).comp (truncate a b r M N hMN) := by
  apply hom_ext a b r N <;> intros <;> simp [RingHom.comp_apply]

/-- Actual coefficient map on the truncated parameter ring. -/
def parameterMap (f : R →+* S) (N : ℕ) : Parameter R N →+* Parameter S N :=
  AdjoinRoot.map f ((Polynomial.X : Polynomial R) ^ (N + 1))
    ((Polynomial.X : Polynomial S) ^ (N + 1)) (by simp)

@[simp] theorem parameterMap_scalar (f : R →+* S) (N : ℕ) (c : R) :
    parameterMap f N (parameterScalar R N c) = parameterScalar S N (f c) := by
  simp [parameterMap, parameterScalar]

@[simp] theorem parameterMap_parameter (f : R →+* S) (N : ℕ) :
    parameterMap f N (parameter R N) = parameter S N := by
  simp [parameterMap, parameter]

/-- Representatives are mapped coefficient by coefficient, before any normal form. -/
theorem parameterMap_mk (f : R →+* S) (N : ℕ) (p : Polynomial R) :
    parameterMap f N (AdjoinRoot.mk ((Polynomial.X : Polynomial R) ^ (N + 1)) p) =
      AdjoinRoot.mk ((Polynomial.X : Polynomial S) ^ (N + 1)) (p.map f) := by
  induction p using Polynomial.induction_on' with
  | add p q hp hq => simp only [Polynomial.map_add, map_add, hp, hq]
  | monomial n c =>
    rw [← Polynomial.C_mul_X_pow_eq_monomial]
    simp only [Polynomial.map_mul, Polynomial.map_pow, Polynomial.map_C,
      Polynomial.map_X, map_mul, map_pow, AdjoinRoot.mk_C, AdjoinRoot.mk_X]
    change parameterMap f N (parameterScalar R N c) *
        parameterMap f N (parameter R N) ^ n =
      parameterScalar S N (f c) * parameter S N ^ n
    rw [parameterMap_scalar, parameterMap_parameter]

/-- Exact low-coefficient naturality, valid even for noninjective residue maps. -/
theorem coefficient_parameterMap (f : R →+* S) (N k : ℕ) (hk : k ≤ N)
    (u : Parameter R N) :
    FreyParameterSeries.coefficient N k (parameterMap f N u) =
      f (FreyParameterSeries.coefficient N k u) := by
  obtain ⟨p, rfl⟩ := AdjoinRoot.mk_surjective u
  rw [parameterMap_mk, FreyParameterSeries.coefficient_mk N k hk,
    FreyParameterSeries.coefficient_mk N k hk, Polynomial.coeff_map]

/-- Coefficient injection is sufficient to reflect equality at each finite order. -/
theorem parameterMap_injective (f : R →+* S) (hf : Function.Injective f) (N : ℕ) :
    Function.Injective (parameterMap f N) := by
  intro u v huv
  apply FreyParameterSeries.coefficient_ext N
  intro k hk
  apply hf
  rw [← coefficient_parameterMap f N k hk, ← coefficient_parameterMap f N k hk, huv]

/-- Map the root equation without replacing the marked source. -/
theorem mapped_root (f : R →+* S) (a b r : R) (hr : r * (r - a) * (r + b) = 0) :
    f r * (f r - f a) * (f r + f b) = 0 := by
  simpa only [map_mul, map_sub, map_add, map_zero] using congrArg f hr

/-- A proved inverse stays an inverse after any unital coefficient map. -/
theorem mapped_inverse (f : R →+* S) (a b r j : R) (hj : derivative a b r * j = 1) :
    derivative (f a) (f b) (f r) * f j = 1 := by
  simpa only [derivative, map_add, map_sub, map_mul, map_pow, map_ofNat, map_one]
    using congrArg f hj

/-- The inverse coordinate map has its own naturality square. -/
theorem fromParameter_natural (f : R →+* S) (a b r : R) (N : ℕ) :
    (jetMap f a b r N).comp (fromParameter a b r N) =
      (fromParameter (f a) (f b) (f r) N).comp (parameterMap f N) := by
  apply AdjoinRoot.ringHom_ext
  · ext c
    change jetMap f a b r N (fromParameter a b r N (parameterScalar R N c)) =
      fromParameter (f a) (f b) (f r) N (parameterMap f N (parameterScalar R N c))
    simp
  · change jetMap f a b r N (fromParameter a b r N (parameter R N)) =
      fromParameter (f a) (f b) (f r) N (parameterMap f N (parameter R N))
    simp

/-- The finite algebra equivalences are natural for the independently descended map. -/
theorem toParameter_natural (f : R →+* S) (a b r j : R)
    (hr : r * (r - a) * (r + b) = 0) (hj : derivative a b r * j = 1)
    (N : ℕ) (u : Jet a b r N) :
    toParameter (f a) (f b) (f r) (f j)
        (mapped_root f a b r hr) (mapped_inverse f a b r j hj) N (jetMap f a b r N u) =
      parameterMap f N (toParameter a b r j hr hj N u) := by
  apply (ringEquiv (f a) (f b) (f r) (f j)
    (mapped_root f a b r hr) (mapped_inverse f a b r j hj) N).symm.injective
  change fromParameter (f a) (f b) (f r) N
      (toParameter (f a) (f b) (f r) (f j)
        (mapped_root f a b r hr) (mapped_inverse f a b r j hj) N (jetMap f a b r N u)) =
    fromParameter (f a) (f b) (f r) N
      (parameterMap f N (toParameter a b r j hr hj N u))
  rw [show fromParameter (f a) (f b) (f r) N
      (toParameter (f a) (f b) (f r) (f j)
        (mapped_root f a b r hr) (mapped_inverse f a b r j hj) N (jetMap f a b r N u)) =
      jetMap f a b r N u from DFunLike.congr_fun
        (from_to (f a) (f b) (f r) (f j)
          (mapped_root f a b r hr) (mapped_inverse f a b r j hj) N) _]
  have h := DFunLike.congr_fun (fromParameter_natural f a b r N)
    (toParameter a b r j hr hj N u)
  simpa only [RingHom.comp_apply,
    show fromParameter a b r N (toParameter a b r j hr hj N u) = u from
      DFunLike.congr_fun (from_to a b r j hr hj N) u] using h

/-- On the smooth marked branch, injective coefficients give injective finite transport.
No such conclusion is asserted for a noninjective residue specialization. -/
theorem jetMap_injective (f : R →+* S) (hf : Function.Injective f) (a b r j : R)
    (hr : r * (r - a) * (r + b) = 0) (hj : derivative a b r * j = 1) (N : ℕ) :
    Function.Injective (jetMap f a b r N) := by
  intro u v huv
  apply (ringEquiv a b r j hr hj N).injective
  change toParameter a b r j hr hj N u = toParameter a b r j hr hj N v
  apply parameterMap_injective f hf N
  rw [← toParameter_natural f a b r j hr hj N,
    ← toParameter_natural f a b r j hr hj N, huv]

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyJetBaseChange
