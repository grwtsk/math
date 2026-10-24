# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.NetAngleAccounting.Variantdec3f38a03df3c9e504c1084191519e79281da57a031b65adeaaf4faf8ede30a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `65349fabf854c1db20573d17bd7d9b7651a2a616` · SHA-256 `b88da96e1731b96e671d2d814848fbb3aaebd676a7b9f3f9928eda3c1731870a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.VertexDeficit.Variant456116ba8f94bcc7cae566b67799aed0092263e4861113bb63ab861278081bef","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"456116ba8f94bcc7cae566b67799aed0092263e4861113bb63ab861278081bef","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.VertexDeficit.Variant456116ba8f94bcc7cae566b67799aed0092263e4861113bb63ab861278081bef","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"456116ba8f94bcc7cae566b67799aed0092263e4861113bb63ab861278081bef","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/PositiveAtlas/Boundary/NetAngleAccounting.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.Tactic.FieldSimp
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Positivity
import Mathlib.Tactic.Ring

/-!
# Finite angle accounting with explicit boundary-copy multiplicity

The input is an angle-incidence array, not a claimed embedded polyhedral net.
The formulas keep the grouping of boundary copies. Planarity, edge pairing,
metric realization, sphere topology, and convex reconstruction are separate
obligations. No reconstruction theorem is inferred from a scalar total.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.VertexDeficit.Variant456116ba8f94bcc7cae566b67799aed0092263e4861113bb63ab861278081bef

namespace FormalResearch.PositiveAtlas.Boundary

noncomputable section

/-- Deficit of the total angle assembled at one vertex. -/
def vertexDeficit {m : ℕ} (angle : Fin m → ℝ) : ℝ :=
  2 * Real.pi - ∑ j, angle j

/-- Sum of signed flat boundary turns at the separate copies of one vertex. -/
def vertexBoundaryTurn {m : ℕ} (angle : Fin m → ℝ) : ℝ :=
  ∑ j, (Real.pi - angle j)

/-- The gluing correction is forced by the number of copies, not adjustable. -/
theorem vertex_gluing_correction {m : ℕ} (angle : Fin m → ℝ) :
    vertexDeficit angle =
      vertexBoundaryTurn angle + (2 - (m : ℝ)) * Real.pi := by
  unfold vertexDeficit vertexBoundaryTurn
  simp only [Finset.sum_sub_distrib, Finset.sum_const, Finset.card_univ,
    Fintype.card_fin, nsmul_eq_mul]
  ring

variable {V : Type*} [Fintype V]

/-- Number of boundary copies in the specified finite grouping. -/
def totalBoundaryCopies (copies : V → ℕ) : ℕ := ∑ v, copies v

/-- Intrinsic angle accounting, defined before comparison with flat turns. -/
def totalDeficit (copies : V → ℕ) (angle : (v : V) → Fin (copies v) → ℝ) : ℝ :=
  ∑ v, vertexDeficit (angle v)

/-- Flat boundary accounting for the same angle occurrences. -/
def totalBoundaryTurn (copies : V → ℕ)
    (angle : (v : V) → Fin (copies v) → ℝ) : ℝ :=
  ∑ v, vertexBoundaryTurn (angle v)

/-- Sum the local corrections, preserving vertex and copy cardinalities. -/
theorem total_gluing_correction (copies : V → ℕ)
    (angle : (v : V) → Fin (copies v) → ℝ) :
    totalDeficit copies angle = totalBoundaryTurn copies angle +
      (2 * (Fintype.card V : ℝ) - (totalBoundaryCopies copies : ℝ)) * Real.pi := by
  classical
  unfold totalDeficit totalBoundaryTurn totalBoundaryCopies
  simp_rw [vertex_gluing_correction]
  rw [Finset.sum_add_distrib, ← Finset.sum_mul, Finset.sum_sub_distrib]
  simp only [Finset.sum_const, Finset.card_univ, nsmul_eq_mul, Nat.cast_sum]
  ring

/-- The V=8, B=14 disk-net accounting adds the missing second 2*pi. -/
theorem cube_count_accounting (copies : V → ℕ)
    (angle : (v : V) → Fin (copies v) → ℝ)
    (hV : Fintype.card V = 8) (hB : totalBoundaryCopies copies = 14)
    (hturn : totalBoundaryTurn copies angle = 2 * Real.pi) :
    totalDeficit copies angle = 4 * Real.pi := by
  rw [total_gluing_correction, hV, hB, hturn]
  norm_num
  ring

/-- Three right-angle face sectors have the cube's local deficit. -/
theorem cube_vertex_deficit :
    vertexDeficit (fun _ : Fin 3 => Real.pi / 2) = Real.pi / 2 := by
  simp [vertexDeficit]
  ring

/-- Eight such local deficits have total 4*pi. -/
theorem cube_eight_vertices :
    8 * vertexDeficit (fun _ : Fin 3 => Real.pi / 2) = 4 * Real.pi := by
  rw [cube_vertex_deficit]
  ring

/-- A reflex boundary copy has a negative turn and a positive glued deficit. -/
theorem reflex_copy_signs :
    vertexBoundaryTurn (fun _ : Fin 1 => 3 * Real.pi / 2) < 0 ∧
      0 < vertexDeficit (fun _ : Fin 1 => 3 * Real.pi / 2) := by
  simp only [vertexBoundaryTurn, vertexDeficit, Finset.sum_const, Finset.card_univ,
    Fintype.card_fin, nsmul_eq_mul]
  constructor <;> linarith [Real.pi_pos]

/-- Four right-angle occurrences give different totals under different groupings.
This is an incidence counterexample, not two asserted convex realizations. -/
theorem grouping_changes_deficit :
    vertexDeficit (fun _ : Fin 4 => Real.pi / 2) = 0 ∧
      2 * vertexDeficit (fun _ : Fin 2 => Real.pi / 2) = 2 * Real.pi ∧
      (0 : ℝ) ≠ 2 * Real.pi := by
  constructor
  · simp [vertexDeficit]
    ring
  constructor
  · simp [vertexDeficit]
    ring
  · nlinarith [Real.pi_pos]

/-- Local deficit in the regular-prism angle formula; geometric realization is separate. -/
def prismVertexDeficit (n : ℕ) : ℝ := 2 * Real.pi / (n : ℝ)

/-- The regular base angle plus two right angles has the stated local deficit. -/
theorem prism_angle_formula (n : ℕ) :
    2 * Real.pi - ((Real.pi - 2 * Real.pi / (n : ℝ)) +
      Real.pi / 2 + Real.pi / 2) = prismVertexDeficit n := by
  unfold prismVertexDeficit
  ring

/-- A growing number of shrinking deficits can retain a nonzero total. -/
theorem prism_total (n : ℕ) (hn : n ≠ 0) :
    (2 * (n : ℝ)) * prismVertexDeficit n = 4 * Real.pi := by
  have hn0 : (n : ℝ) ≠ 0 := by exact_mod_cast hn
  unfold prismVertexDeficit
  field_simp [hn0]
  ring

/-- Arbitrarily small positive local deficits coexist with the same total 4*pi. -/
theorem arbitrarily_small_local_fixed_total (epsilon : ℝ) (he : 0 < epsilon) :
    ∃ n : ℕ, 3 ≤ n ∧
      0 < prismVertexDeficit n ∧ prismVertexDeficit n < epsilon ∧
      (2 * (n : ℝ)) * prismVertexDeficit n = 4 * Real.pi := by
  obtain ⟨m, hm⟩ := exists_nat_gt (2 * Real.pi / epsilon)
  have hn : (0 : ℝ) < ((m + 3 : ℕ) : ℝ) := by positivity
  have hlarge : 2 * Real.pi / epsilon < ((m + 3 : ℕ) : ℝ) := by
    push_cast
    linarith
  refine ⟨m + 3, by omega, ?_, ?_, prism_total (m + 3) (by omega)⟩
  · exact div_pos (mul_pos (by norm_num) Real.pi_pos) hn
  · unfold prismVertexDeficit
    apply (div_lt_iff₀ hn).mpr
    have h := (div_lt_iff₀ he).mp hlarge
    nlinarith

end

end FormalResearch.PositiveAtlas.Boundary
```
