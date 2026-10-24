# Complete source: GRWTSK.Algebra.RingTheory.AdicCompletion.CompatibleEquiv

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `870781fb5cf7b4db85f583d8d8f17032d6e0dd12` · SHA-256 `5ac8b7f3552d1ec0408c5ba9aaadf9d4627351ca65f7cb954a566c4433836955`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses Mathlib's canonical adic completion and its universal property (Apache-2.0).
Formalization assistance: OpenAI.

Compatible ideal-power quotient maps induce a map of the ACTUAL canonical
completions. Compatible equivalences give both inverse maps. The construction
uses every exponent, including zero, before any formal-coordinate comparison.
No smoothness, topology, finite cardinality, tensor interchange or norm claim.
Source proof scripts pending elaboration and transitive trust checks.
-/
import Mathlib.RingTheory.AdicCompletion.Algebra

set_option autoImplicit false

noncomputable section

namespace GRWTSK.Algebra.RingTheory.AdicCompletion.CompatibleEquiv

variable {A B : Type*} [CommRing A] [CommRing B]
variable (I : Ideal A) (J : Ideal B)

/-- Actual canonical projections obey the ideal-power transition maps. -/
theorem eval_transition {m n : ℕ} (hmn : m ≤ n) (u : AdicCompletion I A) :
    Ideal.Quotient.factorPow I hmn (AdicCompletion.evalₐ I n u) =
      AdicCompletion.evalₐ I m u := by
  obtain ⟨s, rfl⟩ := AdicCompletion.mk_surjective I A u
  rw [AdicCompletion.evalₐ_mk, AdicCompletion.evalₐ_mk]
  exact AdicCompletion.Ideal.mk_eq_mk I hmn s

/-- Every target transition must commute with the SAME source transition. -/
def Compatible (f : ∀ n : ℕ, A ⧸ I ^ n →+* B ⧸ J ^ n) : Prop :=
  ∀ (m n : ℕ) (hmn : m ≤ n) (x : A ⧸ I ^ n),
    Ideal.Quotient.factorPow J hmn (f n x) =
      f m (Ideal.Quotient.factorPow I hmn x)

/-- A stage map is defined on the canonical source, not on chosen representatives. -/
def stage (f : ∀ n : ℕ, A ⧸ I ^ n →+* B ⧸ J ^ n) (n : ℕ) :
    AdicCompletion I A →+* B ⧸ J ^ n :=
  (f n).comp (AdicCompletion.evalₐ I n).toRingHom

/-- Compatibility at all exponents is supplied to the library universal lift. -/
theorem stage_compatible (f : ∀ n : ℕ, A ⧸ I ^ n →+* B ⧸ J ^ n)
    (hf : Compatible I J f) {m n : ℕ} (hmn : m ≤ n) :
    (Ideal.Quotient.factorPow J hmn).comp (stage I J f n) = stage I J f m := by
  apply RingHom.ext
  intro u
  change Ideal.Quotient.factorPow J hmn (f n (AdicCompletion.evalₐ I n u)) =
    f m (AdicCompletion.evalₐ I m u)
  rw [hf m n hmn, eval_transition]

/-- The map is constructed by liftRingHom, not by a formal-series conjugation. -/
def lift (f : ∀ n : ℕ, A ⧸ I ^ n →+* B ⧸ J ^ n)
    (hf : Compatible I J f) : AdicCompletion I A →+* AdicCompletion J B :=
  AdicCompletion.liftRingHom J (stage I J f)
    (fun hmn => stage_compatible I J f hf hmn)

/-- The defining projection identity is valid at exponent zero as well. -/
@[simp] theorem lift_projection (f : ∀ n : ℕ, A ⧸ I ^ n →+* B ⧸ J ^ n)
    (hf : Compatible I J f) (n : ℕ) (u : AdicCompletion I A) :
    AdicCompletion.evalₐ J n (lift I J f hf u) = f n (AdicCompletion.evalₐ I n u) :=
  AdicCompletion.evalₐ_liftRingHom J (stage I J f)
    (fun hmn => stage_compatible I J f hf hmn) n u

/-- Agreement at ALL canonical projections uniquely determines the completed map. -/
theorem lift_unique (f : ∀ n : ℕ, A ⧸ I ^ n →+* B ⧸ J ^ n)
    (hf : Compatible I J f) (F : AdicCompletion I A →+* AdicCompletion J B)
    (hF : ∀ n u, AdicCompletion.evalₐ J n (F u) = f n (AdicCompletion.evalₐ I n u)) :
    F = lift I J f hf := by
  apply RingHom.ext
  intro u
  apply AdicCompletion.ext_evalₐ
  intro n
  rw [lift_projection]
  exact hF n u

/-- Inverse transition compatibility is derived, not omitted or assumed separately. -/
theorem compatible_symm (e : ∀ n : ℕ, A ⧸ I ^ n ≃+* B ⧸ J ^ n)
    (he : Compatible I J (fun n => (e n).toRingHom)) :
    Compatible J I (fun n => (e n).symm.toRingHom) := by
  intro m n hmn y
  apply (e m).injective
  change e m (Ideal.Quotient.factorPow I hmn ((e n).symm y)) =
    e m ((e m).symm (Ideal.Quotient.factorPow J hmn y))
  rw [RingEquiv.apply_symm_apply]
  exact (by simpa only [RingEquiv.apply_symm_apply] using
    he m n hmn ((e n).symm y)).symm

/-- Compatible ring equivalences give an equivalence of canonical completions.
Both maps use the universal lift on the original ideal-power towers. -/
def equivalence (e : ∀ n : ℕ, A ⧸ I ^ n ≃+* B ⧸ J ^ n)
    (he : Compatible I J (fun n => (e n).toRingHom)) :
    AdicCompletion I A ≃+* AdicCompletion J B where
  toFun := lift I J (fun n => (e n).toRingHom) he
  invFun := lift J I (fun n => (e n).symm.toRingHom) (compatible_symm I J e he)
  left_inv u := by
    apply AdicCompletion.ext_evalₐ
    intro n
    rw [lift_projection, lift_projection]
    exact (e n).symm_apply_apply _
  right_inv v := by
    apply AdicCompletion.ext_evalₐ
    intro n
    rw [lift_projection, lift_projection]
    exact (e n).apply_symm_apply _
  map_add' := (lift I J (fun n => (e n).toRingHom) he).map_add
  map_mul' := (lift I J (fun n => (e n).toRingHom) he).map_mul

@[simp] theorem equivalence_projection (e : ∀ n : ℕ, A ⧸ I ^ n ≃+* B ⧸ J ^ n)
    (he : Compatible I J (fun n => (e n).toRingHom)) (n : ℕ) (u : AdicCompletion I A) :
    AdicCompletion.evalₐ J n (equivalence I J e he u) = e n (AdicCompletion.evalₐ I n u) :=
  lift_projection I J _ he n u

@[simp] theorem equivalence_symm_projection (e : ∀ n : ℕ, A ⧸ I ^ n ≃+* B ⧸ J ^ n)
    (he : Compatible I J (fun n => (e n).toRingHom)) (n : ℕ) (v : AdicCompletion J B) :
    AdicCompletion.evalₐ I n ((equivalence I J e he).symm v) =
      (e n).symm (AdicCompletion.evalₐ J n v) :=
  lift_projection J I _ (compatible_symm I J e he) n v

/-- Full congruence, not merely vanishing of a sampled residual, is transported. -/
theorem congruence_iff (e : ∀ n : ℕ, A ⧸ I ^ n ≃+* B ⧸ J ^ n)
    (he : Compatible I J (fun n => (e n).toRingHom)) (n : ℕ)
    (u v : AdicCompletion I A) :
    AdicCompletion.evalₐ J n (equivalence I J e he u) =
        AdicCompletion.evalₐ J n (equivalence I J e he v) ↔
      AdicCompletion.evalₐ I n u = AdicCompletion.evalₐ I n v := by
  rw [equivalence_projection, equivalence_projection]
  exact (e n).injective.eq_iff

end GRWTSK.Algebra.RingTheory.AdicCompletion.CompatibleEquiv
```
