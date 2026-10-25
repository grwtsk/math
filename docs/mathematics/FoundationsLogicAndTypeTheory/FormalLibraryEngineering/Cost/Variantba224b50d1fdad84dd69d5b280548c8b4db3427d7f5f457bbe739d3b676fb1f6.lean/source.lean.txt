-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExactCostVector.Variant831065e5977d6f4caeb6f7601bac9ce3440727be19b042b554875bceb9d4c87a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"831065e5977d6f4caeb6f7601bac9ce3440727be19b042b554875bceb9d4c87a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ExactCostVector.Variant831065e5977d6f4caeb6f7601bac9ce3440727be19b042b554875bceb9d4c87a","mathematical_subject":"Foundations.Unclassified","original_sha256":"831065e5977d6f4caeb6f7601bac9ce3440727be19b042b554875bceb9d4c87a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/AbelReynolds/Cost.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.AbelReynolds.Tally

/-!
# Exact reuse cost and contextual tally optimality

The exact cost vector remains authoritative.  A scalar weighting is optional,
and tally optimality is restricted to unit-transparent encodings.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExactCostVector.Variant831065e5977d6f4caeb6f7601bac9ce3440727be19b042b554875bceb9d4c87a

namespace Mathematics.AbelReynolds

structure ExactCostVector where
  fieldAdditions : Nat
  fieldMultiplications : Nat
  inversions : Nat
  polynomialOperations : Nat
  factorizationSteps : Nat
  proofChecks : Nat
  hashes : Nat
  bytesRead : Nat
  bytesWritten : Nat
  bitChanges : Nat
  queueCommits : Nat
  persistenceOperations : Nat
  transportChecks : Nat
  deriving DecidableEq, Repr

def ExactCostVector.zero : ExactCostVector where
  fieldAdditions := 0
  fieldMultiplications := 0
  inversions := 0
  polynomialOperations := 0
  factorizationSteps := 0
  proofChecks := 0
  hashes := 0
  bytesRead := 0
  bytesWritten := 0
  bitChanges := 0
  queueCommits := 0
  persistenceOperations := 0
  transportChecks := 0

def ExactCostVector.add
    (left right : ExactCostVector) : ExactCostVector where
  fieldAdditions := left.fieldAdditions + right.fieldAdditions
  fieldMultiplications :=
    left.fieldMultiplications + right.fieldMultiplications
  inversions := left.inversions + right.inversions
  polynomialOperations :=
    left.polynomialOperations + right.polynomialOperations
  factorizationSteps :=
    left.factorizationSteps + right.factorizationSteps
  proofChecks := left.proofChecks + right.proofChecks
  hashes := left.hashes + right.hashes
  bytesRead := left.bytesRead + right.bytesRead
  bytesWritten := left.bytesWritten + right.bytesWritten
  bitChanges := left.bitChanges + right.bitChanges
  queueCommits := left.queueCommits + right.queueCommits
  persistenceOperations :=
    left.persistenceOperations + right.persistenceOperations
  transportChecks := left.transportChecks + right.transportChecks

structure ReuseCost where
  primeCount : Nat
  reusableBlock : Nat
  bindingPerPrime : Nat
  persistence : Nat
  symmetry : Nat
  equivariance : Nat
  transport : Nat
  proofChecking : Nat
  deriving DecidableEq, Repr

def ReuseCost.fresh (cost : ReuseCost) : Nat :=
  cost.primeCount * cost.reusableBlock

def ReuseCost.reused (cost : ReuseCost) : Nat :=
  cost.reusableBlock +
    cost.primeCount * cost.bindingPerPrime +
    cost.persistence +
    cost.symmetry +
    cost.equivariance +
    cost.transport +
    cost.proofChecking

def PositiveReuse (cost : ReuseCost) : Prop :=
  cost.reused < cost.fresh

structure UnitTransparentEncoding where
  witnessCells : Nat → Nat
  oneWitnessPerUnit :
    ∀ count, count ≤ witnessCells count

def tallyEncoding : UnitTransparentEncoding where
  witnessCells := id
  oneWitnessPerUnit := fun _ => Nat.le_refl _

theorem tally_length_optimal
    (encoding : UnitTransparentEncoding)
    (count : Nat) :
    tallyEncoding.witnessCells count ≤
      encoding.witnessCells count :=
  encoding.oneWitnessPerUnit count

structure BinaryTransparencyAccounting where
  numeralBits : Nat
  provenanceSidecarCells : Nat
  countedUnits : Nat
  unitTransparent :
    countedUnits ≤ numeralBits + provenanceSidecarCells

end Mathematics.AbelReynolds
