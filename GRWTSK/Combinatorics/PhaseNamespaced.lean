-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.SourceUnit.Variantbd3989f5a48a1ceefa873425c75b2a3d38eeb275d70a7b39f3ac0fd33b6e89bd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bd3989f5a48a1ceefa873425c75b2a3d38eeb275d70a7b39f3ac0fd33b6e89bd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.SourceUnit.Variantbd3989f5a48a1ceefa873425c75b2a3d38eeb275d70a7b39f3ac0fd33b6e89bd","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"bd3989f5a48a1ceefa873425c75b2a3d38eeb275d70a7b39f3ac0fd33b6e89bd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass18/dirichlet_review/examined-pr151-diffs/Phase.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.SourceUnit.Variantbd3989f5a48a1ceefa873425c75b2a3d38eeb275d70a7b39f3ac0fd33b6e89bd

@@ -0,0 +1,196 @@
+import Mathlib.Analysis.SpecialFunctions.Complex.CircleAddChar
+import Mathlib.Analysis.Complex.Norm
+import Mathlib.Tactic
+
+/-!
+# Exact modular phases and the conjugate-root polynomial
+
+The phase is the actual standard additive character, not a divisibility oracle
+renamed as a complex number. Its kernel is transported through the injectivity
+of that character and the characteristic of ZMod. Modulus zero is excluded.
+No primality, zeta-zero, or positivity hypothesis is used in this module.
+-/
+
+namespace FormalResearch.PositiveAtlas.ModularBoundary
+
+noncomputable section
+
+/-- The standard arithmetic phase of a natural tally label. -/
+def phase (p : ℕ) [NeZero p] (n : ℕ) : ℂ :=
+  ZMod.stdAddChar (n : ZMod p)
+
+/-- The angle in radians; it need not be reduced modulo a full turn. -/
+def angle (p n : ℕ) : ℝ := 2 * Real.pi * n / p
+
+/-- The character is the exponential phase used in the circle diagram. -/
+theorem phase_eq_exp (p : ℕ) [NeZero p] (n : ℕ) :
+    phase p n = Complex.exp ((angle p n : ℂ) * Complex.I) := by
+  rw [phase, ZMod.stdAddChar_apply, ZMod.toCircle_natCast]
+  congr 1
+  unfold angle
+  push_cast
+  ring
+
+/-- Tally addition becomes multiplication of phases. -/
+theorem phase_add (p : ℕ) [NeZero p] (m n : ℕ) :
+    phase p (m + n) = phase p m * phase p n := by
+  simp only [phase, Nat.cast_add, AddChar.map_add_eq_mul]
+
+/-- Zero tallies give the identity phase. -/
+@[simp] theorem phase_zero (p : ℕ) [NeZero p] : phase p 0 = 1 := by
+  simp [phase]
+
+/-- Repeated addition gives the exact power law. -/
+theorem phase_mul (p : ℕ) [NeZero p] (n k : ℕ) :
+    phase p (n * k) = phase p n ^ k := by
+  induction k with
+  | zero => simp
+  | succ k ih => rw [Nat.mul_succ, phase_add, ih, pow_succ]
+
+/-- The character kernel is precisely divisibility, also for composite moduli. -/
+theorem phase_eq_one_iff (p : ℕ) [NeZero p] (n : ℕ) :
+    phase p n = 1 ↔ p ∣ n := by
+  have hzero : (ZMod.stdAddChar (0 : ZMod p) : ℂ) = 1 := by simp
+  change ZMod.stdAddChar (n : ZMod p) = 1 ↔ p ∣ n
+  rw [← hzero, ZMod.injective_stdAddChar.eq_iff]
+  exact CharP.cast_eq_zero_iff (ZMod p) p n
+
+/-- All arithmetic phases lie on the unit circle independently of primality. -/
+theorem phase_norm (p : ℕ) [NeZero p] (n : ℕ) : ‖phase p n‖ = 1 := by
+  exact Circle.norm_coe (ZMod.toCircle (n : ZMod p))
+
+/-- The unit-circle equation in polynomial coordinates. -/
+theorem phase_normSq (p : ℕ) [NeZero p] (n : ℕ) :
+    Complex.normSq (phase p n) = 1 := by
+  rw [Complex.normSq_eq_norm_sq, phase_norm]
+  norm_num
+
+/-- One full modulus is an exact phase period. -/
+theorem phase_pow_modulus (p : ℕ) [NeZero p] (n : ℕ) : phase p n ^ p = 1 := by
+  rw [← phase_mul]
+  exact (phase_eq_one_iff p (n * p)).mpr ⟨n, Nat.mul_comm n p⟩
+
+/-- Squared chord length from the distinguished point one. -/
+def defect (p : ℕ) [NeZero p] (n : ℕ) : ℝ :=
+  Complex.normSq (1 - phase p n)
+
+/-- Nonnegativity comes from the actual complex squared norm. -/
+theorem defect_nonneg (p : ℕ) [NeZero p] (n : ℕ) : 0 ≤ defect p n :=
+  Complex.normSq_nonneg _
+
+/-- A zero chord is exactly a multiple of the modulus. -/
+theorem defect_eq_zero_iff (p : ℕ) [NeZero p] (n : ℕ) :
+    defect p n = 0 ↔ p ∣ n := by
+  rw [defect, Complex.normSq_eq_zero, sub_eq_zero, eq_comm, phase_eq_one_iff]
+
+/-- Nondivisibility is exactly strict positivity of the chord observable. -/
+theorem defect_pos_iff (p : ℕ) [NeZero p] (n : ℕ) :
+    0 < defect p n ↔ ¬ p ∣ n := by
+  constructor
+  · intro h hd
+    have hz := (defect_eq_zero_iff p n).mpr hd
+    linarith
+  · intro h
+    have hz : defect p n ≠ 0 := mt (defect_eq_zero_iff p n).mp h
+    exact lt_of_le_of_ne (defect_nonneg p n) (Ne.symm hz)
+
+/-- The chord is the real expression two minus twice the real part of the phase. -/
+theorem defect_eq_two_sub (p : ℕ) [NeZero p] (n : ℕ) :
+    defect p n = 2 - 2 * (phase p n).re := by
+  have h := phase_normSq p n
+  simp only [Complex.normSq_apply] at h
+  simp only [defect, Complex.normSq_apply, Complex.sub_re, Complex.one_re,
+    Complex.sub_im, Complex.one_im]
+  nlinarith
+
+/-- The cosine expression has the same exact arithmetic meaning. -/
+theorem defect_eq_cos (p : ℕ) [NeZero p] (n : ℕ) :
+    defect p n = 2 - 2 * Real.cos (angle p n) := by
+  rw [defect_eq_two_sub, phase_eq_exp]
+  simp [Complex.exp_re]
+
+/-- The sine-square expression, with the half-angle normalization explicit. -/
+theorem defect_eq_sin_sq (p : ℕ) [NeZero p] (n : ℕ) :
+    defect p n = 4 * Real.sin (Real.pi * n / p) ^ 2 := by
+  rw [defect_eq_cos]
+  have ha : angle p n = 2 * (Real.pi * n / p) := by unfold angle; ring
+  rw [ha, Real.cos_two_mul]
+  nlinarith [Real.sin_sq_add_cos_sq (Real.pi * n / p)]
+
+/-- The polynomial function obtained from the actual conjugate pair of roots. -/
+def pairedQuadratic (p : ℕ) [NeZero p] (n : ℕ) (X : ℂ) : ℂ :=
+  (X - phase p n) * (X - star (phase p n))
+
+/-- Its product of roots is one, not a separate divisibility criterion. -/
+theorem phase_mul_star (p : ℕ) [NeZero p] (n : ℕ) :
+    phase p n * star (phase p n) = 1 := by
+  have h := phase_normSq p n
+  apply Complex.ext
+  · change (phase p n).re * (phase p n).re -
+      (phase p n).im * (-(phase p n).im) = 1
+    simpa only [Complex.normSq_apply, mul_neg, sub_neg_eq_add] using h
+  · change (phase p n).re * (-(phase p n).im) +
+      (phase p n).im * (phase p n).re = 0
+    ring
+
+/-- The full conjugate-root polynomial identity. -/
+theorem pairedQuadratic_expansion (p : ℕ) [NeZero p] (n : ℕ) (X : ℂ) :
+    pairedQuadratic p n X = X ^ 2 - 2 * ((phase p n).re : ℂ) * X + 1 := by
+  have hs : phase p n + star (phase p n) = 2 * ((phase p n).re : ℂ) := by
+    apply Complex.ext <;> simp
+    ring
+  calc
+    pairedQuadratic p n X = X ^ 2 - (phase p n + star (phase p n)) * X +
+        phase p n * star (phase p n) := by unfold pairedQuadratic; ring
+    _ = _ := by rw [hs, phase_mul_star]
+
+/-- Evaluating at one gives exactly the chord observable, embedded in the complex field. -/
+theorem pairedQuadratic_one (p : ℕ) [NeZero p] (n : ℕ) :
+    pairedQuadratic p n 1 = (defect p n : ℂ) := by
+  rw [pairedQuadratic_expansion, defect_eq_two_sub]
+  push_cast
+  ring
+
+/-- The conjugate polynomial vanishes at one exactly at divisibility. -/
+theorem pairedQuadratic_one_eq_zero_iff (p : ℕ) [NeZero p] (n : ℕ) :
+    pairedQuadratic p n 1 = 0 ↔ p ∣ n := by
+  rw [pairedQuadratic_one, Complex.ofReal_eq_zero, defect_eq_zero_iff]
+
+/-- At divisibility both roots coalesce at one. -/
+theorem pairedQuadratic_of_dvd (p : ℕ) [NeZero p] (n : ℕ) (h : p ∣ n) (X : ℂ) :
+    pairedQuadratic p n X = (X - 1) ^ 2 := by
+  simp [pairedQuadratic, (phase_eq_one_iff p n).mpr h, pow_two]
+
+/-- The finite geometric-sum identity, proved without a Fourier inversion assumption. -/
+theorem phase_geometric_sum (z : ℂ) (m : ℕ) :
+    (∑ k ∈ Finset.range m, z ^ k) * (z - 1) = z ^ m - 1 := by
+  induction m with
+  | zero => simp
+  | succ m ih =>
+    rw [Finset.sum_range_succ, pow_succ]
+    calc
+      ((∑ k ∈ Finset.range m, z ^ k) + z ^ m) * (z - 1) =
+          (∑ k ∈ Finset.range m, z ^ k) * (z - 1) + z ^ m * z - z ^ m := by ring
+      _ = z ^ m * z - 1 := by rw [ih]; ring
+
+/-- The normalized finite phase sum is an actual complex-valued observable. -/
+def fourierDelta (p : ℕ) [NeZero p] (n : ℕ) : ℂ :=
+  (p : ℂ)⁻¹ * ∑ k ∈ Finset.range p, phase p n ^ k
+
+/-- Exact finite Fourier detection of divisibility. No floating-point zero test is used. -/
+theorem fourierDelta_eq (p : ℕ) [NeZero p] (n : ℕ) :
+    fourierDelta p n = if p ∣ n then 1 else 0 := by
+  have hp0 : (p : ℂ) ≠ 0 := by exact_mod_cast (NeZero.ne p)
+  by_cases hd : p ∣ n
+  · simp [fourierDelta, (phase_eq_one_iff p n).mpr hd, hd, hp0]
+  · have hz : phase p n - 1 ≠ 0 := by
+      simpa only [sub_ne_zero] using (mt (phase_eq_one_iff p n).mp hd)
+    have hm := phase_geometric_sum (phase p n) p
+    rw [phase_pow_modulus, sub_self] at hm
+    have hs : (∑ k ∈ Finset.range p, phase p n ^ k) = 0 :=
+      (mul_eq_zero.mp hm).resolve_right hz
+    simp [fourierDelta, hs, hd]
+
+end
+
+end FormalResearch.PositiveAtlas.ModularBoundary
