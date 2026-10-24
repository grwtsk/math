# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Descent.Variant4174d2565e4d60d702771254a534124f78c59736ef75cc76ded421567d43869c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e2a755b73bdc67b0b50e4a1f29e6b7f560756cde` · SHA-256 `64ef40f24b32de07509a2e2658f0038074e25ba201d796806dc8fbd826f233b7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CheckedDescent.Variant8eb13adbaa828b3f492b38be576b45139545b3c31a4503e1d0e1d1f74f3d5a53","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8eb13adbaa828b3f492b38be576b45139545b3c31a4503e1d0e1d1f74f3d5a53","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.CheckedDescent.Variant8eb13adbaa828b3f492b38be576b45139545b3c31a4503e1d0e1d1f74f3d5a53","mathematical_subject":"Computation.DataStructures","original_sha256":"8eb13adbaa828b3f492b38be576b45139545b3c31a4503e1d0e1d1f74f3d5a53","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Model/Descent.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.Congruence

/-!
# K9: exhaustive finite interpretation and catalog quotient descent

Every generator is checked on every assignment of the declared finite carrier.
The catalog relation receives a separate equality check. The resulting quotient
is exactly the finite catalog setoid, not a quotient enumeration of the infinite
grammar. No approximate matrix, external proof tool or metadata hash is a premise.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CheckedDescent.Variant8eb13adbaa828b3f492b38be576b45139545b3c31a4503e1d0e1d1f74f3d5a53

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model

/-- Both generator sides evaluate to the same in-range value under this exact assignment. -/
def GeneratorInterpreted (full : CheckedFullDeclaration) (generator : LicensedGenerator)
    (assignment : List ℕ) : Prop :=
  ∃ value ∈ List.range full.value.interpreter.table.cardinality,
    evaluateTerm full.value.interpreter.table assignment generator.equation.left = some value ∧
    evaluateTerm full.value.interpreter.table assignment generator.equation.right = some value

instance (full : CheckedFullDeclaration) (generator : LicensedGenerator)
    (assignment : List ℕ) : Decidable (GeneratorInterpreted full generator assignment) := by
  unfold GeneratorInterpreted
  infer_instance

/-- Check total interpretation, all carrier assignments, defined catalog values and
relation invariance.
The result concerns only this declared finite catalog and interpretation. -/
def DescentValid (full : CheckedFullDeclaration) (candidate : CongruenceCandidate) : Prop :=
  full.value.interpreter.version = 1 ∧
  TableValid full.snapshot.value full.value.interpreter.table .total ∧
  (∀ generator ∈ full.value.generators,
    ∀ assignment ∈ finiteWords (List.range full.value.interpreter.table.cardinality)
      full.value.variableCount, GeneratorInterpreted full generator assignment) ∧
  (∀ index ∈ List.range full.value.catalog.length,
    ∃ value ∈ List.range full.value.interpreter.table.cardinality,
      evaluateTerm full.value.interpreter.table [] (catalogTermAt full.value index) = some value) ∧
  (∀ pair ∈ relationPairs candidate,
    evaluateTerm full.value.interpreter.table [] (catalogTermAt full.value pair.1) =
      evaluateTerm full.value.interpreter.table [] (catalogTermAt full.value pair.2)) ∧
  (full.value.interpreter.table.cardinality + 1) ^ full.value.variableCount *
    (full.value.generators.length + full.value.catalog.length + candidate.entries.length + 1) *
    (full.snapshot.value.limits.maxNodes + 1) *
    (full.value.interpreter.table.rows.length + 1) ≤ full.snapshot.value.limits.maxWork

instance (full : CheckedFullDeclaration) (candidate : CongruenceCandidate) :
    Decidable (DescentValid full candidate) := by
  unfold DescentValid
  infer_instance

/-- Decide the finite descent predicate; the issuing API still requires checked congruence. -/
def checkDescent (full : CheckedFullDeclaration) (candidate : CongruenceCandidate) : Bool :=
  decide (DescentValid full candidate)

theorem checkDescent_sound (full : CheckedFullDeclaration) (candidate : CongruenceCandidate)
    (accepted : checkDescent full candidate = true) : DescentValid full candidate := by
  simpa [checkDescent] using accepted

/-- Proof-bearing descent token indexed by the exact checked congruence and its predecessors.
It intentionally lives in `Type` so the executable verifier can return it in `Option`. -/
@[nolint structureInType]
structure CheckedDescent (full : CheckedFullDeclaration) (algebra : CheckedRoleAlgebra full)
    (grammar : CheckedGrammar full algebra)
    (congruence : CheckedCongruence full algebra grammar) : Type where
  /-- The exhaustive finite descent predicate for the exact predecessor relation. -/
  valid : DescentValid full congruence.candidate

/-- Return a descent token only after exhaustive finite interpretation checks pass. -/
def verifyDescent (full : CheckedFullDeclaration) (algebra : CheckedRoleAlgebra full)
    (grammar : CheckedGrammar full algebra)
    (congruence : CheckedCongruence full algebra grammar) :
    Option (CheckedDescent full algebra grammar congruence) :=
  if valid : DescentValid full congruence.candidate then some ⟨valid⟩ else none

theorem checkedDescent_sound (full : CheckedFullDeclaration)
    (algebra : CheckedRoleAlgebra full) (grammar : CheckedGrammar full algebra)
    (congruence : CheckedCongruence full algebra grammar)
    (descent : CheckedDescent full algebra grammar congruence) :
    DescentValid full congruence.candidate := descent.valid

/-- Completeness concerns all carrier assignments, not merely tested examples. -/
theorem checkedDescent_generator_all_assignments (full : CheckedFullDeclaration)
    (algebra : CheckedRoleAlgebra full) (grammar : CheckedGrammar full algebra)
    (congruence : CheckedCongruence full algebra grammar)
    (descent : CheckedDescent full algebra grammar congruence)
    (generator : LicensedGenerator) (member : generator ∈ full.value.generators)
    (assignment : List ℕ) (length : assignment.length = full.value.variableCount)
    (bounded : ∀ value ∈ assignment, value < full.value.interpreter.table.cardinality) :
    GeneratorInterpreted full generator assignment := by
  apply descent.valid.2.2.1 generator member assignment
  exact (finiteWords_complete _ _ _).mpr ⟨length, by simpa using bounded⟩

theorem checkedDescent_respects_relation (full : CheckedFullDeclaration)
    (algebra : CheckedRoleAlgebra full) (grammar : CheckedGrammar full algebra)
    (congruence : CheckedCongruence full algebra grammar)
    (descent : CheckedDescent full algebra grammar congruence)
    (left right : ℕ) (related : (left, right) ∈ relationPairs congruence.candidate) :
    evaluateTerm full.value.interpreter.table [] (catalogTermAt full.value left) =
      evaluateTerm full.value.interpreter.table [] (catalogTermAt full.value right) :=
  descent.valid.2.2.2.2.1 (left, right) related

/-- The verified equivalence relation on catalog indices, not on the entire recursive grammar. -/
def catalogSetoid (full : CheckedFullDeclaration) (algebra : CheckedRoleAlgebra full)
    (grammar : CheckedGrammar full algebra)
    (congruence : CheckedCongruence full algebra grammar) :
    Setoid (Fin full.value.catalog.length) :=
  { r := fun left right => (left.val, right.val) ∈ relationPairs congruence.candidate
    iseqv := by
      obtain ⟨_, _, _, refl, symm, trans, _⟩ := congruence.valid.1
      refine ⟨?_, ?_, ?_⟩
      · intro index
        exact refl index.val (List.mem_range.mpr index.isLt)
      · intro left right related
        exact symm (left.val, right.val) related
      · intro left middle right first second
        exact trans (left.val, middle.val) first (middle.val, right.val) second rfl }

/-- A quotient consumer requires the exact checked descent operand. -/
def evaluateQuotient (full : CheckedFullDeclaration) (algebra : CheckedRoleAlgebra full)
    (grammar : CheckedGrammar full algebra)
    (congruence : CheckedCongruence full algebra grammar)
    (descent : CheckedDescent full algebra grammar congruence) :
    Quotient (catalogSetoid full algebra grammar congruence) → Option ℕ :=
  Quotient.lift (fun index =>
    evaluateTerm full.value.interpreter.table [] (catalogTermAt full.value index.val))
    (fun _ _ related => checkedDescent_respects_relation full algebra grammar
      congruence descent _ _ related)

theorem evaluateQuotient_well_defined (full : CheckedFullDeclaration)
    (algebra : CheckedRoleAlgebra full) (grammar : CheckedGrammar full algebra)
    (congruence : CheckedCongruence full algebra grammar)
    (descent : CheckedDescent full algebra grammar congruence)
    (index : Fin full.value.catalog.length) :
    evaluateQuotient full algebra grammar congruence descent
      (Quotient.mk (catalogSetoid full algebra grammar congruence) index) =
      evaluateTerm full.value.interpreter.table [] (catalogTermAt full.value index.val) := rfl

/-- The full conjunction of actual supported K1--K9 stage claims for one exact declaration. -/
def FullModelStages (full : CheckedFullDeclaration) (candidate : CongruenceCandidate) : Prop :=
  SnapshotValid full.snapshot.value ∧ SyntaxValid full.snapshot full.tree.certificate ∧
  LedgerValid full.snapshot full.tree full.ledger.certificate ∧ FullStructure full.value ∧
  SingletonCriticalValid full.value ∧ InvolutionValid full.value ∧
  RoleAlgebraValid full ∧ RoleRunValid full ∧ RoleAccepted full ∧ GrammarValid full ∧
  CongruenceValid full candidate ∧ DescentValid full candidate

/-- All branches refer to the same dependent full declaration and exact predecessors. -/
theorem assemble_model_sound (full : CheckedFullDeclaration)
    (algebra : CheckedRoleAlgebra full) (run : CheckedRoleRun full algebra)
    (accepted : CheckedAcceptedRoleRun full algebra run) (grammar : CheckedGrammar full algebra)
    (congruence : CheckedCongruence full algebra grammar)
    (descent : CheckedDescent full algebra grammar congruence) :
    FullModelStages full congruence.candidate :=
  ⟨full.snapshot.valid, full.tree.valid, full.ledger.valid, full.structural,
    algebra.critical.valid, algebra.involution.valid, algebra.valid, run.valid, accepted.accepted,
    grammar.valid, congruence.valid, descent.valid⟩

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model
```
