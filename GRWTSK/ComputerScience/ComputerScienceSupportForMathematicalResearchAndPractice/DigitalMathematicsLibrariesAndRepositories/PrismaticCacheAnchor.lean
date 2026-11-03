/- Copyright (c) 2026 grwtsk contributors. MIT.
   SOURCE_ONLY / COMPILATION_NOT_RUN / KERNEL_NOT_RUN / AXIOM_AUDIT_NOT_RUN. -/
import Mathlib.Tactic

/-!
# Lossless cache representatives and scroll-position compensation

A prismatic offscreen summary is valid only while retaining its underlying
full source; its summary must agree with the supplied encoding. Its restoration
is exact by construction. A scroll-coordinate compression may change both the
anchor's absolute document position and the scroll offset by the same signed
amount without moving the anchor relative to the viewport.

These are pure invariants. The actual browser implementation must independently
show that DOM measurements, hydration, focus, selection, accessibility and
interruption behavior refine this model; no such refinement is claimed here.
-/

set_option autoImplicit false
namespace GRWTSK.ComputerScience.PrismaticCacheAnchor

universe u v

/-- The full content stays available as a cache backing even while not in DOM. -/
structure Representative (Full : Type u) (Summary : Type v)
    (summarize : Full → Summary) where
  full : Full
  summary : Summary
  exact_summary : summary = summarize full

/-- Source-preserving offscreen representation. -/
def compact {Full : Type u} {Summary : Type v}
    (summarize : Full → Summary) (source : Full) :
    Representative Full Summary summarize where
  full := source
  summary := summarize source
  exact_summary := rfl

/-- Restore the full cache content; the summary is not a lossy substitute. -/
def restore {Full : Type u} {Summary : Type v}
    {summarize : Full → Summary}
    (entry : Representative Full Summary summarize) : Full :=
  entry.full

/-- Compaction and restoration is exactly the identity on retained content. -/
theorem restore_compact {Full : Type u} {Summary : Type v}
    (summarize : Full → Summary) (source : Full) :
    restore (compact summarize source) = source := rfl

/-- Visible anchor position is relative to the scroll viewport. -/
def viewportOffset (documentTop scrollTop : ℤ) : ℤ :=
  documentTop - scrollTop

/-- Compressing offscreen height before an anchor rebases both coordinates. -/
theorem viewportOffset_rebase
    (documentTop scrollTop removedHeight : ℤ) :
    viewportOffset (documentTop - removedHeight) (scrollTop - removedHeight) =
      viewportOffset documentTop scrollTop := by
  unfold viewportOffset
  ring

/-- An anchor explicitly retains its observed viewport pixel offset. -/
structure AnchoredMoment where
  documentTop : ℤ
  scrollTop : ℤ
  pixelOffset : ℤ
  exactOffset : viewportOffset documentTop scrollTop = pixelOffset

/-- An offscreen compression has no authority to shift visible content. -/
def AnchoredMoment.rebase (anchor : AnchoredMoment) (removedHeight : ℤ) :
    AnchoredMoment where
  documentTop := anchor.documentTop - removedHeight
  scrollTop := anchor.scrollTop - removedHeight
  pixelOffset := anchor.pixelOffset
  exactOffset := by
    rw [viewportOffset_rebase]
    exact anchor.exactOffset

theorem AnchoredMoment.rebase_preserves_pixelOffset
    (anchor : AnchoredMoment) (removedHeight : ℤ) :
    (anchor.rebase removedHeight).pixelOffset = anchor.pixelOffset := rfl

end GRWTSK.ComputerScience.PrismaticCacheAnchor
