import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.RolesGrammar

/-!
# Full model profile 2: predecessor-bearing K1--K7 fixtures

These synthetic finite declarations are executable mathematical fixtures. Their
scope strings are fixture identities, not accepted theorem publication records,
cryptographic claims, native capabilities or evidence of an official engine run.
The listed presentation equation is an explicit assumption; K1--K7 admission
alone never proves or discharges it. The later quotient/interpreter fixture can
reuse this exact whole declaration without replacing any predecessor operand.
-/

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.FullFixtures

/-- Finite semantic quotas for the singleton unary full-model fixtures. -/
def limits : Limits := ⟨64, 256, 1, 16, 8, 100, 1000000⟩

/-- Nullary constructor owning the source symbol and contributing one primitive use. -/
def atom : Constructor :=
  ⟨⟨0⟩, [], ⟨0⟩, [⟨0⟩], [.terminal 0], [1]⟩

/-- Terminal-free unary constructor contributing one additional primitive use. -/
def tag : Constructor :=
  ⟨⟨1⟩, [⟨0⟩], ⟨0⟩, [], [.child 0], [1]⟩

/-- Synthetic singleton snapshot with one explicitly declared conditional presentation equation. -/
def snapshot : Snapshot where
  profileVersion := 1
  source := ⟨"fixture://full-model-profile-2",
    "0000000000000000000000000000000000000001",
    "0000000000000000000000000000000000000002", "full-model-fixture", 1⟩
  assumptions := [⟨0, "Tag(Tag(x)) = x; explicit conditional presentation assumption"⟩]
  limits := limits
  sorts := [⟨0⟩]
  symbols := [⟨⟨0⟩, "A"⟩]
  constructors := [atom, tag]
  primitives := [⟨0⟩]
  occurrences := [⟨⟨10⟩, ⟨0⟩⟩]

/-- Ground atom node owning the unique source occurrence at span [0,1). -/
def atomNode : SyntaxNode :=
  ⟨⟨0⟩, ⟨0⟩, ⟨0⟩, [], [⟨10⟩], 0, 1, 1, [⟨10⟩]⟩

/-- Unary Tag application preserving its atom child's exact occurrence yield. -/
def tagNode : SyntaxNode :=
  ⟨⟨1⟩, ⟨1⟩, ⟨0⟩, [⟨0⟩], [], 0, 1, 2, [⟨10⟩]⟩

/-- Second unary Tag application completing the three-node positive tree. -/
def tagTagNode : SyntaxNode :=
  ⟨⟨2⟩, ⟨1⟩, ⟨0⟩, [⟨1⟩], [], 0, 1, 3, [⟨10⟩]⟩

/-- One-node checked-source certificate representing the ground Atom term. -/
def atomTree : SyntaxCertificate := ⟨snapshot, [atomNode], ⟨0⟩⟩
/-- Two-node checked-source certificate representing Tag(Atom). -/
def tagTree : SyntaxCertificate := ⟨snapshot, [atomNode, tagNode], ⟨1⟩⟩
/-- Three-node checked-source certificate representing Tag(Tag(Atom)). -/
def tree : SyntaxCertificate := ⟨snapshot, [atomNode, tagNode, tagTagNode], ⟨2⟩⟩

/-- Exact counts one, two and three with separately witnessed support and parity. -/
def ledger : LedgerCertificate :=
  ⟨tree, [⟨⟨0⟩, [1], [⟨0⟩], [⟨0⟩]⟩,
    ⟨⟨1⟩, [2], [⟨0⟩], []⟩, ⟨⟨2⟩, [3], [⟨0⟩], [⟨0⟩]⟩]⟩

/-- Total two-role algebra in which Tag preserves the input role. -/
def roleTable : FiniteTable :=
  ⟨2, [⟨⟨0⟩, [], 0⟩, ⟨⟨1⟩, [0], 0⟩, ⟨⟨1⟩, [1], 1⟩]⟩

/-- Total two-value interpretation in which Tag swaps zero and one. -/
def interpreterTable : FiniteTable :=
  ⟨2, [⟨⟨0⟩, [], 0⟩, ⟨⟨1⟩, [0], 1⟩, ⟨⟨1⟩, [1], 0⟩]⟩

/-- Whole profile-2 fixture fixing source, candidates, conditional generator and finite catalog. -/
def declaration : FullModelDeclaration where
  profileVersion := 2
  coreSnapshot := snapshot
  coreTree := tree
  coreLedger := ledger
  roles := ⟨1, roleTable, .total, [0]⟩
  runRoles := [0, 0, 0]
  candidateGrammar := some (extractGrammarRows snapshot roleTable)
  variableCount := 1
  generators := [⟨0, 0,
    ⟨.unary ⟨1⟩ (.unary ⟨1⟩ (.variable 0)), .variable 0⟩⟩]
  interpreter := ⟨1, interpreterTable⟩
  critical := ⟨1, 1, [], .internalOnly, 0, 0⟩
  involution := ⟨1, 2, [⟨1, false⟩, ⟨0, true⟩], [⟨1, true⟩, ⟨0, false⟩]⟩
  catalog := [atomTree, tagTree, tree]

/-- The singleton source record passes the complete K1 checker. -/
theorem snapshot_accepted : checkSnapshot snapshot = true := by decide

/-- K1 proof operand for the positive full-model declaration. -/
def checkedSnapshot : CheckedSnapshot :=
  ⟨snapshot, checkSnapshot_sound snapshot snapshot_accepted⟩

/-- The Tag(Tag(Atom)) certificate passes K2 with exact ordered occurrence ownership. -/
theorem syntax_accepted : checkSyntax checkedSnapshot tree = true := by decide

/-- Checked positive tree indexed by its admitted singleton snapshot. -/
def checkedTree : CheckedSyntax checkedSnapshot :=
  ⟨tree, checkSyntax_sound checkedSnapshot tree syntax_accepted⟩

/-- All three primitive-ledger rows pass the exact K3 conservation checks. -/
theorem ledger_accepted : checkLedger checkedSnapshot checkedTree ledger = true := by decide

/-- Checked primitive ledger retaining the exact K1 and K2 predecessors. -/
def checkedLedger : CheckedLedger checkedSnapshot checkedTree :=
  ⟨ledger, checkLedger_sound checkedSnapshot checkedTree ledger ledger_accepted⟩

/-- The whole fixture satisfies profile restrictions and finite catalog framing. -/
theorem full_structure_accepted : FullStructure declaration := by decide

/-- Every listed catalog certificate independently passes K2 for the same snapshot. -/
theorem catalog_accepted :
    ∀ certificate ∈ declaration.catalog, SyntaxValid checkedSnapshot certificate := by decide

/-- Whole-declaration proof operand with checked core projections and catalog certificates. -/
def checkedFull : CheckedFullDeclaration :=
  ⟨declaration, checkedSnapshot, checkedTree, checkedLedger, rfl, rfl, rfl,
    full_structure_accepted, catalog_accepted⟩

/-- The complete declaration-admission function returns an actual checked operand. -/
theorem full_declaration_admitted : (admitFullDeclaration declaration).isSome = true := by decide

/-- The singleton profile admits period one and no internal critical event. -/
theorem critical_accepted : checkCritical checkedFull = true := by decide

/-- K4 proof operand establishing the declared singleton critical structure. -/
theorem checkedCritical : CheckedCritical checkedFull :=
  ⟨checkCritical_sound checkedFull critical_accepted⟩

/-- The signed two-dimensional maps and their port/fiber action pass exact K5 checks. -/
theorem involution_accepted : checkInvolution checkedFull checkedCritical = true := by decide

/-- K5 proof operand bound to this whole declaration and checked critical predecessor. -/
theorem checkedInvolution : CheckedInvolution checkedFull checkedCritical :=
  ⟨checkInvolution_sound checkedFull checkedCritical involution_accepted⟩

/-- The declared total role table and accepting set pass finite K6 algebra admission. -/
theorem role_algebra_accepted : checkRoleAlgebra checkedFull = true := by decide

/-- Checked role algebra retaining its exact critical and involution proof predecessors. -/
def checkedAlgebra : CheckedRoleAlgebra checkedFull :=
  ⟨checkedCritical, checkedInvolution, checkRoleAlgebra_sound checkedFull role_algebra_accepted⟩

/-- The actual three-node tree admits the declared all-zero role assignment. -/
theorem role_run_accepted : checkRoleRun checkedFull = true := by decide

/-- Checked role run indexed by the exact full declaration and admitted algebra. -/
def checkedRun : CheckedRoleRun checkedFull checkedAlgebra :=
  ⟨checkRoleRun_sound checkedFull role_run_accepted⟩

/-- The role assigned to the concrete tree root lies in the declared accepting set. -/
theorem root_accepted : checkRoleAccepted checkedFull = true := by decide

/-- Separate acceptance evidence for the already checked role run. -/
def checkedAcceptedRoot : CheckedAcceptedRoleRun checkedFull checkedAlgebra checkedRun :=
  ⟨checkRoleAccepted_sound checkedFull root_accepted⟩

/-- The supplied grammar matches independent extraction from every checked algebra row. -/
theorem grammar_accepted : checkGrammar checkedFull = true := by decide

/-- K7 proof operand for complete extraction from this exact role algebra. -/
def checkedGrammar : CheckedGrammar checkedFull checkedAlgebra :=
  ⟨checkGrammar_sound checkedFull grammar_accepted⟩

/-- The positive path contains all seven actual stage predicates and accepting evidence. -/
theorem k1_through_k7_positive :
    SnapshotValid checkedFull.snapshot.value ∧
      SyntaxValid checkedFull.snapshot checkedFull.tree.certificate ∧
      LedgerValid checkedFull.snapshot checkedFull.tree checkedFull.ledger.certificate ∧
      SingletonCriticalValid checkedFull.value ∧ InvolutionValid checkedFull.value ∧
      RoleAlgebraValid checkedFull ∧ RoleRunValid checkedFull ∧ RoleAccepted checkedFull ∧
      GrammarValid checkedFull :=
  ⟨checkedSnapshot.valid, checkedTree.valid, checkedLedger.valid, checkedCritical.valid,
    checkedInvolution.valid, checkedAlgebra.valid, checkedRun.valid, checkedAcceptedRoot.accepted,
    checkedGrammar.valid⟩

/-- A declaration with altered higher candidates must be checked at its own new scope. -/
def changedRoles (roles : RoleCandidate) (runRoles : List ℕ)
    (grammar : Option (List GrammarProduction))
    (shape : FullStructure { declaration with
      roles := roles, runRoles := runRoles, candidateGrammar := grammar }) :
    CheckedFullDeclaration :=
  { checkedFull with
    value := { declaration with roles := roles, runRoles := runRoles, candidateGrammar := grammar }
    structural := shape }

/-- New declaration scope with a middle-node role inconsistent with the algebra transition. -/
def badRun : CheckedFullDeclaration :=
  changedRoles declaration.roles [0, 1, 0] declaration.candidateGrammar (by decide)

/-- The altered middle-node role cannot be admitted as a valid run. -/
theorem illegal_transition_rejected : checkRoleRun badRun = false := by decide

/-- New declaration scope whose role vector omits the third syntax node. -/
def shortRun : CheckedFullDeclaration :=
  changedRoles declaration.roles [0, 0] declaration.candidateGrammar (by decide)

/-- Every checked syntax node requires a role-vector entry. -/
theorem incomplete_run_rejected : checkRoleRun shortRun = false := by decide

/-- Valid algebra and run whose declared accepting set excludes the actual root role. -/
def nonaccepting : CheckedFullDeclaration :=
  changedRoles { declaration.roles with accepting := [1] }
    declaration.runRoles declaration.candidateGrammar (by decide)

/-- A legal role run does not by itself imply accepting-language membership. -/
theorem nonaccepting_run_still_valid :
    checkRoleAlgebra nonaccepting = true ∧ checkRoleRun nonaccepting = true := by decide

/-- The separate root-acceptance check rejects the nonaccepting declaration. -/
theorem nonaccepting_root_rejected : checkRoleAccepted nonaccepting = false := by decide

/-- Candidate accepting set containing role two outside the two-role carrier. -/
def unknownAcceptingRole : CheckedFullDeclaration :=
  changedRoles { declaration.roles with accepting := [2] }
    declaration.runRoles declaration.candidateGrammar (by decide)

/-- Algebra admission rejects an accepting role outside the declared finite domain. -/
theorem unknown_accepting_role_rejected : checkRoleAlgebra unknownAcceptingRole = false := by decide

/-- Optional grammar commitment omitting the unused role-one Tag production. -/
def truncatedGrammar : CheckedFullDeclaration :=
  changedRoles declaration.roles declaration.runRoles
    (some ((extractGrammarRows snapshot roleTable).take 2)) (by decide)

/-- K7 requires every algebra row, including transitions unused by the concrete run. -/
theorem unused_production_omission_rejected : checkGrammar truncatedGrammar = false := by decide

/-- Optional grammar commitment with the correct productions in reverse order. -/
def reorderedGrammar : CheckedFullDeclaration :=
  changedRoles declaration.roles declaration.runRoles
    (some (extractGrammarRows snapshot roleTable).reverse) (by decide)

/-- Production membership alone does not satisfy exact canonical grammar equality. -/
theorem reordered_grammar_rejected : checkGrammar reorderedGrammar = false := by decide

/-- Whole declaration requesting extraction without supplying an expected grammar list. -/
def noGrammarCandidate : CheckedFullDeclaration :=
  changedRoles declaration.roles declaration.runRoles none (by decide)

/-- K7 can extract the complete grammar without an optional comparison candidate. -/
theorem independent_grammar_extraction_accepted :
    checkGrammar noGrammarCandidate = true := by decide

/-- New whole declaration identity prevents silently recycling the prior algebra witness. -/
theorem changed_role_scope_is_distinct : badRun.value ≠ checkedFull.value := by decide

/-- Changing the optional grammar commitment changes the whole declaration identity. -/
theorem changed_grammar_scope_is_distinct : truncatedGrammar.value ≠ checkedFull.value := by decide

/-- Singleton declaration incorrectly advertising global period two. -/
def badCriticalDeclaration : FullModelDeclaration :=
  { declaration with critical := { declaration.critical with period := 2 } }

/-- The singleton critical checker rejects the unsupported period claim. -/
theorem bad_singleton_period_rejected :
    assessCritical badCriticalDeclaration = .rejected := by decide

/-- A singleton has no internal cut at which the claimed event could occur. -/
theorem invented_internal_cut_rejected :
    assessCritical { declaration with critical := { declaration.critical with cuts := [0] } } =
      .rejected := by decide

/-- An empty internal critical set cannot certify a positive event count. -/
theorem invented_critical_event_rejected :
    assessCritical { declaration with critical := { declaration.critical with events := 1 } } =
      .rejected := by decide

/-- Boundary-cover claims are outside the admitted singleton internal-only profile. -/
theorem unlicensed_boundary_mode_rejected :
    assessCritical { declaration with critical :=
      { declaration.critical with mode := .boundaryCover } } = .rejected := by decide

/-- The singleton critical subsystem explicitly declines a two-occurrence source. -/
theorem nonsingleton_critical_profile_unsupported :
    assessCritical { declaration with coreSnapshot :=
      { snapshot with occurrences := [⟨⟨10⟩, ⟨0⟩⟩, ⟨⟨11⟩, ⟨0⟩⟩] } } = .unsupported := by decide

/-- Reusing the forward signed rotation as its inverse fails exact inverse checks. -/
theorem wrong_inverse_rejected :
    ¬InvolutionValid { declaration with involution :=
      { declaration.involution with inverse := declaration.involution.forward } } := by decide

/-- Signed permutation entries must remain inside the declared basis dimension. -/
theorem signed_map_unknown_index_rejected :
    ¬InvolutionValid { declaration with involution :=
      { declaration.involution with forward := [⟨2, false⟩, ⟨0, true⟩] } } := by decide

/-- Each signed map must supply one image for every declared basis index. -/
theorem signed_map_wrong_length_rejected :
    ¬InvolutionValid { declaration with involution :=
      { declaration.involution with forward := [⟨1, false⟩] } } := by decide

/-- The admitted involution family requires a nonempty finite signed-basis domain. -/
theorem zero_dimension_rejected :
    ¬InvolutionValid { declaration with involution := ⟨1, 0, [], []⟩ } := by decide

/-- A presentation generator cannot claim a nonexistent declared assumption. -/
theorem missing_generator_assumption_rejected :
    ¬FullStructure { declaration with generators :=
      [⟨0, 1, ⟨.unary ⟨1⟩ (.unary ⟨1⟩ (.variable 0)), .variable 0⟩⟩] } := by decide

/-- The finite catalog rejects duplicate reconstructed ground terms. -/
theorem duplicate_catalog_term_rejected :
    ¬FullStructure { declaration with catalog := [atomTree, tagTree, tree, tree] } := by decide

/-- The whole declaration must retain its concrete core tree in the finite catalog. -/
theorem core_tree_missing_from_catalog_rejected :
    ¬FullStructure { declaration with catalog := [atomTree, tagTree] } := by decide

/-- Both entries pass K2 and the core tree remains listed, but the Atom subterm is missing. -/
def missingSubtermCatalog : FullModelDeclaration :=
  { declaration with catalog := [tagTree, tree] }

/-- The incomplete catalog entries individually pass K2 despite missing a required subterm. -/
theorem missing_subterm_entries_individually_valid :
    ∀ certificate ∈ missingSubtermCatalog.catalog, SyntaxValid checkedSnapshot certificate :=
  by decide

/-- Tag(x) = Tag(Tag(x)) instantiated at Atom has two listed endpoints,
although the old catalog-only alphabet would omit that substitution image. -/
theorem missing_subterm_can_hide_a_generator_instance :
    (Term.unary ⟨1⟩ (.variable 0)).substitute [.nullary ⟨0⟩] ∈
      catalogTerms missingSubtermCatalog ∧
    (Term.unary ⟨1⟩ (.unary ⟨1⟩ (.variable 0))).substitute [.nullary ⟨0⟩] ∈
      catalogTerms missingSubtermCatalog ∧
    Term.nullary ⟨0⟩ ∉ catalogTerms missingSubtermCatalog := by decide

/-- Whole-profile admission requires the finite catalog to retain its ground subterms. -/
theorem missing_catalog_subterm_rejected : ¬FullStructure missingSubtermCatalog := by decide

/-- The complete admission function refuses the subterm-incomplete declaration. -/
theorem missing_catalog_subterm_admission_rejected :
    (admitFullDeclaration missingSubtermCatalog).isSome = false := by decide

/-- A catalog entry cannot substitute a different source revision under the checked snapshot. -/
theorem catalog_snapshot_drift_rejected :
    ¬SyntaxValid checkedSnapshot
      { atomTree with snapshot :=
        { snapshot with source := { snapshot.source with revision := 2 } } } :=
  by decide

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.Model.FullFixtures
