# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FullDeclaration.Variantbdd41699d5c00e2df19a83f0f2a9a0809def1b4bb007a265b75c12f48f8fa531

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fadc07f6988723ca51c6ec11e9a7f456a916d6af` · SHA-256 `bdd41699d5c00e2df19a83f0f2a9a0809def1b4bb007a265b75c12f48f8fa531`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.Ledger

/-!
# Full finite model declaration, profile 2

This is a distinct whole-bundle profile. The earlier K1--K3 snapshot is an exact
checked projection, not retroactively a complete higher-stage snapshot. Every
candidate role table, optional grammar, quotient presentation, interpreter,
critical profile, signed permutation and finite term domain is fixed here
before higher verification. Exact equality of this entire value is scope.

The supported full profile has one sort, nullary terminal constructors and
terminal-free unary constructors, a singleton source word, at most four role
or interpretation values, and at most four symbolic variables. Its finite
quotient domain is the explicitly listed occurrence-checked ground-term catalog,
closed under unary subterms. It is not the potentially infinite language denoted
by a recursive grammar. General
arity/sorts, nontrivial local criticality and native wire/ABI admission remain
unsupported. Declared presentation equations are assumptions, not asserted
syntactic truths. No official engine run is established by defining this profile.
-/

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model

/-- One exact constructor transition, shared as data by role and interpreter tables. -/
structure TableRow where
  /-- Signature constructor whose ordered inputs form this transition key. -/
  constructor : ConstructorId
  /-- Ordered finite-domain input values; the full profile permits zero or one input. -/
  inputs : List ℕ
  /-- Claimed finite-domain result, independently bounded by table admission. -/
  output : ℕ
  deriving DecidableEq, Repr, Inhabited

/-- Candidate finite transition table with an explicit carrier cardinality. -/
structure FiniteTable where
  /-- Carrier values are exactly the natural numbers below this bound. -/
  cardinality : ℕ
  /-- Candidate rows; key order, uniqueness and coverage require independent checking. -/
  rows : List TableRow
  deriving DecidableEq, Repr, Inhabited

/-- Whether a transition table may omit keys from its declared finite input universe. -/
inductive CoverageMode where
  /-- Missing keys remain unsupported transitions rather than acquiring default outputs. -/
  | «partial»
  /-- Every key in the exact finite input universe must occur. -/
  | total
  deriving DecidableEq, Repr, Inhabited

/-- A finite role-algebra proposal, fixed before its table and tree-specific run are checked. -/
structure RoleCandidate where
  /-- Role-table schema version; the supported full profile fixes version one. -/
  version : ℕ
  /-- Declared finite carrier and candidate constructor transitions. -/
  table : FiniteTable
  /-- Explicit sparse or exhaustive coverage requirement for transition keys. -/
  coverage : CoverageMode
  /-- Canonical list of roles that admit a completed tree into the accepted language. -/
  accepting : List ℕ
  deriving DecidableEq, Repr, Inhabited

/-- An extracted production retaining both role transition data and the ordered surface template. -/
structure GrammarProduction where
  /-- Exact signature constructor represented by this production. -/
  constructor : ConstructorId
  /-- Child nonterminal roles in constructor-argument order. -/
  inputs : List ℕ
  /-- Parent nonterminal role produced by the transition. -/
  output : ℕ
  /-- Local terminal symbol identities copied from the constructor declaration. -/
  terminalSymbols : List SymbolId
  /-- Exact ordered interleaving of terminals and child yields copied during extraction. -/
  surface : List SurfaceSlot
  deriving DecidableEq, Repr, Inhabited

/-- An exact finite interpretation proposal whose presentation invariance is checked in K9. -/
structure InterpreterCandidate where
  /-- Interpretation schema version; profile two supports version one. -/
  version : ℕ
  /-- Candidate finite carrier and operations, required to be total before descent. -/
  table : FiniteTable
  deriving DecidableEq, Repr, Inhabited

/-- Binder-free first-order terms for the full profile's nullary/unary, single-sort signature. -/
inductive Term where
  /-- A symbolic variable whose index must lie below the declaration's variable count. -/
  | variable (index : ℕ)
  /-- An application of a declared constructor with no children. -/
  | nullary (constructor : ConstructorId)
  /-- An application of a declared unary constructor to its one ordered child. -/
  | unary (constructor : ConstructorId) (argument : Term)
  deriving DecidableEq, Repr, Inhabited

/-- Number of variable and constructor nodes charged against the finite term-size quota. -/
def Term.size : Term → ℕ
  | .variable _ => 1
  | .nullary _ => 1
  | .unary _ argument => 1 + argument.size

/-- Check every variable reference and constructor arity against the exact declared signature. -/
def TermValid (snapshot : Snapshot) (variableCount : ℕ) : Term → Prop
  | .variable index => index < variableCount
  | .nullary constructor => constructor.value < snapshot.constructors.length ∧
      (constructorAt snapshot constructor).inputSorts = []
  | .unary constructor argument => constructor.value < snapshot.constructors.length ∧
      (constructorAt snapshot constructor).inputSorts = [⟨0⟩] ∧
      TermValid snapshot variableCount argument

instance termValidDecidable (snapshot : Snapshot) (variableCount : ℕ) :
    (term : Term) → Decidable (TermValid snapshot variableCount term)
  | .variable index => inferInstanceAs (Decidable (index < variableCount))
  | .nullary constructor =>
    inferInstanceAs (Decidable (constructor.value < snapshot.constructors.length ∧
      (constructorAt snapshot constructor).inputSorts = []))
  | .unary constructor argument =>
    letI := termValidDecidable snapshot variableCount argument
    inferInstanceAs (Decidable (constructor.value < snapshot.constructors.length ∧
      (constructorAt snapshot constructor).inputSorts = [⟨0⟩] ∧
      TermValid snapshot variableCount argument))

/-- Simultaneous substitution preserving constructors; absent images leave their variables intact.
Admission separately requires the substitution's exact declared length and well-typed images. -/
def Term.substitute (substitution : List Term) : Term → Term
  | .variable index => (substitution[index]?).getD (.variable index)
  | .nullary constructor => .nullary constructor
  | .unary constructor argument => .unary constructor (argument.substitute substitution)

/-- Two exact terms proposed as a representation equation; the record itself grants no equality. -/
structure Equation where
  /-- Source term on the left of the candidate equation. -/
  left : Term
  /-- Source term on the right of the candidate equation. -/
  right : Term
  deriving DecidableEq, Repr, Inhabited

/-- A listed equation is part of the declared conditional quotient presentation. -/
structure LicensedGenerator where
  /-- Dense canonical identity within the declared generator list. -/
  id : ℕ
  /-- Index of the explicit source assumption associated with this presentation generator. -/
  assumption : ℕ
  /-- Conditional presentation equation; storing it does not assert literal syntax identity. -/
  equation : Equation
  deriving DecidableEq, Repr, Inhabited

/-- Explicit boundary convention for the critical-cover gap claim. -/
inductive GapMode where
  /-- Compare consecutive supplied internal cuts only; an empty list has no checked gaps. -/
  | internalOnly
  /-- Request boundary coverage, which is rejected by this singleton-only supported profile. -/
  | boundaryCover
  deriving DecidableEq, Repr, Inhabited

/-- Proposed period, cuts and event count under a fixed critical-boundary convention. -/
structure CriticalCandidate where
  /-- Critical-evidence schema version, checked independently of project or ABI versions. -/
  version : ℕ
  /-- Claimed least period; only period one on the singleton word is supported here. -/
  period : ℕ
  /-- Advertised internal cut positions, required to be empty for the singleton profile. -/
  cuts : List ℕ
  /-- Exact boundary convention under which any gap count is claimed. -/
  mode : GapMode
  /-- Number of claimed checked gaps; singleton InternalOnly requires zero. -/
  checkedGaps : ℕ
  /-- Number of certified critical events; an empty internal domain produces none. -/
  events : ℕ
  deriving DecidableEq, Repr, Inhabited

/-- One signed basis image, represented without floating-point matrix coefficients. -/
structure SignedEntry where
  /-- Destination basis coordinate, checked against the declared dimension. -/
  index : ℕ
  /-- Whether this image negates the basis sign. -/
  negative : Bool
  deriving DecidableEq, Repr, Inhabited

/-- Candidate exact forward and inverse signed maps for the port/fiber block action. -/
structure InvolutionCandidate where
  /-- Signed-map schema version supported by the exact K5 checker. -/
  version : ℕ
  /-- Number of basis coordinates, distinct from the two signs on each coordinate. -/
  dimension : ℕ
  /-- Proposed forward image of each basis coordinate in canonical index order. -/
  forward : List SignedEntry
  /-- Separately supplied inverse images, checked in both composition orders. -/
  inverse : List SignedEntry
  deriving DecidableEq, Repr, Inhabited

/-- A topological unary tree has a uniquely reconstructed abstract constructor term. -/
def termOfSyntax (certificate : SyntaxCertificate) : Term :=
  let terms := certificate.nodes.foldl (fun prior node =>
    let term := match node.children with
      | [] => Term.nullary node.constructor
      | child :: _ => Term.unary node.constructor ((prior[child.value]?).getD default)
    prior ++ [term]) ([] : List Term)
  (terms[certificate.root.value]?).getD default

/-- Whole immutable candidate bundle fixed before higher-stage proofs are issued. -/
structure FullModelDeclaration where
  /-- Distinct whole-model profile version; two does not retroactively enlarge projection one. -/
  profileVersion : ℕ
  /-- Complete K1 source/signature projection reused by the dependent syntax and ledger. -/
  coreSnapshot : Snapshot
  /-- Exact K2 syntax candidate whose run participates in final assembly. -/
  coreTree : SyntaxCertificate
  /-- Exact K3 resource candidate for that core syntax operand. -/
  coreLedger : LedgerCertificate
  /-- Fixed role-algebra proposal, including carrier, coverage mode and accepting roots. -/
  roles : RoleCandidate
  /-- Candidate role assigned to every core node in its canonical node-table order. -/
  runRoles : List ℕ
  /-- Optional supplied grammar commitment to compare with independent mechanical extraction. -/
  candidateGrammar : Option (List GrammarProduction)
  /-- Number of symbolic variables used in finite substitution and assignment enumeration. -/
  variableCount : ℕ
  /-- Ordered conditional representation generators explicitly included in this scope. -/
  generators : List LicensedGenerator
  /-- Fixed finite interpretation whose compatibility with the presentation remains to be proved. -/
  interpreter : InterpreterCandidate
  /-- Fixed singleton critical-period and boundary evidence proposal. -/
  critical : CriticalCandidate
  /-- Fixed exact signed-map proposal, verified separately from criticality. -/
  involution : InvolutionCandidate
  /-- Explicit finite ground-term domain, supplied as occurrence-checked syntax certificates. -/
  catalog : List SyntaxCertificate
  deriving DecidableEq, Repr, Inhabited

/-- Reconstruct the abstract ground terms while preserving the declared catalog order. -/
def catalogTerms (declaration : FullModelDeclaration) : List Term :=
  declaration.catalog.map termOfSyntax

/-- Require a unary term's immediate argument to occur in the supplied finite term list. -/
def ImmediateSubtermListed (terms : List Term) : Term → Prop
  | .unary _ argument => argument ∈ terms
  | _ => True

instance (terms : List Term) (term : Term) : Decidable (ImmediateSubtermListed terms term) := by
  cases term <;> unfold ImmediateSubtermListed <;> infer_instance

/-- Substitution witnesses inside catalog terms cannot disappear from its alphabet. -/
def CatalogSubtermClosed (declaration : FullModelDeclaration) : Prop :=
  ∀ term ∈ catalogTerms declaration, ImmediateSubtermListed (catalogTerms declaration) term

instance (declaration : FullModelDeclaration) : Decidable (CatalogSubtermClosed declaration) := by
  unfold CatalogSubtermClosed
  infer_instance

/-- Reflexive subterm relation generated by descending through unary arguments. -/
inductive TermSubterm : Term → Term → Prop
  /-- Every term occurs as a subterm of itself. -/
  | self (term : Term) : TermSubterm term term
  /-- A subterm of an argument remains a subterm after adding an outer constructor. -/
  | argument {part whole : Term} (constructor : ConstructorId) :
      TermSubterm part whole → TermSubterm part (.unary constructor whole)

theorem catalog_subterm_member (declaration : FullModelDeclaration)
    (closed : CatalogSubtermClosed declaration) {part whole : Term}
    (subterm : TermSubterm part whole) (member : whole ∈ catalogTerms declaration) :
    part ∈ catalogTerms declaration := by
  induction subterm with
  | self => exact member
  | @argument whole constructor subterm ih =>
    exact ih (closed (.unary constructor whole) member)

/-- Framing, source projection and finite-profile restrictions are not higher claims. -/
def FullStructure (declaration : FullModelDeclaration) : Prop :=
  declaration.profileVersion = 2 ∧
  declaration.coreSnapshot.sorts = [⟨0⟩] ∧
  declaration.coreSnapshot.occurrences.length = 1 ∧
  (∀ constructor ∈ declaration.coreSnapshot.constructors,
    (constructor.inputSorts = [] ∧ constructor.terminalSymbols =
      [(declaration.coreSnapshot.occurrences.head?.getD default).symbol]) ∨
    (constructor.inputSorts = [⟨0⟩] ∧ constructor.terminalSymbols = [])) ∧
  declaration.roles.version = 1 ∧ declaration.interpreter.version = 1 ∧
  declaration.critical.version = 1 ∧ declaration.involution.version = 1 ∧
  declaration.roles.table.cardinality ≤ 4 ∧ declaration.interpreter.table.cardinality ≤ 4 ∧
  declaration.variableCount ≤ 4 ∧
  declaration.involution.dimension ≤ 4 ∧
  declaration.catalog ≠ [] ∧ declaration.coreTree ∈ declaration.catalog ∧
  (catalogTerms declaration).Nodup ∧
  declaration.generators.map LicensedGenerator.id = List.range declaration.generators.length ∧
  (∀ generator ∈ declaration.generators,
    generator.assumption < declaration.coreSnapshot.assumptions.length ∧
    TermValid declaration.coreSnapshot declaration.variableCount generator.equation.left ∧
    TermValid declaration.coreSnapshot declaration.variableCount generator.equation.right ∧
    generator.equation.left.size ≤ declaration.coreSnapshot.limits.maxNodes ∧
    generator.equation.right.size ≤ declaration.coreSnapshot.limits.maxNodes) ∧
  (∀ term ∈ catalogTerms declaration, TermValid declaration.coreSnapshot 0 term) ∧
  declaration.catalog.length + declaration.generators.length +
    declaration.roles.table.rows.length + declaration.interpreter.table.rows.length +
    declaration.involution.forward.length + declaration.involution.inverse.length ≤
      declaration.coreSnapshot.limits.maxRecords ∧
  declaration.runRoles.length ≤ declaration.coreSnapshot.limits.maxNodes ∧
  CatalogSubtermClosed declaration

instance (declaration : FullModelDeclaration) : Decidable (FullStructure declaration) := by
  unfold FullStructure
  infer_instance

/-- Every checked projection is related by equality to this exact whole declaration. -/
structure CheckedFullDeclaration where
  /-- Entire source declaration, including all higher-stage proposals and the finite catalog. -/
  value : FullModelDeclaration
  /-- Actual structural-admission witness for the declared K1 projection. -/
  snapshot : CheckedSnapshot
  /-- Actual ordered-syntax witness indexed by this exact checked snapshot. -/
  tree : CheckedSyntax snapshot
  /-- Actual resource-conservation witness indexed by both predecessor objects. -/
  ledger : CheckedLedger snapshot tree
  /-- The full bundle's K1 field is exactly the retained checked projection. -/
  snapshotMatches : value.coreSnapshot = snapshot.value
  /-- The full bundle's K2 field is exactly the retained checked syntax certificate. -/
  treeMatches : value.coreTree = tree.certificate
  /-- The full bundle's K3 field is exactly the retained checked ledger certificate. -/
  ledgerMatches : value.coreLedger = ledger.certificate
  /-- Whole-profile restrictions and finite catalog framing, without higher proof claims. -/
  structural : FullStructure value
  /-- Independent K2 validity for every catalog entry under the same snapshot scope. -/
  catalogValid : ∀ certificate ∈ value.catalog, SyntaxValid snapshot certificate

theorem checkedFull_catalog_subterm_closed (full : CheckedFullDeclaration) :
    CatalogSubtermClosed full.value := by
  have structural := full.structural
  unfold FullStructure at structural
  tauto

/-- Check the exact K1--K3 operands, supported full-profile shape and every catalog syntax entry.
Success preserves actual predecessor proofs; it does not verify K4--K9 proposals. -/
def admitFullDeclaration (declaration : FullModelDeclaration) : Option CheckedFullDeclaration :=
  if hs : SnapshotValid declaration.coreSnapshot then
    let snapshot : CheckedSnapshot := ⟨declaration.coreSnapshot, hs⟩
    if ht : SyntaxValid snapshot declaration.coreTree then
      let tree : CheckedSyntax snapshot := ⟨declaration.coreTree, ht⟩
      if hl : LedgerValid snapshot tree declaration.coreLedger then
        let ledger : CheckedLedger snapshot tree := ⟨declaration.coreLedger, hl⟩
        if hf : FullStructure declaration then
          if hc : ∀ certificate ∈ declaration.catalog, SyntaxValid snapshot certificate then
            some ⟨declaration, snapshot, tree, ledger, rfl, rfl, rfl, hf, hc⟩
          else none
        else none
      else none
    else none
  else none

/-- The whole-stage result supplies actual K1--K3 proof operands, not success metadata. -/
theorem checkedFullDeclaration_projection (declaration : CheckedFullDeclaration) :
    SnapshotValid declaration.snapshot.value ∧
      SyntaxValid declaration.snapshot declaration.tree.certificate ∧
      LedgerValid declaration.snapshot declaration.tree declaration.ledger.certificate :=
  ⟨declaration.snapshot.valid, declaration.tree.valid, declaration.ledger.valid⟩

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model
```
