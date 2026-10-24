# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DerivationSemantics.Variant38904b7e512edc3277c36c6108566bdeba560d5ef31ef3cf702f6f15694ebf48

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6b08a4465e706e692df0cdc89450745055189a2a` · SHA-256 `2dc4ec82839c902523a8bc536ad90debcdc124cd722ed951ff006de5ea7e60f1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TermVariableSupport.Variant019e626d351cc4005cbaaac0a13ca9c5041841eaf88769901689a3e186aea949","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"019e626d351cc4005cbaaac0a13ca9c5041841eaf88769901689a3e186aea949","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.TermVariableSupport.Variant019e626d351cc4005cbaaac0a13ca9c5041841eaf88769901689a3e186aea949","mathematical_subject":"Computation.DataStructures","original_sha256":"019e626d351cc4005cbaaac0a13ca9c5041841eaf88769901689a3e186aea949","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/type-theory-reconstruction/FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Model/DerivationSemantics.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.AssemblyFixtures

/-!
# Actual first-order support, substitution and derivation semantics

This is the existing binder-free, nullary/unary, single-sort Model language.
Support consists of variable indices and is distinct from occurrence ownership.
Restriction keeps indices fixed and needs every referenced variable; this is not
a dependent-context or de Bruijn strengthening theorem. Partial evaluation models
missing assignments exactly. The six-rule equational derivation semantics uses
generators valid for every bounded partial assignment, so intermediate endpoint
validity is not inferred from final endpoints. The concrete nonidentity two-state
Tag interpreter discharges that universal premise independently.

Human research direction and evaluation: grwtsk contributors.
Implementation assistance: Codex AI.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TermVariableSupport.Variant019e626d351cc4005cbaaac0a13ca9c5041841eaf88769901689a3e186aea949

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model

/-- The exact free variable indices required by a source term. -/
def Term.variableSupport : Term → Finset ℕ
  | .variable index => {index}
  | .nullary _ => ∅
  | .unary _ argument => argument.variableSupport

/-- Context restriction is justified by support, retaining the source variable indices. -/
theorem termValid_restrict {snapshot : Snapshot} {original restricted : ℕ} {term : Term}
    (valid : TermValid snapshot original term)
    (support : ∀ index ∈ term.variableSupport, index < restricted) :
    TermValid snapshot restricted term := by
  induction term with
  | «variable» index => exact support index (Finset.mem_singleton_self index)
  | nullary constructor => exact valid
  | unary constructor argument ih =>
    exact ⟨valid.1, valid.2.1, ih valid.2.2 support⟩

/-- Actual simultaneous substitution preserves declared typing when every required
image exists and is valid in the destination context. -/
theorem termValid_substitute {snapshot : Snapshot} {source destination : ℕ}
    {term : Term} {substitution : List Term}
    (valid : TermValid snapshot source term) (length : substitution.length = source)
    (images : ∀ image ∈ substitution, TermValid snapshot destination image) :
    TermValid snapshot destination (term.substitute substitution) := by
  induction term with
  | «variable» index =>
    have bounded : index < substitution.length := by simpa [TermValid, length] using valid
    simp only [Term.substitute, List.getElem?_eq_getElem bounded, Option.getD_some]
    exact images _ (List.getElem_mem bounded)
  | nullary constructor => exact valid
  | unary constructor argument ih =>
    exact ⟨valid.1, valid.2.1, ih valid.2.2⟩

/-- The repository's exact partial evaluator with a possibly missing value for each index. -/
def evaluatePartial (table : FiniteTable) (assignment : ℕ → Option ℕ) : Term → Option ℕ
  | .variable index => assignment index
  | .nullary constructor => tableOutput table constructor []
  | .unary constructor argument => do
    let input ← evaluatePartial table assignment argument
    tableOutput table constructor [input]

theorem evaluateTerm_eq_partial (table : FiniteTable) (assignment : List ℕ) (term : Term) :
    evaluateTerm table assignment term =
      evaluatePartial table (fun index => assignment[index]?) term := by
  induction term with
  | «variable» index => rfl
  | nullary constructor => rfl
  | unary constructor argument ih => simp only [evaluateTerm, evaluatePartial, ih]

/-- Overlapping supports are permitted; agreeing on the support preserves the whole readout. -/
theorem evaluatePartial_support (table : FiniteTable) (term : Term)
    (left right : ℕ → Option ℕ)
    (agree : ∀ index ∈ term.variableSupport, left index = right index) :
    evaluatePartial table left term = evaluatePartial table right term := by
  induction term with
  | «variable» index => exact agree index (Finset.mem_singleton_self index)
  | nullary constructor => rfl
  | unary constructor argument ih => simp only [evaluatePartial, ih agree]

/-- Missing substitution images preserve their original variables, matching `Term.substitute`. -/
def substitutionAssignment (table : FiniteTable) (assignment : ℕ → Option ℕ)
    (substitution : List Term) (index : ℕ) : Option ℕ :=
  match substitution[index]? with
  | none => assignment index
  | some image => evaluatePartial table assignment image

theorem evaluatePartial_substitute (table : FiniteTable) (assignment : ℕ → Option ℕ)
    (substitution : List Term) (term : Term) :
    evaluatePartial table assignment (term.substitute substitution) =
      evaluatePartial table (substitutionAssignment table assignment substitution) term := by
  induction term with
  | «variable» index =>
    cases image : substitution[index]? <;>
      simp only [Term.substitute, image, Option.getD_none, Option.getD_some,
        evaluatePartial, substitutionAssignment]
  | nullary constructor => rfl
  | unary constructor argument ih => simp only [Term.substitute, evaluatePartial, ih]

/-- A semantic assignment can be partial but cannot invent values outside the finite carrier. -/
def PartialAssignmentBounded (table : FiniteTable) (assignment : ℕ → Option ℕ) : Prop :=
  ∀ index value, assignment index = some value → value < table.cardinality

/-- Every defined lookup result stays in the actual finite carrier. -/
def TableOutputBounded (table : FiniteTable) : Prop :=
  ∀ constructor inputs value, tableOutput table constructor inputs = some value →
    value < table.cardinality

theorem tableOutput_bounded_of_valid {snapshot : Snapshot} {table : FiniteTable}
    {coverage : CoverageMode} (valid : TableValid snapshot table coverage) :
    TableOutputBounded table := by
  intro constructor inputs value output
  obtain ⟨row, found, rfl⟩ := Option.map_eq_some_iff.mp output
  exact (valid.2.2.2.2.2.2.2.1 row (List.mem_of_find?_eq_some found)).2.2.2

theorem evaluatePartial_bounded {table : FiniteTable} (outputs : TableOutputBounded table)
    {assignment : ℕ → Option ℕ} (bounded : PartialAssignmentBounded table assignment)
    (term : Term) : ∀ value, evaluatePartial table assignment term = some value →
      value < table.cardinality := by
  induction term with
  | «variable» index => exact bounded index
  | nullary constructor => exact outputs constructor []
  | unary constructor argument _ih =>
    intro value output
    cases evaluated : evaluatePartial table assignment argument with
    | none => simp [evaluatePartial, evaluated] at output
    | some input =>
      exact outputs constructor [input] value (by simpa [evaluatePartial, evaluated] using output)

theorem substitutionAssignment_bounded {table : FiniteTable} (outputs : TableOutputBounded table)
    {assignment : ℕ → Option ℕ} (bounded : PartialAssignmentBounded table assignment)
    (substitution : List Term) :
    PartialAssignmentBounded table (substitutionAssignment table assignment substitution) := by
  intro index value evaluated
  cases image : substitution[index]? with
  | none => exact bounded index value (by simpa [substitutionAssignment, image] using evaluated)
  | some term =>
    exact evaluatePartial_bounded outputs bounded term value
      (by simpa [substitutionAssignment, image] using evaluated)

/-- A total semantic contract on the source presentation, including partial assignments.
This must be proved for the actual interpretation; it is not supplied by source licensing. -/
def GeneratorsPartiallyInterpreted (declaration : FullModelDeclaration)
    (table : FiniteTable) : Prop :=
  ∀ generator ∈ declaration.generators, ∀ assignment,
    PartialAssignmentBounded table assignment →
    evaluatePartial table assignment generator.equation.left =
      evaluatePartial table assignment generator.equation.right

/-- Induction through all actual equality rules, including arbitrary simultaneous substitution. -/
theorem representationDerivable_evaluatePartial {declaration : FullModelDeclaration}
    {table : FiniteTable} (outputs : TableOutputBounded table)
    (generators : GeneratorsPartiallyInterpreted declaration table)
    {left right : Term} (derivation : RepresentationDerivable declaration left right) :
    ∀ assignment, PartialAssignmentBounded table assignment →
      evaluatePartial table assignment left = evaluatePartial table assignment right := by
  induction derivation with
  | generator listed =>
    exact generators _ (List.mem_of_getElem? listed)
  | reflexivity term => exact fun _ _ => rfl
  | symmetry prior ih => exact fun assignment bounded => (ih assignment bounded).symm
  | transitivity first second ihFirst ihSecond =>
    exact fun assignment bounded => (ihFirst assignment bounded).trans (ihSecond assignment bounded)
  | constructor constructor prior ih =>
    intro assignment bounded
    simp only [evaluatePartial, ih assignment bounded]
  | substitution substitution prior ih =>
    intro assignment bounded
    rw [evaluatePartial_substitute, evaluatePartial_substitute]
    exact ih _ (substitutionAssignment_bounded outputs bounded substitution)

/-- The proof applies directly to the existing list-assignment consumer. -/
theorem representationDerivable_evaluateTerm {declaration : FullModelDeclaration}
    {table : FiniteTable} (outputs : TableOutputBounded table)
    (generators : GeneratorsPartiallyInterpreted declaration table)
    {left right : Term} (derivation : RepresentationDerivable declaration left right)
    (assignment : List ℕ) (bounded : ∀ value ∈ assignment, value < table.cardinality) :
    evaluateTerm table assignment left = evaluateTerm table assignment right := by
  rw [evaluateTerm_eq_partial, evaluateTerm_eq_partial]
  apply representationDerivable_evaluatePartial outputs generators derivation
  intro index value found
  exact bounded value (List.mem_of_getElem? found)

/-- Checked proof-bearing equations consume the derivation semantics without a new
catalog equality test or a replacement source presentation. -/
theorem checkedEquation_evaluateTerm {declaration : FullModelDeclaration}
    {table : FiniteTable} (outputs : TableOutputBounded table)
    (generators : GeneratorsPartiallyInterpreted declaration table)
    (equation : CheckedEquation declaration) (assignment : List ℕ)
    (bounded : ∀ value ∈ assignment, value < table.cardinality) :
    evaluateTerm table assignment equation.result.equation.left =
      evaluateTerm table assignment equation.result.equation.right :=
  representationDerivable_evaluateTerm outputs generators equation.result.proof assignment bounded

namespace DerivationSemanticsFixtures

open FullFixtures

theorem interpreter_outputs_bounded : TableOutputBounded interpreterTable :=
  tableOutput_bounded_of_valid (by decide : TableValid snapshot interpreterTable .total)

/-- This actual Tag interpretation validates its generator on all bounded partial assignments. -/
theorem actual_generators_partially_interpreted :
    GeneratorsPartiallyInterpreted declaration interpreterTable := by
  intro generator member assignment bounded
  have generatorExact : generator = AssemblyFixtures.generator := by
    simpa [declaration, AssemblyFixtures.generator] using member
  subst generator
  cases value : assignment 0 with
  | none => simp [AssemblyFixtures.generator, evaluatePartial, value]
  | some n =>
    have hn : n < 2 := bounded 0 n value
    have alternatives : n = 0 ∨ n = 1 := by omega
    rcases alternatives with rfl | rfl <;>
      simp [AssemblyFixtures.generator, evaluatePartial, value, tableOutput, interpreterTable,
        tableRowKey]

/-- Apply the induction theorem to the real licensed rule after the actual substitution. -/
theorem actual_substituted_derivation_sound (assignment : List ℕ)
    (bounded : ∀ value ∈ assignment, value < interpreterTable.cardinality) :
    evaluateTerm interpreterTable assignment AssemblyFixtures.tagTagTerm =
      evaluateTerm interpreterTable assignment AssemblyFixtures.atomTerm := by
  apply representationDerivable_evaluateTerm interpreter_outputs_bounded
    actual_generators_partially_interpreted
    (RepresentationDerivable.substitution [AssemblyFixtures.atomTerm]
      (RepresentationDerivable.generator (by rfl : declaration.generators[0]? =
        some AssemblyFixtures.generator))) assignment bounded

/-- The existing verifier returns the exact supported substituted proof. -/
def actualCheckedEquation : CheckedEquation declaration :=
  (verifyEquation declaration AssemblyFixtures.instantiatedGenerator).get (by decide)

/-- Bind semantic induction to the actual proof-bearing checker output and its endpoints. -/
theorem actual_verified_equation_semantics (assignment : List ℕ)
    (bounded : ∀ value ∈ assignment, value < interpreterTable.cardinality) :
    evaluateTerm interpreterTable assignment AssemblyFixtures.tagTagTerm =
      evaluateTerm interpreterTable assignment AssemblyFixtures.atomTerm := by
  have semantics := checkedEquation_evaluateTerm interpreter_outputs_bounded
    actual_generators_partially_interpreted actualCheckedEquation assignment bounded
  have endpoints : actualCheckedEquation.result.equation =
      ⟨AssemblyFixtures.tagTagTerm, AssemblyFixtures.atomTerm⟩ := by decide
  rw [endpoints] at semantics
  exact semantics

/-- A ground instantiated term restricts to no variable declarations without changing readout. -/
theorem actual_ground_restriction :
    TermValid snapshot 0 AssemblyFixtures.tagTagTerm ∧
    evaluateTerm interpreterTable [1] AssemblyFixtures.tagTagTerm =
      evaluateTerm interpreterTable [] AssemblyFixtures.tagTagTerm := by
  constructor
  · exact termValid_restrict (by decide : TermValid snapshot 1 AssemblyFixtures.tagTagTerm)
      (by simp [AssemblyFixtures.tagTagTerm, AssemblyFixtures.tagTerm,
        AssemblyFixtures.atomTerm, Term.variableSupport])
  · rw [evaluateTerm_eq_partial, evaluateTerm_eq_partial]
    apply evaluatePartial_support
    simp [AssemblyFixtures.tagTagTerm, AssemblyFixtures.tagTerm,
      AssemblyFixtures.atomTerm, Term.variableSupport]

/-- Removing a needed declaration destroys validity in the actual variable convention. -/
theorem missing_dependency_invalid :
    TermValid snapshot 1 (.variable 0) ∧ ¬ TermValid snapshot 0 (.variable 0) := by decide

/-- The admitted substitution images retain the destination typing support. -/
theorem actual_substitution_typed :
    TermValid snapshot 0
      ((Term.unary ⟨1⟩ (.unary ⟨1⟩ (.variable 0))).substitute [AssemblyFixtures.atomTerm]) := by
  apply termValid_substitute (source := 1)
  · decide
  · rfl
  · intro image member
    simp only [List.mem_singleton] at member
    subst image
    decide

/-- A real single-sort Model table with one carrier value. -/
def singletonTable : FiniteTable := ⟨1, [⟨⟨0⟩, [], 0⟩, ⟨⟨1⟩, [0], 0⟩]⟩

/-- Over the singleton carrier, every total assignment validates this erasing equation. -/
def erasingGenerator : LicensedGenerator :=
  ⟨0, 0, ⟨.variable 0, AssemblyFixtures.atomTerm⟩⟩

/-- An untrusted modified presentation for the obstruction; no source license or
whole-profile admission is asserted for its replacement generator. -/
def erasingDeclaration : FullModelDeclaration :=
  { declaration with interpreter := ⟨1, singletonTable⟩, generators := [erasingGenerator] }

theorem erasing_generator_valid_on_all_total_assignments :
    ∀ assignment ∈ finiteWords (List.range singletonTable.cardinality)
      erasingDeclaration.variableCount,
      ∃ value ∈ List.range singletonTable.cardinality,
        evaluateTerm singletonTable assignment erasingGenerator.equation.left = some value ∧
        evaluateTerm singletonTable assignment erasingGenerator.equation.right = some value := by
  decide

/-- Total-assignment generator checks alone do not make unrestricted untyped
substitutions sound: an undeclared constructor evaluates to missing data. -/
theorem untyped_substitution_can_break_semantics :
    RepresentationDerivable erasingDeclaration (.nullary ⟨2⟩) AssemblyFixtures.atomTerm ∧
    evaluateTerm singletonTable [] (.nullary ⟨2⟩) ≠
      evaluateTerm singletonTable [] AssemblyFixtures.atomTerm := by
  constructor
  · exact RepresentationDerivable.substitution [.nullary ⟨2⟩]
      (RepresentationDerivable.generator (by rfl : erasingDeclaration.generators[0]? =
        some erasingGenerator))
  · decide

/-- The actual finite checker rejects that invalid substitution image. -/
theorem untyped_substitution_rejected :
    (verifyEquation erasingDeclaration (.substitution [.nullary ⟨2⟩] (.generator 0))).isSome =
      false := by decide

end DerivationSemanticsFixtures

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model
```
