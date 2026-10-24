-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceActualEulerOne.Variant01cca321c924a049c07164f7f8e55c20e610a5cbb44dba0afdfa0654182f1c5a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"01cca321c924a049c07164f7f8e55c20e610a5cbb44dba0afdfa0654182f1c5a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.SourceActualEulerOne.Variant01cca321c924a049c07164f7f8e55c20e610a5cbb44dba0afdfa0654182f1c5a","mathematical_subject":"Analysis.Calculus","original_sha256":"01cca321c924a049c07164f7f8e55c20e610a5cbb44dba0afdfa0654182f1c5a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/reflection-analysis/independent-low-euler-maclaurin/native/SourceActualEulerOneReview.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualEulerOne

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceActualEulerOne.Variant01cca321c924a049c07164f7f8e55c20e610a5cbb44dba0afdfa0654182f1c5a

open RH16ActualEulerOne
#check periodicB1
#print axioms periodicB1
#check periodicB2
#print axioms periodicB2
#check sourceFloorWeight_eq_neg_periodicB1
#print axioms sourceFloorWeight_eq_neg_periodicB1
#check periodicB2_bounds
#print axioms periodicB2_bounds
#check periodicB2_abs_le
#print axioms periodicB2_abs_le
#check periodicB2_at_integer
#print axioms periodicB2_at_integer
#check periodicB2_continuous
#print axioms periodicB2_continuous
#check periodicB2_hasDerivAt
#print axioms periodicB2_hasDerivAt
#check periodicB2_ae_hasDerivAt
#print axioms periodicB2_ae_hasDerivAt
#check actual_zeta_euler_one
#print axioms actual_zeta_euler_one
#print periodicB1
#print periodicB2
#check Zeta0EqZeta
#print axioms Zeta0EqZeta
#print Zeta23.IsNontrivialZero
#print Zeta23.reflect
#print Zeta23.zetaZeros
open Lean Elab Command
run_cmd do
  let env ← getEnv
  for mod in env.allImportedModuleNames do
    logInfo m!"RH16_IMPORT {mod}"
