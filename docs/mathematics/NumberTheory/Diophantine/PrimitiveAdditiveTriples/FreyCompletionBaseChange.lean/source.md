# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCompletionBaseChange

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b94a8842ece546e139336b7901b87ace4699846b` · SHA-256 `7b463085566d9fca619c4411320733a894ad2ba3770fc133ed3d7c52b579f18b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses Mathlib formal power-series coefficient maps (Apache-2.0).
Formalization assistance: OpenAI.

Coefficient naturality for the explicit relative-completion model. Transport
is constructed levelwise from the independently descended quotient maps.
No tensor/inverse-limit interchange, coefficient completion, topological
comparison, or arithmetic height estimate is asserted. Source proof scripts only.
-/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyJetBaseChange
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyJetCompletion

set_option autoImplicit false

noncomputable section

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCompletionBaseChange

open FreyJetQuotient FreyJetBaseChange

variable {R S U : Type*} [CommRing R] [CommRing S] [CommRing U]

/-- Map every finite quotient, then prove the resulting sequence is compatible.
This map does not use completionEquiv and exists even without a unit derivative. -/
def mapLimit (f : R →+* S) (a b r : R) :
    FreyJetCompletion.Limit a b r →+* FreyJetCompletion.Limit (f a) (f b) (f r) where
  toFun u := ⟨fun N => jetMap f a b r N (u.val N), by
    intro M N hMN
    have h := DFunLike.congr_fun (jetMap_truncate f a b r M N hMN) (u.val N)
    simpa only [RingHom.comp_apply, u.property M N hMN] using h⟩
  map_one' := by apply Subtype.ext; funext N; exact (jetMap f a b r N).map_one
  map_mul' u v := by apply Subtype.ext; funext N; exact (jetMap f a b r N).map_mul _ _
  map_zero' := by apply Subtype.ext; funext N; exact (jetMap f a b r N).map_zero
  map_add' u v := by apply Subtype.ext; funext N; exact (jetMap f a b r N).map_add _ _

/-- The exact finite projection of the limit map. -/
@[simp] theorem mapLimit_projection (f : R →+* S) (a b r : R) (N : ℕ)
    (u : FreyJetCompletion.Limit a b r) :
    FreyJetCompletion.projection (f a) (f b) (f r) N (mapLimit f a b r u) =
      jetMap f a b r N (FreyJetCompletion.projection a b r N u) := rfl

/-- Coefficients follow f; this is not an algebra map fixing two different bases. -/
theorem mapLimit_scalar (f : R →+* S) (a b r c : R) :
    mapLimit f a b r (algebraMap R (FreyJetCompletion.Limit a b r) c) =
      algebraMap S (FreyJetCompletion.Limit (f a) (f b) (f r)) (f c) := by
  apply FreyJetCompletion.limit_ext (f a) (f b) (f r)
  intro N
  exact jetMap_scalar f a b r N c

/-- Identity coefficient transport is the identity on all compatible sequences. -/
theorem mapLimit_id (a b r : R) :
    mapLimit (RingHom.id R) a b r = RingHom.id (FreyJetCompletion.Limit a b r) := by
  apply RingHom.ext
  intro u
  apply Subtype.ext
  funext N
  exact DFunLike.congr_fun (jetMap_id a b r N) (u.val N)

/-- Composition is inherited from the exact finite maps, not from a fitted series. -/
theorem mapLimit_comp (f : R →+* S) (g : S →+* U) (a b r : R) :
    (mapLimit g (f a) (f b) (f r)).comp (mapLimit f a b r) =
      mapLimit (g.comp f) a b r := by
  apply RingHom.ext
  intro u
  apply Subtype.ext
  funext N
  exact DFunLike.congr_fun (jetMap_comp f g a b r N) (u.val N)

/-- Actual formal-series coefficient transport has the same finite shadows. -/
theorem seriesTrunc_map (f : R →+* S) (N : ℕ) (F : PowerSeries R) :
    FreyParameterSeries.seriesTrunc N (PowerSeries.map f F) =
      parameterMap f N (FreyParameterSeries.seriesTrunc N F) := by
  apply FreyParameterSeries.coefficient_ext N
  intro k hk
  rw [FreyParameterSeries.coefficient_seriesTrunc N k hk,
    coefficient_parameterMap f N k hk,
    FreyParameterSeries.coefficient_seriesTrunc N k hk, PowerSeries.coeff_map]

/-- Naturality of the completion equivalence under an arbitrary coefficient map.
The inverse, root and equation all map together. No flatness assumption is needed. -/
theorem completion_natural (f : R →+* S) (a b r j : R)
    (hr : r * (r - a) * (r + b) = 0) (hj : derivative a b r * j = 1)
    (u : FreyJetCompletion.Limit a b r) :
    FreyJetCompletion.completionEquiv (f a) (f b) (f r) (f j)
        (mapped_root f a b r hr) (mapped_inverse f a b r j hj) (mapLimit f a b r u) =
      PowerSeries.map f (FreyJetCompletion.completionEquiv a b r j hr hj u) := by
  apply FreyParameterSeries.series_ext
  intro N
  rw [FreyJetCompletion.completion_projection, seriesTrunc_map,
    FreyJetCompletion.completion_projection]
  change toParameter (f a) (f b) (f r) (f j)
      (mapped_root f a b r hr) (mapped_inverse f a b r j hj) N
        (jetMap f a b r N (u.val N)) =
    parameterMap f N (toParameter a b r j hr hj N (u.val N))
  exact toParameter_natural f a b r j hr hj N (u.val N)

/-- Vanishing to at least the selected finite order is preserved by every
coefficient map. Noninjective specialization can strictly increase exact order. -/
theorem projection_zero_map (f : R →+* S) (a b r : R) (N : ℕ)
    (u : FreyJetCompletion.Limit a b r)
    (hu : FreyJetCompletion.projection a b r N u = 0) :
    FreyJetCompletion.projection (f a) (f b) (f r) N (mapLimit f a b r u) = 0 := by
  rw [mapLimit_projection, hu, map_zero]

/-- Reflection of finite vanishing requires injective coefficients on this branch.
A residue specialization must not use this theorem without that premise. -/
theorem projection_zero_iff_of_injective (f : R →+* S) (hf : Function.Injective f)
    (a b r j : R) (hr : r * (r - a) * (r + b) = 0)
    (hj : derivative a b r * j = 1) (N : ℕ) (u : FreyJetCompletion.Limit a b r) :
    FreyJetCompletion.projection (f a) (f b) (f r) N (mapLimit f a b r u) = 0 ↔
      FreyJetCompletion.projection a b r N u = 0 := by
  rw [mapLimit_projection]
  constructor
  · intro h
    apply jetMap_injective f hf a b r j hr hj N
    simpa only [map_zero] using h
  · intro h
    rw [h, map_zero]

/-- An injective coefficient map gives injective completion transport; no metric law. -/
theorem mapLimit_injective (f : R →+* S) (hf : Function.Injective f)
    (a b r j : R) (hr : r * (r - a) * (r + b) = 0)
    (hj : derivative a b r * j = 1) : Function.Injective (mapLimit f a b r) := by
  intro u v huv
  apply FreyJetCompletion.limit_ext a b r
  intro N
  apply jetMap_injective f hf a b r j hr hj N
  exact congrArg (fun w : FreyJetCompletion.Limit (f a) (f b) (f r) => w.val N) huv

/-- Coefficient specialization can erase a nonzero series. This is a source
fixture for the injectivity premise, not a claim about bad reduction. -/
theorem residue_erases_nonzero_constant :
    (PowerSeries.C (2 : ℤ) : PowerSeries ℤ) ≠ 0 ∧
      PowerSeries.map (Int.castRingHom (ZMod 2)) (PowerSeries.C (2 : ℤ)) = 0 := by
  constructor
  · intro h
    have hc := congrArg (PowerSeries.coeff 0) h
    norm_num at hc
  · norm_num

/-- A nonzero source whose exact T order strictly increases under reduction.
The leading coefficient 2 is erased, while the next coefficient 1 survives. -/
def orderIncreaseSource (k : ℕ) : PowerSeries ℤ :=
  PowerSeries.C 2 * PowerSeries.X ^ k + PowerSeries.X ^ (k + 1)

@[simp] theorem orderIncreaseSource_coeff (k : ℕ) :
    PowerSeries.coeff k (orderIncreaseSource k) = 2 := by
  simp [orderIncreaseSource, PowerSeries.coeff_X_pow,
    show k ≠ k + 1 by omega, show k + 1 ≠ k by omega]

/-- The target is still nonzero: this is not merely an erased-constant example. -/
theorem orderIncreaseSource_specializes (k : ℕ) :
    PowerSeries.map (Int.castRingHom (ZMod 2)) (orderIncreaseSource k) =
      (PowerSeries.X : PowerSeries (ZMod 2)) ^ (k + 1) := by
  norm_num [orderIncreaseSource]

/-- Exact orders k and k+1 are expressed through divisibility and nondivisibility.
This rejects exact-order preservation without introducing an infinity convention. -/
theorem residue_exact_order_increase (k : ℕ) :
    orderIncreaseSource k ≠ 0 ∧
      PowerSeries.map (Int.castRingHom (ZMod 2)) (orderIncreaseSource k) ≠ 0 ∧
      (PowerSeries.X : PowerSeries ℤ) ^ k ∣ orderIncreaseSource k ∧
      ¬ (PowerSeries.X : PowerSeries ℤ) ^ (k + 1) ∣ orderIncreaseSource k ∧
      (PowerSeries.X : PowerSeries (ZMod 2)) ^ (k + 1) ∣
        PowerSeries.map (Int.castRingHom (ZMod 2)) (orderIncreaseSource k) ∧
      ¬ (PowerSeries.X : PowerSeries (ZMod 2)) ^ (k + 2) ∣
        PowerSeries.map (Int.castRingHom (ZMod 2)) (orderIncreaseSource k) := by
  have hs : ¬ (PowerSeries.X : PowerSeries ℤ) ^ (k + 1) ∣ orderIncreaseSource k := by
    intro hd
    have hz := PowerSeries.X_pow_dvd_iff.mp hd k (Nat.lt_succ_self k)
    rw [orderIncreaseSource_coeff] at hz
    norm_num at hz
  have ht : ¬ (PowerSeries.X : PowerSeries (ZMod 2)) ^ (k + 2) ∣
      PowerSeries.map (Int.castRingHom (ZMod 2)) (orderIncreaseSource k) := by
    rw [orderIncreaseSource_specializes]
    intro hd
    have hz := PowerSeries.X_pow_dvd_iff.mp hd (k + 1) (by omega)
    simpa using hz
  refine ⟨?_, ?_, ?_, hs, ?_, ht⟩
  · intro hz
    apply hs
    rw [hz]
    exact dvd_zero _
  · intro hz
    apply ht
    rw [hz]
    exact dvd_zero _
  · refine ⟨PowerSeries.C 2 + PowerSeries.X, ?_⟩
    unfold orderIncreaseSource
    rw [pow_succ]
    ring
  · rw [orderIncreaseSource_specializes]
    exact dvd_rfl

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyCompletionBaseChange

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

/-- Transport the completion at the SAME anchor through an actual map out of S_i.
For residue targets this map is supplied by freyChartMap only at a unit Jacobian. -/
def PrimitiveAdditiveTriple.freySectionCompletionMap
    (t : PrimitiveAdditiveTriple) (i : Fin 3) {A : Type*} [CommRing A]
    (f : FreyJetChart t i →+* A) :
    FreySectionCompletion t i →+*
      FreyJetCompletion.Limit (f (t.a : FreyJetChart t i)) (f (t.b : FreyJetChart t i))
        (f (algebraMap ℤ (FreyJetChart t i) (t.freyPortRootInt i))) :=
  FreyCompletionBaseChange.mapLimit f _ _ _

/-- The formal Frey series specializes coefficientwise through the exact same map.
This is not a tensor-product/completion isomorphism or inter-anchor transport. -/
theorem PrimitiveAdditiveTriple.freySectionCompletion_baseChange
    (t : PrimitiveAdditiveTriple) (i : Fin 3) {A : Type*} [CommRing A]
    (f : FreyJetChart t i →+* A) (u : FreySectionCompletion t i) :
    FreyJetCompletion.completionEquiv (f (t.a : FreyJetChart t i)) (f (t.b : FreyJetChart t i))
        (f (algebraMap ℤ (FreyJetChart t i) (t.freyPortRootInt i))) (f (t.freyChartInverse i))
        (FreyJetBaseChange.mapped_root f _ _ _ (t.freySectionJet_root i))
        (FreyJetBaseChange.mapped_inverse f _ _ _ _ (t.freySectionJet_inverse i))
        (t.freySectionCompletionMap i f u) =
      PowerSeries.map f (t.freySectionCompletionEquiv i u) :=
  FreyCompletionBaseChange.completion_natural f _ _ _ _
    (t.freySectionJet_root i) (t.freySectionJet_inverse i) u

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
```
