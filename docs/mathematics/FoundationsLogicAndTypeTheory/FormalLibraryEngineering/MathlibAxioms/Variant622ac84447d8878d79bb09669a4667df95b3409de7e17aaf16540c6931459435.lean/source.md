# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.MathlibAxioms.Variant622ac84447d8878d79bb09669a4667df95b3409de7e17aaf16540c6931459435

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `92af69e22d396270e85f95dc28f069708b603ade` · SHA-256 `a0307101273854883b88480d1b31bf5cc3fd0bf5a261079fd1daff59dcd282e3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AnalyticNumberMathlib.Variant8d4747c7ab2a3150a610dc2f35b778937251a7a04fb278fc3e0301c25b7cbc2e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8d4747c7ab2a3150a610dc2f35b778937251a7a04fb278fc3e0301c25b7cbc2e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.AnalyticNumberMathlib.Variant8d4747c7ab2a3150a610dc2f35b778937251a7a04fb278fc3e0301c25b7cbc2e","mathematical_subject":"Foundations.Unclassified","original_sha256":"8d4747c7ab2a3150a610dc2f35b778937251a7a04fb278fc3e0301c25b7cbc2e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/Audit/MathlibAxioms.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import AnalyticNumberMathlib

/-!
# Axiom audit for the Mathlib-backed theorem surface

Run from the package root (`formal/`):

  lake env lean Audit/MathlibAxioms.lean

Expected output: each theorem depends only on the standard Lean/Mathlib
foundations (`Classical.choice`, `propext`, `Quot.sound`). No project-local
analytic postulate, `sorryAx`, or native-code reduction may appear.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AnalyticNumberMathlib.Variant8d4747c7ab2a3150a610dc2f35b778937251a7a04fb278fc3e0301c25b7cbc2e

#print axioms AnalyticNumber.MathlibBridge.GeometricSeries.geometric_series_through_boundary_calculus
#print axioms AnalyticNumber.MathlibBridge.ExponentialSeries.exponential_series_through_boundary_calculus
#print axioms AnalyticNumber.MathlibBridge.Compactness.compactness_through_boundary_calculus
#print axioms AnalyticNumber.MathlibBridge.IntervalArithmetic.sqrt_two_interval_through_boundary_calculus
#print axioms AnalyticNumber.MathlibBridge.BaselSeries.basel_case_study_through_boundary_calculus
```
