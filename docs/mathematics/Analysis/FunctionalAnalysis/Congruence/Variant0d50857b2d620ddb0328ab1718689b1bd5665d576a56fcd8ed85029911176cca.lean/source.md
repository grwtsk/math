# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Congruence.Variant0d50857b2d620ddb0328ab1718689b1bd5665d576a56fcd8ed85029911176cca

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `250cc74c149b13891cecb02da9adec4d9f19a817` · SHA-256 `0d50857b2d620ddb0328ab1718689b1bd5665d576a56fcd8ed85029911176cca`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.RolesGrammar

/-!
# K8: a licensed presentation and a finite catalog congruence

Profile 2 binds the entire declaration before checking. Generator equations are
explicit conditional presentation axioms, not claims of literal syntax identity.
The checker produces proofs in the listed equality rules. Its finite relation is
only on the declared catalog of K2-checked ground terms. It proves neither a
decision procedure nor completeness for the generally infinite term grammar.
The full declaration requires this catalog to contain every unary subterm.
Generator closure below exhausts the declared catalog-valued substitutions;
it does not enumerate arbitrary terms or claim unrestricted equality closure.

Derivations are finite Lean inductive values. Semantic node/work quotas below
bound this reference checker; they are not a native hostile-byte parser or ABI.
-/

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model

/-- Equality derivable from this exact conditional presentation by the six listed rules. -/
inductive RepresentationDerivable (declaration : FullModelDeclaration) : Term → Term → Prop
  | generator {index : ℕ} {entry : LicensedGenerator}
      (listed : declaration.generators[index]? = some entry) :
      RepresentationDerivable declaration entry.equation.left entry.equation.right
  | reflexivity (term : Term) : RepresentationDerivable declaration term term
  | symmetry {left right : Term} : RepresentationDerivable declaration left right →
      RepresentationDerivable declaration right left
  | transitivity {left middle right : Term} :
      RepresentationDerivable declaration left middle →
      RepresentationDerivable declaration middle right →
      RepresentationDerivable declaration left right
  | constructor {left right : Term} (constructor : ConstructorId) :
      RepresentationDerivable declaration left right →
      RepresentationDerivable declaration (.unary constructor left) (.unary constructor right)
  | substitution {left right : Term} (substitution : List Term) :
      RepresentationDerivable declaration left right →
      RepresentationDerivable declaration
        (left.substitute substitution) (right.substitute substitution)

/-- Role equality is deliberately a different proposition and cannot license K8. -/
structure RoleEquivalence (declaration : FullModelDeclaration) (left right : ℕ) : Prop where
  leftBound : left < declaration.roles.table.cardinality
  rightBound : right < declaration.roles.table.cardinality
  sameRole : left = right

/-- Untrusted finite proof syntax; its constructors do not themselves establish equality. -/
inductive DerivationCandidate where
  | generator (index : ℕ)
  | reflexivity (term : Term)
  | symmetry (prior : DerivationCandidate)
  | transitivity (first second : DerivationCandidate)
  | constructor (constructor : ConstructorId) (prior : DerivationCandidate)
  | substitution (terms : List Term) (prior : DerivationCandidate)
  deriving DecidableEq, Repr, Inhabited

/-- Declared structural work, including substituted term sizes; not a runtime measurement. -/
def DerivationCandidate.work : DerivationCandidate → ℕ
  | .generator _ => 1
  | .reflexivity term => 1 + term.size
  | .symmetry prior => 1 + prior.work
  | .transitivity first second => 1 + first.work + second.work
  | .constructor _ prior => 1 + prior.work
  | .substitution terms prior => 1 + prior.work * (1 + (terms.map Term.size).sum)

/-- An equation paired with a derivation in the unchanged source presentation. -/
structure DerivedEquation (declaration : FullModelDeclaration) where
  /-- The concrete two-sided term equation produced by the derivation. -/
  equation : Equation
  /-- A derivation of exactly those endpoints in this source presentation. -/
  proof : RepresentationDerivable declaration equation.left equation.right

/-- Both endpoints use the declared variables and signature and obey the term-size quota. -/
def EquationValid (declaration : FullModelDeclaration) (equation : Equation) : Prop :=
  TermValid declaration.coreSnapshot declaration.variableCount equation.left ∧
  TermValid declaration.coreSnapshot declaration.variableCount equation.right ∧
  equation.left.size ≤ declaration.coreSnapshot.limits.maxNodes ∧
  equation.right.size ≤ declaration.coreSnapshot.limits.maxNodes

instance (declaration : FullModelDeclaration) (equation : Equation) :
    Decidable (EquationValid declaration equation) := by
  unfold EquationValid
  infer_instance

/-- Retain a proved equation only after checking both intermediate endpoint types and sizes. -/
def admitDerivedEquation (declaration : FullModelDeclaration)
    (result : DerivedEquation declaration) : Option (DerivedEquation declaration) :=
  if EquationValid declaration result.equation then some result else none

/-- An image for every declared variable, with each image well typed and size bounded. -/
def SubstitutionValid (declaration : FullModelDeclaration) (terms : List Term) : Prop :=
  terms.length = declaration.variableCount ∧
  ∀ term ∈ terms, TermValid declaration.coreSnapshot declaration.variableCount term ∧
    term.size ≤ declaration.coreSnapshot.limits.maxNodes

instance (declaration : FullModelDeclaration) (terms : List Term) :
    Decidable (SubstitutionValid declaration terms) := by
  unfold SubstitutionValid
  infer_instance

/-- Each successful branch constructs a proof; no reflected search boolean is a premise. -/
def deriveEquation (declaration : FullModelDeclaration) :
    DerivationCandidate → Option (DerivedEquation declaration)
  | .generator index =>
    match listed : declaration.generators[index]? with
    | none => none
    | some entry => admitDerivedEquation declaration ⟨entry.equation, .generator listed⟩
  | .reflexivity term => admitDerivedEquation declaration ⟨⟨term, term⟩, .reflexivity term⟩
  | .symmetry prior => do
    let result ← deriveEquation declaration prior
    admitDerivedEquation declaration
      ⟨⟨result.equation.right, result.equation.left⟩, .symmetry result.proof⟩
  | .transitivity first second => do
    let left ← deriveEquation declaration first
    let right ← deriveEquation declaration second
    if middle : left.equation.right = right.equation.left then
      admitDerivedEquation declaration ⟨⟨left.equation.left, right.equation.right⟩,
        .transitivity left.proof (middle ▸ right.proof)⟩
    else none
  | .constructor constructor prior => do
    let result ← deriveEquation declaration prior
    admitDerivedEquation declaration
      ⟨⟨.unary constructor result.equation.left, .unary constructor result.equation.right⟩,
      .constructor constructor result.proof⟩
  | .substitution terms prior => do
    if ¬SubstitutionValid declaration terms then none else do
    let result ← deriveEquation declaration prior
    admitDerivedEquation declaration
      ⟨⟨result.equation.left.substitute terms, result.equation.right.substitute terms⟩,
      .substitution terms result.proof⟩

/-- A derived equation whose concrete endpoints also pass the finite type and size checks. -/
structure CheckedEquation (declaration : FullModelDeclaration) where
  /-- The equation and source-scoped derivation returned by proof checking. -/
  result : DerivedEquation declaration
  /-- Both endpoint terms satisfy the finite declared type and size policy. -/
  valid : EquationValid declaration result.equation

/-- Check the declared proof-work quota, then construct a typed proof-bearing equation. -/
def verifyEquation (declaration : FullModelDeclaration) (candidate : DerivationCandidate) :
    Option (CheckedEquation declaration) := do
  if candidate.work > declaration.coreSnapshot.limits.maxWork then none else do
    let result ← deriveEquation declaration candidate
    if valid : EquationValid declaration result.equation then pure ⟨result, valid⟩ else none

theorem verifiedEquation_sound (declaration : FullModelDeclaration)
    (equation : CheckedEquation declaration) :
    RepresentationDerivable declaration equation.result.equation.left
      equation.result.equation.right := equation.result.proof

theorem verifiedEquation_well_typed (declaration : FullModelDeclaration)
    (equation : CheckedEquation declaration) : EquationValid declaration equation.result.equation :=
  equation.valid

/-- Look up the exact constructor/input key; absence stays `none`, never a default output. -/
def tableOutput (table : FiniteTable) (constructor : ConstructorId)
    (inputs : List ℕ) : Option ℕ :=
  (table.rows.find? fun row => decide (tableRowKey row = (constructor, inputs))).map TableRow.output

/-- Evaluate the finite term using the supplied assignment and exact partial table lookups. -/
def evaluateTerm (table : FiniteTable) (assignment : List ℕ) : Term → Option ℕ
  | .variable index => assignment[index]?
  | .nullary constructor => tableOutput table constructor []
  | .unary constructor argument => do
    let input ← evaluateTerm table assignment argument
    tableOutput table constructor [input]

/-- A proposed catalog edge together with the derivation required to justify its endpoints. -/
structure RelationEntry where
  /-- Zero-based index of the proposed left endpoint in the finite catalog. -/
  left : ℕ
  /-- Zero-based index of the proposed right endpoint in the finite catalog. -/
  right : ℕ
  /-- The untrusted proof syntax that must establish this exact endpoint pair. -/
  derivation : DerivationCandidate
  deriving DecidableEq, Repr, Inhabited

/-- A proposed finite catalog relation bound to the entire source declaration. -/
structure CongruenceCandidate where
  /-- The complete immutable source declaration to which all edges refer. -/
  declaration : FullModelDeclaration
  /-- Canonically ordered distinct relation edges and their proposed proofs. -/
  entries : List RelationEntry
  deriving DecidableEq, Repr, Inhabited

/-- Ordered endpoint pairs of the candidate; proofs are checked separately for every entry. -/
def relationPairs (candidate : CongruenceCandidate) : List (ℕ × ℕ) :=
  candidate.entries.map fun entry => (entry.left, entry.right)

/-- The exhaustive ordered square of the finite catalog index set. -/
def catalogPairUniverse (declaration : FullModelDeclaration) : List (ℕ × ℕ) :=
  (List.range declaration.catalog.length).flatMap fun left =>
    (List.range declaration.catalog.length).map fun right => (left, right)

/-- Retrieve a catalog term; admission separately rejects out-of-range indices before use. -/
def catalogTermAt (declaration : FullModelDeclaration) (index : ℕ) : Term :=
  ((catalogTerms declaration)[index]?).getD default

/-- Exhaustive ordered words, used for both substitutions and interpreter assignments. -/
def finiteWords {α : Type} (alphabet : List α) : ℕ → List (List α)
  | 0 => [[]]
  | length + 1 => alphabet.flatMap fun first =>
    (finiteWords alphabet length).map fun rest => first :: rest

theorem finiteWords_complete {α : Type} (alphabet : List α) (length : ℕ) (word : List α) :
    word ∈ finiteWords alphabet length ↔
      word.length = length ∧ ∀ letter ∈ word, letter ∈ alphabet := by
  induction length generalizing word with
  | zero => cases word <;> simp [finiteWords]
  | succ length ih =>
    cases word with
    | nil => simp [finiteWords]
    | cons first rest => simp [finiteWords, ih, and_assoc, and_left_comm]

/-- Exact scope, equivalence and catalog-valued closure checks with accepted catalog roles.
This is not completeness for the unrestricted grammar or its full equational theory. -/
def RelationStructure (full : CheckedFullDeclaration) (candidate : CongruenceCandidate) : Prop :=
  candidate.declaration = full.value ∧
  (relationPairs candidate).Nodup ∧
  (relationPairs candidate).Sublist (catalogPairUniverse full.value) ∧
  (∀ index ∈ List.range full.value.catalog.length, (index, index) ∈ relationPairs candidate) ∧
  (∀ pair ∈ relationPairs candidate, (pair.2, pair.1) ∈ relationPairs candidate) ∧
  (∀ first ∈ relationPairs candidate, ∀ second ∈ relationPairs candidate,
    first.2 = second.1 → (first.1, second.2) ∈ relationPairs candidate) ∧
  (∀ pair ∈ relationPairs candidate,
    ∀ constructor ∈ full.snapshot.value.constructors,
    ∀ lifted ∈ catalogPairUniverse full.value,
    catalogTermAt full.value lifted.1 = .unary constructor.id (catalogTermAt full.value pair.1) →
    catalogTermAt full.value lifted.2 = .unary constructor.id (catalogTermAt full.value pair.2) →
    lifted ∈ relationPairs candidate) ∧
  (∀ generator ∈ full.value.generators,
    ∀ substitution ∈ finiteWords (catalogTerms full.value) full.value.variableCount,
    ∀ pair ∈ catalogPairUniverse full.value,
    catalogTermAt full.value pair.1 = generator.equation.left.substitute substitution →
    catalogTermAt full.value pair.2 = generator.equation.right.substitute substitution →
    pair ∈ relationPairs candidate) ∧
  (∀ term ∈ catalogTerms full.value,
    ∃ role ∈ full.value.roles.accepting, evaluateTerm full.value.roles.table [] term = some role) ∧
  (candidate.entries.map fun entry => entry.derivation.work).sum +
    (full.value.catalog.length + 1) ^ (4 + full.value.variableCount) *
      (full.value.roles.table.rows.length + full.value.generators.length + 1) ≤
      full.snapshot.value.limits.maxWork

instance (full : CheckedFullDeclaration) (candidate : CongruenceCandidate) :
    Decidable (RelationStructure full candidate) := by
  unfold RelationStructure
  infer_instance

/-- The exact supplied derivation must pass, with these exact catalog endpoints. -/
def EntryProved (declaration : FullModelDeclaration) (entry : RelationEntry) : Prop :=
  ∃ equation : CheckedEquation declaration,
    verifyEquation declaration entry.derivation = some equation ∧
    equation.result.equation =
      ⟨catalogTermAt declaration entry.left, catalogTermAt declaration entry.right⟩

/-- Check one exact derivation and require its equation to match the proposed catalog endpoints. -/
def verifyEntry (declaration : FullModelDeclaration) (entry : RelationEntry) :
    Option (PLift (EntryProved declaration entry)) :=
  match evaluated : verifyEquation declaration entry.derivation with
  | none => none
  | some equation =>
    if endpoints : equation.result.equation =
        ⟨catalogTermAt declaration entry.left, catalogTermAt declaration entry.right⟩ then
      some ⟨⟨equation, evaluated, endpoints⟩⟩
    else none

theorem entryProved_derivable (declaration : FullModelDeclaration) (entry : RelationEntry)
    (proved : EntryProved declaration entry) :
    RepresentationDerivable declaration (catalogTermAt declaration entry.left)
      (catalogTermAt declaration entry.right) := by
  obtain ⟨equation, _, endpoints⟩ := proved
  simpa only [endpoints] using equation.result.proof

/-- Check every listed edge and retain a proof for each; no entry is silently skipped. -/
def verifyEntries (declaration : FullModelDeclaration) : (entries : List RelationEntry) →
    Option (PLift (∀ entry ∈ entries, EntryProved declaration entry))
  | [] => some ⟨by simp⟩
  | entry :: rest => do
    let first ← verifyEntry declaration entry
    let remaining ← verifyEntries declaration rest
    pure ⟨by simpa only [List.mem_cons, forall_eq_or_imp] using
      And.intro first.down remaining.down⟩

/-- Finite relation structure together with checked derivation evidence for every edge. -/
def CongruenceValid (full : CheckedFullDeclaration) (candidate : CongruenceCandidate) : Prop :=
  RelationStructure full candidate ∧ ∀ entry ∈ candidate.entries, EntryProved full.value entry

/-- An admitted finite catalog relation with the exact full declaration and grammar operands. -/
structure CheckedCongruence (full : CheckedFullDeclaration)
    (algebra : CheckedRoleAlgebra full) (grammar : CheckedGrammar full algebra) where
  /-- The admitted finite catalog relation and its complete source declaration. -/
  candidate : CongruenceCandidate
  /-- Structure and independent edge-proof evidence for the admitted candidate. -/
  valid : CongruenceValid full candidate

/-- Admit the finite relation only after its structure and all supplied edge proofs pass. -/
def verifyCongruence (full : CheckedFullDeclaration) (algebra : CheckedRoleAlgebra full)
    (grammar : CheckedGrammar full algebra) (candidate : CongruenceCandidate) :
    Option (CheckedCongruence full algebra grammar) := do
  if structureValid : RelationStructure full candidate then
    let entries ← verifyEntries full.value candidate.entries
    pure ⟨candidate, structureValid, entries.down⟩
  else none

theorem checkedCongruence_sound (full : CheckedFullDeclaration)
    (algebra : CheckedRoleAlgebra full) (grammar : CheckedGrammar full algebra)
    (congruence : CheckedCongruence full algebra grammar) :
    CongruenceValid full congruence.candidate := congruence.valid

theorem checkedCongruence_pair_derivable (full : CheckedFullDeclaration)
    (algebra : CheckedRoleAlgebra full) (grammar : CheckedGrammar full algebra)
    (congruence : CheckedCongruence full algebra grammar)
    (entry : RelationEntry) (member : entry ∈ congruence.candidate.entries) :
    RepresentationDerivable full.value (catalogTermAt full.value entry.left)
      (catalogTermAt full.value entry.right) :=
  entryProved_derivable full.value entry (congruence.valid.2 entry member)

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model
```
