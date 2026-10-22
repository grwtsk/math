/-
Copyright (c) 2026 R.A. Jacob Martone. Released under the MIT license.
Mathematical direction: R.A. Jacob Martone.
Formalization assistance: OpenAI ChatGPT.
AddCircle fundamental domains, floor/fractional-part lemmas, compactness,
and compact-to-Hausdorff homeomorphisms: Mathlib contributors, retaining
their upstream attribution.
Status: SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
Owner: grwtsk/math#941. Exact parent draft PR #901 head:
e08b2826f99c21c62b51b07a8b383109f424cd60.
-/
import GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCircleAddress
import Mathlib.Algebra.Order.Floor.Ring
import Mathlib.Topology.Homeomorph.Lemmas
import Mathlib.Tactic

/-!
# The unpaired polygon perimeter is the canonical additive circle

The parent source assigns to every point of the genuine unpaired cyclic
polygon perimeter the additive-circle coordinate

  [directedSideOrdinal + intervalParameter] ∈ ℝ / (4g)ℤ.

This file supplies the missing finite interval decomposition.

First, the inherited handle and directed-side ordinal maps are proved
injective, and an explicit source-preserving inverse sends each ordinal
below 4g back to the exact original `PolygonCorner` identifier.

Second, a source endpoint at parameter one is normalized to the next
directed interval at parameter zero using only the four authentic
perimeter seam families. Every normalized source address lies in the
half-open fundamental domain [0,4g), where Mathlib's additive-circle
quotient map is injective. Equality of normalized real addresses then
forces equality of both the exact source side and interval parameter.

Third, every point of the additive circle has a representative in
[0,4g). Integer floor chooses its directed side and fractional part
chooses its parameter. This proves global surjectivity.

The resulting continuous bijection has compact source and Hausdorff
target, so Mathlib's compact-to-Hausdorff theorem produces an actual
homeomorphism

  UnpairedPerimeter k ≃ₜ AddCircle (4 * (k + 2)),

and composition with the imported rescaling homeomorphism gives the
standard unit additive circle.

This closes only the source-perimeter circle identification. It does
not construct a closed disk, prove a cone-to-disk homeomorphism, build
a CW surface or manifold, compare cellular and singular chains, prove
van Kampen/Hurewicz, or establish any hyperbolic, trace-formula, GUE,
sofic, Chowla, zeta-divisor, or Riemann-hypothesis statement.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCircleEquivalence

open Set
open GRWTSK.GroupTheory.Words.HigherGenusHeisenbergWitness
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonCornerGluing
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonBoundaryTopology
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterAttachment
open GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCircleAddress

/-- The inherited finite directed-side index has the discrete topology;
the real unit-interval factor retains its usual topology. -/
local instance cornerDiscreteTopology (k : ℕ) :
    TopologicalSpace (PolygonCorner k) := ⊥

local instance cornerDiscrete (k : ℕ) :
    DiscreteTopology (PolygonCorner k) := ⟨rfl⟩

/-- The source-exact handle ordinal loses no handle identity. -/
theorem handleOrdinal_injective (k : ℕ) :
    Function.Injective (handleOrdinal k) := by
  intro h₁ h₂ heq
  cases h₁ with
  | inl i =>
      cases h₂ with
      | inl j =>
          have hij : i.val = j.val := by
            simpa [handleOrdinal] using heq
          exact congrArg (fun q : Fin 2 => (Sum.inl q : Handle k))
            (Fin.ext hij)
      | inr j =>
          have hi := i.isLt
          have hj := j.isLt
          simp [handleOrdinal] at heq
          omega
  | inr i =>
      cases h₂ with
      | inl j =>
          have hi := i.isLt
          have hj := j.isLt
          simp [handleOrdinal] at heq
          omega
      | inr j =>
          have hij : i.val = j.val := by
            simpa [handleOrdinal] using heq
          exact congrArg (fun q : Fin k => (Sum.inr q : Handle k))
            (Fin.ext hij)

/-- The complete directed-side ordinal loses neither the handle nor
the local signed-side position. -/
theorem directedSideOrdinal_injective (k : ℕ) :
    Function.Injective (directedSideOrdinal k) := by
  rintro ⟨h, i⟩ ⟨h', i'⟩ heq
  have hi : i.val < 4 := i.isLt
  have hi' : i'.val < 4 := i'.isLt
  have hh : handleOrdinal k h = handleOrdinal k h' := by
    dsimp only [directedSideOrdinal] at heq
    omega
  have hs : i.val = i'.val := by
    dsimp only [directedSideOrdinal] at heq
    rw [hh] at heq
    omega
  have hhandle : h = h' := handleOrdinal_injective k hh
  have hside : i = i' := Fin.ext hs
  exact Prod.ext hhandle hside

/-- Explicit inverse from a handle ordinal below `k+2` to the exact
inherited base-or-extra handle identifier. -/
def handleOfOrdinal (k : ℕ) (j : Fin (k + 2)) : Handle k :=
  if hj : j.val < 2 then
    Sum.inl ⟨j.val, hj⟩
  else
    Sum.inr ⟨j.val - 2, by
      have hjlt := j.isLt
      omega⟩

@[simp] theorem handleOrdinal_handleOfOrdinal (k : ℕ)
    (j : Fin (k + 2)) :
    handleOrdinal k (handleOfOrdinal k j) = j.val := by
  by_cases hj : j.val < 2
  · simp [handleOfOrdinal, hj, handleOrdinal]
  · simp [handleOfOrdinal, hj, handleOrdinal]
    omega

/-- Explicit inverse from an ordinal below `4(k+2)` to the original
polygon corner: quotient by four chooses the handle and remainder
modulo four chooses the directed signed side. -/
def cornerOfOrdinal (k : ℕ) (n : Fin (4 * (k + 2))) :
    PolygonCorner k :=
  (handleOfOrdinal k ⟨n.val / 4, by
      have hn := n.isLt
      omega⟩,
    ⟨n.val % 4, Nat.mod_lt _ (by norm_num)⟩)

@[simp] theorem directedSideOrdinal_cornerOfOrdinal (k : ℕ)
    (n : Fin (4 * (k + 2))) :
    directedSideOrdinal k (cornerOfOrdinal k n) = n.val := by
  unfold cornerOfOrdinal directedSideOrdinal
  rw [handleOrdinal_handleOfOrdinal]
  dsimp only
  omega

/-- The underlying real address before passing to the additive-circle
quotient. -/
def sourceRealAngularAddress (k : ℕ) (p : BoundaryPoint k) : ℝ :=
  (directedSideOrdinal k p.1 : ℝ) + (p.2 : ℝ)

@[simp] theorem sourceAngularAddress_eq_coe_real (k : ℕ)
    (p : BoundaryPoint k) :
    sourceAngularAddress k p =
      ((sourceRealAngularAddress k p : ℝ) :
        AddCircle (angularPeriod k)) := rfl

/-- Successor of an exact directed source corner. Local side positions
0,1,2 advance inside the same handle; position 3 advances to the
next authentic handle, including the final cyclic wrap. -/
def nextDirectedCorner (k : ℕ) (c : PolygonCorner k) :
    PolygonCorner k :=
  if hthree : c.2 = (3 : Fin 4) then
    (nextHandle k c.1, 0)
  else
    (c.1, ⟨c.2.val + 1, by
      have hc := c.2.isLt
      have hne : c.2.val ≠ 3 := by
        intro hv
        apply hthree
        apply Fin.ext
        simpa using hv
      omega⟩)

/-- The right endpoint of each directed interval is exactly the left
endpoint of its source successor in the unpaired perimeter quotient. -/
theorem perimeterProjection_one_eq_nextDirectedCorner (k : ℕ)
    (c : PolygonCorner k) :
    perimeterProjection k (c, 1) =
      perimeterProjection k (nextDirectedCorner k c, 0) := by
  rcases c with ⟨h, i⟩
  fin_cases i
  · simpa [perimeterEdgeMap, nextDirectedCorner] using
      perimeter_seam_01 k h
  · simpa [perimeterEdgeMap, nextDirectedCorner] using
      perimeter_seam_12 k h
  · simpa [perimeterEdgeMap, nextDirectedCorner] using
      perimeter_seam_23 k h
  · simpa [perimeterEdgeMap, nextDirectedCorner] using
      perimeter_seam_next k h

/-- Canonical half-open representative of a source interval point:
parameter one moves to the next interval at parameter zero; every
other point is unchanged. -/
noncomputable def canonicalBoundaryPoint (k : ℕ)
    (p : BoundaryPoint k) : BoundaryPoint k := by
  classical
  exact if ht : p.2 = (1 : unitInterval) then
    (nextDirectedCorner k p.1, 0)
  else
    p

/-- Endpoint normalization preserves the actual unpaired perimeter
class, using the source seam theorem rather than a numerical alias. -/
theorem canonicalBoundaryPoint_projection (k : ℕ)
    (p : BoundaryPoint k) :
    perimeterProjection k (canonicalBoundaryPoint k p) =
      perimeterProjection k p := by
  rcases p with ⟨c, t⟩
  by_cases ht : t = (1 : unitInterval)
  · subst t
    simpa [canonicalBoundaryPoint] using
      (perimeterProjection_one_eq_nextDirectedCorner k c).symm
  · simp [canonicalBoundaryPoint, ht]

/-- The canonical representative always lies in the half-open copy of
its source interval. -/
theorem canonicalBoundaryPoint_parameter_lt_one (k : ℕ)
    (p : BoundaryPoint k) :
    ((canonicalBoundaryPoint k p).2 : ℝ) < 1 := by
  rcases p with ⟨c, t⟩
  by_cases ht : t = (1 : unitInterval)
  · simp [canonicalBoundaryPoint, ht]
  · have htne : (t : ℝ) ≠ 1 := by
      intro h
      apply ht
      exact Subtype.ext h
    have htlt : (t : ℝ) < 1 :=
      lt_of_le_of_ne t.property.2 htne
    simpa [canonicalBoundaryPoint, ht] using htlt

/-- Endpoint normalization preserves the additive-circle address
because it preserves the source quotient class. -/
theorem sourceAngularAddress_canonical (k : ℕ)
    (p : BoundaryPoint k) :
    sourceAngularAddress k (canonicalBoundaryPoint k p) =
      sourceAngularAddress k p := by
  have h := congrArg (perimeterAngle k)
    (canonicalBoundaryPoint_projection k p)
  simpa only [perimeterAngle_projection] using h

/-- Every canonical source address lies in the genuine half-open
fundamental domain `[0, angularPeriod k)`. -/
theorem canonicalRealAngularAddress_mem_Ico (k : ℕ)
    (p : BoundaryPoint k) :
    sourceRealAngularAddress k (canonicalBoundaryPoint k p) ∈
      Set.Ico 0 (angularPeriod k) := by
  let q := canonicalBoundaryPoint k p
  change sourceRealAngularAddress k q ∈
    Set.Ico 0 (angularPeriod k)
  have hord :
      directedSideOrdinal k q.1 < 4 * (k + 2) :=
    directedSideOrdinal_bound k q.1
  have hord_succ :
      directedSideOrdinal k q.1 + 1 ≤ 4 * (k + 2) :=
    Nat.succ_le_iff.mpr hord
  have ht0 : 0 ≤ (q.2 : ℝ) := q.2.property.1
  have ht1 : (q.2 : ℝ) < 1 := by
    simpa [q] using canonicalBoundaryPoint_parameter_lt_one k p
  have hs :
      (directedSideOrdinal k q.1 : ℝ) + 1 ≤ angularPeriod k := by
    unfold angularPeriod
    exact_mod_cast hord_succ
  constructor
  · unfold sourceRealAngularAddress
    positivity
  · unfold sourceRealAngularAddress
    linarith

/-- Two half-open source interval representatives with the same real
address are literally the same exact source point. -/
theorem boundaryPoint_eq_of_realAngularAddress_eq (k : ℕ)
    {p q : BoundaryPoint k}
    (hp : (p.2 : ℝ) < 1)
    (hq : (q.2 : ℝ) < 1)
    (haddr :
      sourceRealAngularAddress k p =
        sourceRealAngularAddress k q) :
    p = q := by
  have hp0 : 0 ≤ (p.2 : ℝ) := p.2.property.1
  have hq0 : 0 ≤ (q.2 : ℝ) := q.2.property.1
  have hpq :
      directedSideOrdinal k p.1 ≤ directedSideOrdinal k q.1 := by
    by_contra hnot
    have hlt :
        directedSideOrdinal k q.1 < directedSideOrdinal k p.1 :=
      Nat.lt_of_not_ge hnot
    have hsucc :
        directedSideOrdinal k q.1 + 1 ≤
          directedSideOrdinal k p.1 :=
      Nat.succ_le_iff.mpr hlt
    have hcast :
        (directedSideOrdinal k q.1 : ℝ) + 1 ≤
          (directedSideOrdinal k p.1 : ℝ) := by
      exact_mod_cast hsucc
    unfold sourceRealAngularAddress at haddr
    linarith
  have hqp :
      directedSideOrdinal k q.1 ≤ directedSideOrdinal k p.1 := by
    by_contra hnot
    have hlt :
        directedSideOrdinal k p.1 < directedSideOrdinal k q.1 :=
      Nat.lt_of_not_ge hnot
    have hsucc :
        directedSideOrdinal k p.1 + 1 ≤
          directedSideOrdinal k q.1 :=
      Nat.succ_le_iff.mpr hlt
    have hcast :
        (directedSideOrdinal k p.1 : ℝ) + 1 ≤
          (directedSideOrdinal k q.1 : ℝ) := by
      exact_mod_cast hsucc
    unfold sourceRealAngularAddress at haddr
    linarith
  have hord :
      directedSideOrdinal k p.1 = directedSideOrdinal k q.1 :=
    Nat.le_antisymm hpq hqp
  have hc : p.1 = q.1 :=
    directedSideOrdinal_injective k hord
  have htval : (p.2 : ℝ) = (q.2 : ℝ) := by
    unfold sourceRealAngularAddress at haddr
    rw [hord] at haddr
    linarith
  have ht : p.2 = q.2 := Subtype.ext htval
  exact Prod.ext hc ht

/-- Every real representative in `[0,4g)` decomposes into one exact
source directed side and a half-open interval parameter. Integer floor
selects the side; fractional part selects the parameter. -/
theorem exists_boundaryPoint_realAngularAddress_eq_of_mem_Ico
    (k : ℕ) {x : ℝ}
    (hx : x ∈ Set.Ico 0 (angularPeriod k)) :
    ∃ p : BoundaryPoint k,
      (p.2 : ℝ) < 1 ∧
        sourceRealAngularAddress k p = x := by
  let z : ℤ := ⌊x⌋
  have hz_nonneg : 0 ≤ z := by
    dsimp [z]
    exact Int.floor_nonneg.mpr hx.1
  have hz_le : (z : ℝ) ≤ x := by
    dsimp [z]
    exact Int.floor_le x
  have hz_lt_period : (z : ℝ) < angularPeriod k :=
    lt_of_le_of_lt hz_le hx.2
  have hz_toNat : (z.toNat : ℤ) = z :=
    Int.toNat_of_nonneg hz_nonneg
  have hz_toNat_real : (z.toNat : ℝ) = (z : ℝ) := by
    exact_mod_cast hz_toNat
  have hn_lt_real :
      (z.toNat : ℝ) < ((4 * (k + 2) : ℕ) : ℝ) := by
    rw [hz_toNat_real]
    simpa [angularPeriod] using hz_lt_period
  have hn_lt : z.toNat < 4 * (k + 2) := by
    exact_mod_cast hn_lt_real
  let n : Fin (4 * (k + 2)) := ⟨z.toNat, hn_lt⟩
  let t : unitInterval := ⟨Int.fract x, unitInterval.fract_mem x⟩
  refine ⟨(cornerOfOrdinal k n, t), ?_, ?_⟩
  · exact Int.fract_lt_one x
  · unfold sourceRealAngularAddress
    rw [directedSideOrdinal_cornerOfOrdinal]
    dsimp [n, t]
    rw [hz_toNat_real]
    dsimp [z]
    simp [add_comm]

/-- Global injectivity of the descended perimeter angle. Equality in
the additive circle is first reduced to equality in its half-open
fundamental domain and then to equality of exact source points. -/
theorem perimeterAngle_injective (k : ℕ) :
    Function.Injective (perimeterAngle k) := by
  intro x y
  refine Quotient.inductionOn x ?_
  intro p
  refine Quotient.inductionOn y ?_
  intro q hxy
  change perimeterAngle k (perimeterProjection k p) =
    perimeterAngle k (perimeterProjection k q) at hxy
  have hsource :
      sourceAngularAddress k p = sourceAngularAddress k q := by
    simpa only [perimeterAngle_projection] using hxy
  let p' := canonicalBoundaryPoint k p
  let q' := canonicalBoundaryPoint k q
  have hcircle :
      sourceAngularAddress k p' = sourceAngularAddress k q' := by
    calc
      sourceAngularAddress k p' =
          sourceAngularAddress k p := by
            simpa [p'] using sourceAngularAddress_canonical k p
      _ = sourceAngularAddress k q := hsource
      _ = sourceAngularAddress k q' := by
            simpa [q'] using
              (sourceAngularAddress_canonical k q).symm
  let : Fact (0 < angularPeriod k) := ⟨angularPeriod_pos k⟩
  have hpIco :
      sourceRealAngularAddress k p' ∈
        Set.Ico (0 : ℝ) (0 + angularPeriod k) := by
    simpa [p', zero_add] using
      canonicalRealAngularAddress_mem_Ico k p
  have hqIco :
      sourceRealAngularAddress k q' ∈
        Set.Ico (0 : ℝ) (0 + angularPeriod k) := by
    simpa [q', zero_add] using
      canonicalRealAngularAddress_mem_Ico k q
  have hreal :
      sourceRealAngularAddress k p' =
        sourceRealAngularAddress k q' := by
    apply (AddCircle.coe_eq_coe_iff_of_mem_Ico hpIco hqIco).mp
    simpa only [sourceAngularAddress_eq_coe_real] using hcircle
  have hp_lt : (p'.2 : ℝ) < 1 := by
    simpa [p'] using canonicalBoundaryPoint_parameter_lt_one k p
  have hq_lt : (q'.2 : ℝ) < 1 := by
    simpa [q'] using canonicalBoundaryPoint_parameter_lt_one k q
  have hpq : p' = q' :=
    boundaryPoint_eq_of_realAngularAddress_eq k hp_lt hq_lt hreal
  change perimeterProjection k p = perimeterProjection k q
  calc
    perimeterProjection k p =
        perimeterProjection k p' := by
          simpa [p'] using
            (canonicalBoundaryPoint_projection k p).symm
    _ = perimeterProjection k q' :=
      congrArg (perimeterProjection k) hpq
    _ = perimeterProjection k q := by
      simpa [q'] using canonicalBoundaryPoint_projection k q

/-- Global surjectivity: choose the imported `[0,N)` representative
of a circle point, then split it by floor and fractional part. -/
theorem perimeterAngle_surjective (k : ℕ) :
    Function.Surjective (perimeterAngle k) := by
  let : Fact (0 < angularPeriod k) := ⟨angularPeriod_pos k⟩
  intro y
  rcases AddCircle.eq_coe_Ico (p := angularPeriod k) y with
    ⟨x, hx, hxy⟩
  rcases exists_boundaryPoint_realAngularAddress_eq_of_mem_Ico k hx with
    ⟨p, -, haddr⟩
  refine ⟨perimeterProjection k p, ?_⟩
  rw [perimeterAngle_projection, sourceAngularAddress_eq_coe_real,
    haddr]
  exact hxy

/-- The canonical perimeter angle is a genuine bijection. -/
theorem perimeterAngle_bijective (k : ℕ) :
    Function.Bijective (perimeterAngle k) :=
  ⟨perimeterAngle_injective k, perimeterAngle_surjective k⟩

@[simp] theorem perimeterAngle_eq_iff (k : ℕ)
    {x y : UnpairedPerimeter k} :
    perimeterAngle k x = perimeterAngle k y ↔ x = y :=
  (perimeterAngle_injective k).eq_iff

/-- The quotient projection onto the unpaired perimeter is surjective. -/
theorem perimeterProjection_surjective (k : ℕ) :
    Function.Surjective (perimeterProjection k) := by
  intro x
  refine Quotient.inductionOn x ?_
  intro p
  exact ⟨p, rfl⟩

/-- The unpaired perimeter is compact as the continuous image of the
finite disjoint union of compact unit intervals. -/
theorem unpairedPerimeter_isCompact (k : ℕ) :
    IsCompact (Set.univ : Set (UnpairedPerimeter k)) := by
  have hsource :
      IsCompact (Set.univ : Set (BoundaryPoint k)) :=
    isCompact_univ
  have himage :=
    hsource.image (perimeterProjection_continuous k)
  have hrange :
      Set.range (perimeterProjection k) =
        (Set.univ : Set (UnpairedPerimeter k)) :=
    Set.range_eq_univ.mpr (perimeterProjection_surjective k)
  simpa [Set.image_univ, hrange] using himage

/-- Compact-space instance packaged locally for the final
compact-to-Hausdorff homeomorphism theorem. -/
theorem unpairedPerimeterCompactSpace (k : ℕ) :
    CompactSpace (UnpairedPerimeter k) :=
  ⟨unpairedPerimeter_isCompact k⟩

/-- The intended source-specific homeomorphism from the exact unpaired
polygon perimeter to the genuine period-`4g` additive circle. -/
noncomputable def perimeterCircleHomeomorph (k : ℕ) :
    UnpairedPerimeter k ≃ₜ AddCircle (angularPeriod k) := by
  letI : Fact (0 < angularPeriod k) := ⟨angularPeriod_pos k⟩
  letI : CompactSpace (UnpairedPerimeter k) :=
    unpairedPerimeterCompactSpace k
  exact (perimeterAngle_continuous k).homeoOfEquivCompactToT2
    (f := Equiv.ofBijective (perimeterAngle k)
      (perimeterAngle_bijective k))

@[simp] theorem perimeterCircleHomeomorph_apply (k : ℕ)
    (x : UnpairedPerimeter k) :
    perimeterCircleHomeomorph k x = perimeterAngle k x := rfl

/-- Standard-unit-circle version, obtained only by composing the new
source homeomorphism with Mathlib's imported rescaling homeomorphism. -/
noncomputable def perimeterUnitCircleHomeomorph (k : ℕ) :
    UnpairedPerimeter k ≃ₜ UnitAddCircle :=
  (perimeterCircleHomeomorph k).trans (periodCircleHomeomorph k)

@[simp] theorem perimeterUnitCircleHomeomorph_apply (k : ℕ)
    (x : UnpairedPerimeter k) :
    perimeterUnitCircleHomeomorph k x =
      perimeterUnitAngle k x := rfl

/-- The already-defined standard unit-circle coordinate is bijective;
this is now a consequence of the actual homeomorphism. -/
theorem perimeterUnitAngle_bijective (k : ℕ) :
    Function.Bijective (perimeterUnitAngle k) := by
  constructor
  · intro x y hxy
    apply (perimeterUnitCircleHomeomorph k).injective
    simpa only [perimeterUnitCircleHomeomorph_apply] using hxy
  · intro y
    rcases (perimeterUnitCircleHomeomorph k).surjective y with
      ⟨x, hx⟩
    exact ⟨x, by
      simpa only [perimeterUnitCircleHomeomorph_apply] using hx⟩

/-- Genus two receives the exact homeomorphism to the period-eight
additive circle. -/
def genusTwoPerimeterCircleHomeomorph :
    UnpairedPerimeter 0 ≃ₜ AddCircle (8 : ℝ) := by
  exact Eq.ndrec (motive := fun p : ℝ => UnpairedPerimeter 0 ≃ₜ AddCircle p)
    (perimeterCircleHomeomorph 0) genusTwo_angular_period

/-- Genus three receives the exact homeomorphism to the period-twelve
additive circle. -/
def genusThreePerimeterCircleHomeomorph :
    UnpairedPerimeter 1 ≃ₜ AddCircle (12 : ℝ) := by
  exact Eq.ndrec (motive := fun p : ℝ => UnpairedPerimeter 1 ≃ₜ AddCircle p)
    (perimeterCircleHomeomorph 1) genusThree_angular_period

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPerimeterCircleEquivalence
