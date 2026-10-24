# Complete source: GRWTSK.Algebra.LinearAlgebra.RhetoricalFormalIntegration.Variant4310764af7a07ac59540ee6f868a48594f538c60b826b6078488a45b25ee274f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd5731640badabb55113119f2b76df81be5519bc` · SHA-256 `4310764af7a07ac59540ee6f868a48594f538c60b826b6078488a45b25ee274f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Rhetorical.Grounding
import DAF.Rhetorical.Hilbert.Identity
import DAF.Rhetorical.Kernel.Manifest
import DAF.Rhetorical.Relations.Analogy
import DAF.Rhetorical.Relations.Opposition
import DAF.Rhetorical.Relations.Similarity
import DAF.Rhetorical.Terrain

/-!
# Formal rhetorical-integration regression tests

These tests exercise the narrow formal APIs which are intentionally absent
from the foreign-runtime fixture: conditional product-kernel analogy,
role-induced exact opposition, registry-closed manifests, and navigation-only
relation declarations.
-/

noncomputable section

namespace DAF.Tests.RhetoricalFormalIntegration

open DAF.Rhetorical
open DAF.Rhetorical.KernelManifest
open DAF.Universe

theorem analogy_profiles_are_distinct :
    AnalogyProfile.translation ≠ .conditionalProductKernel := by
  decide

/-- A zero product kernel is a deliberately degenerate but valid fixture.  It
checks that the pair RKHS requires a caller-supplied PSD product law without
claiming a completed tensor product. -/
def zeroProductKernelProfile :
    ConditionalProductKernelProfile
      (zeroSemanticKernel (Index := RhetoricalIndex)) where
  productKernel :=
    zeroSemanticKernel (Index := RhetoricalIndex × RhetoricalIndex)
  realizesProduct := by
    intro a b c d
    simp [zeroSemanticKernel]

theorem zeroProductKernel_inner
    (a b c d : RhetoricalIndex) :
    inner ℂ (productKernelRhetoricalVector zeroProductKernelProfile a b)
        (productKernelRhetoricalVector zeroProductKernelProfile c d) = 0 := by
  rw [inner_productKernelRhetoricalVector]
  simp [zeroSemanticKernel]

/-- Identity role permutation is a small exact-opposition fixture.  Its
purpose is to test the role-induced `J` API, not to assert that self-opposition
is a production semantic policy. -/
def identityOpposition (kernel : PositiveKernel RhetoricalIndex) :
    OppositionStructure kernel where
  roleOpposite := id
  involutive := by intro role; rfl
  kernelInvariant := by intro left right leftRole rightRole; rfl

theorem identityOpposition_exact_self
    (kernel : PositiveKernel RhetoricalIndex)
    (concept : ConceptId) :
    (identityOpposition kernel).ExactOpposition concept concept := by
  simp [OppositionStructure.ExactOpposition, conceptVector, roleVector,
    identityOpposition]

theorem identityOpposition_baseResidual_zero
    (kernel : PositiveKernel RhetoricalIndex)
    (concept : ConceptId) :
    (identityOpposition kernel).baseResidual concept concept = 0 := by
  rw [OppositionStructure.baseResidual_eq_zero_iff]
  exact identityOpposition_exact_self kernel concept

theorem opposition_profiles_are_distinct :
    OppositionProfile.roleInduced ≠ .coordinateAntipodes := by
  decide

def lowSimilarityConceptA : ConceptId :=
  ⟨"daf:test:rhetorical:low-similarity:a"⟩

def lowSimilarityConceptB : ConceptId :=
  ⟨"daf:test:rhetorical:low-similarity:b"⟩

theorem lowSimilarityConceptA_ne_B :
    lowSimilarityConceptA ≠ lowSimilarityConceptB := by
  decide

abbrev lowSimilarityKernel : PositiveKernel RhetoricalIndex :=
  kroneckerKernel (Index := RhetoricalIndex)

/-- Orthogonal base vectors have exact zero similarity in this fixture. -/
theorem lowSimilarity_is_zero :
    rhetoricalSimilarity lowSimilarityKernel lowSimilarityConceptA
      lowSimilarityConceptB = some 0 := by
  rw [rhetoricalSimilarity_eq_re_of_base_normalized]
  · simp [lowSimilarityKernel, kroneckerKernel_apply,
      lowSimilarityConceptA, lowSimilarityConceptB]
  · intro concept
    simp [lowSimilarityKernel, kroneckerKernel_apply]

/-- The same low-similarity pair is not role-induced exact opposition under
the identity role involution.  This is the executable nonconflation check:
zero similarity alone creates no opposition witness. -/
theorem lowSimilarity_is_not_exactOpposition :
    ¬ (identityOpposition lowSimilarityKernel).ExactOpposition
      lowSimilarityConceptA lowSimilarityConceptB := by
  intro exactOpposition
  have vectorEquality :
      rhetoricalVector lowSimilarityKernel (lowSimilarityConceptB, .base) =
        rhetoricalVector lowSimilarityKernel
          (lowSimilarityConceptA, .base) := by
    simpa [OppositionStructure.ExactOpposition, conceptVector, roleVector,
      identityOpposition] using exactOpposition
  have indexEquality :=
    (rhetoricalVector_injective
      (zeroSemanticKernel (Index := RhetoricalIndex)) 1 (by norm_num))
      vectorEquality
  exact lowSimilarityConceptA_ne_B
    (congrArg Prod.fst indexEquality).symm

theorem lowSimilarity_does_not_imply_opposition :
    rhetoricalSimilarity lowSimilarityKernel lowSimilarityConceptA
        lowSimilarityConceptB = some 0 ∧
      ¬ (identityOpposition lowSimilarityKernel).ExactOpposition
        lowSimilarityConceptA lowSimilarityConceptB :=
  ⟨lowSimilarity_is_zero, lowSimilarity_is_not_exactOpposition⟩

def offFixtureConcept : ConceptId :=
  ⟨"daf:test:rhetorical:outside-active-manifest"⟩

/-- The production semantic kernel is total, not a zero extension of its
ten-column runtime fixture. -/
theorem productionSemanticKernel_nonzero_off_fixture :
    productionSemanticKernel (offFixtureConcept, .base)
        (offFixtureConcept, .base) ≠ 0 :=
  productionSemanticKernel_diagonal_ne_zero _

/-- Empty registry fixture for the checked-manifest receiving API. -/
def emptyRegistry : RhetoricalEvidenceRegistry where
  gramTraceFor := fun _ => none

def emptyUniverseManifest : UniverseManifest where
  schemaVersion := 1
  sourceTreeDigest := ⟨"sha256", "empty-source"⟩
  toolchainDigest := ⟨"sha256", "empty-toolchain"⟩
  snapshotId := ⟨"empty-snapshot"⟩
  nodes := ∅
  edges := ∅
  higherCells := ∅
  theoremCells := ∅
  foldData := ∅
  runtimeBindings := ∅
  externalAuthorities := ∅
  closedUnderReferences := by
    simp [ReferencesClosed]
  identityInjective := by
    simp [NodeIdentityInjective]

def checkedEmptyManifest : CheckedRhetoricalManifest emptyRegistry where
  manifest := emptyUniverseManifest
  rhetoricalReferencesClosed := by
    intro cell member
    simp [emptyUniverseManifest] at member

theorem checkedEmptyManifest_has_required_closure :
    checkedEmptyManifest.manifest.RhetoricalReferencesClosed emptyRegistry :=
  checkedEmptyManifest.rhetoricalReferencesClosed

/-- Directed implication is a role-specific navigation feature.  The ID-only
relation declaration is not labelled formal-dependency authority. -/
theorem directedImplication_is_navigation_authority :
    productionFeatureAuthority .directedImplication =
      .roleSpecificRhetorical :=
  rfl

end DAF.Tests.RhetoricalFormalIntegration
```
