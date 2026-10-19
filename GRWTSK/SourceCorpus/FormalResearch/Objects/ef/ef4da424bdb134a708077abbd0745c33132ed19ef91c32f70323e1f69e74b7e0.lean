import FormalResearch.RiemannHypothesis.SourceMangoldtDirichletBound

set_option autoImplicit false
noncomputable section
open FormalResearch.RiemannHypothesis.SourceMangoldtDirichletBound

/-- Checks that the convergence theorem licenses the literal absolute series. -/
example {c : ℝ} (hc : 1 < c) :
    Summable (fun n : ℕ => ‖ArithmeticFunction.vonMangoldt n / (n : ℝ) ^ c‖) := by
  have hpoint : (fun n : ℕ => ‖ArithmeticFunction.vonMangoldt n / (n : ℝ) ^ c‖) =
      mangoldtDirichletTerm c := by
    funext n
    change ‖mangoldtDirichletTerm c n‖ = mangoldtDirichletTerm c n
    exact Real.norm_of_nonneg (mangoldtDirichletTerm_nonneg c n)
  rw [hpoint]
  exact mangoldtDirichlet_summable hc

/-- Checks every contour-domain inequality of the proposed A>=1 moving line. -/
example {A : ℝ} (hA : 1 ≤ A) :
    1 < 1 + 1 / A ∧ 1 + 1 / A ≤ 2 ∧ 1 + 1 / A < 5 := by
  have hA0 : 0 < A := by linarith
  have hinv : (1 : ℝ) / A ≤ 1 := (div_le_iff₀ hA0).mpr (by linarith)
  exact ⟨movingLine_one_lt hA0, by linarith, by linarith⟩

/-- The zero/one semantics remain correct without relying on c>1. -/
example (c : ℝ) :
    ArithmeticFunction.vonMangoldt 0 / (0 : ℝ) ^ c = 0 ∧
      ArithmeticFunction.vonMangoldt 1 / (1 : ℝ) ^ c = 0 := by
  simp

/-- The first admissible integer is controlled over both endpoints of its full cell. -/
example {c : ℝ} (hc : 1 < c) :
    mangoldtDirichletTerm c 2 ≤ cellMajorant c 1 ∧
      mangoldtDirichletTerm c 2 ≤ cellMajorant c 2 := by
  constructor
  · exact mangoldtDirichletTerm_le_cellMajorant hc (by norm_num) (by norm_num)
  · exact mangoldtDirichletTerm_le_cellMajorant hc (by norm_num) (by norm_num)
