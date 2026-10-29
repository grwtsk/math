-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceUnit.Variante2768899566ecb3585a257a95156b27653a015f3bb913110c19176f736a9baaf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e2768899566ecb3585a257a95156b27653a015f3bb913110c19176f736a9baaf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SourceUnit.Variante2768899566ecb3585a257a95156b27653a015f3bb913110c19176f736a9baaf","mathematical_subject":"Foundations.Unclassified","original_sha256":"e2768899566ecb3585a257a95156b27653a015f3bb913110c19176f736a9baaf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/e2/e2768899566ecb3585a257a95156b27653a015f3bb913110c19176f736a9baaf--Pole.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SourceUnit.Variante2768899566ecb3585a257a95156b27653a015f3bb913110c19176f736a9baaf

set_option autoImplicit false
example {d w : ℝ} {z : ℂ} (hz : z ^ 2 + (2 * d : ℝ) * z + w = 0)
    (oscillatory : z.im ≠ 0) : w = z.re ^ 2 + z.im ^ 2 := by
  have hi := congrArg Complex.im hz
  have hr := congrArg Complex.re hz
  simp? [pow_two, Complex.mul_re, Complex.mul_im] at hi hr
  have hfactor : (z.re + d) * z.im = 0 := by nlinarith [hi]
  have hdecay : z.re + d = 0 := (mul_eq_zero.mp hfactor).resolve_right oscillatory
  have hd : d = -z.re := by linarith
  rw [hd] at hr
  nlinarith [hr]
