/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.PolygonTube
import GRWTSK.NumberTheory.Zeta.Riemann.RationalPolePatch
import Mathlib.Data.List.GetD

set_option autoImplicit false

/-!
# Exact closed-chain coverage from rational normalized-source patches

Every consecutive edge, INCLUDING the last edge, is bound to its own complete
upstream patch test. Both endpoints must belong to that SAME convex disk.
Length and closure are checked against the external vertex chain. No independent
coverage premise is accepted. Source-value enclosures remain mathematical proofs.
The output is the EXISTING FiniteVariationCover, not a weaker certificate type.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.RiemannHypothesis.RationalPoleContour

open Set Metric
open GRWTSK.Analysis.Complex
open GRWTSK.Analysis.ErrorBounds
open RationalComplexEnclosure RationalDyadicArithmetic
open CriticalStripHeightDescent

structure EdgeData where
  center : Coordinates
  inner : ℚ
  outer : ℚ
  value : Ball
  deriving DecidableEq

/-- Total accessors are not evidence: every consumed position is length-checked. -/
def pointAt (vertices : List Coordinates) (i : ℕ) : Coordinates := vertices.getD i zero

def edgeAt (data : List EdgeData) (i : ℕ) : EdgeData :=
  data.getD i ⟨zero, 0, 0, ⟨zero, 0⟩⟩

def EdgeValid (a b : Coordinates) (d : EdgeData) : Prop :=
  RationalPolePatch.check d.center d.inner d.outer d.value = true ∧
    inBall (sub a d.center) d.inner = true ∧
    inBall (sub b d.center) d.inner = true

instance edgeValidDecidable (a b : Coordinates) (d : EdgeData) : Decidable (EdgeValid a b d) := by
  unfold EdgeValid
  infer_instance

def Valid (n : ℕ) (vertices : List Coordinates) (data : List EdgeData) : Prop :=
  0 < n ∧ vertices.length = n + 1 ∧ data.length = n ∧
    pointAt vertices n = pointAt vertices 0 ∧
    ∀ i ∈ Finset.range n, EdgeValid (pointAt vertices i) (pointAt vertices (i + 1)) (edgeAt data i)

instance validDecidable (n : ℕ) (vertices : List Coordinates) (data : List EdgeData) :
    Decidable (Valid n vertices data) := by
  unfold Valid
  infer_instance

def check (n : ℕ) (vertices : List Coordinates) (data : List EdgeData) : Bool :=
  decide (Valid n vertices data)

theorem check_iff_valid (n : ℕ) (vertices : List Coordinates) (data : List EdgeData) :
    check n vertices data = true ↔ Valid n vertices data := by simp [check]

/-- The meaning of each supplied value ball, at its LITERAL patch center. -/
def Enclosures (n : ℕ) (data : List EdgeData) : Prop :=
  ∀ i ∈ Finset.range n, Holds (edgeAt data i).value
    (poleNormalizedZeta (toComplex (edgeAt data i).center))

noncomputable def carrier (n : ℕ) (vertices : List Coordinates) : Set ℂ :=
  PolygonTube.carrier n (fun i => toComplex (pointAt vertices i))

theorem checked_lengths {n : ℕ} {vertices : List Coordinates} {data : List EdgeData}
    (h : check n vertices data = true) :
    0 < n ∧ vertices.length = n + 1 ∧ data.length = n ∧
      pointAt vertices n = pointAt vertices 0 := by
  obtain ⟨hn, hv, hd, hc, _⟩ := (check_iff_valid _ _ _).mp h
  exact ⟨hn, hv, hd, hc⟩

theorem checked_edge {n i : ℕ} {vertices : List Coordinates} {data : List EdgeData}
    (h : check n vertices data = true) (hi : i < n) :
    EdgeValid (pointAt vertices i) (pointAt vertices (i + 1)) (edgeAt data i) :=
  ((check_iff_valid _ _ _).mp h).2.2.2.2 i (Finset.mem_range.mpr hi)

/-- These are two endpoint tests in ONE disk, not one test in each of two disks. -/
theorem edge_covered {a b : Coordinates} {d : EdgeData} (h : EdgeValid a b d)
    {t : ℝ} (ht : t ∈ Icc (0 : ℝ) 1) :
    PolygonTube.blend t (toComplex a) (toComplex b) ∈
      closedBall (toComplex d.center) (d.inner : ℝ) := by
  have ha := (inBall_iff _ _).mp h.2.1
  have hb := (inBall_iff _ _).mp h.2.2
  apply PolygonTube.blend_mem_closedBall
  · simpa only [toComplex_sub, mem_closedBall, dist_eq_norm] using ha
  · simpa only [toComplex_sub, mem_closedBall, dist_eq_norm] using hb
  · exact ht

/-- The geometry checker, not a user assertion, supplies complete edge coverage. -/
noncomputable def finiteCover {n : ℕ} {vertices : List Coordinates} {data : List EdgeData}
    (h : check n vertices data = true) (he : Enclosures n data) :
    FiniteVariationCover poleNormalizedZeta (carrier n vertices) where
  count := n
  region i := closedBall (toComplex (edgeAt data i.val).center) ((edgeAt data i.val).inner : ℝ)
  patch i := RationalPolePatch.patchOfCheck (checked_edge h i.isLt).1
    (he i.val (Finset.mem_range.mpr i.isLt))
  covers := by
    rintro z ⟨i, t, ht, rfl⟩
    exact ⟨i, edge_covered (checked_edge h i.isLt) ht⟩

theorem check_sound {n : ℕ} {vertices : List Coordinates} {data : List EdgeData}
    (h : check n vertices data = true) (he : Enclosures n data) :
    ∀ z ∈ carrier n vertices, poleNormalizedZeta z ≠ 0 :=
  fun _ hz => (finiteCover h he).nonzero hz

/-- Same canonical target. No source equality on the interior is inferred. -/
theorem no_target_on_carrier {n : ℕ} {vertices : List Coordinates} {data : List EdgeData}
    (h : check n vertices data = true) (he : Enclosures n data) :
    ∀ z ∈ carrier n vertices, ¬ NontrivialZetaZero z := by
  intro z hz hzeta
  exact check_sound h he z hz (poleNormalizedZeta_zero_of_target hzeta)

/-- Assemble one edge's sample from the existing finite jet and DERIVED source
remainder. Cutoff p here means p+1 actual Bernoulli corrections, as upstream. -/
def assembledEdge (bits : ℕ) (c : Coordinates) (R S : ℚ) (N p : ℕ)
    (logs powers : ℕ → Ball) : EdgeData :=
  ⟨c, R, S, RationalPoleNormalizedJet.sourceBall c N p
    (RationalPoleNormalizedJet.assemble bits c N (p + 1) logs powers).1⟩

theorem assembledEdge_enclosure (bits : ℕ) (c : Coordinates) (R S : ℚ)
    {N : ℕ} (hN : 1 ≤ N) (p : ℕ) (logs powers : ℕ → Ball) (hc : 0 < c.1)
    (hl : ∀ k ∈ Finset.Icc 1 N, Holds (logs k) (Real.log (k : ℝ) : ℂ))
    (hp : ∀ k ∈ Finset.Icc 1 N, Holds (powers k) ((k : ℂ) ^ (-toComplex c))) :
    Holds (assembledEdge bits c R S N p logs powers).value (poleNormalizedZeta (toComplex c)) :=
  RationalPoleNormalizedJet.sourceBall_sound hN p hc
    (RationalPoleNormalizedJet.assemble_sound bits c hN (p + 1) logs powers hl hp).1

/-- Convert a source-bound family into the exact Enclosures premise. No record
may silently replace its center, cutoff, or complete finite value ball. -/
theorem enclosures_of_assemblies {n : ℕ} {data : List EdgeData}
    (bits cutoff corrections : ℕ → ℕ) (logs powers : ℕ → ℕ → Ball)
    (hN : ∀ i ∈ Finset.range n, 1 ≤ cutoff i)
    (hc : ∀ i ∈ Finset.range n, 0 < (edgeAt data i).center.1)
    (hvalue : ∀ i ∈ Finset.range n, (edgeAt data i).value =
      (assembledEdge (bits i) (edgeAt data i).center (edgeAt data i).inner
        (edgeAt data i).outer (cutoff i) (corrections i) (logs i) (powers i)).value)
    (hl : ∀ i ∈ Finset.range n, ∀ k ∈ Finset.Icc 1 (cutoff i),
      Holds (logs i k) (Real.log (k : ℝ) : ℂ))
    (hp : ∀ i ∈ Finset.range n, ∀ k ∈ Finset.Icc 1 (cutoff i),
      Holds (powers i k) ((k : ℂ) ^ (-toComplex (edgeAt data i).center))) :
    Enclosures n data := by
  intro i hi
  rw [hvalue i hi]
  exact assembledEdge_enclosure (bits i) _ _ _ (hN i hi) (corrections i)
    (logs i) (powers i) (hc i hi) (hl i hi) (hp i hi)

end GRWTSK.RiemannHypothesis.RationalPoleContour
