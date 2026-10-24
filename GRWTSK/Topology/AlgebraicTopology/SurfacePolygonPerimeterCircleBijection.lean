/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
Fin finite-sum/product equivalences, real floors, additive circle
fundamental domains, quotient topology and compactness: Mathlib authors.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owner: grwtsk/math#916. Exact parent draft PR #901 head:
e08b2826f99c21c62b51b07a8b383109f424cd60.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCircleAddress
import Mathlib.Logic.Equiv.Fin.Basic
import Mathlib.Algebra.Order.Floor.Semiring
import Mathlib.Topology.Homeomorph.Lemmas
import Mathlib.Topology.Compactness.Compact
import Mathlib.Tactic

/-!
# Complete source-coordinate proof candidate for polygon perimeter ≃ circle

The unpaired cyclic perimeter P_k from #868 is a REAL topological
quotient of the EXACT original 4(k+2) directed interval copies by
ONLY four adjacent-endpoint seams. The #889 source already constructs
a continuous map
  perimeterAngle k : P_k → AddCircle (angularPeriod k)
whose value on source point (c,t) is [directedSideOrdinal(k,c)+t].

The NEW mathematical suppliers are:
1. an exact finite equivalence of old PolygonCorner IDs with Fin N,
   and proof that its ordinal equals the old source-directed ordinal;
2. canonical endpoint normalization: (c,1) is replaced by the true
   cyclic successor side at parameter 0, via one of the ORIGINAL
   PerimeterSeamStep generators;
3. unique half-open [0,N) angular coordinates of normalized sources,
   using Mathlib AddCircle fundamental-domain injectivity and real
   floor separation of integral side ordinal and fractional parameter;
4. completeness of the original ordered source intervals: split any
   circle fundamental-domain representative x as floor(x) + frac(x),
   decode floor(x) with the TRUE finite edge-source equivalence;
5. global Injective and Surjective of perimeterAngle k and a
   homeomorphism via the imported compact-to-Hausdorff theorem.

If elaborated, this supplies an authentic homeomorphism from the
unpaired signed polygon perimeter to Mathlib's AddCircle N and
UnitAddCircle, with the exact original ordinal+t formula.

Do NOT confuse this with the CW attachment map: P_k→B_k is a
continuous SURJECTIVE but NONINJECTIVE map, and the new circle
homeomorphism does not change that information-loss boundary.

No closed 2-disk or cone-to-disk homeomorphism, attaching pushout,
authentic CW surface, cellular/singular homology of that surface,
van Kampen, Hurewicz, hyperbolic metric, geodesic, Selberg/WP/GUE,
growing-shift Chowla/Mobius, zeta divisor or RH theorem is proved.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCircleBijection

open GRWTSK.Algebra.GroupTheory.Words.HigherGenusHeisenbergWitness
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCornerGluing
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonBoundaryTopology
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterAttachment
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCircleAddress

/-- The already named two initial and k extra handles have an exact
finite enumeration in the SAME order used by handleOrdinal. -/
def handleOrdinalEquiv (k : ℕ) : Handle k ≃ Fin (k + 2) :=
  (finSumFinEquiv : Fin 2 ⊕ Fin k ≃ Fin (2 + k)).trans
    (finCongr (Nat.add_comm 2 k))

/-- The directed side index is an exact Equiv, not merely an injection
or an enumeration that may omit an extra handle. -/
def directedSideOrdinalEquiv (k : ℕ) :
    PolygonCorner k ≃ Fin (4 * (k + 2)) :=
  ((handleOrdinalEquiv k).prodCongr (Equiv.refl (Fin 4))).trans
    ((finProdFinEquiv : Fin (k + 2) × Fin 4 ≃ Fin ((k + 2) * 4)).trans
      (finCongr (Nat.mul_comm (k + 2) 4)))

/-- The imported finite equivalence uses the EXACT same handle
ordinal 0,1,2+j as the original source, not a separate permutation. -/
theorem handleOrdinalEquiv_val (k : ℕ) (h : Handle k) :
    ((handleOrdinalEquiv k h : Fin (k + 2)) : ℕ) =
      handleOrdinal k h := by
  cases h with
  | inl i =>
      simp [handleOrdinalEquiv, handleOrdinal,
        finSumFinEquiv, finCongr]
  | inr j =>
      simp [handleOrdinalEquiv, handleOrdinal,
        finSumFinEquiv, finCongr, Fin.natAdd]

/-- Fundamental SOURCE ID equality: the finite equivalence produces
precisely the original #889 directedSideOrdinal. -/
theorem directedSideOrdinalEquiv_val (k : ℕ)
    (c : PolygonCorner k) :
    ((directedSideOrdinalEquiv k c : Fin (4 * (k + 2))) : ℕ) =
      directedSideOrdinal k c := by
  rcases c with ⟨h, i⟩
  simp only [directedSideOrdinalEquiv, Equiv.trans_apply,
    Equiv.prodCongr_apply, finProdFinEquiv_apply]
  simp [directedSideOrdinal, handleOrdinalEquiv_val, Nat.mul_comm,
    Nat.add_comm, Nat.add_left_comm]

/-- Different directed polygon side IDs have different exact old
ordinals, because the FULL imported finite equivalence is injective. -/
theorem directedSideOrdinal_injective (k : ℕ) :
    Function.Injective (directedSideOrdinal k) := by
  intro c d h
  apply (directedSideOrdinalEquiv k).injective
  apply Fin.ext
  simpa [directedSideOrdinalEquiv_val] using h

/-- Every ordinal 0,...,N-1 belongs to exactly one of the original
directed polygon source side IDs. No additional edge ID is invented. -/
theorem directedSideOrdinal_surjective (k : ℕ)
    (n : ℕ) (hn : n < 4 * (k + 2)) :
    ∃ c : PolygonCorner k, directedSideOrdinal k c = n := by
  let i : Fin (4 * (k + 2)) := ⟨n, hn⟩
  refine ⟨(directedSideOrdinalEquiv k).symm i, ?_⟩
  rw [← directedSideOrdinalEquiv_val]
  simp [i]

/-- The NEXT directed side after a block position i. This is the
same source-cyclic order as the four #868 seam constructors. -/
def successorSide (k : ℕ) (c : PolygonCorner k) :
    PolygonCorner k :=
  if c.2 = 0 then (c.1, 1)
  else if c.2 = 1 then (c.1, 2)
  else if c.2 = 2 then (c.1, 3)
  else (nextHandle k c.1, 0)

/-- The last endpoint of EVERY original directed side is identified
with the first endpoint of its EXACT next side by one of the four
parent perimeter seam generators, not by a new gluing assumption. -/
theorem successorSide_perimeter_seam (k : ℕ)
    (c : PolygonCorner k) :
    PerimeterConnected k (c, 1) (successorSide k c, 0) := by
  rcases c with ⟨h, i⟩
  fin_cases i
  · simpa [successorSide] using
      (Relation.EqvGen.rel _ _ (PerimeterSeamStep.seam01 h))
  · simpa [successorSide] using
      (Relation.EqvGen.rel _ _ (PerimeterSeamStep.seam12 h))
  · simpa [successorSide] using
      (Relation.EqvGen.rel _ _ (PerimeterSeamStep.seam23 h))
  · simpa [successorSide] using
      (Relation.EqvGen.rel _ _ (PerimeterSeamStep.seamNext h))

/-- The half-open source normal form: endpoints with t=1 are
replaced by the actual successor at t=0; all other points are
left unchanged. The true wraparound is inherited from successorSide. -/
def normalizedSource (k : ℕ) (p : BoundaryPoint k) :
    BoundaryPoint k :=
  if p.2 = 1 then (successorSide k p.1, 0) else p

/-- Normalization never changes the actual unpaired-perimeter
quotient class. The proof invokes exactly the parent seam relation. -/
theorem perimeterConnected_normalizedSource (k : ℕ)
    (p : BoundaryPoint k) :
    PerimeterConnected k p (normalizedSource k p) := by
  by_cases h : p.2 = 1
  · cases p with
    | mk c t =>
        simpa [normalizedSource, h] using
          successorSide_perimeter_seam k c
  · simp [normalizedSource, h, PerimeterConnected,
      Relation.EqvGen.refl]

/-- A normalized tangential coordinate is in [0,1), never at 1.
This is required for UNIQUE source decomposition, not for the
definition of the topological quotient. -/
theorem normalizedSource_fraction_lt_one (k : ℕ)
    (p : BoundaryPoint k) :
    ((normalizedSource k p).2 : ℝ) < 1 := by
  by_cases h : p.2 = 1
  · simp [normalizedSource, h]
  · simp only [normalizedSource, dif_neg h]
    have ht : (p.2 : ℝ) ≤ 1 := p.2.property.2
    have hne : (p.2 : ℝ) ≠ 1 := by
      intro heq
      exact h (Subtype.ext heq)
    exact lt_of_le_of_ne ht hne

/-- Real angular address before reduction modulo period N. -/
def realAngularAddress (k : ℕ) (p : BoundaryPoint k) : ℝ :=
  (directedSideOrdinal k p.1 : ℝ) + (p.2 : ℝ)

theorem sourceAngularAddress_eq_coe_realAngularAddress (k : ℕ)
    (p : BoundaryPoint k) :
    sourceAngularAddress k p =
      ((realAngularAddress k p : ℝ) : AddCircle (angularPeriod k)) := rfl

/-- Real normalized source address is in the genuine positive-period
half-open fundamental domain [0,N), with source index not rewritten. -/
theorem normalizedRealAngle_mem_Ico (k : ℕ)
    (p : BoundaryPoint k) :
    realAngularAddress k (normalizedSource k p) ∈
      Set.Ico 0 (angularPeriod k) := by
  let p' := normalizedSource k p
  have hindex := directedSideOrdinal_bound k p'.1
  have hnext : (directedSideOrdinal k p'.1 : ℝ) + 1 ≤
      angularPeriod k := by
    unfold angularPeriod
    exact_mod_cast (Nat.succ_le_iff.mpr hindex)
  have ht0 : (0 : ℝ) ≤ p'.2 := p'.2.property.1
  have ht1 : (p'.2 : ℝ) < 1 :=
    normalizedSource_fraction_lt_one k p
  change 0 ≤ realAngularAddress k p' ∧
    realAngularAddress k p' < angularPeriod k
  simp only [realAngularAddress]
  constructor <;> linarith

/-- The real floor of any source normalized angle recovers the
EXACT old integer directed side ordinal. -/
theorem normalizedRealAngle_floor (k : ℕ) (p : BoundaryPoint k) :
    Nat.floor (realAngularAddress k (normalizedSource k p)) =
      directedSideOrdinal k (normalizedSource k p).1 := by
  let p' := normalizedSource k p
  have hnonneg : 0 ≤ realAngularAddress k p' :=
    (normalizedRealAngle_mem_Ico k p).1
  apply (Nat.floor_eq_iff hnonneg).2
  have ht0 : (0 : ℝ) ≤ p'.2 := p'.2.property.1
  have ht1 : (p'.2 : ℝ) < 1 :=
    normalizedSource_fraction_lt_one k p
  simp only [realAngularAddress]
  constructor <;> linarith

/-- Equality of circle addresses of TWO normalized source points
implies equality of the corresponding REAL angles in [0,N).
This is the true Mathlib AddCircle fundamental-domain injectivity,
not an assumption that a circle quotient is globally injective. -/
theorem normalizedRealAngle_eq_of_circle_eq (k : ℕ)
    (p q : BoundaryPoint k)
    (h : sourceAngularAddress k p = sourceAngularAddress k q) :
    realAngularAddress k (normalizedSource k p) =
      realAngularAddress k (normalizedSource k q) := by
  letI : Fact (0 < angularPeriod k) := ⟨angularPeriod_pos k⟩
  have hp := perimeterConnected_normalizedSource k p
  have hq := perimeterConnected_normalizedSource k q
  have h' :
      sourceAngularAddress k (normalizedSource k p) =
      sourceAngularAddress k (normalizedSource k q) :=
    (sourceAngularAddress_respects_connected k hp).symm.trans
      (h.trans (sourceAngularAddress_respects_connected k hq))
  rw [sourceAngularAddress_eq_coe_realAngularAddress,
      sourceAngularAddress_eq_coe_realAngularAddress] at h'
  exact (AddCircle.coe_eq_coe_iff_of_mem_Ico
    (normalizedRealAngle_mem_Ico k p)
    (normalizedRealAngle_mem_Ico k q)).mp h'

/-- UNIQUE half-open decomposition: real equality of normalized
addresses identifies the ORIGINAL source side and the actual t,
not merely their images under the attaching map. -/
theorem normalizedSource_eq_of_angle_eq (k : ℕ)
    (p q : BoundaryPoint k)
    (h : sourceAngularAddress k p = sourceAngularAddress k q) :
    normalizedSource k p = normalizedSource k q := by
  have hre := normalizedRealAngle_eq_of_circle_eq k p q h
  have hfloor :
      directedSideOrdinal k (normalizedSource k p).1 =
      directedSideOrdinal k (normalizedSource k q).1 := by
    calc
      directedSideOrdinal k (normalizedSource k p).1 =
          Nat.floor (realAngularAddress k (normalizedSource k p)) :=
        (normalizedRealAngle_floor k p).symm
      _ = Nat.floor (realAngularAddress k (normalizedSource k q)) := by
        rw [hre]
      _ = directedSideOrdinal k (normalizedSource k q).1 :=
        normalizedRealAngle_floor k q
  have hside : (normalizedSource k p).1 =
      (normalizedSource k q).1 :=
    directedSideOrdinal_injective k hfloor
  apply Prod.ext hside
  apply Subtype.ext
  simp only [realAngularAddress, hside] at hre
  linarith

/-- COMPLETE ANGULAR KERNEL: two ORIGINAL source points determine
the same true additive-circle angular class if and ONLY if they
are related by the actual four-seam unpaired perimeter EqvGen.

The forward direction uses normalization, half-open fundamental
domain injectivity, and uniqueness of the true finite source ordinal.
The reverse direction was already proved in PR #901. -/
theorem angle_eq_iff_perimeterConnected (k : ℕ)
    (p q : BoundaryPoint k) :
    sourceAngularAddress k p = sourceAngularAddress k q ↔
      PerimeterConnected k p q := by
  constructor
  · intro h
    have hp := perimeterConnected_normalizedSource k p
    have hq := perimeterConnected_normalizedSource k q
    have hnorm := normalizedSource_eq_of_angle_eq k p q h
    have hmiddle :
        PerimeterConnected k (normalizedSource k p) (normalizedSource k q) := by
      rw [hnorm]
      exact Relation.EqvGen.refl _
    exact hp.trans (hmiddle.trans hq.symm)
  · intro h
    exact sourceAngularAddress_respects_connected k h

/-- GLOBAL INJECTIVITY on the genuine topological unpaired perimeter:
unlike an unverified coordinate table, the circular angle's KERNEL
has been proved to be exactly the actual original source EqvGen. -/
theorem perimeterAngle_injective (k : ℕ) :
    Function.Injective (perimeterAngle k) := by
  intro x y h
  obtain ⟨p, rfl⟩ := Quotient.exists_rep x
  obtain ⟨q, rfl⟩ := Quotient.exists_rep y
  have hangle : sourceAngularAddress k p =
      sourceAngularAddress k q := by
    simpa only [perimeterAngle_projection] using h
  exact Quotient.sound ((angle_eq_iff_perimeterConnected k p q).mp hangle)

/-- The genuine compact additive circle supplies a canonical
representative x∈[0,N) of EVERY circle class. No arbitrary choice
of a real representative with unbounded integer winding occurs. -/
def circleFundamentalRepresentative (k : ℕ)
    (θ : AddCircle (angularPeriod k)) :
    Set.Ico (0 : ℝ) (angularPeriod k) := by
  letI : Fact (0 < angularPeriod k) := ⟨angularPeriod_pos k⟩
  exact AddCircle.equivIco (angularPeriod k) 0 θ

/-- Every real point x in [0,N) splits into an original directed
side integer n=floor(x)<N and a fractional part in [0,1).
This is an exact finite interval-decomposition input. -/
theorem circleRepresentative_floor_lt (k : ℕ)
    (θ : AddCircle (angularPeriod k)) :
    Nat.floor ((circleFundamentalRepresentative k θ : ℝ)) <
      4 * (k + 2) := by
  let x := circleFundamentalRepresentative k θ
  have hx : (0 : ℝ) ≤ x := x.property.1
  have hlt : (x : ℝ) < (4 * (k + 2) : ℕ) := by
    simpa [angularPeriod] using x.property.2
  exact (Nat.floor_lt hx).2 hlt

/-- An exact source interval representative of the selected REAL
circle fundamental-domain point; it decodes the old FINITE ordinal
through the source-preserving equivalence rather than relabeling edges. -/
def sourceOfCircleRepresentative (k : ℕ)
    (θ : AddCircle (angularPeriod k)) :
    BoundaryPoint k := by
  let x : ℝ := circleFundamentalRepresentative k θ
  let n : ℕ := Nat.floor x
  have hnonneg : 0 ≤ x :=
    (circleFundamentalRepresentative k θ).property.1
  have hlt : n < 4 * (k + 2) :=
    circleRepresentative_floor_lt k θ
  let c : PolygonCorner k :=
    (directedSideOrdinalEquiv k).symm ⟨n, hlt⟩
  have hfrac0 : (0 : ℝ) ≤ x - (n : ℝ) := by
    have hfloor := Nat.floor_le hnonneg
    dsimp only [n]
    linarith
  have hfrac1 : x - (n : ℝ) ≤ 1 := by
    have hfloor := Nat.lt_floor_add_one x
    dsimp only [n]
    linarith
  exact (c, ⟨x - (n : ℝ), ⟨hfrac0, hfrac1⟩⟩)

/-- Surjectivity is not a compactness heuristic: every circle class
has an exact ORIGINAL source side and fractional tangential parameter.
The true finite ordinal equivalence and floor decomposition supply
the actual preimage. -/
theorem perimeterAngle_surjective (k : ℕ) :
    Function.Surjective (perimeterAngle k) := by
  intro θ
  letI : Fact (0 < angularPeriod k) := ⟨angularPeriod_pos k⟩
  let p := sourceOfCircleRepresentative k θ
  refine ⟨perimeterProjection k p, ?_⟩
  rw [perimeterAngle_projection]
  have hp :
      (directedSideOrdinal k p.1 : ℝ) + (p.2 : ℝ) =
        (circleFundamentalRepresentative k θ : ℝ) := by
    dsimp [p, sourceOfCircleRepresentative]
    rw [← directedSideOrdinalEquiv_val]
    simp
    ring
  calc
    sourceAngularAddress k p =
        (((directedSideOrdinal k p.1 : ℝ) + (p.2 : ℝ) : ℝ) :
          AddCircle (angularPeriod k)) := rfl
    _ = ((circleFundamentalRepresentative k θ : ℝ) :
          AddCircle (angularPeriod k)) :=
      congrArg (fun v : ℝ => (v : AddCircle (angularPeriod k))) hp
    _ = θ := by
      simpa [circleFundamentalRepresentative] using
        (AddCircle.equivIco (angularPeriod k) (0 : ℝ)).symm_apply_apply θ

/-- Genuine bijectivity of the previously constructed continuous
angular map, with BOTH logical directions sourced and named. -/
theorem perimeterAngle_bijective (k : ℕ) :
    Function.Bijective (perimeterAngle k) :=
  ⟨perimeterAngle_injective k, perimeterAngle_surjective k⟩

/-- The unpaired perimeter is compact because it is a quotient of
a FINITE disjoint union of true compact unit intervals. Compactness
is not inferred from a mere finite cardinality of source side IDs
without their interval factors. -/
noncomputable instance unpairedPerimeter_compactSpace (k : ℕ) :
    CompactSpace (UnpairedPerimeter k) := by
  letI : CompactSpace (PolygonCorner k) :=
    Finite.compactSpace
  letI : CompactSpace (BoundaryPoint k) := inferInstance
  exact Quotient.compactSpace

/-- The source-specific target circle has the original period N>0,
hence the standard Hausdorff quotient-group topology. -/
noncomputable instance circlePeriodPositive (k : ℕ) :
    Fact (0 < angularPeriod k) :=
  ⟨angularPeriod_pos k⟩

/-- A TRUE Mathlib HOMEOMORPHISM, conditional only on the proof scripts
for the source-specific angular map being successfully elaborated.
Its toFun is exactly the old continuous perimeterAngle, and its
bijectivity comes from the proved finite interval classification. -/
noncomputable def perimeterHomeomorphAddCircle (k : ℕ) :
    UnpairedPerimeter k ≃ₜ AddCircle (angularPeriod k) := by
  let e : UnpairedPerimeter k ≃ AddCircle (angularPeriod k) :=
    Equiv.ofBijective (perimeterAngle k)
      (perimeterAngle_bijective k)
  exact Continuous.homeoOfEquivCompactToT2
    (f := e) (by simpa [e] using perimeterAngle_continuous k)

/-- The full source-preserving unpaired perimeter homeomorphism to
the STANDARD Mathlib real additive circle ℝ/ℤ, by composing the
new exact homeomorphism with the pre-existing period rescaling. -/
noncomputable def perimeterHomeomorphUnitAddCircle (k : ℕ) :
    UnpairedPerimeter k ≃ₜ UnitAddCircle :=
  (perimeterHomeomorphAddCircle k).trans
    (periodCircleHomeomorph k)

/-- The homeomorphism agrees with the ORIGINAL source angular map on
every one of the 4g directed sides, including all t∈[0,1]. -/
theorem perimeterHomeomorph_source_formula (k : ℕ)
    (p : BoundaryPoint k) :
    perimeterHomeomorphAddCircle k (perimeterProjection k p) =
      sourceAngularAddress k p := by
  change perimeterAngle k (perimeterProjection k p) =
    sourceAngularAddress k p
  exact perimeterAngle_projection k p

/-- A stringent source-loss check: the unpaired perimeter has a
circle homeomorphism, yet its old genuine CW attaching-direction map
remains noninjective because opposite signed source edge interiors
are identified only AFTER attachment. -/
theorem attaching_noninjective_despite_perimeter_circle (k : ℕ) :
    Function.Bijective (perimeterHomeomorphAddCircle k) ∧
      ¬ Function.Injective (perimeterAttach k) :=
  ⟨(perimeterHomeomorphAddCircle k).bijective,
    perimeterAttach_not_injective k⟩

/-- Explicit genus-two boundary recognition, with eight signed sides. -/
theorem genus_two_circle_bijection :
    Function.Bijective (perimeterAngle 0) :=
  perimeterAngle_bijective 0

/-- Explicit genus-three boundary recognition, with twelve signed sides. -/
theorem genus_three_circle_bijection :
    Function.Bijective (perimeterAngle 1) :=
  perimeterAngle_bijective 1

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCircleBijection
