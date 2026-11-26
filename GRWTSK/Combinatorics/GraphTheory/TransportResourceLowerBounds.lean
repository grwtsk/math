/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Combinatorics.SimpleGraph.Walk.Basic
import Mathlib.Data.Finset.Lattice.Lemmas
import Mathlib.Topology.MetricSpace.Pseudo.Basic
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-!
# Transport charges for two and three sites

Consumer: geometry-aware finite contraction and execution planning. The
metric quantities below are the distance and the half-perimeter that the
finite-dimensional chart results of OpenAI math #379 identify as the two-
and three-site prices under their own hypotheses. This result takes the
pricing hypotheses explicitly and leaves implementation accounting to the
consumer.

A graph walk gives the actual oriented traversal list. Each traversal is
charged at its own calibrated rate, including repeated traversals of the
same edge. The two-site lower bound follows by the triangle inequality.
For the three-site bound, sum the three triangle bounds through a common
hub and divide by two. Each of the three hub distances then occurs once.
For any finite site price with the actual monotonicity, pair identity and
intersecting submodularity used in `SpectralBooks.DiagonalPriceLawsOn`,
the price of a walk's visited sites is bounded by the charge of that walk.
Each added traversal has a site in common with the remainder of the walk.
Monotonicity and the zero price of that common singleton bound the price
of the intersection below by zero. The same monotonicity returns the
bound to any selected subset of the visited sites.

The three branch charges must be added as billed occurrences. A model that
shares a physical traversal between branches needs an additional accounting
argument before the sum bounds its execution charge.

SOURCE_PROOF_CANDIDATE. Qualify checks against the exact source revision.
-/

set_option autoImplicit false

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.TransportResourceLowerBounds

variable {V X : Type*} [PseudoMetricSpace X] {G : SimpleGraph V}

/-- Exact sum of charges for the walk's oriented traversal occurrences. -/
noncomputable def walkCharge {a b : V} (walk : G.Walk a b)
    (charge : G.Dart → ℝ) : ℝ :=
  (walk.darts.map charge).sum

/-- A locally calibrated transport charge bounds the endpoint distance at
that calibration, regardless of the intermediate vertices chosen. -/
theorem calibrated_dist_le_walkCharge (site : V → X) (scale : ℝ)
    (hScale : 0 ≤ scale) (charge : G.Dart → ℝ)
    (hDart : ∀ d : G.Dart, scale * dist (site d.fst) (site d.snd) ≤ charge d)
    {a b : V} (walk : G.Walk a b) :
    scale * dist (site a) (site b) ≤ walkCharge walk charge := by
  induction walk with
  | nil => simp [walkCharge, SimpleGraph.Walk.darts]
  | @cons a next b adjacent rest ih =>
      calc
        scale * dist (site a) (site b) ≤
            scale * (dist (site a) (site next) + dist (site next) (site b)) :=
          mul_le_mul_of_nonneg_left (dist_triangle _ _ _) hScale
        _ = scale * dist (site a) (site next) + scale * dist (site next) (site b) :=
          mul_add _ _ _
        _ ≤ walkCharge (.cons adjacent rest) charge :=
          add_le_add (hDart ⟨(a, next), adjacent⟩) ih

/-- Independently charged hub-to-terminal walks bound the calibrated
half-perimeter. An actual execution bound can use this only after proving
that its ledger includes the sum of all three walk charges. -/
theorem calibrated_halfPerimeter_le_tripod_charge (site : V → X) (scale : ℝ)
    (hScale : 0 ≤ scale) (charge : G.Dart → ℝ)
    (hDart : ∀ d : G.Dart, scale * dist (site d.fst) (site d.snd) ≤ charge d)
    {hub a b c : V} (walkA : G.Walk hub a) (walkB : G.Walk hub b) (walkC : G.Walk hub c) :
    scale * ((dist (site a) (site b) + dist (site b) (site c) + dist (site c) (site a)) / 2) ≤
      walkCharge walkA charge + walkCharge walkB charge + walkCharge walkC charge := by
  have hAB := dist_triangle (site a) (site hub) (site b)
  have hBC := dist_triangle (site b) (site hub) (site c)
  have hCA := dist_triangle (site c) (site hub) (site a)
  rw [dist_comm (site a) (site hub)] at hAB
  rw [dist_comm (site b) (site hub)] at hBC
  rw [dist_comm (site c) (site hub)] at hCA
  calc
    _ ≤ scale * (dist (site hub) (site a) + dist (site hub) (site b) + dist (site hub) (site c)) := by
      apply mul_le_mul_of_nonneg_left _ hScale
      linarith
    _ = scale * dist (site hub) (site a) + scale * dist (site hub) (site b) +
        scale * dist (site hub) (site c) := by ring
    _ ≤ _ := add_le_add
      (add_le_add (calibrated_dist_le_walkCharge site scale hScale charge hDart walkA)
        (calibrated_dist_le_walkCharge site scale hScale charge hDart walkB))
      (calibrated_dist_le_walkCharge site scale hScale charge hDart walkC)

/-- Geometric site identities visited by the walk. Repeated traversals were
retained in the charge ledger, while repeated site identities collapse here. -/
def walkSites [DecidableEq X] {a b : V} (walk : G.Walk a b) (site : V → X) : Finset X :=
  (walk.support.map site).toFinset

/-- A finite monotone, intersecting-submodular site price with the calibrated
two-site distance law bounds the charge of a covering walk. To instantiate a
Euclidean chart, prove all walk sites lie in the chart before using its pair
law. The statement applies to arbitrary finite terminal sets, including sets
with fewer distinct sites than the walk visits. -/
theorem calibrated_sitePrice_le_covering_walkCharge [DecidableEq X]
    (site : V → X) (price : Finset X → ℝ) (scale : ℝ) (hScale : 0 ≤ scale)
    (hMonotone : Monotone price)
    (hSubmodular : ∀ ⦃s t : Finset X⦄, (s ∩ t).Nonempty →
      price (s ∪ t) + price (s ∩ t) ≤ price s + price t)
    (hPair : ∀ u v : V, price {site u, site v} = dist (site u) (site v))
    (charge : G.Dart → ℝ)
    (hDart : ∀ d : G.Dart, scale * dist (site d.fst) (site d.snd) ≤ charge d)
    {a b : V} (walk : G.Walk a b) (terminals : Finset X)
    (hCover : terminals ⊆ walkSites walk site) :
    scale * price terminals ≤ walkCharge walk charge := by
  have hZero (u : V) : price {site u} = 0 := by simpa using hPair u u
  apply le_trans (mul_le_mul_of_nonneg_left (hMonotone hCover) hScale)
  clear terminals hCover
  induction walk with
  | nil => simp [walkSites, walkCharge, hZero]
  | @cons a next b adjacent rest ih =>
    let tail := walkSites rest site
    let pair : Finset X := {site a, site next}
    have hNext : site next ∈ tail :=
      List.mem_toFinset.mpr (List.mem_map.mpr ⟨next, rest.start_mem_support, rfl⟩)
    have hCommon : site next ∈ pair ∩ tail :=
      Finset.mem_inter.mpr ⟨by simp [pair], hNext⟩
    have hIntersect : (pair ∩ tail).Nonempty := ⟨site next, hCommon⟩
    have hUnion : pair ∪ tail = walkSites (.cons adjacent rest) site := by
      change ({site a, site next} : Finset X) ∪ tail = (site a :: rest.support.map site).toFinset
      rw [Finset.insert_union, Finset.singleton_union, Finset.insert_eq_of_mem hNext,
        List.toFinset_cons]
      rfl
    have hNonnegative : 0 ≤ price (pair ∩ tail) := by
      rw [← hZero next]
      exact hMonotone (Finset.singleton_subset_iff.mpr hCommon)
    have hPrice : price (walkSites (.cons adjacent rest) site) ≤
        dist (site a) (site next) + price tail := by
      have hStep := hSubmodular hIntersect
      rw [hUnion] at hStep
      change price (walkSites (.cons adjacent rest) site) + price (pair ∩ tail) ≤
        price {site a, site next} + price tail at hStep
      rw [hPair a next] at hStep
      linarith
    calc
      _ ≤ scale * (dist (site a) (site next) + price tail) :=
        mul_le_mul_of_nonneg_left hPrice hScale
      _ = scale * dist (site a) (site next) + scale * price tail := mul_add _ _ _
      _ ≤ walkCharge (.cons adjacent rest) charge :=
        add_le_add (hDart ⟨(a, next), adjacent⟩) ih

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.TransportResourceLowerBounds
