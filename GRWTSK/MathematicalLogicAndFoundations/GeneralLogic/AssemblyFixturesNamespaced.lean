-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.ProofTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.AtomTerm.Variant61e3529706a118a8334f2baef207fe42b6f710e1566b9498ea7b748924444ca6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"61e3529706a118a8334f2baef207fe42b6f710e1566b9498ea7b748924444ca6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.ProofTheory.SourceCorpus.AtomTerm.Variant61e3529706a118a8334f2baef207fe42b6f710e1566b9498ea7b748924444ca6","mathematical_subject":"Logic.ProofTheory","original_sha256":"61e3529706a118a8334f2baef207fe42b6f710e1566b9498ea7b748924444ca6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Model/AssemblyFixtures.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.FullFixtures
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.Descent

/-!
# Complete finite K1--K9 assembly and hostile derivation fixtures

The source declaration licenses Tag(Tag(x)) = x as a conditional presentation
assumption. The checker builds the finite catalog relation from explicit proofs,
then checks that a nonidentity two-state Tag interpretation respects the licensed
rule on every declared carrier assignment. No catalog lookup, role equality or
successful source metadata can replace these derivations or the descent operand.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.ProofTheory.AtomTerm.Variant61e3529706a118a8334f2baef207fe42b6f710e1566b9498ea7b748924444ca6

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model
namespace AssemblyFixtures

open FullFixtures

/-- The ground nullary constructor term in the checked singleton catalog. -/
def atomTerm : Term := .nullary ⟨0⟩
/-- One unary tag applied to the catalog atom. -/
def tagTerm : Term := .unary ⟨1⟩ atomTerm
/-- Two unary tags applied to the catalog atom. -/
def tagTagTerm : Term := .unary ⟨1⟩ tagTerm

/-- The explicitly declared conditional rule `Tag(Tag(x)) = x`, licensed by assumption zero. -/
def generator : LicensedGenerator :=
  ⟨0, 0, ⟨.unary ⟨1⟩ (.unary ⟨1⟩ (.variable 0)), .variable 0⟩⟩

/-- A proposed proof applying the declared rule to the exact catalog atom. -/
def instantiatedGenerator : DerivationCandidate := .substitution [atomTerm] (.generator 0)

/-- The ordered finite equivalence relation identifying the atom with its double tag.
Every edge carries its own explicit reflexivity or instantiated-generator derivation. -/
def candidate : CongruenceCandidate :=
  ⟨declaration,
    [⟨0, 0, .reflexivity atomTerm⟩,
     ⟨0, 2, .symmetry instantiatedGenerator⟩,
     ⟨1, 1, .reflexivity tagTerm⟩,
     ⟨2, 0, instantiatedGenerator⟩,
     ⟨2, 2, .reflexivity tagTagTerm⟩]⟩

theorem congruence_accepted :
    (verifyCongruence checkedFull checkedAlgebra checkedGrammar candidate).isSome = true :=
  by decide

/-- This witness is obtained from the actual independent finite verifier. -/
def checkedCongruence : CheckedCongruence checkedFull checkedAlgebra checkedGrammar :=
  (verifyCongruence checkedFull checkedAlgebra checkedGrammar candidate).get congruence_accepted

theorem checked_candidate_exact : checkedCongruence.candidate = candidate := by decide

theorem descent_accepted : checkDescent checkedFull checkedCongruence.candidate = true := by decide

/-- Descent evidence obtained from the exhaustive checker for this exact fixture relation. -/
def checkedDescent : CheckedDescent checkedFull checkedAlgebra checkedGrammar checkedCongruence :=
  ⟨checkDescent_sound checkedFull checkedCongruence.candidate descent_accepted⟩

theorem descent_verifier_returns_witness :
    (verifyDescent checkedFull checkedAlgebra checkedGrammar checkedCongruence).isSome = true :=
  by decide

/-- A single dependent chain supplies all nine stages for one whole declaration. -/
theorem end_to_end_positive : FullModelStages checkedFull candidate := by
  have assembled := assemble_model_sound checkedFull checkedAlgebra checkedRun
    checkedAcceptedRoot checkedGrammar checkedCongruence checkedDescent
  simpa only [checked_candidate_exact] using assembled

theorem tag_interpretation_is_nonidentity :
    evaluateTerm interpreterTable [0] (.unary ⟨1⟩ (.variable 0)) = some 1 ∧
      evaluateTerm interpreterTable [1] (.unary ⟨1⟩ (.variable 0)) = some 0 := by decide

theorem tag_twice_is_identity_everywhere (value : ℕ) (bound : value < 2) :
    evaluateTerm interpreterTable [value] (.unary ⟨1⟩ (.unary ⟨1⟩ (.variable 0))) = some value := by
  have alternatives : value = 0 ∨ value = 1 := by omega
  rcases alternatives with rfl | rfl <;> decide

theorem declared_generator_all_assignments :
    ∀ assignment ∈ finiteWords (List.range interpreterTable.cardinality) declaration.variableCount,
      GeneratorInterpreted checkedFull generator assignment := by decide

/-- The protected quotient consumer receives checked descent, and agrees on both
catalog representatives of this class. This is a finite catalog result only. -/
theorem quotient_representatives_agree :
    evaluateQuotient checkedFull checkedAlgebra checkedGrammar checkedCongruence checkedDescent
      (Quotient.mk (catalogSetoid checkedFull checkedAlgebra checkedGrammar checkedCongruence)
        (⟨0, by decide⟩ : Fin declaration.catalog.length)) = some 0 ∧
    evaluateQuotient checkedFull checkedAlgebra checkedGrammar checkedCongruence checkedDescent
      (Quotient.mk (catalogSetoid checkedFull checkedAlgebra checkedGrammar checkedCongruence)
        (⟨2, by decide⟩ : Fin declaration.catalog.length)) = some 0 := by decide

/-- Hostile relation retaining its edges while changing the source revision in its declaration. -/
def wrongSource : CongruenceCandidate :=
  { candidate with declaration := { declaration with coreSnapshot :=
      { snapshot with source := { snapshot.source with revision := 2 } } } }

theorem wrong_source_rejected :
    (verifyCongruence checkedFull checkedAlgebra checkedGrammar wrongSource).isSome = false :=
  by decide

/-- Hostile relation changing the higher role-run data while reusing the original relation edges. -/
def wrongFullScope : CongruenceCandidate :=
  { candidate with declaration := { declaration with runRoles := [0, 1, 0] } }

theorem wrong_full_scope_rejected :
    (verifyCongruence checkedFull checkedAlgebra checkedGrammar wrongFullScope).isSome = false :=
  by decide

theorem unknown_generator_rejected :
    (verifyEquation declaration (.generator 1)).isSome = false := by decide

theorem mismatched_transitivity_middle_rejected :
    (verifyEquation declaration
      (.transitivity (.reflexivity atomTerm) (.reflexivity tagTerm))).isSome = false := by decide

/-- The outer endpoints would be ground and supported if the undeclared
intermediate variable were silently accepted and then erased by substitution. -/
def undeclaredIntermediate : DerivationCandidate :=
  .substitution (List.replicate 101 atomTerm) (.reflexivity (.variable 100))

theorem undeclared_intermediate_is_really_erased :
    (Term.variable 100).substitute (List.replicate 101 atomTerm) = atomTerm := by decide

theorem undeclared_intermediate_rejected :
    (verifyEquation declaration undeclaredIntermediate).isSome = false := by decide

theorem undeclared_variable_itself_rejected :
    (verifyEquation declaration (.reflexivity (.variable 100))).isSome = false := by decide

/-- An ordinary correctly-sized substitution also cannot introduce an undeclared term. -/
theorem undeclared_substitution_image_rejected :
    (verifyEquation declaration (.substitution [.variable 100] (.generator 0))).isSome = false :=
  by decide

/-- A reflexive-only candidate that omits the required atom/double-tag generator instance. -/
def missingGeneratorClosure : CongruenceCandidate :=
  ⟨declaration,
    [⟨0, 0, .reflexivity atomTerm⟩,
     ⟨1, 1, .reflexivity tagTerm⟩,
     ⟨2, 2, .reflexivity tagTagTerm⟩]⟩

theorem omission_of_generator_pair_rejected :
    (verifyCongruence checkedFull checkedAlgebra checkedGrammar missingGeneratorClosure).isSome =
      false := by decide

/-- A proposed atom/tag edge whose reflexivity proof has the wrong right endpoint. -/
def invalidPair : RelationEntry := ⟨0, 1, .reflexivity atomTerm⟩

theorem wrong_derivation_endpoint_rejected :
    (verifyEntry declaration invalidPair).isSome = false := by decide

/-- This maximal relation passes equivalence/closure checks. Its invented edges
still have no matching equality proofs and therefore fail admission. -/
def inventedRelation : CongruenceCandidate :=
  ⟨declaration,
    [⟨0, 0, .reflexivity atomTerm⟩, ⟨0, 1, .reflexivity atomTerm⟩,
     ⟨0, 2, .symmetry instantiatedGenerator⟩,
     ⟨1, 0, .reflexivity tagTerm⟩, ⟨1, 1, .reflexivity tagTerm⟩,
     ⟨1, 2, .reflexivity tagTerm⟩,
     ⟨2, 0, instantiatedGenerator⟩, ⟨2, 1, .reflexivity tagTagTerm⟩,
     ⟨2, 2, .reflexivity tagTagTerm⟩]⟩

theorem invented_relation_has_valid_structure : RelationStructure checkedFull inventedRelation :=
  by decide

theorem invented_relation_still_rejected :
    (verifyCongruence checkedFull checkedAlgebra checkedGrammar inventedRelation).isSome = false :=
  by decide

theorem duplicate_relation_pair_rejected :
    (verifyCongruence checkedFull checkedAlgebra checkedGrammar
      { candidate with entries := candidate.entries ++ [⟨0, 0, .reflexivity atomTerm⟩] }).isSome =
      false := by decide

theorem unknown_catalog_endpoint_rejected :
    (verifyCongruence checkedFull checkedAlgebra checkedGrammar
      { candidate with entries := candidate.entries ++ [⟨3, 3, .reflexivity atomTerm⟩] }).isSome =
      false := by decide

/-- All declared constructor values collapse to 0, so one test assignment gives
a misleading success. The explicit all-assignment check must detect value 1. -/
def constantInterpreterTable : FiniteTable :=
  ⟨2, [⟨⟨0⟩, [], 0⟩, ⟨⟨1⟩, [0], 0⟩, ⟨⟨1⟩, [1], 0⟩]⟩

/-- An otherwise unchanged declaration whose total interpreter collapses both carrier values. -/
def constantInterpreterFull : CheckedFullDeclaration :=
  { checkedFull with
    value := { declaration with interpreter := ⟨1, constantInterpreterTable⟩ }
    structural := by decide }

/-- The same proposed catalog edges rebound to the constant-interpreter declaration. -/
def constantInterpreterCandidate : CongruenceCandidate :=
  { candidate with declaration := constantInterpreterFull.value }

theorem constant_interpreter_is_a_total_well_formed_table :
    checkFiniteTable snapshot constantInterpreterTable .total = true := by decide

theorem constant_interpreter_agrees_on_assignment_zero :
    GeneratorInterpreted constantInterpreterFull generator [0] := by decide

theorem constant_interpreter_fails_assignment_one :
    ¬GeneratorInterpreted constantInterpreterFull generator [1] := by decide

theorem constant_interpreter_agrees_on_every_catalog_pair :
    ∀ pair ∈ relationPairs constantInterpreterCandidate,
      evaluateTerm constantInterpreterTable [] (catalogTermAt declaration pair.1) =
        evaluateTerm constantInterpreterTable [] (catalogTermAt declaration pair.2) := by decide

theorem sampled_interpreter_descent_rejected :
    checkDescent constantInterpreterFull constantInterpreterCandidate = false := by decide

/-- These are hostile-candidate rejection results, not negations of research targets. -/
def HostileK8K9Checks : Prop :=
  (verifyCongruence checkedFull checkedAlgebra checkedGrammar wrongSource).isSome = false ∧
  (verifyCongruence checkedFull checkedAlgebra checkedGrammar wrongFullScope).isSome = false ∧
  (verifyEquation declaration (.generator 1)).isSome = false ∧
  (verifyEquation declaration
    (.transitivity (.reflexivity atomTerm) (.reflexivity tagTerm))).isSome = false ∧
  (verifyEquation declaration undeclaredIntermediate).isSome = false ∧
  (verifyCongruence checkedFull checkedAlgebra checkedGrammar missingGeneratorClosure).isSome =
    false ∧
  (verifyCongruence checkedFull checkedAlgebra checkedGrammar inventedRelation).isSome = false ∧
  checkDescent constantInterpreterFull constantInterpreterCandidate = false

theorem hostile_k8_k9_checks : HostileK8K9Checks :=
  ⟨wrong_source_rejected, wrong_full_scope_rejected, unknown_generator_rejected,
    mismatched_transitivity_middle_rejected, undeclared_intermediate_rejected,
    omission_of_generator_pair_rejected, invented_relation_still_rejected,
    sampled_interpreter_descent_rejected⟩

end AssemblyFixtures
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model
