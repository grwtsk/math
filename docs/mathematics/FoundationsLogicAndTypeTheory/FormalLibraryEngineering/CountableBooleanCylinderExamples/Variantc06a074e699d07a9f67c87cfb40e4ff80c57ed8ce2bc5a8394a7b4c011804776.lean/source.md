# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CountableBooleanCylinderExamples.Variantc06a074e699d07a9f67c87cfb40e4ff80c57ed8ce2bc5a8394a7b4c011804776

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5f7440c6741d7f3691903a7c9902b8bb8d1fb0d8` · SHA-256 `f335927daeb2fdd4175339ee2516e1f664163a6f52a1658b90d9cc06cb272b89`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NatVocabulary.Variant29132245b6a268c744e442b77762360229d54198fe3f7a1726d8aa50aff25035","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"29132245b6a268c744e442b77762360229d54198fe3f7a1726d8aa50aff25035","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.NatVocabulary.Variant29132245b6a268c744e442b77762360229d54198fe3f7a1726d8aa50aff25035","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"29132245b6a268c744e442b77762360229d54198fe3f7a1726d8aa50aff25035","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Cube/CountableBooleanCylinderExamples.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Boolean.Cube.CountableBooleanCylinder

/-!
# Countable Boolean cylinder examples

Small certificate-only examples for the finite-window/cylinder tower interface.
The examples keep every reducer stage finite and use explicit completion
certificates for analytic interpretation.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NatVocabulary.Variant29132245b6a268c744e442b77762360229d54198fe3f7a1726d8aa50aff25035

namespace Boolean
namespace Cube
namespace CountableBooleanCylinder

def natVocabulary : CountableBooleanVocabulary where
  Coordinate := Nat
  encode := id
  injective := by
    intro a b h
    exact h

def exampleWindow : FiniteBooleanWindow natVocabulary where
  coords := ([0, 1, 2] : List Nat)
  nodupHash := 3
  finiteSound := True

def exampleCylinder : BooleanCylinder natVocabulary where
  window := exampleWindow
  formulaHash := 11
  matrixHash := 12
  dependsOnlyOnWindow := True
  finiteReducerSound := True

def natListBound : List Nat → Nat
  | [] => 0
  | x :: xs => Nat.max x (natListBound xs)

theorem le_natListBound_of_mem
    {xs : List Nat}
    {c : Nat}
    (h : c ∈ xs) :
    c ≤ natListBound xs := by
  induction xs with
  | nil =>
      cases h
  | cons x xs ih =>
      simp [natListBound] at h ⊢
      rcases h with h | h
      · exact h ▸ Nat.le_max_left x (natListBound xs)
      · exact Nat.le_trans (ih h) (Nat.le_max_right x (natListBound xs))

def exampleWindowAt (n : Nat) : FiniteBooleanWindow natVocabulary where
  coords := List.range (n + 1)
  nodupHash := n
  finiteSound := True

def exampleCylinderAt (n : Nat) : BooleanCylinder natVocabulary where
  window := exampleWindowAt n
  formulaHash := n + 100
  matrixHash := n + 200
  dependsOnlyOnWindow := True
  finiteReducerSound := True

def exampleWindowRefinement (n : Nat) :
    WindowRefinement (exampleWindowAt n) (exampleWindowAt (n + 1)) where
  included := by
    intro c h
    exact
      List.mem_range.mpr
        (Nat.lt_trans (List.mem_range.mp h) (Nat.lt_succ_self (n + 1)))
  sound := True
  soundProof := trivial

def exampleCylinderRefinement (n : Nat) :
    CylinderRefinement (exampleCylinderAt n) (exampleCylinderAt (n + 1)) where
  windowRefinement := exampleWindowRefinement n
  finiteShadowCompatible := True
  finiteShadowCompatibleProof := trivial
  sound := True
  soundProof := trivial

def exampleTower : CountableCylinderTower natVocabulary where
  stage := exampleCylinderAt
  refinement := exampleCylinderRefinement
  verifiedAt := by
    intro _n
    trivial
  coversCoordinate := by
    intro c
    refine ⟨c, ?_⟩
    exact List.mem_range.mpr (Nat.lt_succ_self c)
  coversWindow := by
    intro W
    refine ⟨natListBound W.coords, ?_⟩
    intro c h
    exact List.mem_range.mpr (Nat.lt_succ_of_le (le_natListBound_of_mem h))

def exampleCompletion :
    AnalyticCompletionCertificate natVocabulary exampleTower where
  Completion := Nat
  embedCylinder := fun n _C => n
  cylinderDense := True
  cylinderDenseProof := trivial
  completionSound := True
  completionSoundProof := trivial
  limitSound := True
  limitSoundProof := trivial
  compatibleWithSpectralHarmonics := True
  compatibleWithFredholmBoundary := True
  compatibleWithZetaAuthority := True
  compatibleWithPrismaticBoundary := True

def exampleHilbertAuthority :
    HilbertCompletionAuthority natVocabulary exampleTower where
  completion := exampleCompletion
  innerProductLabel := "example-inner-product"
  normLabel := "example-norm"
  completeInnerProductSpaceSound := True
  completeInnerProductSpaceProof := trivial
  cylinderEmbeddingSound := True
  cylinderEmbeddingProof := trivial

theorem example_prefix_verified :
    ∀ n : Nat, exampleTower.PrefixVerified n :=
  exampleTower.prefixVerified

theorem example_tower_firewall :
    ¬ CountableCylinderTowerConstructsHilbertCompletion exampleTower ∧
      ¬ CountableCylinderTowerConstructsPrismaticCohomology exampleTower ∧
      ¬ CountableCylinderTowerConstructsConnesTrace exampleTower :=
  countable_tower_api_firewall exampleTower

theorem example_completion_requires_certificate :
    exampleCompletion.cylinderDense ∧
      exampleCompletion.completionSound ∧
      exampleCompletion.limitSound :=
  analytic_completion_requires_certificate exampleCompletion

theorem example_hilbert_completion_is_authority :
    exampleHilbertAuthority.completeInnerProductSpaceSound ∧
      exampleHilbertAuthority.cylinderEmbeddingSound :=
  hilbert_completion_is_authority exampleHilbertAuthority

end CountableBooleanCylinder
end Cube
end Boolean
```
