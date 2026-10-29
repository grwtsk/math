-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.LocalStorage.Variant9671b20262bd1a01c4c6be3cd96ad17f46dab60432f3d214d0d3bfb9b41b6cae","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9671b20262bd1a01c4c6be3cd96ad17f46dab60432f3d214d0d3bfb9b41b6cae","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.LocalStorage.Variant9671b20262bd1a01c4c6be3cd96ad17f46dab60432f3d214d0d3bfb9b41b6cae","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"9671b20262bd1a01c4c6be3cd96ad17f46dab60432f3d214d0d3bfb9b41b6cae","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/type-theory-reconstruction/FormalResearch/PositiveAtlas/StorageDescent.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Real.Basic
import Mathlib.Algebra.Order.BigOperators.Group.Finset
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Ring

/-!
# Signed storage on actual overlap domains

The overlap points remain in the statement. A constant coboundary constructs
global storage, and finite trajectory budgets telescope without replacing signed
terms by absolute values. State dependent gauges retain their block increments.

Direction, theorem selection and evaluation: grwtsk contributors.
Formalization: OpenAI Codex, ATLAS-GHH-DESCENT-20261007.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.LocalStorage.Variant9671b20262bd1a01c4c6be3cd96ad17f46dab60432f3d214d0d3bfb9b41b6cae

namespace FormalResearch.PositiveAtlas.StorageDescent

universe u v

variable {X : Type u} {I : Type v}

/-- Local storage on a declared covering family of state domains. -/
structure LocalStorage (X : Type u) (I : Type v) where
  /-- The domain of each chart in the local storage cover. -/
  domain : I → Set X
  cover : ∀ x, ∃ i, x ∈ domain i
  /-- The signed real storage readout supplied by each chart. -/
  value : I → X → ℝ

namespace LocalStorage

/-- Choose a chart only pointwise; continuity of this choice is not required. -/
noncomputable def chart (L : LocalStorage X I) (x : X) : I :=
  Classical.choose (L.cover x)

theorem mem_chart (L : LocalStorage X I) (x : X) : x ∈ L.domain (L.chart x) :=
  Classical.choose_spec (L.cover x)

/-- Storage corrected by the chart gauge. -/
noncomputable def global (L : LocalStorage X I) (b : I → X → ℝ) (x : X) : ℝ :=
  L.value (L.chart x) x - b (L.chart x) x

/-- A state dependent coboundary gives agreement on every actual overlap. -/
theorem global_eq (L : LocalStorage X I) (b : I → X → ℝ)
    (overlap : ∀ i j x, x ∈ L.domain i → x ∈ L.domain j →
      L.value j x - L.value i x = b j x - b i x)
    {i : I} {x : X} (hx : x ∈ L.domain i) :
    L.global b x = L.value i x - b i x := by
  have h := overlap i (L.chart x) x hx (L.mem_chart x)
  unfold global
  linarith

/-- The constructed global storage is the unique function with all local laws. -/
theorem global_unique (L : LocalStorage X I) (b : I → X → ℝ)
    (H : X → ℝ)
    (hH : ∀ i x, x ∈ L.domain i → H x = L.value i x - b i x) :
    H = L.global b := by
  funext x
  exact hH (L.chart x) x (L.mem_chart x)

end LocalStorage

/-- Exact finite telescoping, valid also for an empty trajectory. -/
theorem sum_drop (H : X → ℝ) (x : ℕ → X) (N : ℕ) :
    ∑ k ∈ Finset.range N, (H (x k) - H (x (k + 1))) = H (x 0) - H (x N) := by
  induction N with
  | zero => simp
  | succ N ih => rw [Finset.sum_range_succ, ih]; ring

/-- Finite local dissipation inequalities give one signed terminal budget. -/
theorem terminal_budget (H : X → ℝ) (x : ℕ → X) (c r : ℕ → ℝ) (N : ℕ)
    (hc : ∀ k < N, c k ≤ H (x k) - H (x (k + 1)) + r k) :
    ∑ k ∈ Finset.range N, c k ≤
      H (x 0) - H (x N) + ∑ k ∈ Finset.range N, r k := by
  calc
    _ ≤ ∑ k ∈ Finset.range N, (H (x k) - H (x (k + 1)) + r k) :=
      Finset.sum_le_sum (fun k hk => hc k (Finset.mem_range.mp hk))
    _ = _ := by rw [Finset.sum_add_distrib, sum_drop]

/-- Before a gluing gauge, chart switches have an exact signed contribution.
`i N` is the chosen terminal chart, so the last switch is retained as well. -/
theorem switched_sum (H : I → X → ℝ) (i : ℕ → I) (x : ℕ → X) (N : ℕ) :
    ∑ k ∈ Finset.range N, (H (i k) (x k) - H (i k) (x (k + 1))) =
      H (i 0) (x 0) - H (i N) (x N) +
        ∑ k ∈ Finset.range N,
          (H (i (k + 1)) (x (k + 1)) - H (i k) (x (k + 1))) := by
  induction N with
  | zero => simp
  | succ N ih => simp only [Finset.sum_range_succ]; rw [ih]; ring

/-- The ungauged budget keeps switch signs and order. -/
theorem switched_terminal_budget (H : I → X → ℝ) (i : ℕ → I) (x : ℕ → X)
    (c r : ℕ → ℝ) (N : ℕ)
    (hc : ∀ k < N, c k ≤ H (i k) (x k) - H (i k) (x (k + 1)) + r k) :
    ∑ k ∈ Finset.range N, c k ≤ H (i 0) (x 0) - H (i N) (x N) +
      ∑ k ∈ Finset.range N,
        (H (i (k + 1)) (x (k + 1)) - H (i k) (x (k + 1))) +
      ∑ k ∈ Finset.range N, r k := by
  calc
    _ ≤ ∑ k ∈ Finset.range N, (H (i k) (x k) - H (i k) (x (k + 1)) + r k) :=
      Finset.sum_le_sum (fun k hk => hc k (Finset.mem_range.mp hk))
    _ = _ := by rw [Finset.sum_add_distrib, switched_sum]

/-- A constant chart gauge cancels within each chart-contained block. -/
theorem constant_gauge_budget (L : LocalStorage X I) (b : I → ℝ)
    (overlap : ∀ i j x, x ∈ L.domain i → x ∈ L.domain j →
      L.value j x - L.value i x = b j - b i)
    (i : ℕ → I) (x : ℕ → X) (c r : ℕ → ℝ) (N : ℕ)
    (blocks : ∀ k < N, x k ∈ L.domain (i k) ∧ x (k + 1) ∈ L.domain (i k))
    (hc : ∀ k < N, c k ≤ L.value (i k) (x k) - L.value (i k) (x (k + 1)) + r k) :
    ∑ k ∈ Finset.range N, c k ≤
      L.global (fun j _ => b j) (x 0) - L.global (fun j _ => b j) (x N) +
        ∑ k ∈ Finset.range N, r k := by
  apply terminal_budget
  intro k hk
  rw [L.global_eq _ overlap (blocks k hk).1,
    L.global_eq _ overlap (blocks k hk).2]
  linarith [hc k hk]

/-- State dependent gauges pay their actual within-block increments. -/
theorem variable_gauge_budget (L : LocalStorage X I) (b : I → X → ℝ)
    (overlap : ∀ i j x, x ∈ L.domain i → x ∈ L.domain j →
      L.value j x - L.value i x = b j x - b i x)
    (i : ℕ → I) (x : ℕ → X) (c r : ℕ → ℝ) (N : ℕ)
    (blocks : ∀ k < N, x k ∈ L.domain (i k) ∧ x (k + 1) ∈ L.domain (i k))
    (hc : ∀ k < N, c k ≤ L.value (i k) (x k) - L.value (i k) (x (k + 1)) + r k) :
    ∑ k ∈ Finset.range N, c k ≤ L.global b (x 0) - L.global b (x N) +
      ∑ k ∈ Finset.range N, (r k + b (i k) (x k) - b (i k) (x (k + 1))) := by
  apply terminal_budget
  intro k hk
  rw [L.global_eq _ overlap (blocks k hk).1,
    L.global_eq _ overlap (blocks k hk).2]
  linarith [hc k hk]

/-- Product jumps include the cross increment, even at reset events. -/
theorem product_jump (f g df dg : ℝ) :
    (f + df) * (g + dg) - f * g = f * dg + g * df + df * dg := by ring

/-- A native signed-cost decomposition needs only its combined terminal bound. -/
theorem cost_le_of_terminal (Q initial : ℝ) (H : X → ℝ) (x : ℕ → X)
    (c r : ℕ → ℝ) (N : ℕ) (B : ℝ)
    (decomposition : Q = initial + ∑ k ∈ Finset.range N, c k)
    (hc : ∀ k < N, c k ≤ H (x k) - H (x (k + 1)) + r k)
    (budget : initial + H (x 0) - H (x N) + ∑ k ∈ Finset.range N, r k ≤ B) : Q ≤ B := by
  have ht := terminal_budget H x c r N hc
  rw [decomposition]
  linarith

end FormalResearch.PositiveAtlas.StorageDescent
