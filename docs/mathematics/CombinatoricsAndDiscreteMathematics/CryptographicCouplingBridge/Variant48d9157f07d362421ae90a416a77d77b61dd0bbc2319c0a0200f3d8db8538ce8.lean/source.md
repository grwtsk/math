# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.CryptographicCouplingBridge.Variant48d9157f07d362421ae90a416a77d77b61dd0bbc2319c0a0200f3d8db8538ce8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0c9304e2279eb92ee574386293d5cadc398ecc1d` · SHA-256 `bfe536324c43e653c93c07197ce5b481532bffac8712ca0a6e9da59530a92523`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.EffectiveArithmeticSecurityAssignment.Variantc4978dd0c70b5f68168b8fc55ce38ceba439ac7b787c12016477556810e30ab7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c4978dd0c70b5f68168b8fc55ce38ceba439ac7b787c12016477556810e30ab7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.EffectiveArithmeticSecurityAssignment.Variantc4978dd0c70b5f68168b8fc55ce38ceba439ac7b787c12016477556810e30ab7","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"c4978dd0c70b5f68168b8fc55ce38ceba439ac7b787c12016477556810e30ab7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Resolution/CryptographicCouplingBridge.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Resolution.AnalyticComplexityBoundary
import Mathematics.Resolution.ArithmeticAdversaryProfile
import Mathematics.Resolution.ArithmeticSecurityDependency
import Mathematics.Resolution.ArithmeticSecurityMacro
import Mathematics.Resolution.ConditionalArithmeticHardness
import Mathematics.Resolution.ResourceEnrichedCoupling

/-!
# Effective arithmetic-security coupling

This facade joins the element-sized source, kernel-profile, dependency,
typed-authority, macro-frontier, and conditional-transfer modules.  Scalar
traces alone do not inhabit the coupling: an assignment must expose its
effective source, oracle incidence, kernel lift, selected witness, and
resource-enriched reduction structure.  The facade exports no direct
analytic-certificate-to-complexity-certificate constructor.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.EffectiveArithmeticSecurityAssignment.Variantc4978dd0c70b5f68168b8fc55ce38ceba439ac7b787c12016477556810e30ab7

namespace Mathematics.Resolution

universe u v w x y z q r s t

/--
One complete object assignment

`(X, ζ, Ω, Enc, Q, R) ↦ (game, f, Γ, {Δ_i}, c)`.
-/
structure EffectiveArithmeticSecurityAssignment
    (Geometry : Type u) (Incidence : Type v) (Operator : Type w)
    (Point : Type x) (Domain : Type y)
    (SourceQuery : Type z) (SourceAnswer : Type q)
    (Input : Type r) (Output : Type s) (Coordinate : Type t)
    [Fintype Input] [DecidableEq Input] [DecidableEq SourceAnswer]
    (Kernel : Type*) where
  source :
    EffectiveArithmeticSource
      Geometry Incidence Operator Point Domain SourceQuery SourceAnswer
  inputEncoding : Domain → Input
  coordinateEncoding : SourceQuery → Coordinate
  problem : OracleProblem Input Output Coordinate
  queryInterfaceExact :
    ∀ query left right,
      problem.differsAt
          (coordinateEncoding query)
          (inputEncoding left)
          (inputEncoding right) =
        decide (source.query query left ≠ source.query query right)
  kernelLift : ArithmeticKernelLift problem Kernel
  selectedKernel : Kernel
  witness : ArithmeticAdversaryWitness kernelLift
  witnessUsesSelectedKernel :
    witness.kernel = selectedKernel
  normCertificate : ArithmeticKernelNormCertificate witness
  encodingCost : ResourceCost
  queryCost : ResourceCost
  reductionLoss : ℝ≥0
  hardnessConstant : ℝ
  hardnessConstantPositive : 0 < hardnessConstant
  hardnessCertified :
    hardnessConstant ≤ witness.ratio

def EffectiveArithmeticSecurityAssignment.adversaryProfile
    {Geometry : Type u} {Incidence : Type v} {Operator : Type w}
    {Point : Type x} {Domain : Type y}
    {SourceQuery : Type z} {SourceAnswer : Type q}
    {Input : Type r} {Output : Type s} {Coordinate : Type t}
    [Fintype Input] [DecidableEq Input] [DecidableEq SourceAnswer]
    {Kernel : Type*}
    (assignment :
      EffectiveArithmeticSecurityAssignment
        Geometry Incidence Operator Point Domain
        SourceQuery SourceAnswer Input Output Coordinate Kernel) :
    ArithmeticAdversaryWitness.ResourceSensitiveProfile
      (Coordinate := Coordinate) :=
  assignment.witness.resourceSensitiveProfile
    assignment.encodingCost
    assignment.queryCost
    assignment.reductionLoss

theorem EffectiveArithmeticSecurityAssignment.profile_hardness_certified
    {Geometry : Type u} {Incidence : Type v} {Operator : Type w}
    {Point : Type x} {Domain : Type y}
    {SourceQuery : Type z} {SourceAnswer : Type q}
    {Input : Type r} {Output : Type s} {Coordinate : Type t}
    [Fintype Input] [DecidableEq Input] [DecidableEq SourceAnswer]
    {Kernel : Type*}
    (assignment :
      EffectiveArithmeticSecurityAssignment
        Geometry Incidence Operator Point Domain
        SourceQuery SourceAnswer Input Output Coordinate Kernel) :
    assignment.hardnessConstant ≤
      assignment.adversaryProfile.hardnessRatio := by
  rw [ArithmeticAdversaryWitness.resourceSensitiveProfile_hardnessRatio_eq]
  exact assignment.hardnessCertified

/--
The complete resource-enriched coupling ties object assignments to the source
and target objects of the lax categorical map.
-/
structure EffectiveArithmeticSecurityCoupling
    (Geometry : Type u) (Incidence : Type v) (Operator : Type w)
    (Point : Type x) (Domain : Type y)
    (SourceQuery : Type z) (SourceAnswer : Type q)
    (Input : Type r) (Output : Type s) (Coordinate : Type t)
    [Fintype Input] [DecidableEq Input] [DecidableEq SourceAnswer]
    (Kernel : Type*) where
  sourceCategory : ResourceCategory
  targetCategory : ResourceCategory
  sourcePresentation :
    sourceCategory.Object →
      EffectiveArithmeticSource
        Geometry Incidence Operator Point Domain SourceQuery SourceAnswer
  targetGame :
    targetCategory.Object →
      OracleProblem Input Output Coordinate
  enriched :
    ResourceEnrichedCoupling sourceCategory targetCategory
  assignment :
    ∀ object,
      EffectiveArithmeticSecurityAssignment
        Geometry Incidence Operator Point Domain
        SourceQuery SourceAnswer Input Output Coordinate Kernel
  assignmentSourceExact :
    ∀ object,
      (assignment object).source = sourcePresentation object
  assignmentTargetExact :
    ∀ object,
      (assignment object).problem =
        targetGame (enriched.objectMap object)

/-- A query-progress functional is the required replacement for bare holonomy. -/
structure HolonomyQueryProgress
    (AttackState : Type u) (Successful : AttackState → Prop) where
  potential : Nat → AttackState → ℝ
  perQueryBound : ℝ
  perQueryBoundNonnegative : 0 ≤ perQueryBound
  requiredProgress : ℝ
  requiredProgressPositive : 0 < requiredProgress
  stepControlled :
    ∀ time before after,
      |potential (time + 1) after - potential time before| ≤
        perQueryBound
  successRequiresProgress :
    ∀ time initial final,
      Successful final →
        requiredProgress ≤
          |potential time final - potential 0 initial|

end Mathematics.Resolution
```
