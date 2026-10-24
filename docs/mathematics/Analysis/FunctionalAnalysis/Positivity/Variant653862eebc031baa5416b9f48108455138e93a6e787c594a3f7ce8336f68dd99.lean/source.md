# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Positivity.Variant653862eebc031baa5416b9f48108455138e93a6e787c594a3f7ce8336f68dd99

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `98ae84f3c4a2228e79182a32eaf22559f2b08a01` · SHA-256 `e9adfc5f9a145b0291b25c299f23c128967e32dc126f12a38fbf77772129de69`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.ProvenPositivityData.Variante5e5df0193729bbed2a6aa1281ee347ea44f9ec564eadf5e153f0f2de985f5b6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e5e5df0193729bbed2a6aa1281ee347ea44f9ec564eadf5e153f0f2de985f5b6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.ProvenPositivityData.Variante5e5df0193729bbed2a6aa1281ee347ea44f9ec564eadf5e153f0f2de985f5b6","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"e5e5df0193729bbed2a6aa1281ee347ea44f9ec564eadf5e153f0f2de985f5b6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/RH/Positivity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.RH.TraceFormula

/-!
# Folder.RH.Positivity

Radiation role: positivity-interface
BinaryMatrix spine: This module records operator-theoretic proof obligations.
Ontology: rh.positivity
Pivot role: spectral
Zero typology: zeta
Contract boundary: proof-obligation-interface
Composite stack role: rh
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.ProvenPositivityData.Variante5e5df0193729bbed2a6aa1281ee347ea44f9ec564eadf5e153f0f2de985f5b6

namespace Folder
namespace RH

noncomputable section

/--
Non-propositional labels for the operator-theoretic route.

The proofs of dense domain, self-adjointness, compact resolvent, functional
calculus, and trace regularization are theorems or theorem arguments, not
fields in this structure.
-/
structure ProvenPositivityData
    (O : RHOperatorData) where
  operatorData : RHOperatorData := O
  functionalCalculusLabel : String
  traceRegularizationLabel : String
  sourceLabel : String

theorem positivity_data_uses_operator
    {O : RHOperatorData}
    (P : ProvenPositivityData O) :
    ∃ O' : RHOperatorData, O' = P.operatorData :=
  ⟨P.operatorData, rfl⟩

theorem dense_domain_from_operator_data
    (O : RHOperatorData) :
    Dense O.D.domain :=
  O.domain_dense

noncomputable def realQuadraticForm
    {H : Type _} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
    (D : RHUnboundedOperator H)
    (x : D.domain) : ℝ :=
  ‖(x : H)‖ ^ 2

def ProvenPositivity
    (O : RHOperatorData) : Prop :=
  ∀ x : O.D.domain,
    (x : O.H) ≠ 0 →
      0 < realQuadraticForm O.D x

theorem positivity_from_operator_data
    (O : RHOperatorData)
    (x : O.D.domain)
    (hx : (x : O.H) ≠ 0) :
    0 < realQuadraticForm O.D x := by
  exact sq_pos_of_ne_zero (norm_ne_zero_iff.mpr hx)

theorem proven_positivity_from_operator_data
    (O : RHOperatorData) :
    ProvenPositivity O := by
  intro x hx
  exact positivity_from_operator_data O x hx

theorem selfAdjoint_from_operator_theorem
    {O : RHOperatorData}
    (hD : IsSelfAdjoint O.D) :
    IsSelfAdjoint O.D :=
  D_selfAdjoint O hD

theorem compactResolvent_from_operator_theorem
    {O : RHOperatorData}
    (hD : HasCompactResolvent O.D) :
    HasCompactResolvent O.D :=
  D_compactResolvent O hD

theorem spectral_reality_from_selfAdjoint
    (O : RHOperatorData)
    (hD : IsSelfAdjoint O.D)
    (hReal : ∀ mu ∈ RHSpectrum O.D, mu.im = 0) :
    ∀ mu ∈ RHSpectrum O.D, mu.im = 0 :=
  spectrum_real_of_selfAdjoint O hD hReal

theorem real_spectrum_from_selfAdjoint_theorem
    {O : RHOperatorData}
    (hD : IsSelfAdjoint O.D)
    (hReal : ∀ mu ∈ RHSpectrum O.D, mu.im = 0) :
    ∀ mu ∈ RHSpectrum O.D, mu.im = 0 :=
  spectral_reality_from_selfAdjoint O hD hReal

end

end RH
end Folder
```
