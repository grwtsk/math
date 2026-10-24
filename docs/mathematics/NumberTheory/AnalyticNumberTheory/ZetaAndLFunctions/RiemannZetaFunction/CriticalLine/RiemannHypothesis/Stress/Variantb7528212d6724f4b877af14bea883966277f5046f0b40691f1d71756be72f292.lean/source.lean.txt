-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceMangoldtDirichletBound.Variantef4da424bdb134a708077abbd0745c33132ed19ef91c32f70323e1f69e74b7e0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ef4da424bdb134a708077abbd0745c33132ed19ef91c32f70323e1f69e74b7e0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceMangoldtDirichletBound.Variantef4da424bdb134a708077abbd0745c33132ed19ef91c32f70323e1f69e74b7e0","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"ef4da424bdb134a708077abbd0745c33132ed19ef91c32f70323e1f69e74b7e0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh-packet-20261005/mangoldt-dirichlet-review/Stress.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceMangoldtDirichletBound


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceMangoldtDirichletBound.Variantef4da424bdb134a708077abbd0745c33132ed19ef91c32f70323e1f69e74b7e0

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
