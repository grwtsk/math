/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Uses Mathlib canonical adic completion and the existing Frey quotient towers.
Formalization assistance: OpenAI.

Lift the SAME nonlinear inter-anchor quotient maps to canonical completions.
The completed ring maps are constructed before formal-coordinate comparisons.
The map runs from functions at Tb to functions at Ta; the inverse reverses it.
The ab-unit witness suffices for completion transport, including singular
fibers. Formal-series frames additionally require both unit Jacobians.
No analytic convergence, topology comparison, line-bundle gauge, arithmetic
height bound, conductor theorem or acceptance by Lean is asserted here.
-/
import GRWTSK.Algebra.RingTheory.AdicCompletion.CompatibleEquiv
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTorsionUnlocalizedJets
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCanonicalCompletion

set_option autoImplicit false

noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTorsionCompletion

open FreyJetQuotient FreyAdicQuotients FreyCanonicalCompletion
open FreyTorsionUnlocalizedJets
open GRWTSK.Algebra.RingTheory.AdicCompletion.CompatibleEquiv

variable {R : Type*} [CommRing R]

/-- Compatibility comes from the original unlocalized quotient maps, not a new fit. -/
theorem quotient_compatible (a b l : R) (hl : a * b * l = 1) :
    Compatible (curveSectionIdeal a b (-b)) (curveSectionIdeal a b a)
      (fun n => (unlocalizedEquiv a b l hl n).toRingHom) := by
  intro m n hmn u
  exact unlocalized_transition a b l hl m n hmn u

/-- Both directions use the library universal lift at every canonical exponent.
The source and target are distinct completions of the same affine algebra. -/
def completionEquiv (a b l : R) (hl : a * b * l = 1) :
    Canonical a b (-b) ≃+* Canonical a b a :=
  equivalence (curveSectionIdeal a b (-b)) (curveSectionIdeal a b a)
    (unlocalizedEquiv a b l hl) (quotient_compatible a b l hl)

/-- Same map, exact same exponent; exponent zero is included. -/
@[simp] theorem completion_projection (a b l : R) (hl : a * b * l = 1)
    (n : ℕ) (u : Canonical a b (-b)) :
    canonicalProjection a b a n (completionEquiv a b l hl u) =
      unlocalizedEquiv a b l hl n (canonicalProjection a b (-b) n u) :=
  equivalence_projection _ _ _ (quotient_compatible a b l hl) n u

@[simp] theorem completion_symm_projection (a b l : R) (hl : a * b * l = 1)
    (n : ℕ) (v : Canonical a b a) :
    canonicalProjection a b (-b) n ((completionEquiv a b l hl).symm v) =
      (unlocalizedEquiv a b l hl n).symm (canonicalProjection a b a n v) :=
  equivalence_symm_projection _ _ _ (quotient_compatible a b l hl) n v

/-- All projections uniquely identify the completed pullback. One finite jet cannot. -/
theorem completion_unique (a b l : R) (hl : a * b * l = 1)
    (F : Canonical a b (-b) →+* Canonical a b a)
    (hF : ∀ n u, canonicalProjection a b a n (F u) =
      unlocalizedEquiv a b l hl n (canonicalProjection a b (-b) n u)) :
    F = (completionEquiv a b l hl).toRingHom := by
  apply RingHom.ext
  intro u
  apply AdicCompletion.ext_evalₐ
  intro n
  change canonicalProjection a b a n (F u) =
    canonicalProjection a b a n (completionEquiv a b l hl u)
  rw [completion_projection]
  exact hF n u

/-- Coefficients are fixed in the original R-algebra structures. -/
theorem completion_scalar (a b l : R) (hl : a * b * l = 1) (c : R) :
    completionEquiv a b l hl (algebraMap R (Canonical a b (-b)) c) =
      algebraMap R (Canonical a b a) c := by
  apply AdicCompletion.ext_evalₐ
  intro n
  change canonicalProjection a b a n
      (completionEquiv a b l hl (algebraMap R (Canonical a b (-b)) c)) =
    canonicalProjection a b a n (algebraMap R (Canonical a b a) c)
  rw [completion_projection, (canonicalProjection a b (-b) n).commutes,
    (canonicalProjection a b a n).commutes]
  exact unlocalized_scalar a b l hl n c

/-- Algebra packaging retains precisely the previously constructed ring map. -/
def completionAlgEquiv (a b l : R) (hl : a * b * l = 1) :
    Canonical a b (-b) ≃ₐ[R] Canonical a b a where
  toRingEquiv := completionEquiv a b l hl
  commutes' := completion_scalar a b l hl

/-- Every finite completed observation agrees with the old nonlinear open pullback. -/
theorem localized_projection (a b l : R) (hl : a * b * l = 1)
    (n : ℕ) (u : Canonical a b (-b)) :
    equivA a b l hl n (canonicalProjection a b a n (completionEquiv a b l hl u)) =
      FreyTorsionOpenJets.pullbackBA a b l hl n
        (equivB a b l hl n (canonicalProjection a b (-b) n u)) := by
  rw [completion_projection, localized_square]

/-- The inverse completed map has a separate source-bound localization square. -/
theorem localized_symm_projection (a b l : R) (hl : a * b * l = 1)
    (n : ℕ) (v : Canonical a b a) :
    equivB a b l hl n (canonicalProjection a b (-b) n ((completionEquiv a b l hl).symm v)) =
      FreyTorsionOpenJets.pullbackAB a b l hl n
        (equivA a b l hl n (canonicalProjection a b a n v)) := by
  rw [completion_symm_projection, localized_square_symm]

/-- Image of an original affine function in the specified canonical completion. -/
def coordinateImage (a b r : R) (c : Coordinate a b) : Canonical a b r :=
  AdicCompletion.of (curveSectionIdeal a b r) (Coordinate a b) c

@[simp] theorem coordinate_projection (a b r : R) (n : ℕ) (c : Coordinate a b) :
    canonicalProjection a b r n (coordinateImage a b r c) =
      Ideal.Quotient.mk (curveSectionIdeal a b r ^ n) c :=
  AdicCompletion.evalₐ_of (curveSectionIdeal a b r) n c

/-- The full completed X pullback is characterized without dividing by a nilpotent.
Together with the same unit-anchor data, this is X_b |-> -ab/X_a. -/
theorem completion_X_relation (a b l : R) (hl : a * b * l = 1) :
    completionEquiv a b l hl (coordinateImage a b (-b) (FreyTorsionOpen.affineX a b)) *
        coordinateImage a b a (FreyTorsionOpen.affineX a b) =
      coordinateImage a b a (algebraMap R (Coordinate a b) (-(a * b))) := by
  apply AdicCompletion.ext_evalₐ
  intro n
  change canonicalProjection a b a n (_ * _) = canonicalProjection a b a n _
  rw [map_mul, completion_projection, coordinate_projection, coordinate_projection,
    coordinate_projection]
  apply (equivA a b l hl n).injective
  rw [map_mul, localized_square, equivB_mk, equivA_mk, equivA_mk,
    FreyTorsionOpenJets.pullbackBA_mk]
  change Ideal.Quotient.mk (FreyTorsionOpenJets.atA a b ^ n)
      (FreyTorsionOpen.pullback a b l hl (FreyTorsionOpen.x a b)) *
    Ideal.Quotient.mk (FreyTorsionOpenJets.atA a b ^ n) (FreyTorsionOpen.x a b) =
    Ideal.Quotient.mk (FreyTorsionOpenJets.atA a b ^ n) (FreyTorsionOpen.scalar a b (-(a*b)))
  rw [← map_mul]
  apply congrArg (Ideal.Quotient.mk (FreyTorsionOpenJets.atA a b ^ n))
  rw [FreyTorsionOpen.pullback_x, map_neg]
  calc
    _ = -(FreyTorsionOpen.scalar a b (a*b)) *
        (FreyTorsionOpen.x a b * FreyTorsionOpen.invX a b) := by ring
    _ = _ := by rw [FreyTorsionOpen.x_mul_invX, mul_one]

/-- The full completed Y pullback retains the inverse-square multiplier.
This identity is at ALL orders, not just modulo the third parameter power. -/
theorem completion_Y_relation (a b l : R) (hl : a * b * l = 1) :
    completionEquiv a b l hl
        (coordinateImage a b (-b) (coordinateMap a b (MvPolynomial.X 1))) *
      coordinateImage a b a (FreyTorsionOpen.affineX a b) ^ 2 =
    coordinateImage a b a (algebraMap R (Coordinate a b) (a*b)) *
      coordinateImage a b a (coordinateMap a b (MvPolynomial.X 1)) := by
  apply AdicCompletion.ext_evalₐ
  intro n
  change canonicalProjection a b a n (_ * _) = canonicalProjection a b a n (_ * _)
  simp only [map_mul, map_pow, completion_projection, coordinate_projection]
  apply (equivA a b l hl n).injective
  rw [map_mul, map_pow, map_mul, localized_square, equivB_mk, equivA_mk,
    equivA_mk, equivA_mk, FreyTorsionOpenJets.pullbackBA_mk]
  change Ideal.Quotient.mk (FreyTorsionOpenJets.atA a b ^ n)
      (FreyTorsionOpen.pullback a b l hl (FreyTorsionOpen.y a b)) *
    Ideal.Quotient.mk (FreyTorsionOpenJets.atA a b ^ n) (FreyTorsionOpen.x a b) ^ 2 =
    Ideal.Quotient.mk (FreyTorsionOpenJets.atA a b ^ n) (FreyTorsionOpen.scalar a b (a*b)) *
    Ideal.Quotient.mk (FreyTorsionOpenJets.atA a b ^ n) (FreyTorsionOpen.y a b)
  rw [← map_pow, ← map_mul, ← map_mul]
  apply congrArg (Ideal.Quotient.mk (FreyTorsionOpenJets.atA a b ^ n))
  rw [FreyTorsionOpen.pullback_y]
  calc
    _ = FreyTorsionOpen.scalar a b (a*b) * FreyTorsionOpen.y a b *
        (FreyTorsionOpen.x a b * FreyTorsionOpen.invX a b) ^ 2 := by ring
    _ = _ := by rw [FreyTorsionOpen.x_mul_invX, one_pow, mul_one]

/-- An actual inverse at every level reflects congruence, unlike a residue map. -/
theorem completion_congruence_iff (a b l : R) (hl : a * b * l = 1)
    (n : ℕ) (u v : Canonical a b (-b)) :
    canonicalProjection a b a n (completionEquiv a b l hl u) =
        canonicalProjection a b a n (completionEquiv a b l hl v) ↔
      canonicalProjection a b (-b) n u = canonicalProjection a b (-b) n v := by
  rw [completion_projection, completion_projection]
  exact (unlocalizedEquiv a b l hl n).injective.eq_iff

/-- Vanishing is reflected at each exponent; no zero-series order convention is used. -/
theorem completion_zero_iff (a b l : R) (hl : a * b * l = 1)
    (n : ℕ) (u : Canonical a b (-b)) :
    canonicalProjection a b a n (completionEquiv a b l hl u) = 0 ↔
      canonicalProjection a b (-b) n u = 0 := by
  simpa only [map_zero] using completion_congruence_iff a b l hl n u 0

/-- An exact filtration layer is preserved in both directions by this equivalence. -/
theorem completion_layer_iff (a b l : R) (hl : a * b * l = 1)
    (n : ℕ) (u : Canonical a b (-b)) :
    (canonicalProjection a b a n (completionEquiv a b l hl u) = 0 ∧
      canonicalProjection a b a (n + 1) (completionEquiv a b l hl u) ≠ 0) ↔
    (canonicalProjection a b (-b) n u = 0 ∧
      canonicalProjection a b (-b) (n + 1) u ≠ 0) := by
  rw [completion_zero_iff, completion_zero_iff]

/-- The two formal-coordinate frames require their own inverse Jacobians. -/
def frameA (a b j : R) (hj : derivative a b a * j = 1) :
    Canonical a b a ≃ₐ[R] PowerSeries R :=
  adicSeriesEquiv a b a j (by ring) hj

def frameB (a b j : R) (hj : derivative a b (-b) * j = 1) :
    Canonical a b (-b) ≃ₐ[R] PowerSeries R :=
  adicSeriesEquiv a b (-b) j (by ring) hj

/-- Express the independently constructed completed map in the existing formal frames.
This is not PowerSeries.map on coefficients, nor the order-two linear rescaling. -/
def seriesPullback (a b l jA jB : R) (hl : a * b * l = 1)
    (hA : derivative a b a * jA = 1) (hB : derivative a b (-b) * jB = 1) :
    PowerSeries R ≃ₐ[R] PowerSeries R :=
  (frameB a b jB hB).symm.trans
    ((completionAlgEquiv a b l hl).trans (frameA a b jA hA))

/-- The formal-coordinate square is tied to the actual completed pullback. -/
theorem series_square (a b l jA jB : R) (hl : a * b * l = 1)
    (hA : derivative a b a * jA = 1) (hB : derivative a b (-b) * jB = 1)
    (u : Canonical a b (-b)) :
    seriesPullback a b l jA jB hl hA hB (frameB a b jB hB u) =
      frameA a b jA hA (completionEquiv a b l hl u) := by
  change frameA a b jA hA (completionEquiv a b l hl
    ((frameB a b jB hB).symm (frameB a b jB hB u))) = _
  rw [AlgEquiv.symm_apply_apply]

/-- The full formal parameter change satisfies the original rational Y formula.
This polynomial identity keeps all nonlinear coefficients; it is not a linear fit. -/
theorem series_parameter_relation (a b l jA jB : R) (hl : a * b * l = 1)
    (hA : derivative a b a * jA = 1) (hB : derivative a b (-b) * jB = 1) :
    seriesPullback a b l jA jB hl hA hB PowerSeries.X *
        frameA a b jA hA (coordinateImage a b a (FreyTorsionOpen.affineX a b)) ^ 2 =
      algebraMap R (PowerSeries R) (a*b) * PowerSeries.X := by
  have hYB : frameB a b jB hB
      (coordinateImage a b (-b) (coordinateMap a b (MvPolynomial.X 1))) = PowerSeries.X :=
    adicSeries_y a b (-b) jB (by ring) hB
  have hYA : frameA a b jA hA
      (coordinateImage a b a (coordinateMap a b (MvPolynomial.X 1))) = PowerSeries.X :=
    adicSeries_y a b a jA (by ring) hA
  have hs := series_square a b l jA jB hl hA hB
    (coordinateImage a b (-b) (coordinateMap a b (MvPolynomial.X 1)))
  rw [hYB] at hs
  have hc : frameA a b jA hA
      (coordinateImage a b a (algebraMap R (Coordinate a b) (a*b))) =
        algebraMap R (PowerSeries R) (a*b) :=
    (frameA a b jA hA).commutes (a*b)
  have h := congrArg (frameA a b jA hA) (completion_Y_relation a b l hl)
  simp only [map_mul, map_pow] at h
  rw [← hs, hc, hYA] at h
  exact h

/-- The finite parameter map is the old presented nonlinear map in finite frames. -/
def parameterEquiv (a b l jA jB : R) (hl : a * b * l = 1)
    (hA : derivative a b a * jA = 1) (hB : derivative a b (-b) * jB = 1) (N : ℕ) :
    Parameter R N ≃+* Parameter R N :=
  (algebraEquiv a b (-b) jB (by ring) hB N).symm.toRingEquiv.trans
    ((presentedJetEquiv a b l hl N).trans
      (algebraEquiv a b a jA (by ring) hA N).toRingEquiv)

/-- Every formal truncation matches the original nonlinear finite map at N+1. -/
theorem series_projection (a b l jA jB : R) (hl : a * b * l = 1)
    (hA : derivative a b a * jA = 1) (hB : derivative a b (-b) * jB = 1)
    (N : ℕ) (F : PowerSeries R) :
    FreyParameterSeries.seriesTrunc N (seriesPullback a b l jA jB hl hA hB F) =
      parameterEquiv a b l jA jB hl hA hB N (FreyParameterSeries.seriesTrunc N F) := by
  have hq : canonicalProjection a b (-b) (N + 1) ((frameB a b jB hB).symm F) =
      (finiteEquiv a b (-b) N).symm
        ((algebraEquiv a b (-b) jB (by ring) hB N).symm
          (FreyParameterSeries.seriesTrunc N F)) := by
    apply (finiteEquiv a b (-b) N).injective
    apply (algebraEquiv a b (-b) jB (by ring) hB N).injective
    have h := adicSeries_projection a b (-b) jB (by ring) hB N
      ((frameB a b jB hB).symm F)
    simpa only [frameB, AlgEquiv.apply_symm_apply] using h.symm
  change FreyParameterSeries.seriesTrunc N (adicSeriesEquiv a b a jA (by ring) hA
    (completionEquiv a b l hl ((frameB a b jB hB).symm F))) = _
  rw [adicSeries_projection, completion_projection, hq]
  rfl

/-- Parameter-adic divisibility is preserved exactly by the full formal pullback.
No assertion about coefficient valuations or norms is contained in this statement. -/
theorem series_filtration_iff (a b l jA jB : R) (hl : a * b * l = 1)
    (hA : derivative a b a * jA = 1) (hB : derivative a b (-b) * jB = 1)
    (N : ℕ) (F : PowerSeries R) :
    (PowerSeries.X : PowerSeries R) ^ (N + 1) ∣ seriesPullback a b l jA jB hl hA hB F ↔
      (PowerSeries.X : PowerSeries R) ^ (N + 1) ∣ F := by
  rw [← FreyParameterSeries.seriesTrunc_eq_zero_iff,
    ← FreyParameterSeries.seriesTrunc_eq_zero_iff, series_projection]
  constructor
  · intro h
    apply (parameterEquiv a b l jA jB hl hA hB N).injective
    simpa only [map_zero] using h
  · intro h
    rw [h, map_zero]

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTorsionCompletion

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

/-- Actual canonical completions of the SAME rational Frey model at Tb and Ta. -/
def PrimitiveAdditiveTriple.freyT0CanonicalPullback (t : PrimitiveAdditiveTriple) :
    FreyCanonicalCompletion.Canonical (t.a : ℚ) (t.b : ℚ) (-(t.b : ℚ)) ≃ₐ[ℚ]
      FreyCanonicalCompletion.Canonical (t.a : ℚ) (t.b : ℚ) (t.a : ℚ) :=
  FreyTorsionCompletion.completionAlgEquiv _ _ _ t.freyOpen_ab_inverse

/-- No source drift: the native completed pullback retains every old finite map. -/
theorem PrimitiveAdditiveTriple.freyT0CanonicalPullback_projection
    (t : PrimitiveAdditiveTriple) (n : ℕ)
    (u : FreyCanonicalCompletion.Canonical (t.a : ℚ) (t.b : ℚ) (-(t.b : ℚ))) :
    FreyCanonicalCompletion.canonicalProjection (t.a : ℚ) (t.b : ℚ) (t.a : ℚ) n
        (t.freyT0CanonicalPullback u) =
      FreyTorsionUnlocalizedJets.unlocalizedEquiv _ _ _ t.freyOpen_ab_inverse n
        (FreyCanonicalCompletion.canonicalProjection (t.a : ℚ) (t.b : ℚ) (-(t.b : ℚ)) n u) :=
  FreyTorsionCompletion.completion_projection _ _ _ t.freyOpen_ab_inverse n u

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
