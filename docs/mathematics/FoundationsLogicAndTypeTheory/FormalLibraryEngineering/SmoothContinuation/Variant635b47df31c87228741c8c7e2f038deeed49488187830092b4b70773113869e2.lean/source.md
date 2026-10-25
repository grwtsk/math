# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SmoothContinuation.Variant635b47df31c87228741c8c7e2f038deeed49488187830092b4b70773113869e2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `472705d557bdaa55ca4183201ba1223106e10b94` · SHA-256 `6886f2028bc8229b972b47c575e56c0e8e8e3f4935eb0a188d4b4d01a0d879b9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SmoothContinuation.Variantd8c805b7c94e86bd1c8a58ddc78fc1447b0a2f0f103efb702c28667e2c2ec65b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d8c805b7c94e86bd1c8a58ddc78fc1447b0a2f0f103efb702c28667e2c2ec65b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SmoothContinuation.Variantd8c805b7c94e86bd1c8a58ddc78fc1447b0a2f0f103efb702c28667e2c2ec65b","mathematical_subject":"Foundations.Unclassified","original_sha256":"d8c805b7c94e86bd1c8a58ddc78fc1447b0a2f0f103efb702c28667e2c2ec65b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/GrandChallenge/NavierStokes/SmoothContinuation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.GrandChallenge.NavierStokes.FlowComplex

/-!
# Folder.GrandChallenge.NavierStokes.SmoothContinuation

Radiation role: research-boundary
BinaryMatrix spine: This module records Navier-Stokes continuation contracts.
Ontology: navier_stokes_flow_complex
Pivot role: flow
Zero typology: blowup-obstruction
Contract boundary: theorem-target
Composite stack role: grand-challenge
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SmoothContinuation.Variantd8c805b7c94e86bd1c8a58ddc78fc1447b0a2f0f103efb702c28667e2c2ec65b

namespace Folder
namespace GrandChallenge
namespace NavierStokes

structure SmoothContinuation where
  flowComplex : FlowComplex
  continuationMapsExist : Prop
  continuationMapsExist_certified : continuationMapsExist
  preservesTrueNavierStokesNonlinearity : Prop
  preservesTrueNavierStokesNonlinearity_certified :
    preservesTrueNavierStokesNonlinearity
  compactnessOrRegularityControl : Prop
  compactnessOrRegularityControl_certified :
    compactnessOrRegularityControl
  sourceLabel : String

theorem ns_continuation_maps_exist_if_supplied
    (S : SmoothContinuation) :
    S.continuationMapsExist :=
  S.continuationMapsExist_certified

theorem ns_preserves_true_nonlinearity_if_supplied
    (S : SmoothContinuation) :
    S.preservesTrueNavierStokesNonlinearity :=
  S.preservesTrueNavierStokesNonlinearity_certified

end NavierStokes
end GrandChallenge
end Folder
```
