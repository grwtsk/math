# Complete source: GRWTSK.Algebra.OrderedProductGauge

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4138e2c6eca0bf5bcc93a58c0d92d3935caabe08` · SHA-256 `63668ab017b91bbfb67b37e8850869defad938333ce678d3651595be11319837`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. All rights reserved.
Released under the MIT license; see LICENSE.
Developed with OpenAI Codex. Lean checks the proof terms.
-/
import GRWTSK.Algebra.OrderedProduct

/-!
# Ordered products under gauge and chart changes

Established group conjugation and telescoping identities. The newest interval
factor is on the left. Forward gauges use target-left/source-inverse-right order,
and closed paths require their literal endpoint premise. Identity products retain
only Monoid assumptions. No arithmetic transport or analytic estimate is asserted.
Lean and mathlib retain upstream identities, authors and licenses.
-/

set_option autoImplicit false
set_option relaxedAutoImplicit false

open GRWTSK.Algebra

namespace GRWTSK.Algebra.OrderedProductGauge

universe u v

/-- In a noncommuting group, conjugation still retains the two factors' order. -/
theorem conjugation_preserves_order {G : Type u} [Group G] (T A B : G) :
    T * (B * A) * T⁻¹ = (T * B * T⁻¹) * (T * A * T⁻¹) := by
  simp [mul_assoc]



/-- Inversion always reverses the two factors, independently of conjugation. -/
theorem inversion_reverses_order {G : Type u} [Group G] (A B : G) :
    (B * A)⁻¹ = A⁻¹ * B⁻¹ := mul_inv_rev _ _



/-- The target-left/source-inverse-right gauge convention for a traversed edge. -/
def forwardGauge {G : Type u} [Group G] (A H : ℕ → G) (i : ℕ) : G :=
  H (i + 1) * A i * (H i)⁻¹



/-- The forward gauge convention telescopes to the literal two path endpoints. -/
theorem orderedProduct_forwardGauge {G : Type u} [Group G]
    (A H : ℕ → G) (n k : ℕ) :
    orderedProduct (forwardGauge A H) n k =
      H (n + k) * orderedProduct A n k * (H n)⁻¹ := by
  have he : forwardGauge A H = gaugeTransfer A (fun i => (H i)⁻¹) := by
    funext i
    simp [forwardGauge, gaugeTransfer]
  rw [he]
  simpa using orderedProduct_gaugeTransfer A (fun i => (H i)⁻¹) n k



/-- Site-based gauges act along an independently supplied site path. -/
def siteGauge {G : Type u} {V : Type v} [Group G]
    (A : ℕ → G) (p : ℕ → V) (H : V → G) : ℕ → G :=
  forwardGauge A (H ∘ p)



/-- For a closed site path, the loop changes only by basepoint conjugation. -/
theorem site_loop_gauge {G : Type u} {V : Type v} [Group G]
    (A : ℕ → G) (p : ℕ → V) (H : V → G) (n k : ℕ) (hp : p (n + k) = p n) :
    orderedProduct (siteGauge A p H) n k =
      H (p n) * orderedProduct A n k * (H (p n))⁻¹ := by
  rw [siteGauge, orderedProduct_forwardGauge]
  simp only [Function.comp_apply, hp]



/-- Identity edge assignments remain identity at every finite depth. -/
theorem orderedProduct_identity {G : Type u} [Monoid G] (n k : ℕ) :
    orderedProduct (fun _ => (1 : G)) n k = 1 := by
  induction k with
  | zero => rfl
  | succ k ih => simp [orderedProduct_succ, ih]



/-- Pure chart changes have no independently specified connection. -/
def chartEdges {G : Type u} [Group G] (g : ℕ → G) (i : ℕ) : G :=
  g (i + 1) * (g i)⁻¹



/-- Pure chart products telescope exactly, with no commutativity assumption. -/
theorem orderedProduct_chartEdges {G : Type u} [Group G] (g : ℕ → G) (n k : ℕ) :
    orderedProduct (chartEdges g) n k = g (n + k) * (g n)⁻¹ := by
  have he : chartEdges g = forwardGauge (fun _ => (1 : G)) g := by
    funext i
    simp [chartEdges, forwardGauge]
  rw [he, orderedProduct_forwardGauge, orderedProduct_identity, mul_one]



/-- Closed pure chart changes telescope to identity and cannot generate residual rotation. -/
theorem chart_loop_identity {G : Type u} {V : Type v} [Group G]
    (p : ℕ → V) (g : V → G) (n k : ℕ) (hp : p (n + k) = p n) :
    orderedProduct (chartEdges (g ∘ p)) n k = 1 := by
  rw [orderedProduct_chartEdges]
  simp [hp]




end GRWTSK.Algebra.OrderedProductGauge
```
