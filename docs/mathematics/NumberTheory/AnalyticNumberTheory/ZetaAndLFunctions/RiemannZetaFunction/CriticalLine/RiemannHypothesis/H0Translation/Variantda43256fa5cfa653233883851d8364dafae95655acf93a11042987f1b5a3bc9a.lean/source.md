# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.H0Translation.Variantda43256fa5cfa653233883851d8364dafae95655acf93a11042987f1b5a3bc9a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3dd5b87f7bcf958e33336905bc4e139c2216e510` · SHA-256 `da43256fa5cfa653233883851d8364dafae95655acf93a11042987f1b5a3bc9a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
