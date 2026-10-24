# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.BranchSeparation.Variant87a6e36c2e18d1152a6e5749ba27d56d14883df7522af7c6e80d3c20c3c3d179

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aef3ba5dbe223ad999069247db78dd3bf09c861e` · SHA-256 `9eeb390f7106f54503ef2d238345c7715daa09e10dcd0353b3f08e11bcb35a9b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ProofDomain.Variantd25a096862354e76899aa51ba3caff0bd8223b9e64b71a53c4343f7336ea6935","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d25a096862354e76899aa51ba3caff0bd8223b9e64b71a53c4343f7336ea6935","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ProofDomain.Variantd25a096862354e76899aa51ba3caff0bd8223b9e64b71a53c4343f7336ea6935","mathematical_subject":"Foundations.Unclassified","original_sha256":"d25a096862354e76899aa51ba3caff0bd8223b9e64b71a53c4343f7336ea6935","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/MobiusOntology/BranchSeparation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.MobiusOntology.ArithmeticSecurityBridge
import Mathematics.MobiusOntology.SquareRootNorm
import Mathematics.MobiusOntology.QueryToWork

/-!
# Four-domain branch separation

Core ontology, analytic arithmetic, effective security, and the
arithmetic-security bridge have disjoint constructors.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ProofDomain.Variantd25a096862354e76899aa51ba3caff0bd8223b9e64b71a53c4343f7336ea6935

namespace Mathematics.MobiusOntology

inductive ProofDomain
  | coreOntology
  | analyticArithmetic
  | effectiveSecurity
  | arithmeticSecurityBridge
  deriving DecidableEq, Repr

inductive DomainTransition : ProofDomain → ProofDomain → Prop
  | coreStay : DomainTransition .coreOntology .coreOntology
  | analyticStay :
      DomainTransition .analyticArithmetic .analyticArithmetic
  | securityStay :
      DomainTransition .effectiveSecurity .effectiveSecurity
  | bridgeStay :
      DomainTransition
        .arithmeticSecurityBridge .arithmeticSecurityBridge
  | analyticToBridge :
      DomainTransition
        .analyticArithmetic .arithmeticSecurityBridge
  | bridgeToSecurity :
      DomainTransition
        .arithmeticSecurityBridge .effectiveSecurity

theorem no_analytic_to_security_without_bridge :
    ¬ DomainTransition .analyticArithmetic .effectiveSecurity := by
  intro impossible
  cases impossible

inductive ProhibitedCrossBranchInference
  | booleanSatisfiabilityToSemanticSoundness
  | automorphismToHardness
  | functionalEquationToSquareRoot
  | purityToQueryComplexity
  | squareRootToWorkLowerBound
  | mobiusPhaseToZeroKnowledge
  | adversaryBoundToTraceFormula
  deriving DecidableEq, Repr

def ProhibitedCrossBranchInference.admissible
    (_ : ProhibitedCrossBranchInference) : Prop :=
  False

theorem prohibitedCrossBranchInference_rejected
    (inference : ProhibitedCrossBranchInference) :
    ¬ inference.admissible :=
  id

end Mathematics.MobiusOntology
```
