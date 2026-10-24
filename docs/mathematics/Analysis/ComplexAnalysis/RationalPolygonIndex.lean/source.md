# Complete source: GRWTSK.Analysis.Complex.RationalPolygonIndex

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `24758d17af4e5bf83b68bd983ddc16f11a27fa9c` · SHA-256 `556c74c139c9fb45856018e12c9effe13a1976ccfcf7bd35c9e095ff0236ad7a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.PolygonLogCharts
import GRWTSK.Analysis.Complex.PolygonFreeHomotopy
import GRWTSK.Analysis.ErrorBounds.RationalComplexEnclosure
import Mathlib.Data.List.GetD

set_option autoImplicit false

/-!
# A finite rational polygon index refined to the exponential-lift winding

Every edge must have a common strict coordinate half-plane. This sufficient
condition is deliberately stronger than mere nonvanishing; an uncertified edge
returns none, NOT winding zero. Exact lengths, closure and the last edge matter.
The integer is computed by branch transitions. The proof constructs a continuous
logarithm of the SAME complete dyadically traversed polygon and computes its
endpoint jump; no caller supplies a winding equation or logarithmic lift.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.Analysis.Complex.RationalPolygonIndex

open scoped unitInterval
open ContinuousMap
open GRWTSK.Analysis.ErrorBounds.RationalComplexEnclosure
open GRWTSK.Topology.Homotopy.FiniteConcatenation
open ExponentialLoopIndex PolygonTube PolygonFreeHomotopy

/-- Defaulted access is only used behind the exact-length guard. -/
def vertex (v : List Coordinates) (i : ℕ) : Coordinates := v.getD i zero

def leftChart (a b : Coordinates) : Bool := decide (a.1 < 0 ∧ b.1 < 0)

def below (a : Coordinates) : ℤ := if a.2 < 0 then 1 else 0

/-- A half-open ray convention: real-axis endpoints contribute below=0. -/
def increment (a b : Coordinates) : ℤ :=
  if leftChart a b then below b - below a else 0

def EdgeValid (a b : Coordinates) : Prop :=
  (a.1 < 0 ∧ b.1 < 0) ∨ (0 < a.1 ∧ 0 < b.1) ∨
    (0 < a.2 ∧ 0 < b.2) ∨ (a.2 < 0 ∧ b.2 < 0)

instance edgeDecidable (a b : Coordinates) : Decidable (EdgeValid a b) := by
  unfold EdgeValid
  infer_instance

def prefix (v : List Coordinates) (n : ℕ) : ℤ :=
  ∑ i ∈ Finset.range n, increment (vertex v i) (vertex v (i + 1))

def Valid (n : ℕ) (v : List Coordinates) : Prop :=
  0 < n ∧ v.length = n + 1 ∧ vertex v n = vertex v 0 ∧
    ∀ i ∈ Finset.range n, EdgeValid (vertex v i) (vertex v (i + 1))

instance validDecidable (n : ℕ) (v : List Coordinates) : Decidable (Valid n v) := by
  unfold Valid
  infer_instance

def check (n : ℕ) (v : List Coordinates) : Bool := decide (Valid n v)

/-- Failure is distinguished from an accepted zero index. -/
def evaluate (n : ℕ) (v : List Coordinates) : Option ℤ :=
  if check n v then some (prefix v n) else none

theorem check_iff_valid (n : ℕ) (v : List Coordinates) :
    check n v = true ↔ Valid n v := by simp [check]

theorem evaluate_eq_some_iff (n : ℕ) (v : List Coordinates) (k : ℤ) :
    evaluate n v = some k ↔ check n v = true ∧ prefix v n = k := by
  by_cases h : check n v = true <;> simp [evaluate, h]

@[simp] theorem prefix_zero (v : List Coordinates) : prefix v 0 = 0 := by simp [prefix]

theorem prefix_succ (v : List Coordinates) (n : ℕ) :
    prefix v (n + 1) = prefix v n + increment (vertex v n) (vertex v (n + 1)) := by
  simp [prefix, Finset.sum_range_succ]

/-- The local contribution changes sign under reversal, including ray vertices. -/
theorem increment_reverse (a b : Coordinates) : increment b a = -increment a b := by
  have hl : leftChart b a = leftChart a b := by simp [leftChart, and_comm]
  rw [increment, hl]
  by_cases h : leftChart a b = true <;> simp [increment, h] <;> ring

noncomputable section

def points (v : List Coordinates) (i : ℕ) : ℂ := toComplex (vertex v i)

def localLog (a b : Coordinates) (z : ℂ) : ℂ :=
  if leftChart a b then PolygonLogCharts.negativeLog z else Complex.log z

def branch (a b x : Coordinates) : ℤ := if leftChart a b then below x else 0

theorem leftChart_real (a b : Coordinates) : leftChart a b = true ↔
    (toComplex a).re < 0 ∧ (toComplex b).re < 0 := by
  simp [leftChart, toComplex]

theorem below_real (a : Coordinates) : PolygonLogCharts.below (toComplex a) = below a := by
  simp [PolygonLogCharts.below, below, toComplex]

theorem principal_of_not_left {a b : Coordinates} (h : EdgeValid a b)
    (hl : leftChart a b ≠ true) : PolygonLogCharts.PrincipalEdge (toComplex a) (toComplex b) := by
  have hn : ¬ (a.1 < 0 ∧ b.1 < 0) := by simpa [leftChart] using hl
  rcases h with h | h | h | h
  · exact False.elim (hn h)
  · exact Or.inl ⟨by exact_mod_cast h.1, by exact_mod_cast h.2⟩
  · exact Or.inr (Or.inl ⟨by exact_mod_cast h.1, by exact_mod_cast h.2⟩)
  · exact Or.inr (Or.inr ⟨by exact_mod_cast h.1, by exact_mod_cast h.2⟩)

theorem localLog_continuous {a b : Coordinates} (h : EdgeValid a b) :
    Continuous (fun t : I => localLog a b (blend (t : ℝ) (toComplex a) (toComplex b))) := by
  by_cases hl : leftChart a b = true
  · simpa only [localLog, if_pos hl] using PolygonLogCharts.continuous_negative_edge
      ((leftChart_real _ _).mp hl).1 ((leftChart_real _ _).mp hl).2
  · simpa only [localLog, if_neg hl] using
      PolygonLogCharts.continuous_principal_edge (principal_of_not_left h hl)

/-- A checked full edge, not just its vertices, admits this logarithm chart. -/
theorem localLog_exp {a b : Coordinates} (h : EdgeValid a b) (t : I) :
    Complex.exp (localLog a b (blend (t : ℝ) (toComplex a) (toComplex b))) =
      blend (t : ℝ) (toComplex a) (toComplex b) := by
  by_cases hl : leftChart a b = true
  · rw [localLog, if_pos hl]
    apply PolygonLogCharts.exp_negativeLog
    have hr := PolygonLogCharts.negative_edge_re
      ((leftChart_real _ _).mp hl).1 ((leftChart_real _ _).mp hl).2 t
    intro hz
    simpa [hz] using hr
  · rw [localLog, if_neg hl]
    exact Complex.exp_log (Complex.slitPlane_ne_zero
      (PolygonLogCharts.principal_edge_mem (principal_of_not_left h hl) t))

theorem edge_nonzero {a b : Coordinates} (h : EdgeValid a b) (t : I) :
    blend (t : ℝ) (toComplex a) (toComplex b) ≠ 0 := by
  rw [← localLog_exp h t]
  exact Complex.exp_ne_zero _

/-- Transition at an endpoint is derived from its literal sign, not supplied. -/
theorem localLog_endpoint (a b x : Coordinates) (hx : x = a ∨ x = b) :
    localLog a b (toComplex x) = Complex.log (toComplex x) + deck (branch a b x) := by
  by_cases hl : leftChart a b = true
  · have hh := (leftChart_real _ _).mp hl
    have hr : (toComplex x).re < 0 := by rcases hx with rfl | rfl <;> tauto
    simpa only [localLog, branch, if_pos hl, below_real] using PolygonLogCharts.negativeLog_eq hr
  · simp [localLog, branch, hl]

theorem increment_eq_branches (a b : Coordinates) :
    increment a b = branch a b b - branch a b a := by
  by_cases hl : leftChart a b = true <;> simp [increment, branch, hl]

def liftVertex (v : List Coordinates) (i : ℕ) : ℂ :=
  Complex.log (points v i) + deck (prefix v i)

/-- Successive vertices of the continuous logarithm include accumulated turns. -/
def logCell (v : List Coordinates) (i : ℕ)
    (h : EdgeValid (vertex v i) (vertex v (i + 1))) :
    Homotopy (constantVertex (liftVertex v) i) (constantVertex (liftVertex v) (i + 1)) where
  toFun p := localLog (vertex v i) (vertex v (i + 1))
      (blend (p.1 : ℝ) (points v i) (points v (i + 1))) -
    localLog (vertex v i) (vertex v (i + 1)) (points v i) + liftVertex v i
  continuous_toFun := (((localLog_continuous h).comp continuous_fst).sub
    continuous_const).add continuous_const
  map_zero_left _ := by simp [constantVertex]
  map_one_left _ := by
    simp only [blend_one, points, constantVertex]
    rw [localLog_endpoint _ _ _ (Or.inr rfl), localLog_endpoint _ _ _ (Or.inl rfl)]
    simp only [liftVertex, points, prefix_succ, increment_eq_branches, deck, Int.cast_add,
      Int.cast_sub]
    ring

theorem logCell_exp (v : List Coordinates) (i : ℕ)
    (h : EdgeValid (vertex v i) (vertex v (i + 1))) (t x : I) :
    Complex.exp (logCell v i h (t, x)) = blend (t : ℝ) (points v i) (points v (i + 1)) := by
  have ha : points v i ≠ 0 := by simpa [points] using edge_nonzero h (0 : I)
  have he0 : Complex.exp (localLog (vertex v i) (vertex v (i + 1)) (points v i)) =
      points v i := by simpa [points] using localLog_exp h (0 : I)
  change Complex.exp (_ - _ + _) = _
  rw [Complex.exp_add, Complex.exp_sub, localLog_exp h t, he0,
    liftVertex, Complex.exp_add, Complex.exp_log ha, exp_deck, mul_one]
  exact div_mul_cancel₀ _ ha

/-- Join log cells on the SAME complete dyadic schedule as polygonMap. -/
def finiteLog (n : ℕ) (v : List Coordinates)
    (he : ∀ i, i < n → EdgeValid (vertex v i) (vertex v (i + 1))) : C(I, ℂ) where
  toFun t := concat (constantVertex (liftVertex v)) n (fun i hi => logCell v i (he i hi)) (t, 0)
  continuous_toFun := (map_continuous (concat (constantVertex (liftVertex v)) n
    (fun i hi => logCell v i (he i hi)))).comp (by fun_prop)

theorem finiteLog_exp {n : ℕ} (hn : 0 < n) (v : List Coordinates)
    (he : ∀ i, i < n → EdgeValid (vertex v i) (vertex v (i + 1))) (t : I) :
    Complex.exp (finiteLog n v he t) = polygonMap n (points v) t := by
  have ha : points v 0 ≠ 0 := by simpa [points] using edge_nonzero (he 0 hn) (0 : I)
  symm
  apply natural (constantVertex (liftVertex v)) (constantVertex (points v)) n
    (fun i hi => logCell v i (he i hi)) (fun i _ => affineCell (points v) i)
    Complex.exp (0 : I) (0 : I)
  · simp [constantVertex, liftVertex, ha, Complex.exp_log]
  · intro i hi u
    exact (logCell_exp v i (he i hi) u 0).symm

/-- Only exact closure cancels the principal endpoint logs. The accumulated
period remains; subtracting principal logs alone would erase this integer. -/
theorem finiteLog_jump (n : ℕ) (v : List Coordinates)
    (he : ∀ i, i < n → EdgeValid (vertex v i) (vertex v (i + 1)))
    (hc : vertex v n = vertex v 0) :
    finiteLog n v he 1 - finiteLog n v he 0 = deck (prefix v n) := by
  simp [finiteLog, constantVertex, liftVertex, points, hc]

/-- The guard constructs nonvanishing of the whole polygon as well. -/
theorem checked_nonzero {n : ℕ} {v : List Coordinates} (h : check n v = true) (t : I) :
    polygonMap n (points v) t ≠ 0 := by
  obtain ⟨hn, _, _, he⟩ := (check_iff_valid _ _).mp h
  let hs : ∀ i, i < n → EdgeValid (vertex v i) (vertex v (i + 1)) :=
    fun i hi => he i (Finset.mem_range.mpr hi)
  rw [← finiteLog_exp hn v hs t]
  exact Complex.exp_ne_zero _

def checkedLoop {n : ℕ} {v : List Coordinates} (h : check n v = true) : C(I, Punctured) where
  toFun t := ⟨polygonMap n (points v) t, checked_nonzero h t⟩
  continuous_toFun := (polygonMap n (points v)).continuous.subtype_mk _

theorem checkedLoop_closed {n : ℕ} {v : List Coordinates} (h : check n v = true) :
    checkedLoop h 0 = checkedLoop h 1 := by
  have hc := ((check_iff_valid _ _).mp h).2.2.1
  apply Subtype.ext
  simp only [checkedLoop, polygon_start, polygon_finish, points, hc]

/-- Refinement to the EXISTING index, for any punctured presentation of the
same literal complete polygon. No claimed index or supplied log lift is used. -/
theorem winding_eq_prefix {n : ℕ} {v : List Coordinates} (h : check n v = true)
    (g : C(I, Punctured)) (hg : g 0 = g 1)
    (hv : ∀ t, (g t).1 = polygonMap n (points v) t) :
    winding g hg = prefix v n := by
  obtain ⟨hn, _, hc, he⟩ := (check_iff_valid _ _).mp h
  let hs : ∀ i, i < n → EdgeValid (vertex v i) (vertex v (i + 1)) :=
    fun i hi => he i (Finset.mem_range.mpr hi)
  exact winding_eq_of_lift g hg (finiteLog n v hs)
    (fun t => (finiteLog_exp hn v hs t).trans (hv t).symm) (finiteLog_jump n v hs hc)

/-- Option success, including a computed ZERO, has the same analytic meaning. -/
theorem evaluate_sound {n : ℕ} {v : List Coordinates} {k : ℤ}
    (h : evaluate n v = some k) (g : C(I, Punctured)) (hg : g 0 = g 1)
    (hv : ∀ t, (g t).1 = polygonMap n (points v) t) : winding g hg = k := by
  obtain ⟨hc, hk⟩ := (evaluate_eq_some_iff _ _ _).mp h
  exact (winding_eq_prefix hc g hg hv).trans hk

/-- This specializes the general refinement to a CONSTRUCTED punctured loop. -/
theorem checkedLoop_winding {n : ℕ} {v : List Coordinates} (h : check n v = true) :
    winding (checkedLoop h) (checkedLoop_closed h) = prefix v n :=
  winding_eq_prefix h _ _ (fun _ => rfl)

end
end GRWTSK.Analysis.Complex.RationalPolygonIndex
```
