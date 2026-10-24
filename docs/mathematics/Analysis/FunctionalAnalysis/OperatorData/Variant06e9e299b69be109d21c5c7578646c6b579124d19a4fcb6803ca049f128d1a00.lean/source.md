# Complete source: GRWTSK.Analysis.FunctionalAnalysis.OperatorData.Variant06e9e299b69be109d21c5c7578646c6b579124d19a4fcb6803ca049f128d1a00

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bb1bf71f5587761a8487884ab2e3035004e01d6e` · SHA-256 `57bdb59de253c48919bdfd75b4dc4cb707ff3697a80b43d088f5aac1e5507ee5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.RHUnboundedOperator.Variant58a621a47f2ed325e723c711e4e405ea356bb335a8ee447a9d26724f86cf7c9b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"58a621a47f2ed325e723c711e4e405ea356bb335a8ee447a9d26724f86cf7c9b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.RHUnboundedOperator.Variant58a621a47f2ed325e723c711e4e405ea356bb335a8ee447a9d26724f86cf7c9b","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"58a621a47f2ed325e723c711e4e405ea356bb335a8ee447a9d26724f86cf7c9b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/RH/OperatorData.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.InnerProductSpace.Basic

/-!
# Folder.RH.OperatorData

Radiation role: operator-data
BinaryMatrix spine: This module fixes the local Hilbert-Polya operator interface.
Ontology: rh.operator_data
Pivot role: spectral
Zero typology: zeta
Contract boundary: operator-interface
Composite stack role: rh
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.RHUnboundedOperator.Variant58a621a47f2ed325e723c711e4e405ea356bb335a8ee447a9d26724f86cf7c9b

namespace Folder
namespace RH

noncomputable section

/--
Project-local interface for an unbounded operator.

Mathlib does not currently expose a general `UnboundedOperator` abstraction
under that name, so the RH cone uses this minimal local interface. The action
is defined on the declared domain, not on all of the Hilbert space.
-/
structure RHUnboundedOperator
    (H : Type _) [NormedAddCommGroup H] [InnerProductSpace ℂ H] where
  domain : Set H
  action : domain → H

def RHUnboundedOperator.apply
    {H : Type _} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
    (D : RHUnboundedOperator H) :
    D.domain → H :=
  D.action

/-- The point spectrum used by the narrow Hilbert-Polya interface. -/
def RHSpectrum
    {H : Type _} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
    (D : RHUnboundedOperator H) : Set ℂ :=
  {mu : ℂ | ∃ x : D.domain, (x : H) ≠ 0 ∧ D.apply x = mu • (x : H)}

/-- Symmetry/self-adjointness obligation for the local operator interface. -/
def IsSelfAdjoint
    {H : Type _} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
    (D : RHUnboundedOperator H) : Prop :=
  ∀ x y : D.domain,
    inner ℂ (D.apply x) (y : H) = inner ℂ (x : H) (D.apply y)

/-- Compact-resolvent obligation for the local operator interface. -/
def HasCompactResolvent
    {H : Type _} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
    (D : RHUnboundedOperator H) : Prop :=
  ∃ K : Set H, IsCompact K ∧ Set.range (fun x : D.domain => (x : H)) ⊆ K

/--
Operator data for a future Hilbert-Polya-style realization.

The data names the Hilbert space, domain, and operator. It only proves domain
density; self-adjointness, compact resolvent, and real spectrum are exposed as
separate theorem obligations in downstream modules.
-/
structure RHOperatorData where
  H : Type _
  [instNormed : NormedAddCommGroup H]
  [instInner : InnerProductSpace ℂ H]
  D : RHUnboundedOperator H
  domain_dense : Dense D.domain

attribute [instance] RHOperatorData.instNormed RHOperatorData.instInner

/--
Default spectral parameter for the hardened local interface.

Specialized realizations may supply a different map through
`ZeroSpectrumRealization`, but this name gives the requested theorem shape a
fixed, non-proof-bearing coordinate.
-/
noncomputable def spectralParameter (lambda : ℂ) : ℂ :=
  lambda

theorem operator_data_has_hilbert_type
    (O : RHOperatorData) :
    ∃ H : Type _, H = O.H :=
  ⟨O.H, rfl⟩

theorem operator_data_domain_dense
    (O : RHOperatorData) :
    Dense O.D.domain :=
  O.domain_dense

end

end RH
end Folder
```
