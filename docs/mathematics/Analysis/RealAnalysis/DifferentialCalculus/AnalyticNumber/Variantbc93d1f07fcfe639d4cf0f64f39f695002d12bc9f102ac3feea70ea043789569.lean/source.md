# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.AnalyticNumber.Variantbc93d1f07fcfe639d4cf0f64f39f695002d12bc9f102ac3feea70ea043789569

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e3d41ffa5c96950e884dddcfe49cac42370970ad` · SHA-256 `9714d9cc379f2ac5e33d441719c40a34480959fd752acae3a14a528e5a4143d2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Certificate.Variant641b27a35888e9d514c649fdef7a4808b8614de2e04b62fce5a3555c8ac0adfb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"641b27a35888e9d514c649fdef7a4808b8614de2e04b62fce5a3555c8ac0adfb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.Certificate.Variant641b27a35888e9d514c649fdef7a4808b8614de2e04b62fce5a3555c8ac0adfb","mathematical_subject":"Analysis.Calculus","original_sha256":"641b27a35888e9d514c649fdef7a4808b8614de2e04b62fce5a3555c8ac0adfb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/AnalyticNumber.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import AnalyticNumber.Certificate
import AnalyticNumber.DirichletSeries
import AnalyticNumber.EulerProduct
import AnalyticNumber.Mobius
import AnalyticNumber.Zeta
import AnalyticNumber.LFunction
import AnalyticNumber.AutomorphicEulerProduct
import AnalyticNumber.Determinant
import AnalyticNumber.TraceFormula
import AnalyticNumber.CohomologicalComparison
import AnalyticNumber.CountableShadowPipeline
import AnalyticNumber.HilbertMeshShadow
import AnalyticNumber.AnalyticMeshPipeline
import AnalyticNumber.SpectralFaceProjection
import AnalyticNumber.AnalyticResidueReduction
import AnalyticNumber.ResiduePatternTheoremProposal
import AnalyticNumber.PipelineHaltingClosure
import AnalyticNumber.ExpressibleNumbers
import AnalyticNumber.NonMathlibAdapter
import AnalyticNumber.FoundryPhilosophy
import AnalyticNumber.FoundryReducerHierarchy
import AnalyticNumber.FoundryPhaseAdvance
import AnalyticNumber.FaithfulShadow
import AnalyticNumber.FiniteShadowLimit
import AnalyticNumber.RefinementStability
import AnalyticNumber.VerifiedNumericalEstimate
import AnalyticNumber.Bridge.Number
import AnalyticNumber.BoundaryCalculus
import AnalyticNumber.TrustedExternal

/-!
Core `AnalyticNumber` import surface.

This file deliberately does not import the Boolean bridge or the examples. The
analytic-number layer depends on `Number`, not on `Boolean`.

The optional `AnalyticNumber.BoundaryCalculus` wrapper imports only the
analytic-number-facing bridge and the generic authority calculus; it does not
pull in Boolean examples.
-/

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Certificate.Variant641b27a35888e9d514c649fdef7a4808b8614de2e04b62fce5a3555c8ac0adfb

```
