# Complete source: GRWTSK.Algebra.LinearAlgebra.Quadratic.Variant1717385e08c458d711e9827ed930fcc75774706b2b95678fcb85bf0c895ff636

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `40fcd297ecdfe347f54d9a9a0a47d2820827643e` · SHA-256 `f188e32fb9fc217d64a4c6eee69d6985b7fbb6514691e986be540a4407ceb05d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Coefficient.Variant9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.Coefficient.Variant9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.Grassmannian.FiniteOrder
import FormalResearch.PositiveAtlas.Grassmannian.SignedMinorElimination

/-!
# Every minor of a bandwidth-two Toeplitz matrix

The proof cuts an ordered minor at its first diagonal offset. Offsets outside
[0,2] give a zero first row or column. Offset zero or two splits off 1 or c.
For offset one, take the maximal initial simultaneous consecutive run. A gap
in either selection makes a triangular cut, whose leading determinant is a
continuant. This handles arbitrary gaps, not only the displayed tridiagonal
minors. No zero test depends on numerical rounding or an assumed positive root.
-/


namespace GRWTSK.Algebra.LinearAlgebra.Coefficient.Variant9eb73164a48656cf1895a80922aee545cc795a20a0b1286face701f015edb2a0

namespace FormalResearch.PositiveAtlas.Grassmannian.Toeplitz.Quadratic

noncomputable section

/-- The ordinary coefficients of 1+b*w+c*w^2, with exact finite support. -/
def coefficient (b c : ℝ) (n : ℕ) : ℝ :=
  if n = 0 then 1 else if n = 1 then b else if n = 2 then c else 0

/-- An equivalent entry formula which avoids truncated subtraction in proofs. -/
def band (b c : ℝ) (i j : ℕ) : ℝ :=
  if j = i then 1 else if j = i + 1 then b else if j = i + 2 then c else 0

/-- The band model is the existing Toeplitz entry, including its zero extension. -/
theorem entry_coefficient (b c : ℝ) (i j : ℕ) :
    entry (coefficient b c) i j = band b c i j := by
  simp only [entry, coefficient, band]
  split_ifs <;> first | rfl | omega

/-- Entries strictly below the diagonal vanish. -/
theorem band_of_lt (b c : ℝ) {i j : ℕ} (h : j < i) : band b c i j = 0 := by
  have h0 : j ≠ i := by omega
  have h1 : j ≠ i + 1 := by omega
  have h2 : j ≠ i + 2 := by omega
  simp [band, h0, h1, h2]

/-- Entries beyond the second superdiagonal vanish. -/
theorem band_of_gt (b c : ℝ) {i j : ℕ} (h : i + 2 < j) : band b c i j = 0 := by
  have h0 : j ≠ i := by omega
  have h1 : j ≠ i + 1 := by omega
  have h2 : j ≠ i + 2 := by omega
  simp [band, h0, h1, h2]

/-- The continuant recurrence is a polynomial definition, not a positivity premise. -/
def continuant (b c : ℝ) : ℕ → ℝ
  | 0 => 1
  | 1 => b
  | n + 2 => b * continuant b c (n + 1) - c * continuant b c n

/-- Tridiagonal consecutive shifted minors. -/
def tridiagonal (b c : ℝ) (n : ℕ) : Matrix (Fin n) (Fin n) ℝ :=
  fun i j => if i.val = j.val then b else if i.val = j.val + 1 then 1
    else if i.val + 1 = j.val then c else 0

/-- Simultaneous translation of consecutive indices produces this exact matrix. -/
theorem band_consecutive (b c : ℝ) (s n : ℕ) (i j : Fin n) :
    band b c (s + i.val) (s + 1 + j.val) = tridiagonal b c n i j := by
  simp only [band, tridiagonal]
  split_ifs <;> first | rfl | omega

/-- A zero first column makes the determinant zero by the actual Leibniz formula. -/
theorem det_zero_first_column {n : ℕ} (M : Matrix (Fin (n + 1)) (Fin (n + 1)) ℝ)
    (h : ∀ i, M i 0 = 0) : Matrix.det M = 0 := by
  rw [Matrix.det_apply']
  apply Finset.sum_eq_zero
  intro σ _
  have hz : (∏ i, M (σ i) i) = 0 :=
    Finset.prod_eq_zero (Finset.mem_univ (0 : Fin (n + 1))) (h (σ 0))
  exact mul_eq_zero_of_right _ hz

/-- The transposed first-column argument keeps the first-row sign convention. -/
theorem det_zero_first_row {n : ℕ} (M : Matrix (Fin (n + 1)) (Fin (n + 1)) ℝ)
    (h : ∀ j, M 0 j = 0) : Matrix.det M = 0 := by
  rw [← Matrix.det_transpose]
  exact det_zero_first_column M.transpose h

/-- Deleting the first row and column translates the tridiagonal matrix. -/
theorem tridiagonal_tail (b c : ℝ) (n : ℕ) :
    (tridiagonal b c (n + 1)).submatrix Fin.succ Fin.succ = tridiagonal b c n := by
  ext i j
  simp [tridiagonal, Matrix.submatrix, Nat.add_left_comm, Nat.add_comm]

/-- The second first-row cofactor has a unit first column and the next tail. -/
theorem tridiagonal_second_cofactor (b c : ℝ) (n : ℕ) :
    Matrix.det ((tridiagonal b c (n + 2)).submatrix Fin.succ
      (1 : Fin (n + 2)).succAbove) = Matrix.det (tridiagonal b c n) := by
  let M := (tridiagonal b c (n + 2)).submatrix Fin.succ
    (1 : Fin (n + 2)).succAbove
  have hc : ∀ i, M i 0 = if i = 0 then (-1 : ℝ) ^ (0 : Fin (n + 1)).val else 0 := by
    intro i
    have h0 : (1 : Fin (n + 2)).succAbove (0 : Fin (n + 1)) = 0 := by
      simp [Fin.succAbove]
    simp only [M, Matrix.submatrix_apply, h0, tridiagonal, Fin.val_succ, Fin.val_zero]
    by_cases hi : i = 0
    · subst i
      norm_num
    · have hi0 : i.val ≠ 0 := fun hh => hi (Fin.ext hh)
      simp [hi, hi0]
  rw [SignedMinorElimination.det_cancel_signed_unit M 0 hc]
  congr 1
  ext i j
  simp only [M, Matrix.submatrix_apply, Fin.zero_succAbove]
  have hj : (1 : Fin (n + 2)).succAbove j.succ = j.succ.succ := by
    apply Fin.succAbove_of_le_castSucc
    change 1 ≤ j.val + 1
    omega
  rw [hj]
  simp [tridiagonal, Nat.add_left_comm, Nat.add_comm]

/-- Laplace expansion proves the continuant recurrence for actual determinants. -/
theorem det_tridiagonal_step (b c : ℝ) (n : ℕ) :
    Matrix.det (tridiagonal b c (n + 2)) =
      b * Matrix.det (tridiagonal b c (n + 1)) -
        c * Matrix.det (tridiagonal b c n) := by
  rw [Matrix.det_succ_row_zero, Fin.sum_univ_succ]
  have ht : Matrix.det ((tridiagonal b c (n + 2)).submatrix Fin.succ
      (0 : Fin (n + 2)).succAbove) = Matrix.det (tridiagonal b c (n + 1)) := by
    simpa using congrArg Matrix.det (tridiagonal_tail b c (n + 1))
  have hs : (∑ j : Fin (n + 1),
      (-1 : ℝ) ^ j.succ.val * tridiagonal b c (n + 2) 0 j.succ *
        Matrix.det ((tridiagonal b c (n + 2)).submatrix Fin.succ j.succ.succAbove)) =
      -c * Matrix.det (tridiagonal b c n) := by
    rw [Finset.sum_eq_single (0 : Fin (n + 1))]
    · simp [tridiagonal, tridiagonal_second_cofactor]
    · intro j _ hj
      have hj0 : j.val ≠ 0 := fun hh => hj (Fin.ext hh)
      simp [tridiagonal, hj0]
    · simp
  rw [hs, ht]
  simp [tridiagonal, sub_eq_add_neg]

/-- Continuants are the actual signed tridiagonal determinants at every order. -/
theorem det_tridiagonal (b c : ℝ) (n : ℕ) :
    Matrix.det (tridiagonal b c n) = continuant b c n := by
  refine Nat.twoStepInduction ?_ ?_ ?_ n
  · simp [continuant]
  · simp [continuant, tridiagonal, Matrix.det_unique]
  · intro m hm hm1
    rw [det_tridiagonal_step, hm, hm1]
    rfl

/-- The order-preserving prefix of an increasing selection. -/
def take {k : ℕ} (r : Fin k ↪o ℕ) (l : ℕ) (hl : l ≤ k) : Fin l ↪o ℕ :=
  OrderEmbedding.ofStrictMono (fun i => r ⟨i.val, by omega⟩)
    (fun i j hij => r.strictMono hij)

/-- The order-preserving suffix after l selected indices. -/
def drop {k : ℕ} (r : Fin k ↪o ℕ) (l : ℕ) : Fin (k - l) ↪o ℕ :=
  OrderEmbedding.ofStrictMono (fun i => r ⟨l + i.val, by omega⟩)
    (by intro i j hij; apply r.strictMono; change l + i.val < l + j.val; omega)

/-- A concrete ordered block split, with inverse subtraction on the second block. -/
def splitEquiv (k l : ℕ) (hl : l ≤ k) : Fin l ⊕ Fin (k - l) ≃ Fin k where
  toFun := Sum.elim (fun i => ⟨i.val, by omega⟩) (fun j => ⟨l + j.val, by omega⟩)
  invFun i := if h : i.val < l then Sum.inl ⟨i.val, h⟩
    else Sum.inr ⟨i.val - l, by omega⟩
  left_inv := by
    intro i
    rcases i with i | j
    · simp [i.isLt]
    · have h : ¬ l + j.val < l := by omega
      simp [h]
  right_inv := by
    intro i
    dsimp
    split_ifs with h
    · rfl
    · apply Fin.ext
      dsimp
      omega

/-- A triangular ordered cut factors a determinant without a permutation sign. -/
theorem det_split {k : ℕ} (M : Matrix (Fin k) (Fin k) ℝ) (l : ℕ) (hl : l ≤ k)
    (hz :
      (∀ i : Fin (k - l), ∀ j : Fin l,
        M ⟨l + i.val, by omega⟩ ⟨j.val, by omega⟩ = 0) ∨
      (∀ i : Fin l, ∀ j : Fin (k - l),
        M ⟨i.val, by omega⟩ ⟨l + j.val, by omega⟩ = 0)) :
    Matrix.det M =
      Matrix.det (fun i j : Fin l => M ⟨i.val, by omega⟩ ⟨j.val, by omega⟩) *
      Matrix.det (fun i j : Fin (k - l) =>
        M ⟨l + i.val, by omega⟩ ⟨l + j.val, by omega⟩) := by
  let A : Matrix (Fin l) (Fin l) ℝ := fun i j => M ⟨i.val, by omega⟩ ⟨j.val, by omega⟩
  let B : Matrix (Fin l) (Fin (k - l)) ℝ :=
    fun i j => M ⟨i.val, by omega⟩ ⟨l + j.val, by omega⟩
  let C : Matrix (Fin (k - l)) (Fin l) ℝ :=
    fun i j => M ⟨l + i.val, by omega⟩ ⟨j.val, by omega⟩
  let D : Matrix (Fin (k - l)) (Fin (k - l)) ℝ :=
    fun i j => M ⟨l + i.val, by omega⟩ ⟨l + j.val, by omega⟩
  have he : M.submatrix (splitEquiv k l hl) (splitEquiv k l hl) =
      Matrix.fromBlocks A B C D := by
    ext i j
    rcases i with i | i <;> rcases j with j | j <;> rfl
  rw [← Matrix.det_submatrix_equiv_self (splitEquiv k l hl) M, he]
  rcases hz with hC | hB
  · have hc : C = 0 := by ext i j; exact hC i j
    rw [hc, Matrix.det_fromBlocks_zero₂₁]
  · have hb : B = 0 := by ext i j; exact hB i j
    rw [hb, Matrix.det_fromBlocks_zero₁₂]

/-- Increasing natural labels grow by at least their index. -/
theorem selection_lower {n : ℕ} (r : Fin (n + 1) ↪o ℕ) (i : Fin (n + 1)) :
    r 0 + i.val ≤ r i := by
  have h : ∀ j (hj : j < n + 1), r 0 + j ≤ r ⟨j, hj⟩ := by
    intro j
    induction j with
    | zero => intro hj; simp
    | succ j ih =>
      intro hj
      have hj' : j < n + 1 := by omega
      have hp := ih hj'
      have hs := r.strictMono (show (⟨j, hj'⟩ : Fin (n + 1)) < ⟨j + 1, hj⟩ by
        change j < j + 1; omega)
      omega
  exact h i.val i.isLt

/-- Either the selections are consecutive, or there is a first genuine gap.
The prefix length is positive; gap data are values, not a chosen sign. -/
theorem initial_run {n : ℕ} (r s : Fin (n + 1) ↪o ℕ) :
    (∀ i, r i = r 0 + i.val ∧ s i = s 0 + i.val) ∨
      ∃ (l : ℕ) (hl : l < n + 1), 0 < l ∧
        (∀ i : Fin l,
          r ⟨i.val, by omega⟩ = r 0 + i.val ∧
          s ⟨i.val, by omega⟩ = s 0 + i.val) ∧
        (r 0 + l < r ⟨l, hl⟩ ∨ s 0 + l < s ⟨l, hl⟩) := by
  classical
  by_cases hall : ∀ i, r i = r 0 + i.val ∧ s i = s 0 + i.val
  · exact Or.inl hall
  · right
    have hex : ∃ l, ∃ hl : l < n + 1,
        ¬ (r ⟨l, hl⟩ = r 0 + l ∧ s ⟨l, hl⟩ = s 0 + l) := by
      obtain ⟨i, hi⟩ := not_forall.mp hall
      exact ⟨i.val, i.isLt, hi⟩
    have hminimal : ∃ l,
        (∃ hl : l < n + 1,
          ¬ (r ⟨l, hl⟩ = r 0 + l ∧ s ⟨l, hl⟩ = s 0 + l)) ∧
        ∀ m, m < l → ¬ (∃ hm : m < n + 1,
          ¬ (r ⟨m, hm⟩ = r 0 + m ∧ s ⟨m, hm⟩ = s 0 + m)) :=
      ⟨Nat.find hex, Nat.find_spec hex, fun m hm => Nat.find_min hex hm⟩
    obtain ⟨l, ⟨hl, hbad⟩, hmin⟩ := hminimal
    have hl0 : 0 < l := by
      by_contra hn
      have he : l = 0 := by omega
      subst l
      simp at hbad
    refine ⟨l, hl, hl0, ?_, ?_⟩
    · intro i
      by_contra hi
      exact hmin i.val i.isLt ⟨by omega, hi⟩
    · have hr := selection_lower r ⟨l, hl⟩
      have hs := selection_lower s ⟨l, hl⟩
      dsimp at hr hs
      omega

/-- All ordered minors are nonnegative when c and the needed continuants are.
This is the universal arbitrary-position band-two reduction. -/
theorem band_minor_nonnegative (b c : ℝ) (R : ℕ)
    (hc : 0 ≤ c) (hC : ∀ j, j ≤ R → 0 ≤ continuant b c j) :
    ∀ k, k ≤ R → ∀ r s : Fin k ↪o ℕ,
      0 ≤ Matrix.det (fun i j => band b c (r i) (s j)) := by
  intro k
  induction k using Nat.strong_induction_on with
  | h k ih =>
    intro hk r s
    cases k with
    | zero =>
      change 0 ≤ (Matrix.of (fun i j : Fin 0 => band b c (r i) (s j))).det
      simp
    | succ n =>
      let M : Matrix (Fin (n + 1)) (Fin (n + 1)) ℝ := fun i j => band b c (r i) (s j)
      change 0 ≤ Matrix.det M
      by_cases hlow : s 0 < r 0
      · have hz : Matrix.det M = 0 := det_zero_first_column M (by
          intro i
          apply band_of_lt
          have hi := r.monotone (Fin.zero_le i)
          omega)
        rw [hz]
      · by_cases hhigh : r 0 + 2 < s 0
        · have hz : Matrix.det M = 0 := det_zero_first_row M (by
            intro j
            apply band_of_gt
            have hj := s.monotone (Fin.zero_le j)
            omega)
          rw [hz]
        · have hrest : 0 ≤ Matrix.det (fun i j : Fin n =>
              band b c ((drop r 1) i) ((drop s 1) j)) := by
            exact ih n (by omega) (by omega) (drop r 1) (drop s 1)
          by_cases h0 : s 0 = r 0
          · rw [det_split M 1 (by omega) (Or.inl (by
              intro i j
              have hj : j = 0 := Subsingleton.elim _ _
              subst j
              apply band_of_lt
              change s 0 < r ⟨1 + i.val, _⟩
              have hi := r.strictMono
                (show (0 : Fin (n + 1)) < ⟨1 + i.val, by omega⟩ by
                  change 0 < 1 + i.val; omega)
              omega))]
            change 0 ≤ (Matrix.of (fun i j : Fin 1 =>
              M ⟨i.val, _⟩ ⟨j.val, _⟩)).det *
                (Matrix.of (fun i j : Fin n => band b c ((drop r 1) i) ((drop s 1) j))).det
            rw [Matrix.det_unique]
            have hb : band b c (r 0) (s 0) = 1 := by simp [band, h0]
            change 0 ≤ band b c (r 0) (s 0) * _
            rw [hb, one_mul]
            exact hrest
          · by_cases h2 : s 0 = r 0 + 2
            · rw [det_split M 1 (by omega) (Or.inr (by
                intro i j
                have hi : i = 0 := Subsingleton.elim _ _
                subst i
                apply band_of_gt
                change r 0 + 2 < s ⟨1 + j.val, _⟩
                have hj := s.strictMono
                  (show (0 : Fin (n + 1)) < ⟨1 + j.val, by omega⟩ by
                    change 0 < 1 + j.val; omega)
                omega))]
              change 0 ≤ (Matrix.of (fun i j : Fin 1 =>
                M ⟨i.val, _⟩ ⟨j.val, _⟩)).det *
                  (Matrix.of (fun i j : Fin n => band b c ((drop r 1) i) ((drop s 1) j))).det
              rw [Matrix.det_unique]
              have hb : band b c (r 0) (s 0) = c := by simp [band, h2]
              change 0 ≤ band b c (r 0) (s 0) * _
              rw [hb]
              exact mul_nonneg hc hrest
            · have h1 : s 0 = r 0 + 1 := by omega
              rcases initial_run r s with hall | ⟨l, hl, hl0, hrun, hgap⟩
              · have he : M = tridiagonal b c (n + 1) := by
                  ext i j
                  dsimp [M]
                  rw [(hall i).1, (hall j).2, h1]
                  exact band_consecutive b c (r 0) (n + 1) i j
                rw [he, det_tridiagonal]
                exact hC (n + 1) hk
              · have hle : l ≤ n + 1 := by omega
                have hprefix : Matrix.det (fun i j : Fin l =>
                    M ⟨i.val, by omega⟩ ⟨j.val, by omega⟩) = continuant b c l := by
                  have he : (fun i j : Fin l => M ⟨i.val, by omega⟩ ⟨j.val, by omega⟩) =
                      tridiagonal b c l := by
                    ext i j
                    dsimp [M]
                    rw [(hrun i).1, (hrun j).2, h1]
                    exact band_consecutive b c (r 0) l i j
                  rw [he, det_tridiagonal]
                have htail : 0 ≤ Matrix.det (fun i j : Fin (n + 1 - l) =>
                    M ⟨l + i.val, by omega⟩ ⟨l + j.val, by omega⟩) := by
                  exact ih (n + 1 - l) (by omega) (by omega) (drop r l) (drop s l)
                have hz :
                    (∀ i : Fin (n + 1 - l), ∀ j : Fin l,
                      M ⟨l + i.val, by omega⟩ ⟨j.val, by omega⟩ = 0) ∨
                    (∀ i : Fin l, ∀ j : Fin (n + 1 - l),
                      M ⟨i.val, by omega⟩ ⟨l + j.val, by omega⟩ = 0) := by
                  rcases hgap with hr | hs
                  · left
                    intro i j
                    apply band_of_lt
                    have hi := r.monotone
                      (show (⟨l, hl⟩ : Fin (n + 1)) ≤ ⟨l + i.val, by omega⟩ by
                        change l ≤ l + i.val; omega)
                    have hj := (hrun j).2
                    omega
                  · right
                    intro i j
                    apply band_of_gt
                    have hj := s.monotone
                      (show (⟨l, hl⟩ : Fin (n + 1)) ≤ ⟨l + j.val, by omega⟩ by
                        change l ≤ l + j.val; omega)
                    have hi := (hrun i).1
                    omega
                rw [det_split M l hle hz, hprefix]
                exact mul_nonneg (hC l (by omega)) htail

/-- The reduction theorem supplies bounded PF for the actual coefficient sequence. -/
theorem pfOrder_of_continuants (b c : ℝ) (R : ℕ)
    (hc : 0 ≤ c) (hC : ∀ j, j ≤ R → 0 ≤ continuant b c j) :
    PFOrder R (coefficient b c) := by
  intro k hk r s
  unfold minor
  simp_rw [entry_coefficient]
  exact band_minor_nonnegative b c R hc hC k hk r s

/-- Zero second coefficient recovers positive linear factors at every order. -/
theorem continuant_zero_second (b : ℝ) (n : ℕ) : continuant b 0 n = b ^ n := by
  refine Nat.twoStepInduction ?_ ?_ ?_ n
  · simp [continuant]
  · simp [continuant]
  · intro m hm hm1
    simp [continuant, hm, hm1, pow_succ, mul_comm]

/-- Linear factors with nonnegative weight have all ordered minors nonnegative. -/
theorem linear_pfInfinity (b : ℝ) (hb : 0 ≤ b) : PFInfinity (coefficient b 0) := by
  intro k r s
  exact pfOrder_of_continuants b 0 k le_rfl
    (fun j _ => by rw [continuant_zero_second]; exact pow_nonneg hb j) k le_rfl r s

end

end FormalResearch.PositiveAtlas.Grassmannian.Toeplitz.Quadratic
```
