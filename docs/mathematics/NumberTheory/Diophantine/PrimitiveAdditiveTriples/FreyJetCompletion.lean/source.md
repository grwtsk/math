# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyJetCompletion

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `211c963917049ac0e992864408ad1b56ff11b1b0` · SHA-256 `1090de8fe39d843ec8141958e11c98270fcbc95bb74feee008bf79fd98620910`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses Mathlib coefficient algebras and formal power series (Apache-2.0).
Formalization assistance: OpenAI.

The inverse-limit algebra of the actual relative section-ideal quotients.
Finite quotient maps are retained, not reconstructed from the desired answer.
The coefficient ring is not completed at an arithmetic prime. Identification
with Mathlib AdicCompletion or a scheme stalk, topological packaging, inter-anchor
transport, global sections and height bounds remain separate obligations.
-/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyParameterSeries
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreySectionJetEquiv

set_option autoImplicit false

noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyJetCompletion

open FreyJetQuotient

variable {R : Type*} [CommRing R]

/-- The compatible-sequence subalgebra for the original unshifted quotient rings. -/
def compatibleJets (a b r : R) : Subalgebra R (∀ N : ℕ, Jet a b r N) where
  carrier := {u | ∀ M N (hMN : M ≤ N), truncate a b r M N hMN (u N) = u M}
  mul_mem' := by
    intro u v hu hv M N hMN
    change truncate a b r M N hMN (u N * v N) = u M * v M
    rw [map_mul, hu M N hMN, hv M N hMN]
  add_mem' := by
    intro u v hu hv M N hMN
    change truncate a b r M N hMN (u N + v N) = u M + v M
    rw [map_add, hu M N hMN, hv M N hMN]
  zero_mem' := by
    intro M N hMN
    exact map_zero (truncate a b r M N hMN)
  one_mem' := by
    intro M N hMN
    exact map_one (truncate a b r M N hMN)
  algebraMap_mem' c := by
    intro M N hMN
    exact truncate_scalar a b r M N hMN c

/-- Explicit inverse-limit model of completion along the selected section.
This is not an alias for an already-proved AdicCompletion comparison theorem. -/
abbrev Limit (a b r : R) := ↥(compatibleJets a b r)

/-- The projection to a full finite section-ideal quotient. -/
def projection (a b r : R) (N : ℕ) : Limit a b r →ₐ[R] Jet a b r N where
  toFun u := u.val N
  map_one' := rfl
  map_mul' _ _ := rfl
  map_zero' := rfl
  map_add' _ _ := rfl
  commutes' _ := rfl

/-- Separatedness: agreement at every finite order is equality in the limit. -/
theorem limit_ext (a b r : R) (u v : Limit a b r)
    (h : ∀ N, projection a b r N u = projection a b r N v) : u = v := by
  apply Subtype.ext
  funext N
  exact h N

/-- The projections satisfy the SAME independently defined quotient transition law. -/
theorem projection_compatible (a b r : R) (M N : ℕ) (hMN : M ≤ N)
    (u : Limit a b r) :
    truncate a b r M N hMN (projection a b r N u) = projection a b r M u :=
  u.property M N hMN

/-- Universal map of R-algebras from a compatible cone. -/
def lift {S : Type*} [CommRing S] [Algebra R S] (a b r : R)
    (f : ∀ N, S →ₐ[R] Jet a b r N)
    (hf : ∀ M N (hMN : M ≤ N) s, truncate a b r M N hMN (f N s) = f M s) :
    S →ₐ[R] Limit a b r where
  toFun s := ⟨fun N => f N s, fun M N hMN => hf M N hMN s⟩
  map_one' := by apply Subtype.ext; funext N; exact (f N).map_one
  map_mul' s t := by apply Subtype.ext; funext N; exact (f N).map_mul s t
  map_zero' := by apply Subtype.ext; funext N; exact (f N).map_zero
  map_add' s t := by apply Subtype.ext; funext N; exact (f N).map_add s t
  commutes' c := by apply Subtype.ext; funext N; exact (f N).commutes c

/-- The universal map has the required projections as actual functions. -/
theorem projection_lift {S : Type*} [CommRing S] [Algebra R S] (a b r : R)
    (f : ∀ N, S →ₐ[R] Jet a b r N)
    (hf : ∀ M N (hMN : M ≤ N) s, truncate a b r M N hMN (f N s) = f M s)
    (N : ℕ) :
    (projection a b r N).comp (lift a b r f hf) = f N := by
  ext s
  rfl

/-- Universal uniqueness does not assume injectivity of a particular finite projection. -/
theorem lift_unique {S : Type*} [CommRing S] [Algebra R S] (a b r : R)
    (f : ∀ N, S →ₐ[R] Jet a b r N)
    (hf : ∀ M N (hMN : M ≤ N) s, truncate a b r M N hMN (f N s) = f M s)
    (g : S →ₐ[R] Limit a b r)
    (hg : ∀ N, (projection a b r N).comp g = f N) : g = lift a b r f hf := by
  apply AlgHom.ext
  intro s
  apply limit_ext a b r
  intro N
  exact DFunLike.congr_fun (hg N) s

/-- Apply the existing finite algebra equivalence at every coordinate. -/
def toParameters (a b r j : R)
    (hr : r * (r - a) * (r + b) = 0) (hj : derivative a b r * j = 1) :
    Limit a b r →ₐ[R] FreyParameterSeries.Limit R where
  toFun u := ⟨fun N => algebraEquiv a b r j hr hj N (u.val N), by
    intro M N hMN
    change parameterTruncate R M N hMN (toParameter a b r j hr hj N (u.val N)) =
      toParameter a b r j hr hj M (u.val M)
    rw [← toParameter_truncate a b r j hr hj M N hMN, u.property M N hMN]⟩
  map_one' := by apply Subtype.ext; funext N; exact (algebraEquiv a b r j hr hj N).map_one
  map_mul' u v := by apply Subtype.ext; funext N; exact (algebraEquiv a b r j hr hj N).map_mul _ _
  map_zero' := by apply Subtype.ext; funext N; exact (algebraEquiv a b r j hr hj N).map_zero
  map_add' u v := by apply Subtype.ext; funext N; exact (algebraEquiv a b r j hr hj N).map_add _ _
  commutes' c := by apply Subtype.ext; funext N; exact (algebraEquiv a b r j hr hj N).commutes c

/-- Invert the same finite maps. Coherence uses the proved inverse-map square. -/
def fromParameters (a b r j : R)
    (hr : r * (r - a) * (r + b) = 0) (hj : derivative a b r * j = 1) :
    FreyParameterSeries.Limit R →ₐ[R] Limit a b r where
  toFun u := ⟨fun N => (algebraEquiv a b r j hr hj N).symm (u.val N), by
    intro M N hMN
    change truncate a b r M N hMN (fromParameter a b r N (u.val N)) =
      fromParameter a b r M (u.val M)
    have h := DFunLike.congr_fun (fromParameter_truncate a b r M N hMN) (u.val N)
    simpa only [RingHom.comp_apply, u.property M N hMN] using h.symm⟩
  map_one' := by apply Subtype.ext; funext N; exact (algebraEquiv a b r j hr hj N).symm.map_one
  map_mul' u v := by apply Subtype.ext; funext N; exact (algebraEquiv a b r j hr hj N).symm.map_mul _ _
  map_zero' := by apply Subtype.ext; funext N; exact (algebraEquiv a b r j hr hj N).symm.map_zero
  map_add' u v := by apply Subtype.ext; funext N; exact (algebraEquiv a b r j hr hj N).symm.map_add _ _
  commutes' c := by apply Subtype.ext; funext N; exact (algebraEquiv a b r j hr hj N).symm.commutes c

/-- The levelwise natural isomorphisms induce an explicit algebra equivalence of limits. -/
def limitEquiv (a b r j : R)
    (hr : r * (r - a) * (r + b) = 0) (hj : derivative a b r * j = 1) :
    Limit a b r ≃ₐ[R] FreyParameterSeries.Limit R where
  toFun := toParameters a b r j hr hj
  invFun := fromParameters a b r j hr hj
  left_inv u := by
    apply Subtype.ext
    funext N
    exact (algebraEquiv a b r j hr hj N).symm_apply_apply (u.val N)
  right_inv u := by
    apply Subtype.ext
    funext N
    exact (algebraEquiv a b r j hr hj N).apply_symm_apply (u.val N)
  map_mul' := (toParameters a b r j hr hj).map_mul
  map_add' := (toParameters a b r j hr hj).map_add
  commutes' := (toParameters a b r j hr hj).commutes

/-- The inverse-limit completion along the section is formal power series over R.
The coefficient ring R is retained and has not been completed at a prime. -/
def completionEquiv (a b r j : R)
    (hr : r * (r - a) * (r + b) = 0) (hj : derivative a b r * j = 1) :
    Limit a b r ≃ₐ[R] PowerSeries R :=
  (limitEquiv a b r j hr hj).trans (FreyParameterSeries.seriesEquiv R).symm

/-- The completed isomorphism agrees with the original finite map at every order. -/
theorem completion_projection (a b r j : R)
    (hr : r * (r - a) * (r + b) = 0) (hj : derivative a b r * j = 1)
    (N : ℕ) (u : Limit a b r) :
    FreyParameterSeries.seriesTrunc N (completionEquiv a b r j hr hj u) =
      algebraEquiv a b r j hr hj N (projection a b r N u) :=
  FreyParameterSeries.seriesTrunc_toSeries N (toParameters a b r j hr hj u)

/-- Exact filtration preservation: the whole projection kernel, not just a size bound. -/
theorem projection_zero_iff (a b r j : R)
    (hr : r * (r - a) * (r + b) = 0) (hj : derivative a b r * j = 1)
    (N : ℕ) (u : Limit a b r) :
    projection a b r N u = 0 ↔
      (PowerSeries.X : PowerSeries R) ^ (N + 1) ∣ completionEquiv a b r j hr hj u := by
  rw [← FreyParameterSeries.seriesTrunc_eq_zero_iff, completion_projection]
  constructor
  · intro h
    rw [h, map_zero]
  · intro h
    apply (algebraEquiv a b r j hr hj N).injective
    simpa only [map_zero] using h

/-- The universal Y coordinate is a compatible family in the actual quotient rings. -/
def yCoordinate (a b r : R) : Limit a b r :=
  ⟨fun N => y a b r N, fun M N hMN => truncate_y a b r M N hMN⟩

/-- The universal X coordinate, retaining the original unshifted source. -/
def xCoordinate (a b r : R) : Limit a b r :=
  ⟨fun N => x a b r N, fun M N hMN => truncate_x a b r M N hMN⟩

/-- The completed parameter identification sends the actual Y coordinate to T. -/
theorem completion_y (a b r j : R)
    (hr : r * (r - a) * (r + b) = 0) (hj : derivative a b r * j = 1) :
    completionEquiv a b r j hr hj (yCoordinate a b r) = PowerSeries.X := by
  apply FreyParameterSeries.series_ext
  intro N
  rw [completion_projection, FreyParameterSeries.seriesTrunc_X]
  exact toParameter_y a b r j hr hj N

/-- The curve equation holds in the entire limit algebra, because every projection
satisfies it. This is a formal identity, not an analytic convergence assertion. -/
theorem limit_cubic (a b r : R) :
    xCoordinate a b r * (xCoordinate a b r - algebraMap R (Limit a b r) a) *
      (xCoordinate a b r + algebraMap R (Limit a b r) b) = yCoordinate a b r ^ 2 := by
  apply limit_ext a b r
  intro N
  change x a b r N * (x a b r N - scalar a b r N a) *
    (x a b r N + scalar a b r N b) = y a b r N ^ 2
  exact quotient_cubic a b r N

/-- The resulting formal X series satisfies the same factored source cubic. -/
theorem completion_x_cubic (a b r j : R)
    (hr : r * (r - a) * (r + b) = 0) (hj : derivative a b r * j = 1) :
    let Xf := completionEquiv a b r j hr hj (xCoordinate a b r)
    Xf * (Xf - PowerSeries.C a) * (Xf + PowerSeries.C b) = PowerSeries.X ^ 2 := by
  have h := congrArg (completionEquiv a b r j hr hj) (limit_cubic a b r)
  have ha : completionEquiv a b r j hr hj (algebraMap R (Limit a b r) a) =
      PowerSeries.C a := (completionEquiv a b r j hr hj).commutes a
  have hb : completionEquiv a b r j hr hj (algebraMap R (Limit a b r) b) =
      PowerSeries.C b := (completionEquiv a b r j hr hj).commutes b
  simpa only [map_mul, map_sub, map_add, map_pow, ha, hb, completion_y] using h

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyJetCompletion

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

/-- Completion along the SAME selected integral torsion section, modeled as the
compatible inverse limit of the independently defined finite relation quotients. -/
abbrev FreySectionCompletion (t : PrimitiveAdditiveTriple) (i : Fin 3) :=
  FreyJetCompletion.Limit (t.a : FreyJetChart t i) (t.b : FreyJetChart t i)
    (algebraMap ℤ (FreyJetChart t i) (t.freyPortRootInt i))

/-- The actual localization constructs the inverse-Jacobian premise. -/
def PrimitiveAdditiveTriple.freySectionCompletionEquiv
    (t : PrimitiveAdditiveTriple) (i : Fin 3) :
    FreySectionCompletion t i ≃ₐ[FreyJetChart t i] PowerSeries (FreyJetChart t i) :=
  FreyJetCompletion.completionEquiv _ _ _ (t.freyChartInverse i)
    (t.freySectionJet_root i) (t.freySectionJet_inverse i)

/-- Every finite shadow agrees with v0.12's source-bound section-jet equivalence. -/
theorem PrimitiveAdditiveTriple.freySectionCompletion_projection
    (t : PrimitiveAdditiveTriple) (i : Fin 3) (N : ℕ) (u : FreySectionCompletion t i) :
    FreyParameterSeries.seriesTrunc N (t.freySectionCompletionEquiv i u) =
      t.freySectionJetEquiv i N (u.val N) :=
  FreyJetCompletion.completion_projection _ _ _ (t.freyChartInverse i)
    (t.freySectionJet_root i) (t.freySectionJet_inverse i) N u

/-- No valuation depth is erased: vanishing at order N is exactly divisibility
by T^(N+1) of the corresponding formal series. No metric claim follows. -/
theorem PrimitiveAdditiveTriple.freySectionCompletion_filtration
    (t : PrimitiveAdditiveTriple) (i : Fin 3) (N : ℕ) (u : FreySectionCompletion t i) :
    u.val N = 0 ↔
      (PowerSeries.X : PowerSeries (FreyJetChart t i)) ^ (N + 1) ∣
        t.freySectionCompletionEquiv i u :=
  FreyJetCompletion.projection_zero_iff _ _ _ (t.freyChartInverse i)
    (t.freySectionJet_root i) (t.freySectionJet_inverse i) N u

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
```
