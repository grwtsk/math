# Complete source: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.MomentReindexing

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e5e19efd3ac41e337d851b9690c2255f925dae6a` · SHA-256 `2501d04d96b54cc484861a309e02d1a3d15e3f605f9066bc783431fd2ebb3ebe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Uses Mathlib finite-sum infrastructure (Apache-2.0).
OpenAI Codex formalization assistance.
No radical-height estimate or abc implication is assumed or proved here. -/
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Moments
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.Definitions

set_option autoImplicit false

namespace GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples

open scoped BigOperators

/-- The actual primitive positive additive triples whose third coordinate is at
most `N`. Finiteness is the bounded-height theorem, with no all-height claim. -/
noncomputable def boundedTriples (N : ℕ) : Finset PrimitiveAdditiveTriple :=
  (PrimitiveAdditiveTriple.finite_height N).toFinset

@[simp] theorem mem_boundedTriples {N : ℕ} {t : PrimitiveAdditiveTriple} :
    t ∈ boundedTriples N ↔ t.c ≤ N := by
  classical
  simp [boundedTriples]

/-- A joint ternary-weighted moment over primitive positive additive triples.
The exact constraint `a + b = c` and coprimality are supplied by the triple type;
no factorization of the joint weight is required. -/
noncomputable def typedPrimitiveWeightedMoment {R : Type*} [Ring R]
    (N : ℕ) (W : ℕ → ℕ → ℕ → R) : R :=
  ∑ t ∈ boundedTriples N, W t.a t.b t.c

/-- The product-weight specialization of the typed primitive additive moment. -/
noncomputable def typedPrimitiveMoment {R : Type*} [Ring R]
    (N : ℕ) (A B C : ℕ → R) : R :=
  typedPrimitiveWeightedMoment N (fun a b c => A a * B b * C c)

/-- Reindex the bounded typed triples by their first two coordinates. This
retains the positive cutoffs, coprimality and exact additive third coordinate. -/
theorem typedPrimitiveWeightedMoment_eq_primitiveWeightedMoment {R : Type*} [Ring R]
    (N : ℕ) (W : ℕ → ℕ → ℕ → R) :
    typedPrimitiveWeightedMoment N W = primitiveWeightedMoment N W := by
  classical
  unfold typedPrimitiveWeightedMoment primitiveWeightedMoment
  rw [← Finset.sum_filter]
  refine Finset.sum_bij (fun t _ => (t.a, t.b)) ?_ ?_ ?_ ?_
  · intro t ht
    have hc : t.c ≤ N := mem_boundedTriples.mp ht
    have ha : t.a ≤ N := le_trans (Nat.le_of_lt t.a_lt_c) hc
    have hb : t.b ≤ N := le_trans (Nat.le_of_lt t.b_lt_c) hc
    apply Finset.mem_filter.mpr
    exact ⟨mem_additivePairs.mpr ⟨t.a_pos, ha, t.b_pos, hb,
      by simpa only [t.sum_eq] using hc⟩, t.coprime_ab⟩
  · intro s _ t _ h
    exact PrimitiveAdditiveTriple.coordinates_injective h
  · intro p hp
    obtain ⟨hp, hcoprime⟩ := Finset.mem_filter.mp hp
    obtain ⟨ha, _, hb, _, hcut⟩ := mem_additivePairs.mp hp
    let t : PrimitiveAdditiveTriple :=
      ⟨p.1, p.2, p.1 + p.2, ha, hb, rfl, hcoprime⟩
    exact ⟨t, mem_boundedTriples.mpr hcut, rfl⟩
  · intro t _
    simp only [t.sum_eq]

/-- Product weights preserve the same exact typed-triple reindexing. -/
theorem typedPrimitiveMoment_eq_primitiveMoment {R : Type*} [Ring R]
    (N : ℕ) (A B C : ℕ → R) :
    typedPrimitiveMoment N A B C = primitiveMoment N A B C := by
  exact typedPrimitiveWeightedMoment_eq_primitiveWeightedMoment N
    (fun a b c => A a * B b * C c)

/-- The finite signed Möbius filter for arbitrary joint weights, expressed
directly on primitive positive additive triples. -/
theorem typedPrimitiveWeightedMoment_eq_moebius_sum {R : Type*} [Ring R]
    (N : ℕ) (W : ℕ → ℕ → ℕ → R) :
    typedPrimitiveWeightedMoment N W =
      ∑ d ∈ Finset.Icc 1 N,
        (ArithmeticFunction.moebius d : R) * commonDivisorWeightedMoment N d W := by
  rw [typedPrimitiveWeightedMoment_eq_primitiveWeightedMoment,
    primitiveWeightedMoment_eq_moebius_sum]

/-- The product-weight finite signed Möbius filter expressed directly on
primitive positive additive triples. The abc estimate remains separate. -/
theorem typedPrimitiveMoment_eq_moebius_sum {R : Type*} [Ring R]
    (N : ℕ) (A B C : ℕ → R) :
    typedPrimitiveMoment N A B C =
      ∑ d ∈ Finset.Icc 1 N,
        (ArithmeticFunction.moebius d : R) * commonDivisorMoment N d A B C := by
  rw [typedPrimitiveMoment_eq_primitiveMoment, primitiveMoment_eq_moebius_sum]

end GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples
```
