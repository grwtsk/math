-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.AbsAddSeven.Variant94cf1cef6afe5675c6676b91d4ae68c68960e775ccd66cf2b3afc05a56e53384","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"94cf1cef6afe5675c6676b91d4ae68c68960e775ccd66cf2b3afc05a56e53384","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.AbsAddSeven.Variant94cf1cef6afe5675c6676b91d4ae68c68960e775ccd66cf2b3afc05a56e53384","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"94cf1cef6afe5675c6676b91d4ae68c68960e775ccd66cf2b3afc05a56e53384","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/94/94cf1cef6afe5675c6676b91d4ae68c68960e775ccd66cf2b3afc05a56e53384--Perturbation-01.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaPhiJetPolynomials


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.AbsAddSeven.Variant94cf1cef6afe5675c6676b91d4ae68c68960e775ccd66cf2b3afc05a56e53384

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift
noncomputable section

private theorem abs_add_seven (a b c d e f g : ℝ) :
    |a + b + c + d + e + f + g| ≤ |a| + |b| + |c| + |d| + |e| + |f| + |g| := by
  linarith only [abs_add a b, abs_add (a+b) c, abs_add (a+b+c) d,
    abs_add (a+b+c+d) e, abs_add (a+b+c+d+e) f, abs_add (a+b+c+d+e+f) g]

private theorem triple_perturbation_bound
    {a b c e f g A B C E F G : ℝ}
    (ha : |a| ≤ A) (hb : |b| ≤ B) (hc : |c| ≤ C)
    (he : |e| ≤ E) (hf : |f| ≤ F) (hg : |g| ≤ G) :
    |(a+e)*(b+f)*(c+g)-a*b*c| ≤ (A+E)*(B+F)*(C+G)-A*B*C := by
  have hA := (abs_nonneg a).trans ha
  have hB := (abs_nonneg b).trans hb
  have hC := (abs_nonneg c).trans hc
  have hE := (abs_nonneg e).trans he
  have hF := (abs_nonneg f).trans hf
  have hG := (abs_nonneg g).trans hg
  calc
    _ = |a*b*g+a*f*c+e*b*c+a*f*g+e*b*g+e*f*c+e*f*g| := by congr 1; ring
    _ ≤ |a*b*g|+|a*f*c|+|e*b*c|+|a*f*g|+|e*b*g|+|e*f*c|+|e*f*g| :=
      abs_add_seven _ _ _ _ _ _ _
    _ ≤ A*B*G+A*F*C+E*B*C+A*F*G+E*B*G+E*F*C+E*F*G := by
      simp only [abs_mul]
      gcongr
    _ = _ := by ring

/-- The polynomial with absolute determinant coefficients. -/
def thetaPhiJetDetMajorant (v : Fin 5 → ℝ) : ℝ :=
  v 0*v 2*v 4+2*v 1*v 2*v 3+v 0*(v 3)^2+v 4*(v 1)^2+(v 2)^3

/-- A finite box controls the determinant perturbation with all cancellations
of the unperturbed determinant retained. -/
theorem thetaPhiJetDet_perturbation_bound (a e B E : Fin 5 → ℝ)
    (ha : ∀ k, |a k| ≤ B k) (he : ∀ k, |e k| ≤ E k) :
    |thetaPhiJetDet (fun k => a k + e k) - thetaPhiJetDet a| ≤
      thetaPhiJetDetMajorant (fun k => B k + E k) - thetaPhiJetDetMajorant B := by
  let delta (i j k : Fin 5) :=
    (a i+e i)*(a j+e j)*(a k+e k)-a i*a j*a k
  have hd (i j k : Fin 5) : |delta i j k| ≤
      (B i+E i)*(B j+E j)*(B k+E k)-B i*B j*B k :=
    triple_perturbation_bound (ha i) (ha j) (ha k) (he i) (he j) (he k)
  have hi : thetaPhiJetDet (fun k => a k + e k) - thetaPhiJetDet a =
      delta 0 2 4 + 2*delta 1 2 3 - delta 0 3 3 - delta 4 1 1 - delta 2 2 2 := by
    dsimp [thetaPhiJetDet, delta]
    ring
  rw [hi]
  have ht : |delta 0 2 4 + 2*delta 1 2 3 - delta 0 3 3 - delta 4 1 1 - delta 2 2 2| ≤
      |delta 0 2 4|+2*|delta 1 2 3|+|delta 0 3 3|+|delta 4 1 1|+|delta 2 2 2| := by
    have ha2 : |(2:ℝ)*delta 1 2 3| = 2*|delta 1 2 3| := by rw [abs_mul]; norm_num
    linarith only [abs_add (delta 0 2 4) (2*delta 1 2 3),
      abs_sub (delta 0 2 4+2*delta 1 2 3) (delta 0 3 3),
      abs_sub (delta 0 2 4+2*delta 1 2 3-delta 0 3 3) (delta 4 1 1),
      abs_sub (delta 0 2 4+2*delta 1 2 3-delta 0 3 3-delta 4 1 1) (delta 2 2 2), ha2]
  have hall := add_le_add (add_le_add (add_le_add (add_le_add (hd 0 2 4)
    (mul_le_mul_of_nonneg_left (hd 1 2 3) (by norm_num))) (hd 0 3 3)) (hd 4 1 1)) (hd 2 2 2)
  apply ht.trans
  convert hall using 1 <;> dsimp [thetaPhiJetDetMajorant] <;> ring

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
