# Complete source: GRWTSK.Analysis.Complex.PolygonTube

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d69089dae09fd0f1bbae5ee2c19fa164ade031c5` · SHA-256 `ebed5a2901084baeab9d20d7866fe24fe59356af352899f7d75247dae8e40dc5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.Normed.Module.Convex
import Mathlib.Analysis.Complex.Norm
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Ordered polygon edges and common-disk deformations

The carrier includes EVERY consecutive closed edge, not only its vertices.
A common image disk avoiding zero controls the source arc, its surrogate chord,
and their straight deformation. The seam equations retain the same vertex in
both adjacent edges. No winding number, orientation or interior count is defined.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.Analysis.Complex.PolygonTube

open Set Metric

/-- Real affine interpolation in the complex plane. -/
def blend (t : ℝ) (a b : ℂ) : ℂ := (1 - t) • a + t • b

@[simp] theorem blend_zero (a b : ℂ) : blend 0 a b = a := by simp [blend]
@[simp] theorem blend_one (a b : ℂ) : blend 1 a b = b := by simp [blend]
@[simp] theorem blend_self (t : ℝ) (a : ℂ) : blend t a a = a := by
  rw [blend, ← add_smul]
  simp

theorem blend_mem_closedBall {a b c : ℂ} {r t : ℝ}
    (ha : a ∈ closedBall c r) (hb : b ∈ closedBall c r)
    (ht : t ∈ Icc (0 : ℝ) 1) : blend t a b ∈ closedBall c r := by
  exact (convex_closedBall c r) ha hb (by linarith [ht.2]) ht.1 (by ring)

theorem norm_blend_sub_le {a b c : ℂ} {r t : ℝ}
    (ha : ‖a - c‖ ≤ r) (hb : ‖b - c‖ ≤ r) (ht : t ∈ Icc (0 : ℝ) 1) :
    ‖blend t a b - c‖ ≤ r := by
  simpa only [mem_closedBall, dist_eq_norm] using
    (blend_mem_closedBall (a := a) (b := b) (c := c) (r := r) (by simpa only [mem_closedBall, dist_eq_norm] using ha)
      (by simpa only [mem_closedBall, dist_eq_norm] using hb) ht)

/-- An n-edge chain has n+1 external vertices; closure is a separate condition. -/
def carrier (n : ℕ) (v : ℕ → ℂ) : Set ℂ :=
  {z | ∃ i : Fin n, ∃ t ∈ Icc (0 : ℝ) 1, z = blend t (v i.val) (v (i.val + 1))}

theorem edge_mem_carrier {n : ℕ} (v : ℕ → ℂ) (i : Fin n) {t : ℝ}
    (ht : t ∈ Icc (0 : ℝ) 1) : blend t (v i.val) (v (i.val + 1)) ∈ carrier n v :=
  ⟨i, t, ht, rfl⟩

theorem first_mem_carrier {n : ℕ} (hn : 0 < n) (v : ℕ → ℂ) : v 0 ∈ carrier n v := by
  exact ⟨⟨0, hn⟩, 0, by simp, by simp⟩

theorem empty_carrier (v : ℕ → ℂ) : carrier 0 v = ∅ := by
  ext z
  simp [carrier]

/-- Free deformation: endpoints may move from F(a),F(b) to u,v. It is not a
based-path homotopy unless the endpoint values also agree. -/
def deformation (F : ℂ → ℂ) (a b u v : ℂ) (t lam : ℝ) : ℂ :=
  blend lam (F (blend t a b)) (blend t u v)

@[simp] theorem deformation_source (F : ℂ → ℂ) (a b u v : ℂ) (t : ℝ) :
    deformation F a b u v t 0 = F (blend t a b) := by simp [deformation]

@[simp] theorem deformation_polygon (F : ℂ → ℂ) (a b u v : ℂ) (t : ℝ) :
    deformation F a b u v t 1 = blend t u v := by simp [deformation]

@[simp] theorem deformation_start (F : ℂ → ℂ) (a b u v : ℂ) (lam : ℝ) :
    deformation F a b u v 0 lam = blend lam (F a) u := by simp [deformation]

@[simp] theorem deformation_finish (F : ℂ → ℂ) (a b u v : ℂ) (lam : ℝ) :
    deformation F a b u v 1 lam = blend lam (F b) v := by simp [deformation]

theorem deformation_continuous {F : ℂ → ℂ} (hF : Continuous F) (a b u v : ℂ) :
    Continuous (fun p : ℝ × ℝ => deformation F a b u v p.1 p.2) := by
  unfold deformation blend
  fun_prop

/-- The ENTIRE source arc and BOTH surrogate endpoints must occupy one disk. -/
theorem deformation_bound {F : ℂ → ℂ} {a b u v c : ℂ} {r t lam : ℝ}
    (hF : ∀ q ∈ Icc (0 : ℝ) 1, ‖F (blend q a b) - c‖ ≤ r)
    (hu : ‖u - c‖ ≤ r) (hv : ‖v - c‖ ≤ r)
    (ht : t ∈ Icc (0 : ℝ) 1) (hlam : lam ∈ Icc (0 : ℝ) 1) :
    ‖deformation F a b u v t lam - c‖ ≤ r :=
  norm_blend_sub_le (hF t ht) (norm_blend_sub_le hu hv ht) hlam

theorem deformation_nonzero {F : ℂ → ℂ} {a b u v c : ℂ} {r t lam : ℝ}
    (hF : ∀ q ∈ Icc (0 : ℝ) 1, ‖F (blend q a b) - c‖ ≤ r)
    (hu : ‖u - c‖ ≤ r) (hv : ‖v - c‖ ≤ r) (hstrict : r < ‖c‖)
    (ht : t ∈ Icc (0 : ℝ) 1) (hlam : lam ∈ Icc (0 : ℝ) 1) :
    deformation F a b u v t lam ≠ 0 := by
  intro hz
  have h := deformation_bound hF hu hv ht hlam
  rw [hz, zero_sub, norm_neg] at h
  exact (not_le_of_gt hstrict) h

/-- Adjacent deformations glue because both chains use the SAME middle vertex. -/
theorem adjacent_seam (F : ℂ → ℂ) (a b c u v w : ℂ) (lam : ℝ) :
    deformation F a b u v 1 lam = deformation F b c v w 0 lam := by simp

/-- Domain closure alone is insufficient: the surrogate image must close too. -/
theorem closing_seam (F : ℂ → ℂ) {a b c d u v w x : ℂ}
    (hdom : b = c) (himage : v = w) (lam : ℝ) :
    deformation F a b u v 1 lam = deformation F c d w x 0 lam := by
  simp [hdom, himage]

end GRWTSK.Analysis.Complex.PolygonTube
```
