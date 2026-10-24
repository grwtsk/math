# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CryptographicProblem.Variant862db6d374916dfe5e4560d9464e043ec0151edd83cb634f0cf8c8abf47732ac

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `98e845991fcdd4602355c338931c885588eafddf` · SHA-256 `862db6d374916dfe5e4560d9464e043ec0151edd83cb634f0cf8c8abf47732ac`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Finset.Basic

/-!
# Cryptographic problem semantics

Collision search, preimage search, key search, analytic cancellation, and
cryptographic strength are different objects.  This module fixes the problem
and access vocabulary before any exponent or hardness claim is admitted.
-/

namespace Mathematics.Resolution

/-- The computational model in which a generic bound is stated. -/
inductive ComputationModel
  | classical
  | quantum
  deriving DecidableEq, Repr

/-- Oracle access is part of the security problem, not presentation metadata. -/
inductive OracleAccessModel
  | classical
  | superposition
  | quantumRandomOracle
  | chosenPlaintext
  | chosenCiphertext
  deriving DecidableEq, Repr

/-- Problems whose familiar exponents are often incorrectly conflated. -/
inductive CryptographicProblemKind
  | randomFunctionPreimage
  | permutationPreimage
  | randomFunctionCollision
  | permutationCollision
  | keySearch
  deriving DecidableEq, Repr

/-- Qualitative generic scales; these do not assert concrete machine costs. -/
inductive GenericComplexityScale
  | linearInSpace
  | squareRootOfSpace
  | cubeRootOfSpace
  | impossible
  deriving DecidableEq, Repr

/-- The standard black-box scale table, with collision and preimage separated. -/
def genericComplexityScale :
    CryptographicProblemKind → ComputationModel → GenericComplexityScale
  | .randomFunctionPreimage, .classical => .linearInSpace
  | .randomFunctionPreimage, .quantum => .squareRootOfSpace
  | .permutationPreimage, .classical => .linearInSpace
  | .permutationPreimage, .quantum => .squareRootOfSpace
  | .randomFunctionCollision, .classical => .squareRootOfSpace
  | .randomFunctionCollision, .quantum => .cubeRootOfSpace
  | .permutationCollision, _ => .impossible
  | .keySearch, .classical => .linearInSpace
  | .keySearch, .quantum => .squareRootOfSpace

theorem quantum_collision_is_not_quantum_preimage :
    genericComplexityScale .randomFunctionCollision .quantum ≠
      genericComplexityScale .randomFunctionPreimage .quantum := by
  decide

theorem permutation_collision_is_impossible
    (model : ComputationModel) :
    genericComplexityScale .permutationCollision model = .impossible := by
  cases model <;> rfl

/-- Exact parameter meanings prevent block, key, digest, and security lengths from merging. -/
structure SecurityParameters where
  blockLength : Nat
  keyLength : Nat
  digestLength : Nat
  securityParameter : Nat
  deriving DecidableEq, Repr

/-- A collision requires two distinct inputs with equal outputs. -/
def Collision {Input Output : Type*}
    (function : Input → Output) (left right : Input) : Prop :=
  left ≠ right ∧ function left = function right

/-- Injective maps, hence permutations, have no collisions. -/
theorem no_collision_of_injective
    {Input Output : Type*}
    {function : Input → Output}
    (injective : Function.Injective function)
    (left right : Input) :
    ¬ Collision function left right := by
  intro collision
  exact collision.1 (injective collision.2)

theorem permutation_has_no_collision
    {Input Output : Type*}
    (permutation : Input ≃ Output)
    (left right : Input) :
    ¬ Collision permutation left right :=
  no_collision_of_injective permutation.injective left right

/-- The four square-root phrases govern four different quantities. -/
inductive SquareRootPhenomenon
  | classicalCollisionSearch
  | quantumPreimageSearch
  | analyticCancellation
  | cryptographicSecurityStrength
  deriving DecidableEq, Repr

inductive GoverningQuantity
  | sampledPairs
  | oracleQueries
  | analyticDiscrepancy
  | adversarialWork
  deriving DecidableEq, Repr

/-- “Unitary” is reserved for Hilbert realizations; Banach carriers use isometry. -/
inductive AnalyticCarrierKind
  | hilbert
  | generalBanach
  deriving DecidableEq, Repr

inductive SymmetryVocabulary
  | unitary
  | isometry
  deriving DecidableEq, Repr

def vocabularyAdmissible :
    AnalyticCarrierKind → SymmetryVocabulary → Prop
  | .hilbert, _ => True
  | .generalBanach, .isometry => True
  | .generalBanach, .unitary => False

theorem generalBanach_unitary_vocabulary_rejected :
    ¬ vocabularyAdmissible .generalBanach .unitary :=
  id

def SquareRootPhenomenon.quantity :
    SquareRootPhenomenon → GoverningQuantity
  | .classicalCollisionSearch => .sampledPairs
  | .quantumPreimageSearch => .oracleQueries
  | .analyticCancellation => .analyticDiscrepancy
  | .cryptographicSecurityStrength => .adversarialWork

def squareRootPhenomena : List SquareRootPhenomenon :=
  [
    .classicalCollisionSearch,
    .quantumPreimageSearch,
    .analyticCancellation,
    .cryptographicSecurityStrength
  ]

theorem squareRootPhenomena_nodup :
    squareRootPhenomena.Nodup := by
  decide

end Mathematics.Resolution
```
