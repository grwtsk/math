# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.AnalyticBase.Variant6fa3e1c862c21534b86e1f76436dd54bd7900cb97d9952f6ca6cfc77bbf4172e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9dc76c1952abdd09cd9049c7f6ad565f55f094ba` · SHA-256 `5a20274e10322718cf35ccebd0b2c4411544c2b8b8eb48f94a5a45591071ed2a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.CompletedZeta.Variantd1469969dc798ec5c50fa1a105556fbed75d1ab8fdb8524df6feb2b683736e7b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d1469969dc798ec5c50fa1a105556fbed75d1ab8fdb8524df6feb2b683736e7b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.LFunctions.SourceCorpus.CompletedZeta.Variantd1469969dc798ec5c50fa1a105556fbed75d1ab8fdb8524df6feb2b683736e7b","mathematical_subject":"NumberTheory.LFunctions","original_sha256":"d1469969dc798ec5c50fa1a105556fbed75d1ab8fdb8524df6feb2b683736e7b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/RH/AnalyticBase.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.NumberTheory.LSeries.RiemannZeta

/-!
# Folder.RH.AnalyticBase

Radiation role: analytic-base
BinaryMatrix spine: This module fixes analytic function symbols used by the narrow RH cone.
Ontology: rh.analytic_base
Pivot role: spectral
Zero typology: zeta
Contract boundary: definitional-base
Composite stack role: rh
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.CompletedZeta.Variantd1469969dc798ec5c50fa1a105556fbed75d1ab8fdb8524df6feb2b683736e7b

namespace Folder
namespace RH

noncomputable section

/--
The completed Riemann zeta function from Mathlib.

Mathlib provides this as `completedRiemannZeta`; this project-level name fixes
the symbol used by the narrow RH cone without adding a user-supplied function
slot.
-/
noncomputable def CompletedZeta (s : ℂ) : ℂ :=
  completedRiemannZeta s

/--
Riemann's xi function with the normalization used by this project.
-/
noncomputable def Xi (s : ℂ) : ℂ :=
  (1 / 2 : ℂ) * s * (s - 1) * CompletedZeta s

/--
The spectral-parameter normalization used by the de Bruijn-Newman `H_0`
translation:

`z ↦ 1/2 + i z / 2`.
-/
noncomputable def H0SpectralParameter (z : ℂ) : ℂ :=
  (1 / 2 : ℂ) + Complex.I * z / 2

/--
The `H_0` function used by the de Bruijn-Newman translation layer.

This definition fixes the normalization. It does not prove that `H_0` real
zeros are equivalent to RH.
-/
noncomputable def H0 (z : ℂ) : ℂ :=
  (1 / 8 : ℂ) * Xi (H0SpectralParameter z)

theorem completed_zeta_eq_mathlib
    (s : ℂ) :
    CompletedZeta s = completedRiemannZeta s :=
  rfl

theorem xi_completed_zeta_relation
    (s : ℂ) :
    Xi s =
      (1 / 2 : ℂ) * s * (s - 1) * CompletedZeta s :=
  rfl

theorem h0_spectral_parameter_definition
    (z : ℂ) :
    H0SpectralParameter z =
      (1 / 2 : ℂ) + Complex.I * z / 2 :=
  rfl

theorem h0_definition
    (z : ℂ) :
    H0 z =
      (1 / 8 : ℂ) * Xi (H0SpectralParameter z) :=
  rfl

theorem h0_spectral_parameter_real_part_on_real_axis
    (x : ℝ) :
    (H0SpectralParameter (x : ℂ)).re = (1 / 2 : ℝ) := by
  simp [H0SpectralParameter]

end

end RH
end Folder
```
