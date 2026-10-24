-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ConductorThreeCarlesonToGRH.Variant49629ea3c510164c7ee6c320f809bb55ae1d1c33dc562f84d1214d49486a337c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"49629ea3c510164c7ee6c320f809bb55ae1d1c33dc562f84d1214d49486a337c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.ConductorThreeCarlesonToGRH.Variant49629ea3c510164c7ee6c320f809bb55ae1d1c33dc562f84d1214d49486a337c","mathematical_subject":"Analysis.Calculus","original_sha256":"49629ea3c510164c7ee6c320f809bb55ae1d1c33dc562f84d1214d49486a337c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:95de3c3746bfc57b0f382a7c/workspace/lib/Surface/Audit/DirichletGRHAxioms.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Surface.Core.ConductorThreeCarlesonToGRH
public import Surface.Core.DirichletGRH.LFunctionConjugation
public import Surface.Core.DirichletGRH.MathlibLFunctionAdapters

/-!
# Dirichlet-GRH axiom audit

This module is deliberately separate from the general audit ledger.  It lists
every theorem introduced by the generic centered twisted-Chebyshev lane and
its conductor-three adapter, including internal analytic assembly lemmas.

`#print axioms` reports proof-term axiom closure.  It does **not** assert that
the hypotheses of a conditional theorem are inhabited.  In particular, this
file provides no `MellinLogDerivativeSquare`, functional-equation square,
explicit-formula bounds, Carleson bridge, local GRH proof, or global
`DirichletGRH` proof.
-/

-- Exact character and family statements.

namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ConductorThreeCarlesonToGRH.Variant49629ea3c510164c7ee6c320f809bb55ae1d1c33dc562f84d1214d49486a337c

#print axioms Surface.Core.DirichletGRH.PrimitiveCharacterData.modulus_ne_zero
#print axioms Surface.Core.DirichletGRH.isPrimitive_inv
#print axioms Surface.Core.DirichletGRH.inv_apply_eq_star
#print axioms Surface.Core.DirichletGRH.PrimitiveCharacterData.inv_modulus
#print axioms Surface.Core.DirichletGRH.PrimitiveCharacterData.inv_character
#print axioms Surface.Core.DirichletGRH.mem_openCriticalStrip_iff
#print axioms Surface.Core.DirichletGRH.grhForPrimitiveCharacter_iff_criticalStripZeros
#print axioms Surface.Core.DirichletGRH.grhForPrimitiveCharacter_modOne_iff
#print axioms Surface.Core.DirichletGRH.modulus_eq_one_of_isPrimitive_eq_one
#print axioms Surface.Core.DirichletGRH.dirichletGRH_forCharacter
#print axioms Surface.Core.DirichletGRH.dirichletGRH_iff_primitiveFamily
#print axioms Surface.Core.DirichletGRH.dirichletGRH_iff_dataFamily

-- Thin normalization and pole-removal adapters around mathlib.
#print axioms Surface.Core.DirichletGRH.canonicalCompletedLFunction_one_sub
#print axioms Surface.Core.DirichletGRH.gammaFactor_ne_zero_of_re_pos
#print axioms Surface.Core.DirichletGRH.canonicalCompletedLFunction_zero_iff_LFunction_zero
#print axioms Surface.Core.DirichletGRH.poleRemovedLFunction_eq_LFunction_of_ne_one
#print axioms Surface.Core.DirichletGRH.poleRemovedLFunction_one
#print axioms Surface.Core.DirichletGRH.differentiable_poleRemovedLFunction
#print axioms Surface.Core.DirichletGRH.poleRemovedLFunction_zero_iff_LFunction_zero
#print axioms Surface.Core.DirichletGRH.poleRemovedLFunction_ne_zero_of_one_lt_re
#print axioms Surface.Core.DirichletGRH.LSeries_inverse_eq_star
#print axioms Surface.Core.DirichletGRH.LFunction_inverse_eq_star
#print axioms Surface.Core.DirichletGRH.primitive_rootNumber_ne_zero

-- Centered twisted-Chebyshev arithmetic.
#print axioms Surface.Core.DirichletGRH.principalMultiplicity_eq_zero_of_ne_one
#print axioms Surface.Core.DirichletGRH.principalMultiplicity_one
#print axioms Surface.Core.DirichletGRH.principalMultiplicity_inv
#print axioms Surface.Core.DirichletGRH.principalIndicator_eq_natCast
#print axioms Surface.Core.DirichletGRH.principalIndicator_inv
#print axioms Surface.Core.DirichletGRH.dirichletPrincipalIndicator_eq_principalIndicator
#print axioms Surface.Core.DirichletGRH.dirichletPrincipalIndicator_eq_zero
#print axioms Surface.Core.DirichletGRH.dirichletPrincipalIndicator_one
#print axioms Surface.Core.DirichletGRH.twistedPsi_zero
#print axioms Surface.Core.DirichletGRH.centeredTwistedPsi_zero
#print axioms Surface.Core.DirichletGRH.centeredTwistedPsi_eq_twistedPsi_of_ne_one
#print axioms Surface.Core.DirichletGRH.centeredTwistedPsi_one
#print axioms Surface.Core.DirichletGRH.twistedPsi_succ
#print axioms Surface.Core.DirichletGRH.twistedPsi_inv
#print axioms Surface.Core.DirichletGRH.centeredTwistedPsi_inv
#print axioms Surface.Core.DirichletGRH.centeredTwistedPsi_inv_norm
#print axioms Surface.Core.DirichletGRH.twistedPsi_modOne_eq_chebyshevPsi
#print axioms Surface.Core.DirichletGRH.centeredTwistedPsi_modOne_eq

-- Weighted summatory and countable critical-space packaging.
#print axioms Surface.Core.DirichletGRH.hasWeightedSummatoryBound_congr_norm
#print axioms Surface.Core.DirichletGRH.hasWeightedSummatoryBound_star_iff
#print axioms Surface.Core.DirichletGRH.HasWeightedSummatoryBound.mono_exponent
#print axioms Surface.Core.DirichletGRH.hasWeightedSummatoryBound_mono
#print axioms Surface.Core.DirichletGRH.criticalSummatoryMembership_implies_halfPlusEpsilon
#print axioms Surface.Core.DirichletGRH.criticalSummatoryHalfPlusEpsilonMembership_implies_countable
#print axioms Surface.Core.DirichletGRH.criticalSummatoryMembership_iff_halfPlusEpsilon
#print axioms Surface.Core.DirichletGRH.criticalSummatoryMembership_iff_forall_pos
#print axioms Surface.Core.DirichletGRH.centeredTwistedPsiCriticalMembership_iff_halfPlusEpsilon
#print axioms Surface.Core.DirichletGRH.centeredTwistedPsiHalfPlusEpsilon_inv_iff
#print axioms Surface.Core.DirichletGRH.centeredTwistedPsiHalfPlusEpsilon_inv
#print axioms Surface.Core.DirichletGRH.centeredTwistedPsiCriticalMembership_inv_iff

-- Mellin/logarithmic-derivative staging and checked consequences.
#print axioms Surface.Core.Analysis.nowhereZero_of_deriv_eq_mul
#print axioms Surface.Core.DirichletGRH.centeredTwistedPsiStep_natCast
#print axioms Surface.Core.DirichletGRH.isOpen_criticalRightHalfPlane
#print axioms Surface.Core.DirichletGRH.isPreconnected_criticalRightHalfPlane
#print axioms Surface.Core.DirichletGRH.MellinLogDerivativeSquare.differentiableOn_residual
#print axioms Surface.Core.DirichletGRH.MellinLogDerivativeSquare.residual_eq_zero_of_one_lt_re
#print axioms Surface.Core.DirichletGRH.MellinLogDerivativeSquare.residual_eq_zero
#print axioms Surface.Core.DirichletGRH.zeroFree_rightHalfPlane_of_mellinHolomorphic

-- Functional-equation reflection and local zero exclusion.
#print axioms Surface.Core.DirichletGRH.criticalReflection_re
#print axioms Surface.Core.DirichletGRH.primitive_LFunction_reflects_zero
#print axioms Surface.Core.DirichletGRH.PrimitiveFunctionalEquationSquare.reflects_zero
#print axioms Surface.Core.DirichletGRH.grh_of_rightHalfPlane_zeroFree
#print axioms Surface.Core.DirichletGRH.centeredTwistedPsiHalfPlusEpsilon_implies_grh_of_mellinInterface

-- Explicit-formula staging and conditional reverse direction.
#print axioms Surface.Core.DirichletGRH.centeredTwistedPsiCriticalRate_le_halfPlusEpsilon
#print axioms Surface.Core.DirichletGRH.centeredTwistedPsiCriticalBound_implies_halfPlusEpsilon
#print axioms Surface.Core.DirichletGRH.grh_implies_centeredTwistedPsiCriticalBound
#print axioms Surface.Core.DirichletGRH.grh_implies_centeredTwistedPsiHalfPlusEpsilon

-- Character-family assembly.  Each analytic family remains an argument.
#print axioms Surface.Core.DirichletGRH.primitiveCharacterHalfPlusEpsilonFamily_implies_dirichletGRH
#print axioms Surface.Core.DirichletGRH.dirichletGRH_implies_primitiveCharacterHalfPlusEpsilonFamily
#print axioms Surface.Core.DirichletGRH.dirichletGRH_iff_halfPlusEpsilonFamily

-- Conductor-three adapters and the explicit open geometric bridge.
#print axioms Surface.Core.ConductorThreeCarlesonToGRH.twistedPsi_conductorThreeCharacter
#print axioms Surface.Core.ConductorThreeCarlesonToGRH.centeredTwistedPsi_conductorThreeCharacter
#print axioms Surface.Core.ConductorThreeCarlesonToGRH.centeredTwistedPsiHalfPlusEpsilon_conductorThree_iff
#print axioms Surface.Core.ConductorThreeCarlesonToGRH.grhForPrimitiveCharacter_conductorThree_iff
#print axioms Surface.Core.ConductorThreeCarlesonToGRH.centeredTwistedPsiHalfPlusEpsilon_implies_conductorThreeGRH
#print axioms Surface.Core.ConductorThreeCarlesonToGRH.conductorThreeGRH_of_blockHyperbolicCarleson_of_bridge
