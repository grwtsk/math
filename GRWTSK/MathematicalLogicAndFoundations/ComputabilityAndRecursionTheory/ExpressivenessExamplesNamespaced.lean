-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.Computability
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.Computability.ToyProgram.Varianta7483ca1d5b7b960b2e3ffb57e809515e3a4e74b875ff61b4876eec5f44c7a67","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a7483ca1d5b7b960b2e3ffb57e809515e3a4e74b875ff61b4876eec5f44c7a67","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.Computability.SourceCorpus.ToyProgram.Varianta7483ca1d5b7b960b2e3ffb57e809515e3a4e74b875ff61b4876eec5f44c7a67","mathematical_subject":"Computation.Computability","original_sha256":"a7483ca1d5b7b960b2e3ffb57e809515e3a4e74b875ff61b4876eec5f44c7a67","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Presentation/ExpressivenessExamples.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Presentation.Expressiveness

/-!
# Toy Presentation expressiveness examples

These examples route expressiveness through an explicit interpreter and witness.
They use harmless toy propositions such as `True`; they do not prove that raw
Presentation syntax owns Turing completeness or any theorem authority.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.Computability.ToyProgram.Varianta7483ca1d5b7b960b2e3ffb57e809515e3a4e74b875ff61b4876eec5f44c7a67

namespace Presentation
namespace ExpressivenessExamples

/-- A tiny toy program carried by Presentation syntax. -/
def toyProgram : PresentationProgram where
  expr := Expr.node (Expr.var 0) Expr.one
  programHash := 7

/-- Toy transition used only to demonstrate interpreter routing. -/
def toggleRun : Nat → Bool → Bool
  | 0, state => state
  | n + 1, state => toggleRun n (!state)

/-- Toy acceptance relation for the explicit Nat interpreter. -/
def toyAccepts (program : PresentationProgram) (input output : Nat) : Prop :=
  output = program.programHash + input

/-- Toy machine semantics: the interpreter is named explicitly. -/
def toyMachineSemantics : PresentationMachineSemantics where
  State := Bool
  Input := Nat
  Output := Nat
  step := fun state => !state
  run := toggleRun
  accepts := toyAccepts

/-- Toy witness: the simulation proposition is supplied by realization data. -/
def toyTuringCompletenessWitness : TuringCompletenessWitness where
  machineModelLabel := "toy-nat-adder-realization"
  encodingHash := 101
  simulationSound := toyAccepts toyProgram 5 12
  simulationSoundProof := rfl

/-- The toy acceptance fact is recovered through the witness. -/
theorem toy_simulation_routed_through_realization :
    toyAccepts toyProgram 5 12 :=
  presentation_with_realization_is_computationally_expressive
    toyMachineSemantics
    toyTuringCompletenessWitness

/-- The same syntax still owns no Turing-completeness authority by itself. -/
theorem toy_program_syntax_not_turing_completeness_authority :
    ¬ RawPresentationSyntaxOwnsTuringCompleteness toyProgram.expr :=
  raw_presentation_syntax_not_turing_completeness_authority toyProgram.expr

/-- The same syntax also does not own the interpreter. -/
theorem toy_program_syntax_not_machine_semantics_authority :
    ¬ RawPresentationSyntaxOwnsMachineSemantics
        toyProgram.expr
        toyMachineSemantics :=
  raw_presentation_syntax_not_machine_semantics_authority
    toyProgram.expr
    toyMachineSemantics

end ExpressivenessExamples
end Presentation
