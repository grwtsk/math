# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ArithmeticCryptographicSeparation.Variantf677fde1d6a7a194f0bc5052a43c2b0c06e21cb5a0e3c6cc6ef836c0e98af318

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `07f2187152602f364ae0906568b3955aa4314557` · SHA-256 `6d9310d67cff8f1996ba69d3bd02a7c389da9730ce55b5b2e45b13af61d67a0b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AnalyticDiscrepancyBound.Variant20604b66dd67a3c477f54f8e1ea01de36b63a79c161b5f975bfd5c49fdad6bd4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"20604b66dd67a3c477f54f8e1ea01de36b63a79c161b5f975bfd5c49fdad6bd4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.AnalyticDiscrepancyBound.Variant20604b66dd67a3c477f54f8e1ea01de36b63a79c161b5f975bfd5c49fdad6bd4","mathematical_subject":"Foundations.Unclassified","original_sha256":"20604b66dd67a3c477f54f8e1ea01de36b63a79c161b5f975bfd5c49fdad6bd4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Resolution/ArithmeticCryptographicSeparation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Resolution.CryptographicCouplingBridge
import Mathematics.Resolution.CryptographicCouplingFrontier
import Mathematics.Resolution.EffectivePresentation

/-!
# Arithmetic and cryptographic conclusions remain separate

Analytic trace-and-purity arguments prove discrepancy upper bounds.
Adversary certificates and reductions prove model-specific work lower bounds.
Neither conclusion is a constructor for the other.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AnalyticDiscrepancyBound.Variant20604b66dd67a3c477f54f8e1ea01de36b63a79c161b5f975bfd5c49fdad6bd4

namespace Mathematics.Resolution

/-- A proof-bearing analytic upper bound. -/
structure AnalyticDiscrepancyBound
    (Scale : Type*) (discrepancy majorant : Scale → ℝ) where
  sound : ∀ scale, |discrepancy scale| ≤ majorant scale

/-- A proof-bearing lower bound in one declared computational model. -/
structure CryptographicWorkBound
    (Attack : Type*) (successful : Attack → Prop) (work : Attack → Nat) where
  lowerBound : Nat
  sound : ∀ attack, successful attack → lowerBound ≤ work attack

/-- The two conclusions are retained as independent certificate channels. -/
structure SeparatedSquareRootConclusions
    (Scale Attack : Type*)
    (discrepancy majorant : Scale → ℝ)
    (successful : Attack → Prop)
    (work : Attack → Nat) where
  analytic : AnalyticDiscrepancyBound Scale discrepancy majorant
  cryptographic : CryptographicWorkBound Attack successful work

/--
The precise false ontological claim says that inverse cost factors through the
ordinary automorphism obtained after resource erasure.
-/
def OntologicalHardnessClaim : Prop :=
  CostedEquiv.InverseCostFactorsThroughErasure Unit

theorem ontologicalHardnessClaim_false :
    ¬ OntologicalHardnessClaim :=
  CostedEquiv.inverseCost_does_not_factor_through_erasure Unit

/-- The false topological mechanism is refuted by an actual proof. -/
def ontologicalHardnessVerdict :
    CryptographicCouplingVerdict OntologicalHardnessClaim :=
  .refuted ontologicalHardnessClaim_false

@[simp]
theorem ontologicalHardnessVerdict_is_refuted :
    ontologicalHardnessVerdict.IsRefuted :=
  trivial

@[simp]
theorem ontologicalHardnessVerdict_not_certified :
    ¬ ontologicalHardnessVerdict.IsCertified :=
  id

/--
The stronger arithmetic-to-cryptographic claim is not refuted merely because
the ontological shortcut fails.  Its authoritative conservative status is the
three macro-unknown frontier.  The source, kernel, locality, naturality, and
reduction nodes remain machine-readable internal refinements of those macros.
-/
def arithmeticCryptographicCouplingVerdict
    (Claim : Prop) :
    ArithmeticSecurityMacroVerdict Claim :=
  terminalArithmeticSecurityVerdict Claim

@[simp]
theorem arithmeticCryptographicCouplingVerdict_unknowns
    (Claim : Prop) :
    (arithmeticCryptographicCouplingVerdict Claim).unknowns =
      terminalArithmeticSecurityMacros :=
  rfl

@[simp]
theorem arithmeticCryptographicCouplingVerdict_not_certified
    (Claim : Prop) :
    ¬ (arithmeticCryptographicCouplingVerdict Claim).IsCertified :=
  id

@[simp]
theorem arithmeticCryptographicCouplingVerdict_not_refuted
    (Claim : Prop) :
    ¬ (arithmeticCryptographicCouplingVerdict Claim).IsRefuted :=
  id

end Mathematics.Resolution
```
