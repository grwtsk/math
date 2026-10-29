-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.DominatedConvergence.Variantcd87042573a5899302b039ca795dac90569fb5eab02a9e6b52d288d1638d2d4d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cd87042573a5899302b039ca795dac90569fb5eab02a9e6b52d288d1638d2d4d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.DominatedConvergence.Variantcd87042573a5899302b039ca795dac90569fb5eab02a9e6b52d288d1638d2d4d","mathematical_subject":"Analysis.Integration","original_sha256":"cd87042573a5899302b039ca795dac90569fb5eab02a9e6b52d288d1638d2d4d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-zero-energy/LaplaceProbe2.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.MeasureTheory.Group.Integral
import Mathlib.Analysis.PSeries
import Mathlib.Analysis.SpecialFunctions.Pow.Complex

namespace GRWTSK.Analysis.RealAnalysis.Integration.DominatedConvergence.Variantcd87042573a5899302b039ca795dac90569fb5eab02a9e6b52d288d1638d2d4d

#check Complex.ofReal_tsum
#check Complex.ofReal_log
#check Complex.ofReal_exp
#check MeasureTheory.Integrable.ofReal
#check MeasureTheory.Integrable.mul_bdd
#check MeasureTheory.Integrable.bdd_mul
#check MeasureTheory.Integrable.mul_continuousOn
#check MeasureTheory.Integrable.mono'
#check Complex.continuous_ofReal
#check Complex.ofRealCLM.integrable_comp
#check Complex.norm_real
#check Complex.summable_one_div_nat_add_one_cpow
#check Summable.ofReal
#check tsum_mul_right
