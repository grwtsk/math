# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ThetaPositiveLift.Varianted1530df9684b41676fa2403dbda7ad91eb6f83c17a2cc64550f5600552ada0f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8c07f6e2b6a959430ada7aec7e43ead1e9a63c42` · SHA-256 `bd504e6a73e5a235e2fca0239b7fc448b0cdf62532ad46e4e1a2721fa2c17688`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.I.Variant9ce64ce32ac4eb3a76423de35496f9c02989a0473725f387a108cb0b7df190db","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9ce64ce32ac4eb3a76423de35496f9c02989a0473725f387a108cb0b7df190db","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.I.Variant9ce64ce32ac4eb3a76423de35496f9c02989a0473725f387a108cb0b7df190db","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"9ce64ce32ac4eb3a76423de35496f9c02989a0473725f387a108cb0b7df190db","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/9ce64ce32ac4eb3a76423de35496f9c02989a0473725f387a108cb0b7df190db.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaPhiAllRankModeCriterion

/-!
# Kernel-checked numerical core of the rank-five source certificate

Integer center-radius interval arithmetic is proved sound over the real numbers.
The supplied nine jet intervals are rescaled by 2,000,000, so all certificate
arithmetic is integer arithmetic. Recursive Laplace expansion certifies a
strict negative determinant throughout that complete box. The closed integer
checks use `decide`, hence Lean kernel reduction, never `native_decide`.

The full-source analytic enclosure is stated explicitly in this module and
discharged in `ThetaPhiRankFiveCertificate`. The numerical calculation here
is independent of the analytic source and infinite-tail estimates.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.I.Variant9ce64ce32ac4eb3a76423de35496f9c02989a0473725f387a108cb0b7df190db

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift
namespace RankFiveInterval

/-- A center-radius enclosure with exact integer coordinates.
Membership is empty when the radius is negative. -/
structure I where
  /-- The center of the enclosure. -/
  c : ℤ
  /-- The radius used by the real-valued membership predicate. -/
  r : ℤ
  deriving DecidableEq

/-- Real membership in the closed center-radius enclosure. -/
def Contains (a : I) (x : ℝ) : Prop := |x - a.c| ≤ a.r

/-- The radius-zero enclosure of one exact scalar. -/
def point (z : ℤ) : I := ⟨z, 0⟩
/-- Interval addition, adding centers and radii. -/
def add (a b : I) : I := ⟨a.c + b.c, a.r + b.r⟩
/-- Interval multiplication with radius bounding both linear errors and their product. -/
def mul (a b : I) : I :=
  ⟨a.c * b.c, |a.c| * b.r + |b.c| * a.r + a.r * b.r⟩

theorem point_sound (z : ℤ) : Contains (point z) z := by
  simp [Contains, point]

theorem add_sound {a b : I} {x y : ℝ}
    (hx : Contains a x) (hy : Contains b y) : Contains (add a b) (x + y) := by
  dsimp [Contains, add] at *
  push_cast
  calc
    |x + y - (a.c + b.c)| = |(x - a.c) + (y - b.c)| := by congr 1; ring
    _ ≤ |x - a.c| + |y - b.c| := abs_add_le _ _
    _ ≤ a.r + b.r := add_le_add hx hy

theorem mul_sound {a b : I} {x y : ℝ}
    (hx : Contains a x) (hy : Contains b y) : Contains (mul a b) (x * y) := by
  dsimp [Contains, mul] at *
  push_cast
  have ha : (0 : ℝ) ≤ a.r := (abs_nonneg _).trans hx
  have hb : (0 : ℝ) ≤ b.r := (abs_nonneg _).trans hy
  calc
    |x * y - a.c * b.c| =
        |(a.c : ℝ) * (y - b.c) + (b.c : ℝ) * (x - a.c) +
          (x - a.c) * (y - b.c)| := by congr 1; ring
    _ ≤ |(a.c : ℝ) * (y - b.c)| + |(b.c : ℝ) * (x - a.c)| +
          |(x - a.c) * (y - b.c)| :=
      (abs_add_le _ _).trans (add_le_add (abs_add_le _ _) le_rfl)
    _ = |(a.c : ℝ)| * |y - b.c| + |(b.c : ℝ)| * |x - a.c| +
          |x - a.c| * |y - b.c| := by simp only [abs_mul]
    _ ≤ |(a.c : ℝ)| * b.r + |(b.c : ℝ)| * a.r + a.r * b.r := by
      exact add_le_add
        (add_le_add (mul_le_mul_of_nonneg_left hy (abs_nonneg _))
          (mul_le_mul_of_nonneg_left hx (abs_nonneg _)))
        (mul_le_mul hx hy (abs_nonneg _) ha)

/-- Recursive interval sum over a finite family, starting from the exact zero enclosure. -/
def sum : {n : ℕ} → (Fin n → I) → I
  | 0, _ => point 0
  | n + 1, f => add (f 0) (sum (fun i : Fin n => f i.succ))

theorem sum_sound {n : ℕ} (a : Fin n → I) (x : Fin n → ℝ)
    (h : ∀ i, Contains (a i) (x i)) : Contains (sum a) (∑ i, x i) := by
  induction n with
  | zero => simpa [sum] using point_sound 0
  | succ n ih =>
      rw [Fin.sum_univ_succ]
      exact add_sound (h 0) (ih _ _ (fun i => h i.succ))

/-- Interval determinant computed by recursive Laplace expansion along the first row. -/
def det : {n : ℕ} → Matrix (Fin n) (Fin n) I → I
  | 0, _ => point 1
  | n + 1, A => sum fun j : Fin (n + 1) =>
      mul (mul (point ((-1 : ℤ) ^ j.val)) (A 0 j))
        (det (A.submatrix Fin.succ j.succAbove))

theorem det_sound {n : ℕ} (a : Matrix (Fin n) (Fin n) I)
    (x : Matrix (Fin n) (Fin n) ℝ)
    (h : ∀ i j, Contains (a i j) (x i j)) : Contains (det a) (Matrix.det x) := by
  induction n with
  | zero => simpa [det, Matrix.det_fin_zero] using point_sound 1
  | succ n ih =>
      rw [Matrix.det_succ_row_zero]
      apply sum_sound
      intro j
      apply mul_sound
      · apply mul_sound
        · simpa using point_sound ((-1 : ℤ) ^ j.val)
        · exact h 0 j
      · exact ih _ _ (fun i k => h i.succ (j.succAbove k))

/-- The nine supplied derivative enclosures rescaled by 2,000,000.
The center is the sum and the radius is the difference of the endpoint
numerators after expressing both endpoints with denominator 10^6. -/
def jetBox : ℕ → I
  | 0 => ⟨893393, 1⟩
  | 1 => ⟨0, 2⟩
  | 2 => ⟨-66922003, 1⟩
  | 3 => ⟨0, 2⟩
  | 4 => ⟨12994605335, 9⟩
  | 5 => ⟨11, 227⟩
  | 6 => ⟨-3247086458005, 8397⟩
  | 7 => ⟨-1478, 358586⟩
  | 8 => ⟨466773961822569, 18714675⟩
  | _ => point 0

/-- The five-by-five Hankel interval matrix formed from the nine rescaled jet boxes. -/
def hankelBox : Matrix (Fin 5) (Fin 5) I :=
  fun i j => jetBox (i.val + j.val)

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
-- Exact finite arithmetic certificates require an unrestricted tactic heartbeat budget.
/-- A purely integer certificate, reduced by the Lean kernel. -/
theorem hankelBox_strict_negative : (det hankelBox).c + (det hankelBox).r < 0 := by
  decide

/-- Every real matrix within all 25 integer boxes has negative determinant. -/
theorem hankelBox_sound (M : Matrix (Fin 5) (Fin 5) ℝ)
    (h : ∀ i j, Contains (hankelBox i j) (M i j)) : Matrix.det M < 0 := by
  have hb := det_sound hankelBox M h
  have hn : ((det hankelBox).c : ℝ) + (det hankelBox).r < 0 := by
    exact_mod_cast hankelBox_strict_negative
  have := (abs_le.mp hb).2
  linarith

set_option maxRecDepth 100000 in
set_option maxHeartbeats 0 in
-- Exact finite arithmetic certificates require an unrestricted tactic heartbeat budget.
/-- A coarse enclosure includes the numerical margin, not only its sign. -/
theorem hankelBox_coarse_enclosure :
    (-4000000000000000000 : ℤ) * 2000000 ^ 5 < (det hankelBox).c - (det hankelBox).r ∧
    (det hankelBox).c + (det hankelBox).r < (-3000000000000000000 : ℤ) * 2000000 ^ 5 := by
  decide

/-- Rigorous numerical robustness of the rank-five Hankel determinant over
all nine supplied derivative-coordinate intervals. -/
theorem signedJetDet_five_negative_of_boxes (jet : ℕ → ℝ)
    (h : ∀ n : Fin 9, Contains (jetBox n.val) (2000000 * jet n.val)) :
    signedJetDet 5 jet < 0 := by
  have hdet : Matrix.det ((2000000 : ℝ) •
      (Matrix.of fun i j : Fin 5 => jet (i.val + j.val))) < 0 := by
    apply hankelBox_sound
    intro i j
    exact h ⟨i.val + j.val, by omega⟩
  rw [Matrix.det_smul] at hdet
  norm_num only [Fintype.card_fin] at hdet
  have hd : Matrix.det (Matrix.of fun i j : Fin 5 => jet (i.val + j.val)) < 0 := by
    nlinarith
  norm_num [signedJetDet]
  exact hd

/-- The full coarse numerical margin survives for every jet in the box. -/
theorem signedJetDet_five_coarse_of_boxes (jet : ℕ → ℝ)
    (h : ∀ n : Fin 9, Contains (jetBox n.val) (2000000 * jet n.val)) :
    (-4000000000000000000 : ℝ) < signedJetDet 5 jet ∧
      signedJetDet 5 jet < -3000000000000000000 := by
  have hb := det_sound hankelBox ((2000000 : ℝ) •
      (Matrix.of fun i j : Fin 5 => jet (i.val + j.val)))
        (fun i j => h ⟨i.val + j.val, by omega⟩)
  unfold Contains at hb
  rw [Matrix.det_smul] at hb
  norm_num only [Fintype.card_fin] at hb
  have hlo : (-4000000000000000000 : ℝ) * 2000000 ^ 5 <
      ((det hankelBox).c : ℝ) - (det hankelBox).r := by
    exact_mod_cast hankelBox_coarse_enclosure.1
  have hhi : ((det hankelBox).c : ℝ) + (det hankelBox).r <
      (-3000000000000000000 : ℝ) * 2000000 ^ 5 := by
    exact_mod_cast hankelBox_coarse_enclosure.2
  obtain ⟨hleft, hright⟩ := abs_le.mp hb
  norm_num [signedJetDet]
  constructor <;> nlinarith

end RankFiveInterval

/-- The initial value and successor derivative equations uniquely identify
an all-order source jet on the whole real line. -/
theorem ThetaPhiSourceJet.value_unique (J K : ThetaPhiSourceJet) : J.value = K.value := by
  funext n
  induction n with
  | zero => rw [J.zero_eq, K.zero_eq]
  | succ n ih =>
      funext t
      have hJ := J.succ_hasDerivAt n t
      rw [ih] at hJ
      exact hJ.unique (K.succ_hasDerivAt n t)

/-- The analytic obligation in the supplied rank-five certificate:
all nine full-source derivatives, including the entire mode tail, must lie in
these intervals. Its proof is in `ThetaPhiRankFiveCertificate`. -/
def ThetaPhiRankFiveJetEnclosure : Prop :=
  ∀ n : Fin 9, RankFiveInterval.Contains (RankFiveInterval.jetBox n.val)
    (2000000 * thetaPhiDerivativeTapeValue n.val 0)

/-- The certified interval box refutes the proposed all-rank ordinary source
jet criterion as soon as its full-source analytic enclosure is proved.
It asserts nothing about RH or about the distinct ordered-tail criterion. -/
theorem not_thetaPhiAllRankSignedJetCriterion_of_rankFiveEnclosure
    (h : ThetaPhiRankFiveJetEnclosure) : ¬ ThetaPhiAllRankSignedJetCriterion := by
  rintro ⟨J, hJ⟩
  have heq := J.value_unique thetaPhiInfiniteSourceJet
  have hnonneg := hJ 0 (by norm_num) 5
  rw [heq] at hnonneg
  exact (not_le_of_gt (RankFiveInterval.signedJetDet_five_negative_of_boxes
    (fun n => thetaPhiDerivativeTapeValue n 0) h)) hnonneg

end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```
