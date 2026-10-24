# Complete source: GRWTSK.Algebra.LinearAlgebra.Toeplitz.Varianta3fa508dd11e9ce6e00b1d722c926f4e09fc38fb5cbb5d0f1f3c86c5ddd894fe

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c921b0d971f4cd283baa0cc739de180e4faf6424` · SHA-256 `130188a0ebf28d457416985341f7b901303e697fb237cabf5f5a5bec85072e9a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Entry.Variantf16affc9bbbce81ecea408d3644be55b78cbcc5f1bc7f87fd07ea41015f4df9c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f16affc9bbbce81ecea408d3644be55b78cbcc5f1bc7f87fd07ea41015f4df9c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.Entry.Variantf16affc9bbbce81ecea408d3644be55b78cbcc5f1bc7f87fd07ea41015f4df9c","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"f16affc9bbbce81ecea408d3644be55b78cbcc5f1bc7f87fd07ea41015f4df9c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/f16affc9bbbce81ecea408d3644be55b78cbcc5f1bc7f87fd07ea41015f4df9c.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.Grassmannian.OrderedMinors
import Mathlib.Tactic

/-!
# All-order Toeplitz minors and positive rescaling

The lower half is explicitly zero: natural subtraction alone is not a Toeplitz
extension. Infinite total nonnegativity quantifies over every finite increasing
row AND column selection. It is not positivity of principal determinants.
These definitions apply to arbitrary real sequences, with no zeta import.
-/


namespace GRWTSK.Algebra.LinearAlgebra.Entry.Variantf16affc9bbbce81ecea408d3644be55b78cbcc5f1bc7f87fd07ea41015f4df9c

namespace FormalResearch.PositiveAtlas.Grassmannian.Toeplitz

noncomputable section

/-- The upper Toeplitz matrix of a sequence, extended by zero below the diagonal. -/
def entry (a : ℕ → ℝ) (i j : ℕ) : ℝ :=
  if i ≤ j then a (j - i) else 0

/-- The leading finite block, retaining its natural order. -/
def block (a : ℕ → ℝ) (N : ℕ) : Matrix (Fin N) (Fin N) ℝ :=
  fun i j => entry a i.val j.val

/-- Every finite minor of the infinite matrix, with the supplied ordered indices. -/
def minor (a : ℕ → ℝ) {k : ℕ} (r c : Fin k → ℕ) : ℝ :=
  Matrix.det (fun i j => entry a (r i) (c j))

/-- Total nonnegativity of a finite matrix means all sizes, not just maximal minors. -/
def FiniteNonnegative {N : ℕ} (M : Matrix (Fin N) (Fin N) ℝ) : Prop :=
  ∀ k : ℕ, ∀ r c : Fin k ↪o Fin N,
    0 ≤ Matrix.det (fun i j => M (r i) (c j))

/-- The exact infinite-order Pólya-frequency predicate. No coefficient sign is assumed. -/
def PFInfinity (a : ℕ → ℝ) : Prop :=
  ∀ k : ℕ, ∀ r c : Fin k ↪o ℕ, 0 ≤ minor a r c

/-- Below-diagonal values are zero even when the zeroth coefficient is nonzero. -/
theorem entry_below (a : ℕ → ℝ) {i j : ℕ} (h : j < i) : entry a i j = 0 := by
  simp [entry, Nat.not_le.mpr h]

/-- The diagonal reads the zeroth coefficient. -/
theorem entry_diagonal (a : ℕ → ℝ) (i : ℕ) : entry a i i = a 0 := by
  simp [entry]

/-- Each coefficient can be recovered without limits from the zeroth row. -/
theorem entry_first_row (a : ℕ → ℝ) (j : ℕ) : entry a 0 j = a j := by
  simp [entry]

/-- Truncation preserves every entry at an explicitly embedded old index. -/
theorem block_restrict (a : ℕ → ℝ) {M N : ℕ} (h : M ≤ N) (i j : Fin M) :
    block a N (Fin.castLE h i) (Fin.castLE h j) = block a M i j := rfl

/-- The compatible finite blocks retain the full original sequence. -/
theorem blocks_injective {a b : ℕ → ℝ} (h : ∀ N, block a N = block b N) : a = b := by
  funext j
  have he := congrFun (congrFun (h (j + 1)) ⟨0, by omega⟩) ⟨j, by omega⟩
  simpa [block, entry] using he

/-- Every finite selection is contained in a leading block, including the empty minor. -/
theorem pfInfinity_iff_blocks (a : ℕ → ℝ) :
    PFInfinity a ↔ ∀ N, FiniteNonnegative (block a N) := by
  constructor
  · intro h N k r c
    let rn : Fin k ↪o ℕ := OrderEmbedding.ofStrictMono
      (fun i => (r i).val) (fun _ _ hij => r.strictMono hij)
    let cn : Fin k ↪o ℕ := OrderEmbedding.ofStrictMono
      (fun i => (c i).val) (fun _ _ hij => c.strictMono hij)
    exact h k rn cn
  · intro h k r c
    let N := (∑ i, r i) + (∑ i, c i) + 1
    have hr : ∀ i, r i < N := by
      intro i
      have hi : r i ≤ ∑ j, r j :=
        Finset.single_le_sum (fun j _ => Nat.zero_le (r j)) (Finset.mem_univ i)
      dsimp [N]
      omega
    have hc : ∀ i, c i < N := by
      intro i
      have hi : c i ≤ ∑ j, c j :=
        Finset.single_le_sum (fun j _ => Nat.zero_le (c j)) (Finset.mem_univ i)
      dsimp [N]
      omega
    let rf : Fin k ↪o Fin N := OrderEmbedding.ofStrictMono
      (fun i => ⟨r i, hr i⟩) (fun _ _ hij => r.strictMono hij)
    let cf : Fin k ↪o Fin N := OrderEmbedding.ofStrictMono
      (fun i => ⟨c i, hc i⟩) (fun _ _ hij => c.strictMono hij)
    exact h N k rf cf

/-- Coefficient rescaling induced by substituting `q*w` in a generating function. -/
def rescale (q : ℝ) (a : ℕ → ℝ) (k : ℕ) : ℝ := q ^ k * a k

/-- The exact two-sided diagonal gauge law, before taking determinants. -/
theorem entry_rescale (a : ℕ → ℝ) (q : ℝ) (hq : q ≠ 0) (i j : ℕ) :
    entry (rescale q a) i j = (q ^ i)⁻¹ * (q ^ j * entry a i j) := by
  by_cases hij : i ≤ j
  · simp only [entry, if_pos hij, rescale]
    have hp : q ^ j = q ^ (j - i) * q ^ i := by
      rw [← pow_add, Nat.sub_add_cancel hij]
    rw [hp]
    field_simp [pow_ne_zero i hq]
  · simp [entry, hij]

/-- Rescaling a minor multiplies it by explicit row and column products. -/
theorem minor_rescale (a : ℕ → ℝ) (q : ℝ) (hq : q ≠ 0)
    {k : ℕ} (r c : Fin k → ℕ) :
    minor (rescale q a) r c =
      ((∏ i, (q ^ r i)⁻¹) * (∏ j, q ^ c j)) * minor a r c := by
  let A : Matrix (Fin k) (Fin k) ℝ := fun i j => entry a (r i) (c j)
  let B : Matrix (Fin k) (Fin k) ℝ := fun i j => q ^ c j * A i j
  have hB : B.det = (∏ j, q ^ c j) * A.det := Matrix.det_mul_row _ A
  have hA : minor (rescale q a) r c = (∏ i, (q ^ r i)⁻¹) * B.det := by
    calc
      minor (rescale q a) r c =
          (Matrix.of (fun i j => (q ^ r i)⁻¹ * B i j)).det := by
        unfold minor
        apply congrArg Matrix.det
        funext i j
        exact entry_rescale a q hq (r i) (c j)
      _ = _ := Matrix.det_mul_column _ B
  rw [hA, hB]
  exact (mul_assoc _ _ _).symm

/-- Positive phase/unit normalization preserves AND reflects every minor's sign. -/
theorem minor_rescale_nonnegative_iff (a : ℕ → ℝ) (q : ℝ) (hq : 0 < q)
    {k : ℕ} (r c : Fin k → ℕ) :
    0 ≤ minor (rescale q a) r c ↔ 0 ≤ minor a r c := by
  rw [minor_rescale a q (ne_of_gt hq)]
  have hp : 0 < (∏ i, (q ^ r i)⁻¹) * (∏ j, q ^ c j) := by
    apply mul_pos
    · exact Finset.prod_pos (fun i _ => inv_pos.mpr (pow_pos hq _))
    · exact Finset.prod_pos (fun j _ => pow_pos hq _)
  exact mul_nonneg_iff_of_pos_left hp

/-- A positive normalization cannot repair a failure of infinite-order positivity. -/
theorem pfInfinity_rescale_iff (a : ℕ → ℝ) (q : ℝ) (hq : 0 < q) :
    PFInfinity (rescale q a) ↔ PFInfinity a := by
  constructor
  · intro h k r c
    exact (minor_rescale_nonnegative_iff a q hq r c).mp (h k r c)
  · intro h k r c
    exact (minor_rescale_nonnegative_iff a q hq r c).mpr (h k r c)

/-- Coefficients of `1+w+w^2`, used as an exact obstruction fixture. -/
def quadraticFixture (k : ℕ) : ℝ := if k ≤ 2 then 1 else 0

/-- The fixture has nonnegative coefficients at every index. -/
theorem quadraticFixture_nonnegative (k : ℕ) : 0 ≤ quadraticFixture k := by
  unfold quadraticFixture
  split_ifs <;> norm_num

/-- Its shifted three-by-three minor is negative, despite nonnegative coefficients. -/
theorem quadraticFixture_negative_minor :
    minor quadraticFixture ![0, 1, 2] ![1, 2, 3] = -1 := by
  change (Matrix.of (fun i j : Fin 3 =>
    entry quadraticFixture (![0, 1, 2] i) (![1, 2, 3] j))).det = -1
  rw [Matrix.det_fin_three]
  norm_num [entry, quadraticFixture, Matrix.cons_val_two, Matrix.vecHead, Matrix.vecTail]

/-- The negative minor is an admissible ordered minor, so the fixture is not PF-infinity. -/
theorem quadraticFixture_not_pfInfinity : ¬ PFInfinity quadraticFixture := by
  intro h
  let r : Fin 3 ↪o ℕ := OrderEmbedding.ofStrictMono
    (fun i => i.val) (fun _ _ hij => hij)
  let c : Fin 3 ↪o ℕ := OrderEmbedding.ofStrictMono
    (fun i => i.val + 1) (by
      intro i j hij
      change i.val + 1 < j.val + 1
      exact Nat.add_lt_add_right hij 1)
  have hn := h 3 r c
  have hr : (r : Fin 3 → ℕ) = ![0, 1, 2] := by
    funext i
    fin_cases i <;> rfl
  have hc : (c : Fin 3 → ℕ) = ![1, 2, 3] := by
    funext i
    fin_cases i <;> rfl
  rw [hr, hc, quadraticFixture_negative_minor] at hn
  norm_num at hn

end

end FormalResearch.PositiveAtlas.Grassmannian.Toeplitz
```
