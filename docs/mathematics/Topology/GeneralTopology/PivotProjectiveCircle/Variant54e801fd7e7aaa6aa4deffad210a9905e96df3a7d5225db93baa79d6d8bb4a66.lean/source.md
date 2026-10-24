# Complete source: GRWTSK.Topology.GeneralTopology.PivotProjectiveCircle.Variant54e801fd7e7aaa6aa4deffad210a9905e96df3a7d5225db93baa79d6d8bb4a66

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `06afab30e20e08f0acbfb7f8f4d41d49dc5fdaec` · SHA-256 `bf54730bc5a9c4aaf7d485517d6357229faeed0425e566d61068e289ae053a9b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.RealCircle.Variant102083490fc8cf1903ce749745d308cfc06cfd698ca3c82d6575980e20d17395","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"102083490fc8cf1903ce749745d308cfc06cfd698ca3c82d6575980e20d17395","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.RealCircle.Variant102083490fc8cf1903ce749745d308cfc06cfd698ca3c82d6575980e20d17395","mathematical_subject":"Topology.GeneralTopology","original_sha256":"102083490fc8cf1903ce749745d308cfc06cfd698ca3c82d6575980e20d17395","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/atlas-ghh-descent-20261007/FormalResearch/PositiveAtlas/Grassmannian/PivotProjectiveCircle.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.Grassmannian.PivotChartTopology
import FormalResearch.PositiveAtlas.Grassmannian.PivotTransitionFixtures

/-!
# The actual projective-line circle readout

The normalized double-angle readout descends through equality of actual row
subspaces, and is continuous for the final topology of the actual pivot atlas.
Its explicit stereographic inverse and two bounded chart images give a circle
homeomorphism. The circle has its ordinary subspace topology in the real
coordinate plane. A realization weak equivalence or higher bundle comparison
requires separate data.

Human direction, theorem selection, and evaluation: grwtsk contributors.
AI-assisted formal implementation: OpenAI Codex, ATLAS-GHH-DESCENT-20261007.
-/


namespace GRWTSK.Topology.GeneralTopology.RealCircle.Variant102083490fc8cf1903ce749745d308cfc06cfd698ca3c82d6575980e20d17395

namespace FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine

noncomputable section

open scoped Matrix

/-- The geometric unit circle, with its ordinary real coordinate topology. -/
abbrev RealCircle := {p : ℝ × ℝ // p.1 ^ 2 + p.2 ^ 2 = 1}

/-- The first increasing pivot of a one-dimensional plane in two dimensions. -/
def firstPivot : Fin 1 ↪o Fin 2 :=
  OrderEmbedding.ofStrictMono (fun _ => 0) (by
    intro i j h
    exact False.elim ((not_lt_of_ge (by exact le_of_eq (Subsingleton.elim j i))) h))

/-- The second increasing pivot. -/
def secondPivot : Fin 1 ↪o Fin 2 :=
  OrderEmbedding.ofStrictMono (fun _ => 1) (by
    intro i j h
    exact False.elim ((not_lt_of_ge (by exact le_of_eq (Subsingleton.elim j i))) h))

@[simp] theorem firstPivot_apply (i : Fin 1) : firstPivot i = 0 := rfl

@[simp] theorem secondPivot_apply (i : Fin 1) : secondPivot i = 1 := rfl

/-- Double-angle readout of a nonzero vector, unchanged by a nonzero real scale. -/
def doubleAngle (a b : ℝ) : ℝ × ℝ :=
  ((a ^ 2 - b ^ 2) / (a ^ 2 + b ^ 2), 2 * a * b / (a ^ 2 + b ^ 2))

theorem doubleAngle_unit (a b : ℝ) (h : a ^ 2 + b ^ 2 ≠ 0) :
    (doubleAngle a b).1 ^ 2 + (doubleAngle a b).2 ^ 2 = 1 := by
  dsimp [doubleAngle]
  field_simp [h]
  ring

theorem doubleAngle_scale (a b r : ℝ) (hr : r ≠ 0) (h : a ^ 2 + b ^ 2 ≠ 0) :
    doubleAngle (r * a) (r * b) = doubleAngle a b := by
  have hd : (r * a) ^ 2 + (r * b) ^ 2 ≠ 0 := by
    rw [show (r * a) ^ 2 + (r * b) ^ 2 = r ^ 2 * (a ^ 2 + b ^ 2) by ring]
    exact mul_ne_zero (pow_ne_zero _ hr) h
  ext <;> dsimp [doubleAngle] <;> field_simp [hr, h, hd]

theorem fullRankFrame_denominator_pos (A : FullRankFrame 1 2) :
    0 < A.val 0 0 ^ 2 + A.val 0 1 ^ 2 := by
  have hn : ¬ (A.val 0 0 = 0 ∧ A.val 0 1 = 0) := by
    rintro ⟨ha, hb⟩
    have hz : A.val = 0 := by
      ext i j
      fin_cases i
      fin_cases j <;> simp_all
    have hr := A.property
    rw [hz, Matrix.rank_zero] at hr
    norm_num at hr
  have h₁ := sq_nonneg (A.val 0 0)
  have h₂ := sq_nonneg (A.val 0 1)
  by_contra h
  have ha : A.val 0 0 = 0 := by nlinarith
  have hb : A.val 0 1 = 0 := by nlinarith
  exact hn ⟨ha, hb⟩

/-- A full-rank row presents an actual point of the geometric circle. -/
def frameCircle (A : FullRankFrame 1 2) : RealCircle :=
  ⟨doubleAngle (A.val 0 0) (A.val 0 1),
    doubleAngle_unit _ _ (fullRankFrame_denominator_pos A).ne'⟩

/-- The circle readout depends on the actual intrinsic plane, with arbitrary real gauges. -/
theorem frameCircle_eq_of_rowSpace_eq (A B : FullRankFrame 1 2)
    (h : frameRowSpace A.val = frameRowSpace B.val) : frameCircle A = frameCircle B := by
  obtain ⟨U, hU, hBA⟩ := exists_rowChange_of_frameRowSpace_eq A.val B.val B.property h
  have hr : U 0 0 ≠ 0 := by simpa only [Matrix.det_eq_elem_of_subsingleton U 0] using hU
  have he (j : Fin 2) : B.val 0 j = U 0 0 * A.val 0 j := by
    have hh := congrFun (congrFun hBA 0) j
    simpa only [Matrix.mul_apply, Fin.sum_univ_one] using hh
  apply Subtype.ext
  change doubleAngle (A.val 0 0) (A.val 0 1) = doubleAngle (B.val 0 0) (B.val 0 1)
  rw [he 0, he 1]
  exact (doubleAngle_scale _ _ _ hr (fullRankFrame_denominator_pos A).ne').symm

/-- Logical frame choice is used only after representative independence is proved. -/
def circleMap (P : IntrinsicPlane 1 2) : RealCircle := frameCircle (planeFrame P)

theorem circleMap_representedPlane (A : FullRankFrame 1 2) :
    circleMap (representedPlane A) = frameCircle A := by
  apply frameCircle_eq_of_rowSpace_eq
  exact congrArg Subtype.val (representedPlane_planeFrame (representedPlane A))

theorem circleMap_normalizedPivotPlane (I : Fin 1 ↪o Fin 2) (A : NormalizedPivotFrame I) :
    circleMap (normalizedPivotPlane I A) =
      frameCircle ⟨A.val, normalizedPivotFrame_rank I A⟩ :=
  circleMap_representedPlane _

/-- The descended readout is continuous on every actual normalized frame domain. -/
set_option maxHeartbeats 1000000 in
theorem continuous_circleMap_normalizedPivotPlane (I : Fin 1 ↪o Fin 2) :
    Continuous (fun A : NormalizedPivotFrame I => circleMap (normalizedPivotPlane I A)) := by
  have hv : Continuous (fun A : NormalizedPivotFrame I => A.val) := continuous_subtype_val
  have hr : Continuous (fun A : NormalizedPivotFrame I => A.val (0 : Fin 1)) :=
    (continuous_apply (0 : Fin 1)).comp hv
  have h₀ : Continuous (fun A : NormalizedPivotFrame I => A.val 0 0) :=
    (continuous_apply (0 : Fin 2)).comp hr
  have h₁ : Continuous (fun A : NormalizedPivotFrame I => A.val 0 1) :=
    (continuous_apply (1 : Fin 2)).comp hr
  have hd : ∀ A : NormalizedPivotFrame I, A.val 0 0 ^ 2 + A.val 0 1 ^ 2 ≠ 0 :=
    fun A => (fullRankFrame_denominator_pos ⟨A.val, normalizedPivotFrame_rank I A⟩).ne'
  have hc₀ : Continuous (fun A : NormalizedPivotFrame I =>
      (A.val 0 0 ^ 2 - A.val 0 1 ^ 2) / (A.val 0 0 ^ 2 + A.val 0 1 ^ 2)) :=
    ((h₀.pow 2).sub (h₁.pow 2)).div ((h₀.pow 2).add (h₁.pow 2)) hd
  have hc₁ : Continuous (fun A : NormalizedPivotFrame I =>
      2 * A.val 0 0 * A.val 0 1 / (A.val 0 0 ^ 2 + A.val 0 1 ^ 2)) :=
    ((continuous_const.mul h₀).mul h₁).div ((h₀.pow 2).add (h₁.pow 2)) hd
  have hc : Continuous (fun A : NormalizedPivotFrame I => doubleAngle (A.val 0 0) (A.val 0 1)) :=
    hc₀.prodMk hc₁
  have he : (fun A : NormalizedPivotFrame I => circleMap (normalizedPivotPlane I A)) =
      (fun A => frameCircle ⟨A.val, normalizedPivotFrame_rank I A⟩) :=
    funext (circleMap_normalizedPivotPlane I)
  rw [he]
  exact hc.subtype_mk _

/-- Continuity uses the genuine final atlas topology, without a continuous frame choice. -/
theorem continuous_circleMap : Continuous circleMap := by
  apply continuous_coinduced_dom.mpr
  apply continuous_sigma
  intro I
  exact continuous_circleMap_normalizedPivotPlane I

/-- Actual first-chart points. -/
def firstPoint (t : ℝ) : IntrinsicPlane 1 2 :=
  normalizedPivotPlane firstPivot ⟨firstFrame t, by
    ext i j
    fin_cases i
    fin_cases j
    simp [columnSubmatrix, firstFrame]⟩

/-- Actual second-chart points. -/
def secondPoint (u : ℝ) : IntrinsicPlane 1 2 :=
  normalizedPivotPlane secondPivot ⟨secondFrame u, by
    ext i j
    fin_cases i
    fin_cases j
    simp [columnSubmatrix, secondFrame]⟩

theorem circleMap_firstPoint (t : ℝ) : (circleMap (firstPoint t)).val = firstCircle t := by
  rw [firstPoint, circleMap_normalizedPivotPlane]
  simp [frameCircle, doubleAngle, firstFrame, firstCircle]

theorem circleMap_secondPoint (u : ℝ) : (circleMap (secondPoint u)).val = secondCircle u := by
  rw [secondPoint, circleMap_normalizedPivotPlane]
  simp [frameCircle, doubleAngle, secondFrame, secondCircle]

theorem normalized_frame_eq_first {I : Fin 1 ↪o Fin 2} (A : NormalizedPivotFrame I)
    (hI : I 0 = 0) : A.val = firstFrame (A.val 0 1) := by
  have hp := congrFun (congrFun A.property 0) 0
  have ha : A.val 0 0 = 1 := by simpa [columnSubmatrix, hI] using hp
  ext i j
  fin_cases i
  fin_cases j <;> simp [firstFrame, ha]

theorem normalized_frame_eq_second {I : Fin 1 ↪o Fin 2} (A : NormalizedPivotFrame I)
    (hI : I 0 = 1) : A.val = secondFrame (A.val 0 0) := by
  have hp := congrFun (congrFun A.property 0) 0
  have ha : A.val 0 1 = 1 := by simpa [columnSubmatrix, hI] using hp
  ext i j
  fin_cases i
  fin_cases j <;> simp [secondFrame, ha]

/-- The two explicit real charts cover every actual one-dimensional subspace. -/
theorem firstPoint_secondPoint_cover (P : IntrinsicPlane 1 2) :
    (∃ t : ℝ, firstPoint t = P) ∨ (∃ u : ℝ, secondPoint u = P) := by
  obtain ⟨I, A, hA⟩ := intrinsicPivotDomain_cover P
  have hi : I 0 = 0 ∨ I 0 = 1 := by omega
  rcases hi with hI | hI
  · left
    refine ⟨A.val 0 1, ?_⟩
    rw [← hA]
    apply Subtype.ext
    change frameRowSpace (firstFrame (A.val 0 1)) = frameRowSpace A.val
    rw [normalized_frame_eq_first A hI]
  · right
    refine ⟨A.val 0 0, ?_⟩
    rw [← hA]
    apply Subtype.ext
    change frameRowSpace (secondFrame (A.val 0 0)) = frameRowSpace A.val
    rw [normalized_frame_eq_second A hI]

/-- The pointwise reciprocal transition is equality of actual intrinsic planes. -/
theorem firstPoint_eq_secondPoint_inv (t : ℝ) (ht : t ≠ 0) :
    firstPoint t = secondPoint t⁻¹ := by
  apply Subtype.ext
  change frameRowSpace (firstFrame t) = frameRowSpace (secondFrame t⁻¹)
  rw [← normalize_first_to_second t ht]
  exact (frameRowSpace_pivotNormalize (firstFrame t) ![1]
    (by simpa [columnMinor, columnSubmatrix, firstFrame] using ht)).symm

theorem firstCircle_fst_ne_neg_one (t : ℝ) : (firstCircle t).1 ≠ -1 := by
  have hd : (1 + t ^ 2 : ℝ) ≠ 0 := by positivity
  intro h
  change (1 - t ^ 2) / (1 + t ^ 2) = -1 at h
  have he := (div_eq_iff hd).mp h
  nlinarith

theorem firstCircle_coordinate (t : ℝ) :
    (firstCircle t).2 / (1 + (firstCircle t).1) = t := by
  have hd : (1 + t ^ 2 : ℝ) ≠ 0 := by positivity
  have hp : 1 + (1 - t ^ 2) / (1 + t ^ 2) ≠ 0 := by
    intro h
    apply firstCircle_fst_ne_neg_one t
    change (1 - t ^ 2) / (1 + t ^ 2) = -1
    linarith
  dsimp [firstCircle]
  field_simp [hd, hp]
  <;> ring

/-- Explicit inversion of the geometric circle away from the second-chart pole. -/
theorem firstCircle_inverse (p : RealCircle) (hx : p.val.1 ≠ -1) :
    firstCircle (p.val.2 / (1 + p.val.1)) = p.val := by
  have hp := p.property
  have hn : (1 + p.val.1 : ℝ) ≠ 0 := by intro h; apply hx; linarith
  have hd : 1 + (p.val.2 / (1 + p.val.1)) ^ 2 ≠ 0 := by positivity
  ext <;> dsimp [firstCircle] <;> field_simp [hn, hd]
  · linear_combination -(1 + p.val.1) * hp
  · linear_combination -p.val.2 * hp

/-- The inverse is a specified chart coordinate, rather than a set-level cardinality match. -/
def circleInverse (p : RealCircle) : IntrinsicPlane 1 2 :=
  if p.val.1 = -1 then secondPoint 0 else firstPoint (p.val.2 / (1 + p.val.1))

theorem circleInverse_firstPoint (t : ℝ) : circleInverse (circleMap (firstPoint t)) = firstPoint t := by
  unfold circleInverse
  rw [circleMap_firstPoint, if_neg (firstCircle_fst_ne_neg_one t), firstCircle_coordinate]

theorem circleInverse_circleMap (P : IntrinsicPlane 1 2) : circleInverse (circleMap P) = P := by
  rcases firstPoint_secondPoint_cover P with ⟨t, rfl⟩ | ⟨u, rfl⟩
  · exact circleInverse_firstPoint t
  · by_cases hu : u = 0
    · subst u
      unfold circleInverse
      rw [circleMap_secondPoint]
      simp [secondCircle]
    · have he : firstPoint u⁻¹ = secondPoint u := by
        simpa only [inv_inv] using firstPoint_eq_secondPoint_inv u⁻¹ (inv_ne_zero hu)
      rw [← he]
      exact circleInverse_firstPoint u⁻¹

theorem circleMap_circleInverse (p : RealCircle) : circleMap (circleInverse p) = p := by
  unfold circleInverse
  split_ifs with hx
  · apply Subtype.ext
    rw [circleMap_secondPoint]
    have hp := p.property
    have hy : p.val.2 = 0 := by rw [hx] at hp; nlinarith
    ext <;> simp [secondCircle, hx, hy]
  · apply Subtype.ext
    rw [circleMap_firstPoint]
    exact firstCircle_inverse p hx

/-- A concrete bijection, preserving the actual stereographic chart coordinates. -/
def circleEquiv : IntrinsicPlane 1 2 ≃ RealCircle where
  toFun := circleMap
  invFun := circleInverse
  left_inv := circleInverse_circleMap
  right_inv := circleMap_circleInverse

theorem continuous_firstPoint : Continuous firstPoint := by
  have hf : Continuous firstFrame := by
    apply continuous_matrix
    intro i j
    fin_cases i
    fin_cases j <;> simp [firstFrame]
  change Continuous (normalizedPivotPlane firstPivot ∘ fun t => ⟨firstFrame t, _⟩)
  exact (continuous_normalizedPivotPlane firstPivot).comp (hf.subtype_mk _)

theorem continuous_secondPoint : Continuous secondPoint := by
  have hf : Continuous secondFrame := by
    apply continuous_matrix
    intro i j
    fin_cases i
    fin_cases j <;> simp [secondFrame]
  change Continuous (normalizedPivotPlane secondPivot ∘ fun u => ⟨secondFrame u, _⟩)
  exact (continuous_normalizedPivotPlane secondPivot).comp (hf.subtype_mk _)

/-- Two bounded coordinate intervals already cover every actual projective-line point. -/
theorem bounded_chart_cover :
    firstPoint '' Set.Icc (-1 : ℝ) 1 ∪ secondPoint '' Set.Icc (-1 : ℝ) 1 = Set.univ := by
  apply Set.eq_univ_of_forall
  intro P
  rcases firstPoint_secondPoint_cover P with ⟨t, rfl⟩ | ⟨u, rfl⟩
  · by_cases ht : |t| ≤ 1
    · exact Or.inl ⟨t, abs_le.mp ht, rfl⟩
    · have hg : 1 < |t| := lt_of_not_ge ht
      have hn : t ≠ 0 := by intro h; simp [h] at hg
      have hi : |t⁻¹| ≤ 1 := by rw [abs_inv]; exact inv_le_one_of_one_le₀ hg.le
      exact Or.inr ⟨t⁻¹, abs_le.mp hi, (firstPoint_eq_secondPoint_inv t hn).symm⟩
  · by_cases hu : |u| ≤ 1
    · exact Or.inr ⟨u, abs_le.mp hu, rfl⟩
    · have hg : 1 < |u| := lt_of_not_ge hu
      have hn : u ≠ 0 := by intro h; simp [h] at hg
      have hi : |u⁻¹| ≤ 1 := by rw [abs_inv]; exact inv_le_one_of_one_le₀ hg.le
      refine Or.inl ⟨u⁻¹, abs_le.mp hi, ?_⟩
      simpa using firstPoint_eq_secondPoint_inv u⁻¹ (inv_ne_zero hn)

/-- Compactness is derived from actual continuous chart maps and their bounded cover. -/
instance compactSpace_intrinsicProjectiveLine : CompactSpace (IntrinsicPlane 1 2) := by
  apply isCompact_univ_iff.mp
  rw [← bounded_chart_cover]
  exact (isCompact_Icc.image continuous_firstPoint).union
    (isCompact_Icc.image continuous_secondPoint)

/-- The actual intrinsic final-atlas projective line is homeomorphic to the geometric circle. -/
def circleHomeomorph : IntrinsicPlane 1 2 ≃ₜ RealCircle :=
  Continuous.homeoOfEquivCompactToT2 (f := circleEquiv) continuous_circleMap

end

end FormalResearch.PositiveAtlas.Grassmannian.ProjectiveLine
```
