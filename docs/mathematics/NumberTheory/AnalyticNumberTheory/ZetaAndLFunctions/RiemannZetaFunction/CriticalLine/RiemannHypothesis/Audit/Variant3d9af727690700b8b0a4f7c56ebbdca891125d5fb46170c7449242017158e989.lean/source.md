# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Audit.Variant3d9af727690700b8b0a4f7c56ebbdca891125d5fb46170c7449242017158e989

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b80997ac4de1f0eb78b09ebcee805bb6b718c4ed` · SHA-256 `cd1c68ad342b5b2ef0d934c51b4701e83ded6b8099e24bd38fc4acf2d182146a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceArithmeticOrbit.Variant68c02b6794264dc163793625b5a59188e370707d63f6df948b85e34019b570c8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"68c02b6794264dc163793625b5a59188e370707d63f6df948b85e34019b570c8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceArithmeticOrbit.Variant68c02b6794264dc163793625b5a59188e370707d63f6df948b85e34019b570c8","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"68c02b6794264dc163793625b5a59188e370707d63f6df948b85e34019b570c8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle2/regent-orbit/Audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import «SourceArithmeticOrbit»

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceArithmeticOrbit.Variant68c02b6794264dc163793625b5a59188e370707d63f6df948b85e34019b570c8

set_option linter.hashCommand false
open FormalResearch.RiemannHypothesis.SourceArithmeticOrbit
#check OrbitIndex
#print axioms OrbitIndex
#check signedLog
#print axioms signedLog
#check signedLog_not
#print axioms signedLog_not
#check orbitAtom
#print axioms orbitAtom
#check orbitGenerator
#print axioms orbitGenerator
#check finiteOrbit
#print axioms finiteOrbit
#check orbitGenerator_mem
#print axioms orbitGenerator_mem
#check orbitAtom_mem
#print axioms orbitAtom_mem
#check orbitAtom_duality
#print axioms orbitAtom_duality
#check orbitAtom_reflection_original
#print axioms orbitAtom_reflection_original
#check orbitAtom_reflection_dual
#print axioms orbitAtom_reflection_dual
#check orbitAtom_quarterTurn_original
#print axioms orbitAtom_quarterTurn_original
#check orbitAtom_quarterTurn_dual
#print axioms orbitAtom_quarterTurn_dual
#check duality_mem_finiteOrbit
#print axioms duality_mem_finiteOrbit
#check reflection_mem_finiteOrbit
#print axioms reflection_mem_finiteOrbit
#check quarterTurn_mem_finiteOrbit
#print axioms quarterTurn_mem_finiteOrbit
#check finiteOrbit_mono
#print axioms finiteOrbit_mono
#check orbitIndex_card
#print axioms orbitIndex_card
#check finiteOrbit_finiteDimensional
#print axioms finiteOrbit_finiteDimensional
#check finiteOrbit_finrank_le
#print axioms finiteOrbit_finrank_le
#check rotationMap_mem_finiteOrbit
#print axioms rotationMap_mem_finiteOrbit
#check angleRotation_mem_finiteOrbit
#print axioms angleRotation_mem_finiteOrbit
#check finiteProfile
#print axioms finiteProfile
#check finiteProfile_mem
#print axioms finiteProfile_mem
#check synthesis
#print axioms synthesis
#check synthesis_apply
#print axioms synthesis_apply
#check synthesis_single
#print axioms synthesis_single
#check synthesis_mem
#print axioms synthesis_mem
#check synthesis_range
#print axioms synthesis_range
#check gramMatrix
#print axioms gramMatrix
#check gramMatrix_conj_symm
#print axioms gramMatrix_conj_symm
#check synthesis_inner
#print axioms synthesis_inner
#check synthesis_norm_sq
#print axioms synthesis_norm_sq
#check gramMatrix_quadratic_nonneg
#print axioms gramMatrix_quadratic_nonneg
#check gramMatrix_mulVec_eq_inner
#print axioms gramMatrix_mulVec_eq_inner
#check gramMatrix_mulVec_eq_zero_iff
#print axioms gramMatrix_mulVec_eq_zero_iff
#check synthesisQuotientEquivOrbit
#print axioms synthesisQuotientEquivOrbit
#check synthesisQuotientEquivOrbit_apply_mk
#print axioms synthesisQuotientEquivOrbit_apply_mk
#check mixedKernel
#print axioms mixedKernel
#check orbitAtom_inner_original_original
#print axioms orbitAtom_inner_original_original
#check orbitAtom_inner_dual_dual
#print axioms orbitAtom_inner_dual_dual
#check orbitAtom_inner_original_dual
#print axioms orbitAtom_inner_original_dual
#check orbitAtom_inner_dual_original
#print axioms orbitAtom_inner_dual_original
#check mixedKernel_self_zero
#print axioms mixedKernel_self_zero
#check reflectedMatrix
#print axioms reflectedMatrix
#check synthesis_reflected_inner
#print axioms synthesis_reflected_inner
#check orbitAtom_one_shift_equal
#print axioms orbitAtom_one_shift_equal
#check dependentCoefficients
#print axioms dependentCoefficients
#check dependentCoefficients_ne_zero
#print axioms dependentCoefficients_ne_zero
#check dependentCoefficients_synthesis_zero
#print axioms dependentCoefficients_synthesis_zero
#check dependentCoefficients_gram_zero
#print axioms dependentCoefficients_gram_zero
```
