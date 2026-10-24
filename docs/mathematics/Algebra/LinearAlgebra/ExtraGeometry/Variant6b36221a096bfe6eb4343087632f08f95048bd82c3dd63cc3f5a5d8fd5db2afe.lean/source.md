# Complete source: GRWTSK.Algebra.LinearAlgebra.ExtraGeometry.Variant6b36221a096bfe6eb4343087632f08f95048bd82c3dd63cc3f5a5d8fd5db2afe

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `65ebbdbd30a6de7cf4c2f43a6461241fa52ff25b` · SHA-256 `d8187315866ada82039126251b1a9134853613ca77b1f496ed83f693a6393a86`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.RationalLdlRealPositive.Variante5a1ed72ac7ab0fbfb2bed7c5403be0b12434137d0cb6a9ac80bca9637490dcd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e5a1ed72ac7ab0fbfb2bed7c5403be0b12434137d0cb6a9ac80bca9637490dcd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.RationalLdlRealPositive.Variante5a1ed72ac7ab0fbfb2bed7c5403be0b12434137d0cb6a9ac80bca9637490dcd","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"e5a1ed72ac7ab0fbfb2bed7c5403be0b12434137d0cb6a9ac80bca9637490dcd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/mutation-d4-e8/ExtraGeometry.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Geometry
import Certificates


namespace GRWTSK.Algebra.LinearAlgebra.RationalLdlRealPositive.Variante5a1ed72ac7ab0fbfb2bed7c5403be0b12434137d0cb6a9ac80bca9637490dcd

set_option maxRecDepth 100000
set_option maxHeartbeats 4000000

/-!
Real positive definiteness and statistics of the certified generated D4/E8
orbits. These statements concern the literal frozen Cartan matrices and the
specified standard-basis mutation orbits. They do not classify all integral
norm-two vectors or identify an arithmetic source action.
-/

namespace FormalResearch.MutationGame.ExtraGeometry

open scoped BigOperators
open Matrix FormalResearch.MutationGame.Geometry

/-- A rational LDL certificate with positive pivots and determinant-one lower
factor gives positive definiteness after the actual coefficient map to reals. -/
theorem rational_ldl_real_positive {n : ℕ}
    (C L : Matrix (Fin n) (Fin n) ℚ) (d : Fin n → ℚ)
    (hldl : L * diagonal d * Lᵀ = C) (hdet : L.det = 1)
    (hp : ∀ i, 0 < d i) : (C.map (Rat.castHom ℝ)).PosDef := by
  let LR := L.map (Rat.castHom ℝ)
  let dR : Fin n → ℝ := fun i => (d i : ℝ)
  have hldlR : LR * diagonal dR * LRᵀ = C.map (Rat.castHom ℝ) := by
    have h := congrArg (fun M => M.map (Rat.castHom ℝ)) hldl
    rw [Matrix.map_mul, Matrix.map_mul, diagonal_map (map_zero _), transpose_map] at h
    simpa only [LR, dR, Rat.coe_castHom] using h
  have hdetR : LR.det = 1 := by
    have h := (Rat.castHom ℝ).map_det L
    rw [hdet] at h
    simpa [LR] using h.symm
  have hpR : ∀ i, 0 < dR i := by
    intro i
    change (0 : ℝ) < (d i : ℝ)
    exact_mod_cast hp i
  have hi : Function.Injective LRᵀ.mulVec := by
    apply mulVec_injective_of_isUnit
    apply (isUnit_iff_isUnit_det _).mpr
    rw [det_transpose, hdetR]
    exact isUnit_one
  have h := (PosDef.diagonal hpR).conjTranspose_mul_mul_same hi
  simpa only [conjTranspose_eq_transpose_of_trivial, transpose_transpose, hldlR] using h

/-- The frozen integer D4 Cartan form transported to the actual real carrier. -/
def d4RealCartan : Matrix (Fin 4) (Fin 4) ℝ := d4C.map (Int.castRingHom ℝ)

/-- The frozen integer E8 Cartan form transported to the actual real carrier. -/
def e8RealCartan : Matrix (Fin 8) (Fin 8) ℝ := e8C.map (Int.castRingHom ℝ)

theorem d4_real_positive_definite : d4RealCartan.PosDef := by
  have hc : d4CQ.map (Rat.castHom ℝ) = d4RealCartan := by
    ext i j
    fin_cases i <;> fin_cases j <;> norm_num [d4CQ, d4RealCartan, d4C]
  have hp : ∀ i, 0 < d4D i := by decide +kernel
  rw [← hc]
  exact rational_ldl_real_positive d4CQ d4L d4D d4_ldl d4_lower_det hp

theorem e8_real_positive_definite : e8RealCartan.PosDef := by
  have hc : e8CQ.map (Rat.castHom ℝ) = e8RealCartan := by
    ext i j
    fin_cases i <;> fin_cases j <;> norm_num [e8CQ, e8RealCartan, e8C]
  have hp : ∀ i, 0 < e8D i := by decide +kernel
  rw [← hc]
  exact rational_ldl_real_positive e8CQ e8L e8D e8_ldl e8_lower_det hp

theorem d4_real_quadratic_positive (x : Fin 4 → ℝ) (hx : x ≠ 0) :
    0 < ∑ i, ∑ j, x i * d4RealCartan i j * x j := by
  simpa [dotProduct, mulVec, Finset.mul_sum, mul_assoc] using
    d4_real_positive_definite.dotProduct_mulVec_pos hx

theorem e8_real_quadratic_positive (x : Fin 8 → ℝ) (hx : x ≠ 0) :
    0 < ∑ i, ∑ j, x i * e8RealCartan i j * x j := by
  simpa [dotProduct, mulVec, Finset.mul_sum, mul_assoc] using
    e8_real_positive_definite.dotProduct_mulVec_pos hx

/-- Height retains the signs of all population coordinates. -/
def height {n : ℕ} (x : Population n) : ℤ := ∑ i, x i

/-- The highest positive population for the frozen D4 vertex numbering. -/
def d4Highest : Population 4 := ![1,2,1,1]

/-- The highest positive population for the frozen E8 vertex numbering. -/
def e8Highest : Population 8 := ![2,4,6,5,4,3,2,3]

theorem d4_highest_membership : d4.states 22 = d4Highest := by decide +kernel

theorem e8_highest_membership : e8.states 238 = e8Highest := by decide +kernel

theorem d4_lowest_membership : d4.states 23 = -d4Highest := by decide +kernel

theorem e8_lowest_membership : e8.states 239 = -e8Highest := by decide +kernel

theorem d4_highest_positive : (∀ i, 0 ≤ d4Highest i) ∧ height d4Highest = 5 := by
  decide +kernel

theorem e8_highest_positive : (∀ i, 0 ≤ e8Highest i) ∧ height e8Highest = 29 := by
  decide +kernel

theorem d4_highest_reachable : Reachable d4.adjacency d4Highest := by
  exact (d4_orbit_exact d4Highest).mpr ⟨22, d4_highest_membership⟩

theorem e8_highest_reachable : Reachable e8.adjacency e8Highest := by
  exact (e8_orbit_exact e8Highest).mpr ⟨238, e8_highest_membership⟩

theorem d4_lowest_reachable : Reachable d4.adjacency (-d4Highest) := by
  exact (d4_orbit_exact (-d4Highest)).mpr ⟨23, d4_lowest_membership⟩

theorem e8_lowest_reachable : Reachable e8.adjacency (-e8Highest) := by
  exact (e8_orbit_exact (-e8Highest)).mpr ⟨239, e8_lowest_membership⟩

theorem d4_height_bound_checked : ∀ s : Fin 24, height (d4.states s) ≤ 5 := by
  decide +kernel

theorem e8_height_bound_checked : ∀ s : Fin 240, height (e8.states s) ≤ 29 := by
  decide +kernel

theorem d4_highest_unique_checked : ∀ s : Fin 24,
    height (d4.states s) = 5 → d4.states s = d4Highest := by decide +kernel

theorem e8_highest_unique_checked : ∀ s : Fin 240,
    height (e8.states s) = 29 → e8.states s = e8Highest := by decide +kernel

theorem d4_height_bound (x : Population 4) (hx : Reachable d4.adjacency x) :
    height x ≤ height d4Highest := by
  obtain ⟨s, rfl⟩ := (d4_orbit_exact x).mp hx
  rw [d4_highest_positive.2]
  exact d4_height_bound_checked s

theorem e8_height_bound (x : Population 8) (hx : Reachable e8.adjacency x) :
    height x ≤ height e8Highest := by
  obtain ⟨s, rfl⟩ := (e8_orbit_exact x).mp hx
  rw [e8_highest_positive.2]
  exact e8_height_bound_checked s

theorem d4_highest_unique (x : Population 4) (hx : Reachable d4.adjacency x)
    (hh : height x = height d4Highest) : x = d4Highest := by
  obtain ⟨s, rfl⟩ := (d4_orbit_exact x).mp hx
  rw [d4_highest_positive.2] at hh
  exact d4_highest_unique_checked s hh

theorem e8_highest_unique (x : Population 8) (hx : Reachable e8.adjacency x)
    (hh : height x = height e8Highest) : x = e8Highest := by
  obtain ⟨s, rfl⟩ := (e8_orbit_exact x).mp hx
  rw [e8_highest_positive.2] at hh
  exact e8_highest_unique_checked s hh

theorem d4_coordinate_bounds_checked : ∀ (s : Fin 24) (i : Fin 4),
    -d4Highest i ≤ d4.states s i ∧ d4.states s i ≤ d4Highest i := by
  decide +kernel

theorem e8_coordinate_bounds_checked : ∀ (s : Fin 240) (i : Fin 8),
    -e8Highest i ≤ e8.states s i ∧ e8.states s i ≤ e8Highest i := by
  decide +kernel

theorem d4_coordinate_bounds (x : Population 4) (hx : Reachable d4.adjacency x)
    (i : Fin 4) : -d4Highest i ≤ x i ∧ x i ≤ d4Highest i := by
  obtain ⟨s, rfl⟩ := (d4_orbit_exact x).mp hx
  exact d4_coordinate_bounds_checked s i

theorem e8_coordinate_bounds (x : Population 8) (hx : Reachable e8.adjacency x)
    (i : Fin 8) : -e8Highest i ≤ x i ∧ x i ≤ e8Highest i := by
  obtain ⟨s, rfl⟩ := (e8_orbit_exact x).mp hx
  exact e8_coordinate_bounds_checked s i

/-- The six permutations of outer vertices 0, 2, 3, fixing center 1. -/
def diagramPermutation (k : Fin 6) : Fin 4 → Fin 4 :=
  ![![0,1,2,3], ![0,1,3,2], ![2,1,0,3],
    ![2,1,3,0], ![3,1,0,2], ![3,1,2,0]] k

/-- Integer permutation matrices acting on the D4 population columns. -/
def diagramMatrix (k : Fin 6) : Matrix (Fin 4) (Fin 4) ℤ :=
  fun i j => if i = diagramPermutation k j then 1 else 0

/-- Composition table for the frozen six outer-vertex permutations. -/
def diagramComposition (a b : Fin 6) : Fin 6 :=
  ![![0,1,2,3,4,5], ![1,0,4,5,2,3], ![2,3,0,1,5,4],
    ![3,2,5,4,0,1], ![4,5,1,0,3,2], ![5,4,3,2,1,0]] a b

theorem diagram_permutation_injective : ∀ k, Function.Injective (diagramPermutation k) := by
  decide +kernel

theorem diagram_permutations_distinct : Function.Injective diagramPermutation := by
  decide +kernel

theorem diagram_permutation_fixes_center : ∀ k, diagramPermutation k 1 = 1 := by
  decide +kernel

theorem diagram_composition_checked : ∀ a b i,
    diagramPermutation (diagramComposition a b) i =
      diagramPermutation a (diagramPermutation b i) := by decide +kernel

theorem diagram_identity : diagramMatrix 0 = 1 := by decide +kernel

theorem diagram_matrix_composition : ∀ a b,
    diagramMatrix (diagramComposition a b) = diagramMatrix a * diagramMatrix b := by
  decide +kernel

theorem diagram_metric : ∀ k, (diagramMatrix k)ᵀ * d4C * diagramMatrix k = d4C := by
  decide +kernel

theorem diagram_mutation_equivariance : ∀ k i,
    diagramMatrix k * mutationMatrix d4A i =
      mutationMatrix d4A (diagramPermutation k i) * diagramMatrix k := by
  decide +kernel

theorem diagram_adjacency_preservation : ∀ k i j,
    d4A (diagramPermutation k i) (diagramPermutation k j) = d4A i j := by
  intro k i j
  fin_cases k <;> fin_cases i <;> fin_cases j <;> decide +kernel

end FormalResearch.MutationGame.ExtraGeometry
```
