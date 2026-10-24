# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripZeroPermittingExtension

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e5df790f34b8a0a17c6bb63104817ec4031e9d9e` · SHA-256 `26e783c74c67c468e171ce70ccc574a77c26649d280c5ad8ce687fb6c5b9492c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripMirrorIsolation

set_option autoImplicit false

/-!
# Source-faithful extension of a zero-permitting cover

Adjoining a separately proved zero-free set preserves every isolation region,
its mirror theorem and its capacity proof. Coverage includes the actual union;
no disjointness assumption removes a shared seam. A single isolation REGION
implies at most one target location, not existence or multiplicity. The union
laws below concern the exact zero-free carriers, not coordinate or ring maps.
SOURCE SCRIPTS / NOT_ELABORATED / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.ZeroIsolation
open Complex Set
noncomputable section

lemma noTargetZero_union {V W : Set ℂ} (hV : NoTargetZero V) (hW : NoTargetZero W) :
    NoTargetZero (V ∪ W) := by
  intro z hz hzero
  rcases hz with h | h
  · exact hV z h hzero
  · exact hW z h hzero

namespace ZeroPermittingCover
variable {U : Set ℂ}

/-- Extend only the clear part; do not replace or widen any isolation region. -/
def extendZeroFree (C : ZeroPermittingCover U) (V : Set ℂ) (hV : NoTargetZero V) :
    ZeroPermittingCover (U ∪ V) where
  count := C.count
  zeroFree := C.zeroFree ∪ V
  regions := C.regions
  zeroFree_sound := noTargetZero_union C.zeroFree_sound hV
  mirror_stable := C.mirror_stable
  capacity := C.capacity
  covers := by
    intro z hz
    rcases hz with hU | hV
    · rcases C.covers z hU with hclear | ⟨i, hi⟩
      · exact Or.inl (Or.inl hclear)
      · exact Or.inr ⟨i, hi⟩
    · exact Or.inl (Or.inr hV)

@[simp] theorem extendZeroFree_count (C : ZeroPermittingCover U) (V : Set ℂ)
    (hV : NoTargetZero V) : (C.extendZeroFree V hV).count = C.count := rfl

@[simp] theorem extendZeroFree_regions (C : ZeroPermittingCover U) (V : Set ℂ)
    (hV : NoTargetZero V) (i : Fin C.count) :
    (C.extendZeroFree V hV).regions i = C.regions i := rfl

@[simp] theorem extendZeroFree_carrier (C : ZeroPermittingCover U) (V : Set ℂ)
    (hV : NoTargetZero V) : (C.extendZeroFree V hV).zeroFree = C.zeroFree ∪ V := rfl

/-- The same two clear regions can be adjoined in either order. This is a set
identity, not equality of source values or an unproved coordinate cocycle. -/
theorem extension_order_carrier (C : ZeroPermittingCover U) (V W : Set ℂ)
    (hV : NoTargetZero V) (hW : NoTargetZero W) :
    ((C.extendZeroFree V hV).extendZeroFree W hW).zeroFree =
      ((C.extendZeroFree W hW).extendZeroFree V hV).zeroFree := by
  ext z
  change ((z ∈ C.zeroFree ∨ z ∈ V) ∨ z ∈ W) ↔
    ((z ∈ C.zeroFree ∨ z ∈ W) ∨ z ∈ V)
  tauto

theorem extension_assoc_carrier (C : ZeroPermittingCover U) (V W : Set ℂ)
    (hV : NoTargetZero V) (hW : NoTargetZero W) :
    ((C.extendZeroFree V hV).extendZeroFree W hW).zeroFree =
      (C.extendZeroFree (V ∪ W) (noTargetZero_union hV hW)).zeroFree := by
  ext z
  change ((z ∈ C.zeroFree ∨ z ∈ V) ∨ z ∈ W) ↔
    (z ∈ C.zeroFree ∨ (z ∈ V ∨ z ∈ W))
  tauto

/-- Count=1 counts isolation regions. Actual coverage and zero-free soundness
are still used, so this cannot be obtained from the integer count alone. -/
theorem atMostOneTarget_of_count_one (C : ZeroPermittingCover U) (hn : C.count = 1) :
    AtMostOneTarget U := by
  intro z hz w hw hz0 hw0
  rcases C.covers z hz with hclear | ⟨i, hi⟩
  · exact False.elim (C.zeroFree_sound z hclear hz0)
  rcases C.covers w hw with hclear | ⟨j, hj⟩
  · exact False.elim (C.zeroFree_sound w hclear hw0)
  have hij : i = j := by
    have hi' := i.isLt
    have hj' := j.isLt
    apply Fin.ext
    omega
  subst j
  exact C.capacity i z hi w hj hz0 hw0

end ZeroPermittingCover
end
end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent.ZeroIsolation
```
