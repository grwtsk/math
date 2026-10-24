# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.H0Translation.Varianta4d9d02715bfbcfea2b5204b9fa28c058a5b9957dbffb0fe243a897f746d753e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fe030cd1b96d394ba8e20023b4d3a56e90c29865` · SHA-256 `a50235098be265ab9c11506a11d379ddea6c7c6687b6f607588ca034512ef49f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RHIffH0RealZeros.Variantda43256fa5cfa653233883851d8364dafae95655acf93a11042987f1b5a3bc9a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"da43256fa5cfa653233883851d8364dafae95655acf93a11042987f1b5a3bc9a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.RHIffH0RealZeros.Variantda43256fa5cfa653233883851d8364dafae95655acf93a11042987f1b5a3bc9a","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"da43256fa5cfa653233883851d8364dafae95655acf93a11042987f1b5a3bc9a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/RH/H0Translation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.RH.H0Translation

/-!
# Folder.Theorem.RH.H0Translation

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports H0 translation facts.
Ontology: proof.rh.h0_translation
Pivot role: spectral
Zero typology: zeta
Contract boundary: theorem-wrapper
Composite stack role: rh
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RHIffH0RealZeros.Variantda43256fa5cfa653233883851d8364dafae95655acf93a11042987f1b5a3bc9a

namespace Folder
namespace Theorem
namespace RH
namespace H0Translation

theorem RH_Iff_H0RealZeros
    (h : Folder.RH.RH_Iff_H0RealZerosStatement) :
    Folder.RH.RiemannHypothesis ↔ Folder.RH.H0RealZeros :=
  Folder.RH.RH_Iff_H0RealZeros h

theorem h0_zero_has_zero_statement
    {z : ℂ}
    (Z : Folder.RH.H0Zero z) :
    Folder.RH.H0 z = 0 :=
  Folder.RH.h0_zero_has_zero_statement Z

theorem h0_spectral_parameter_definition
    (z : ℂ) :
    Folder.RH.H0SpectralParameter z =
      (1 / 2 : ℂ) + Complex.I * z / 2 :=
  Folder.RH.h0_spectral_parameter_definition z

theorem h0_spectral_parameter_real_part_on_real_axis
    (x : ℝ) :
    (Folder.RH.H0SpectralParameter (x : ℂ)).re = (1 / 2 : ℝ) :=
  Folder.RH.h0_spectral_parameter_real_part_on_real_axis x

theorem xi_completed_zeta_relation_statement_fixed :
    Folder.RH.XiCompletedZetaRelationStatement :=
  Folder.RH.xi_completed_zeta_relation_statement_fixed

theorem h0_definition_statement_fixed :
    Folder.RH.H0DefinitionStatement :=
  Folder.RH.h0_definition_statement_fixed

theorem h0_translation_equivalence_statement_fixed :
    Folder.RH.RH_Iff_H0RealZeros_importedTheorem.exactStatement =
      Folder.RH.RH_Iff_H0RealZerosStatement :=
  Folder.RH.h0_translation_equivalence_statement_fixed

theorem h0_translation_equivalence_import_status :
    Folder.RH.RH_Iff_H0RealZeros_importedTheorem.status =
      Folder.RH.ProofStatus.importedTheorem :=
  Folder.RH.h0_translation_equivalence_import_status

end H0Translation
end RH
end Theorem
end Folder
```
