/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Topology.Homotopy.FiniteConcatenation
import GRWTSK.Analysis.Complex.PolygonTube

set_option autoImplicit false

/-!
# Global zero-avoiding free homotopies from complete polygon tubes

The finite cells are concatenated by Mathlib's continuous homotopy operation.
Swapping the two parameters then gives a genuine global homotopy of closed
loops. The endpoint loops are identified with the actual source composed with
the domain polygon, and the surrogate polygon, on the SAME dyadic schedule.
The moving basepoint is not falsely fixed. The punctured-plane subtype retains
nonvanishing at EVERY intermediate time. No winding number or zero count is
assigned by this construction. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.Analysis.Complex.PolygonFreeHomotopy

open scoped unitInterval
open ContinuousMap
open PolygonTube
open GRWTSK.Topology.Homotopy.FiniteConcatenation

noncomputable section

/-- Constant maps serve as the endpoints of spatial homotopies. -/
def constantVertex (a : ℕ → ℂ) (i : ℕ) : C(I, ℂ) :=
  ⟨fun _ => a i, continuous_const⟩

def affineCell (a : ℕ → ℂ) (i : ℕ) :
    Homotopy (constantVertex a i) (constantVertex a (i + 1)) where
  toFun p := blend (p.1 : ℝ) (a i) (a (i + 1))
  continuous_toFun := by unfold blend; fun_prop
  map_zero_left _ := by simp [constantVertex]
  map_one_left _ := by simp [constantVertex]

/-- The complete oriented polygon with the explicit finite dyadic schedule.
It has a constant initial pause; no uniform-speed or arclength claim is made. -/
def polygonMap (n : ℕ) (a : ℕ → ℂ) : C(I, ℂ) where
  toFun t := concat (constantVertex a) n (fun i _ => affineCell a i) (t, 0)
  continuous_toFun := (map_continuous (concat (constantVertex a) n
    (fun i _ => affineCell a i))).comp (by fun_prop)

@[simp] theorem polygon_start (n : ℕ) (a : ℕ → ℂ) : polygonMap n a 0 = a 0 := by
  simp [polygonMap, constantVertex]

@[simp] theorem polygon_finish (n : ℕ) (a : ℕ → ℂ) : polygonMap n a 1 = a n := by
  simp [polygonMap, constantVertex]

/-- Only the n+1 consumed vertices matter; defaulted values beyond them do not. -/
theorem polygonMap_congr (n : ℕ) {a b : ℕ → ℂ}
    (hab : ∀ i, i ≤ n → a i = b i) : polygonMap n a = polygonMap n b := by
  ext t
  exact natural (constantVertex b) (constantVertex a) n
    (fun i _ => affineCell b i) (fun i _ => affineCell a i)
    id (0 : I) (0 : I) (hab 0 (Nat.zero_le n))
    (by
      intro i hi u
      change blend (u : ℝ) (a i) (a (i + 1)) = blend (u : ℝ) (b i) (b (i + 1))
      rw [hab i hi.le, hab (i + 1) (Nat.succ_le_iff.mpr hi)]) t

/-- Every original cell point occurs in the global parameterization. -/
theorem polygon_hits_cell (n : ℕ) (a : ℕ → ℂ) (i : ℕ) (hi : i < n) (u : I) :
    ∃ t : I, polygonMap n a t = blend (u : ℝ) (a i) (a (i + 1)) := by
  exact hits_cell (constantVertex a) n (fun j _ => affineCell a j) i hi u (0 : I)

/-- The range is EXACTLY the old full-edge carrier when n>0, not just the vertices. -/
theorem polygon_range {n : ℕ} (hn : 0 < n) (a : ℕ → ℂ) :
    Set.range (polygonMap n a) = PolygonTube.carrier n a := by
  ext z
  constructor
  · rintro ⟨t, rfl⟩
    rcases value_cases (constantVertex a) n (fun i _ => affineCell a i) t (0 : I)
        with h | ⟨i, hi, u, h⟩
    · change polygonMap n a t = a 0 at h
      rw [h]
      exact PolygonTube.first_mem_carrier hn a
    · change polygonMap n a t = blend (u : ℝ) (a i) (a (i + 1)) at h
      exact ⟨⟨i, hi⟩, (u : ℝ), u.2, h⟩
  · rintro ⟨i, t, ht, rfl⟩
    exact polygon_hits_cell n a i.val i.isLt ⟨t, ht⟩

def sourceMap (F : ℂ → ℂ) (hF : Continuous F) (n : ℕ) (a : ℕ → ℂ) : C(I, ℂ) :=
  ⟨fun t => F (polygonMap n a t), hF.comp (map_continuous (polygonMap n a))⟩

/-- The exact common vertex motion, used by both incident cells. -/
def vertexMotion (F : ℂ → ℂ) (a b : ℕ → ℂ) (i : ℕ) : C(I, ℂ) where
  toFun lam := blend (lam : ℝ) (F (a i)) (b i)
  continuous_toFun := by unfold blend; fun_prop

/-- The spatial parameter is the homotopy parameter here; the auxiliary input
is the source-to-polygon deformation parameter. This order is swapped later. -/
def deformationCell (F : ℂ → ℂ) (hF : Continuous F) (a b : ℕ → ℂ) (i : ℕ) :
    Homotopy (vertexMotion F a b i) (vertexMotion F a b (i + 1)) where
  toFun p := deformation F (a i) (a (i + 1)) (b i) (b (i + 1)) (p.1 : ℝ) (p.2 : ℝ)
  continuous_toFun := (deformation_continuous hF _ _ _ _).comp (by fun_prop)
  map_zero_left _ := by simp [vertexMotion]
  map_one_left _ := by simp [vertexMotion]

def joined (F : ℂ → ℂ) (hF : Continuous F) (n : ℕ) (a b : ℕ → ℂ) :
    Homotopy (vertexMotion F a b 0) (vertexMotion F a b n) :=
  concat (vertexMotion F a b) n (fun i _ => deformationCell F hF a b i)

/-- The source endpoint is identified, not defined as an unspecified deformation slice. -/
theorem joined_source (F : ℂ → ℂ) (hF : Continuous F) (n : ℕ) (a b : ℕ → ℂ) (t : I) :
    joined F hF n a b (t, 0) = F (polygonMap n a t) := by
  apply natural (constantVertex a) (vertexMotion F a b) n
    (fun i _ => affineCell a i) (fun i _ => deformationCell F hF a b i)
    F (0 : I) (0 : I)
  · simp [vertexMotion, constantVertex]
  · intro i hi u
    simp [deformationCell, affineCell]

/-- The surrogate endpoint follows the SAME domain-edge ordering and time schedule. -/
theorem joined_polygon (F : ℂ → ℂ) (hF : Continuous F) (n : ℕ) (a b : ℕ → ℂ) (t : I) :
    joined F hF n a b (t, 1) = polygonMap n b t := by
  exact natural (constantVertex b) (vertexMotion F a b) n
    (fun i _ => affineCell b i) (fun i _ => deformationCell F hF a b i)
    id (0 : I) (1 : I) (by simp [vertexMotion, constantVertex])
    (by intro i hi u; simp [deformationCell, affineCell]) t

/-- A genuine globally continuous deformation, not a collection of unglued cells. -/
def homotopy (F : ℂ → ℂ) (hF : Continuous F) (n : ℕ) (a b : ℕ → ℂ) :
    Homotopy (sourceMap F hF n a) (polygonMap n b) where
  toFun p := joined F hF n a b (p.2, p.1)
  continuous_toFun := (map_continuous (joined F hF n a b)).comp continuous_swap
  map_zero_left t := joined_source F hF n a b t
  map_one_left t := joined_polygon F hF n a b t

/-- Both closures are required; the common basepoint may move with lam. -/
theorem homotopy_closed (F : ℂ → ℂ) (hF : Continuous F) {n : ℕ} {a b : ℕ → ℂ}
    (ha : a n = a 0) (hb : b n = b 0) (lam : I) :
    homotopy F hF n a b (lam, 0) = homotopy F hF n a b (lam, 1) := by
  simp [homotopy, joined, vertexMotion, ha, hb]

/-- The finite nonvanishing supplier is exactly the previous all-point cell theorem. -/
def CellNonzero (F : ℂ → ℂ) (n : ℕ) (a b : ℕ → ℂ) : Prop :=
  ∀ i, i < n → ∀ t lam : I,
    deformation F (a i) (a (i + 1)) (b i) (b (i + 1)) (t : ℝ) (lam : ℝ) ≠ 0

theorem homotopy_nonzero (F : ℂ → ℂ) (hF : Continuous F) {n : ℕ}
    (hn : 0 < n) (a b : ℕ → ℂ) (hz : CellNonzero F n a b) (lam t : I) :
    homotopy F hF n a b (lam, t) ≠ 0 := by
  rcases value_cases (vertexMotion F a b) n
      (fun i _ => deformationCell F hF a b i) t lam with h | ⟨i, hi, u, h⟩
  · change homotopy F hF n a b (lam, t) = vertexMotion F a b 0 lam at h
    rw [h]
    simpa [vertexMotion] using hz 0 hn (0 : I) lam
  · change homotopy F hF n a b (lam, t) =
      deformation F (a i) (a (i + 1)) (b i) (b (i + 1)) (u : ℝ) (lam : ℝ) at h
    rw [h]
    exact hz i hi u lam

/-- The existing Mathlib HomotopyWith type records closedness and nonvanishing
throughout the entire two-parameter deformation. It is not HomotopyRel. -/
def freeHomotopy (F : ℂ → ℂ) (hF : Continuous F) {n : ℕ}
    (hn : 0 < n) (a b : ℕ → ℂ) (ha : a n = a 0) (hb : b n = b 0)
    (hz : CellNonzero F n a b) :
    HomotopyWith (sourceMap F hF n a) (polygonMap n b)
      (fun g => g 0 = g 1 ∧ ∀ t, g t ≠ 0) where
  toHomotopy := homotopy F hF n a b
  prop' lam := ⟨homotopy_closed F hF ha hb lam,
    fun t => homotopy_nonzero F hF hn a b hz lam t⟩

abbrev PuncturedPlane := {z : ℂ // z ≠ 0}

def sourceLift (F : ℂ → ℂ) (hF : Continuous F) {n : ℕ}
    (hn : 0 < n) (a b : ℕ → ℂ) (hz : CellNonzero F n a b) : C(I, PuncturedPlane) where
  toFun t := ⟨sourceMap F hF n a t, by
    have h := homotopy_nonzero F hF hn a b hz (0 : I) t
    simpa only [Homotopy.apply_zero] using h⟩
  continuous_toFun := (map_continuous (sourceMap F hF n a)).subtype_mk _

def polygonLift (F : ℂ → ℂ) (hF : Continuous F) {n : ℕ}
    (hn : 0 < n) (a b : ℕ → ℂ) (hz : CellNonzero F n a b) : C(I, PuncturedPlane) where
  toFun t := ⟨polygonMap n b t, by
    have h := homotopy_nonzero F hF hn a b hz (1 : I) t
    simpa only [Homotopy.apply_one] using h⟩
  continuous_toFun := (map_continuous (polygonMap n b)).subtype_mk _

/-- The homotopy takes values in the actual punctured plane. No zero can be
introduced by later forgetting a separate nonvanishing field. -/
def puncturedHomotopy (F : ℂ → ℂ) (hF : Continuous F) {n : ℕ}
    (hn : 0 < n) (a b : ℕ → ℂ) (ha : a n = a 0) (hb : b n = b 0)
    (hz : CellNonzero F n a b) :
    HomotopyWith (sourceLift F hF hn a b hz) (polygonLift F hF hn a b hz)
      (fun g => g 0 = g 1) where
  toFun p := ⟨homotopy F hF n a b p, homotopy_nonzero F hF hn a b hz p.1 p.2⟩
  continuous_toFun := (map_continuous (homotopy F hF n a b)).subtype_mk _
  map_zero_left t := Subtype.ext ((homotopy F hF n a b).map_zero_left t)
  map_one_left t := Subtype.ext ((homotopy F hF n a b).map_one_left t)
  prop' lam := Subtype.ext (homotopy_closed F hF ha hb lam)

/-- The global basepoint is explicit; it generally moves, unlike a based path homotopy. -/
theorem moving_basepoint (F : ℂ → ℂ) (hF : Continuous F) (n : ℕ)
    (a b : ℕ → ℂ) (lam : I) :
    homotopy F hF n a b (lam, 0) = blend (lam : ℝ) (F (a 0)) (b 0) := by
  simp [homotopy, joined, vertexMotion]

/-- A constant surrogate really gives a constant final loop. -/
theorem constant_polygon (n : ℕ) (z : ℂ) (t : I) :
    polygonMap n (fun _ => z) t = z := by
  rcases value_cases (constantVertex (fun _ => z)) n
      (fun i _ => affineCell (fun _ => z) i) t (0 : I) with h | ⟨i, hi, u, h⟩
  · exact h
  · simpa [affineCell] using h

end
end GRWTSK.Analysis.Complex.PolygonFreeHomotopy
