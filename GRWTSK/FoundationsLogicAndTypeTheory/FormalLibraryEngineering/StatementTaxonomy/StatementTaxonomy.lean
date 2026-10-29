import Mathlib.Tactic


/- source-tree-label: STL1|L|addr=0101110|role=proof_code_atom|slug=kernel-statementtaxonomy|owner=canonical_owner|core=Kernel/StatementTaxonomy.lean|leaf=M4b65726e656c2f53746174656d656e745461786f6e6f6d792e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Kernel

/-
Statement taxonomy.

This file separates the mathematical kind of a statement from its authority
state in the repository. The central rule is that a theorem-like name is not
proof authority. Proof authority comes only from a checked proof or trusted
import; finite witnesses, assumptions, hypotheses, syntax, schemas, structures,
and conjectures remain separately classified.
-/

/-- Mathematical and Bourbaki-style kinds of statement surface. -/
inductive StatementKind where
  | axiomPostulate
  | mathematicalHypothesis
  | scientificHypothesis
  | conjecture
  | theorem
  | proposition
  | lemma
  | corollary
  | claim
  | identity
  | assembly
  | mathematicalStructure
  | speciesOfStructure
  | schema
deriving Repr, DecidableEq

/-- Repository authority state, separated from the statement's mathematical name. -/
inductive AuthorityState where
  | syntaxOnly
  | definitionOnly
  | assumed
  | localHypothesis
  | empiricalHypothesis
  | openResidue
  | candidateGeneralization
  | finiteWitness
  | checkedProof
  | trustedImport
  | refusedOverclaim
deriving Repr, DecidableEq

/-- A theorem-like mathematical name: proof authority is still a separate field. -/
def StatementKind.isTheoremLike : StatementKind → Bool
  | .theorem => true
  | .proposition => true
  | .lemma => true
  | .corollary => true
  | .claim => true
  | .identity => true
  | _ => false

/-- Bourbaki-style syntactic or structural kinds. -/
def StatementKind.isBourbakiStructural : StatementKind → Bool
  | .assembly => true
  | .mathematicalStructure => true
  | .speciesOfStructure => true
  | .schema => true
  | _ => false

/-- Hypothesis-like kinds: premises or proposed explanations, not proved conclusions. -/
def StatementKind.isHypothesisLike : StatementKind → Bool
  | .mathematicalHypothesis => true
  | .scientificHypothesis => true
  | _ => false

/-- Authority states that give theorem-level authority in the repository. -/
def AuthorityState.isTheoremAuthority : AuthorityState → Bool
  | .checkedProof => true
  | .trustedImport => true
  | _ => false

/-- Authority states that are assumption-like rather than proof-like. -/
def AuthorityState.isAssumptionLike : AuthorityState → Bool
  | .assumed => true
  | .localHypothesis => true
  | .empiricalHypothesis => true
  | _ => false

/-- Authority states that leave residue/open obligation rather than proof authority. -/
def AuthorityState.isResidueLike : AuthorityState → Bool
  | .openResidue => true
  | .candidateGeneralization => true
  | .refusedOverclaim => true
  | _ => false

/-- Default repository posture for a statement kind before proof/import is supplied. -/
def StatementKind.defaultAuthority : StatementKind → AuthorityState
  | .axiomPostulate => .assumed
  | .mathematicalHypothesis => .localHypothesis
  | .scientificHypothesis => .empiricalHypothesis
  | .conjecture => .openResidue
  | .theorem => .openResidue
  | .proposition => .openResidue
  | .lemma => .openResidue
  | .corollary => .openResidue
  | .claim => .openResidue
  | .identity => .openResidue
  | .assembly => .syntaxOnly
  | .mathematicalStructure => .definitionOnly
  | .speciesOfStructure => .definitionOnly
  | .schema => .definitionOnly

/-- Formal and repository-facing definition text for a statement kind. -/
structure StatementTaxonomyEntry where
  kind : StatementKind
  formalDefinition : String
  repoDefinition : String
  defaultAuthority : AuthorityState
deriving Repr, DecidableEq

/-- Canonical taxonomy entry for each statement kind. -/
def StatementKind.entry : StatementKind → StatementTaxonomyEntry
  | .axiomPostulate =>
      { kind := .axiomPostulate
        formalDefinition := "Primitive assumption accepted without proof inside a formal system."
        repoDefinition := "Represent as assumption metadata or external postulate surface; do not use as hidden theorem authority."
        defaultAuthority := .assumed }
  | .mathematicalHypothesis =>
      { kind := .mathematicalHypothesis
        formalDefinition := "Premise or antecedent assumption of a theorem or proof."
        repoDefinition := "Represent as a local binder, field, or parameter; authority is conditional on the hypothesis."
        defaultAuthority := .localHypothesis }
  | .scientificHypothesis =>
      { kind := .scientificHypothesis
        formalDefinition := "Testable proposed explanation for a phenomenon."
        repoDefinition := "Represent as empirical/candidate surface, not mathematical proof authority."
        defaultAuthority := .empiricalHypothesis }
  | .conjecture =>
      { kind := .conjecture
        formalDefinition := "Unproved mathematical statement believed true from evidence, patterns, or intuition."
        repoDefinition := "Represent as open residue, candidate generalization, or external obligation until proved."
        defaultAuthority := .openResidue }
  | .theorem =>
      { kind := .theorem
        formalDefinition := "Major statement rigorously proved from definitions, axioms, hypotheses, and prior results."
        repoDefinition := "May be theorem authority only with checked proof or trusted import."
        defaultAuthority := .openResidue }
  | .proposition =>
      { kind := .proposition
        formalDefinition := "Proved statement of fact, usually less sweeping than a major theorem."
        repoDefinition := "Same proof standard as theorem; name does not lower authority requirements."
        defaultAuthority := .openResidue }
  | .lemma =>
      { kind := .lemma
        formalDefinition := "Auxiliary proved statement used to prove a larger result."
        repoDefinition := "Same proof standard as theorem; usually dependency-local."
        defaultAuthority := .openResidue }
  | .corollary =>
      { kind := .corollary
        formalDefinition := "Result following directly from a prior proved result."
        repoDefinition := "Should visibly depend on its parent theorem/proposition and contain no hidden large proof."
        defaultAuthority := .openResidue }
  | .claim =>
      { kind := .claim
        formalDefinition := "Localized assertion inside a proof or argument requiring a mini-proof."
        repoDefinition := "Represent as local `have` when one-use, or named proof if reusable; otherwise route to residue."
        defaultAuthority := .openResidue }
  | .identity =>
      { kind := .identity
        formalDefinition := "Equality of two expressions valid over the stated variables/domain."
        repoDefinition := "Represent as equality theorem; finite checked identities remain finite witnesses unless globally proved."
        defaultAuthority := .openResidue }
  | .assembly =>
      { kind := .assembly
        formalDefinition := "Formal string or assembly of mathematical symbols before semantic interpretation."
        repoDefinition := "Represent as syntax, tokens, AST, or string carrier; syntax alone has no truth authority."
        defaultAuthority := .syntaxOnly }
  | .mathematicalStructure =>
      { kind := .mathematicalStructure
        formalDefinition := "Carrier equipped with operations, relations, and laws."
        repoDefinition := "Represent as Lean structure/typeclass; law fields require supplied proofs or assumptions."
        defaultAuthority := .definitionOnly }
  | .speciesOfStructure =>
      { kind := .speciesOfStructure
        formalDefinition := "Metamathematical pattern specifying a type of structure and its laws."
        repoDefinition := "Represent as structure family/typeclass/schema of fields and laws; instances must still supply laws."
        defaultAuthority := .definitionOnly }
  | .schema =>
      { kind := .schema
        formalDefinition := "Rule pattern generating formulas, axioms, inference rules, obligations, or instances."
        repoDefinition := "Represent as parameterized generator; generated obligations are not automatically proved."
        defaultAuthority := .definitionOnly }

/-- A repository statement surface with kind and authority kept separate. -/
structure FormalStatementSurface where
  kind : StatementKind
  authority : AuthorityState
  content : String
  isGlobal : Bool
  isReusable : Bool
deriving Repr, DecidableEq

/-- The authority predicate for a statement surface. -/
def FormalStatementSurface.hasTheoremAuthority
    (S : FormalStatementSurface) : Prop :=
  S.authority = AuthorityState.checkedProof ∨
    S.authority = AuthorityState.trustedImport

/-- A statement is finite-witness-only when its authority is finite witness. -/
def FormalStatementSurface.isFiniteWitnessOnly
    (S : FormalStatementSurface) : Prop :=
  S.authority = AuthorityState.finiteWitness

/-- A statement is residue-bearing when its authority is open/candidate/refused residue. -/
def FormalStatementSurface.isResidueBearing
    (S : FormalStatementSurface) : Prop :=
  S.authority = AuthorityState.openResidue ∨
    S.authority = AuthorityState.candidateGeneralization ∨
    S.authority = AuthorityState.refusedOverclaim

/-- A theorem-like name is not theorem authority unless the authority field says so. -/
theorem theorem_like_name_does_not_imply_authority
    (S : FormalStatementSurface)
    (_ : S.kind.isTheoremLike = true) :
    S.hasTheoremAuthority ↔
      S.authority = AuthorityState.checkedProof ∨
        S.authority = AuthorityState.trustedImport := by
  rfl

/-- Checked proof gives theorem authority. -/
theorem checked_proof_gives_theorem_authority
    (S : FormalStatementSurface)
    (h : S.authority = AuthorityState.checkedProof) :
    S.hasTheoremAuthority :=
  Or.inl h

/-- Trusted import gives theorem authority. -/
theorem trusted_import_gives_theorem_authority
    (S : FormalStatementSurface)
    (h : S.authority = AuthorityState.trustedImport) :
    S.hasTheoremAuthority :=
  Or.inr h

/-- Open residue does not give theorem authority. -/
theorem open_residue_not_theorem_authority
    (S : FormalStatementSurface)
    (h : S.authority = AuthorityState.openResidue) :
    ¬ S.hasTheoremAuthority := by
  intro hAuth
  cases hAuth with
  | inl hChecked =>
      rw [h] at hChecked
      contradiction
  | inr hImport =>
      rw [h] at hImport
      contradiction

/-- Finite witness does not by itself give theorem authority. -/
theorem finite_witness_not_theorem_authority
    (S : FormalStatementSurface)
    (h : S.authority = AuthorityState.finiteWitness) :
    ¬ S.hasTheoremAuthority := by
  intro hAuth
  cases hAuth with
  | inl hChecked =>
      rw [h] at hChecked
      contradiction
  | inr hImport =>
      rw [h] at hImport
      contradiction

/-- The default authority of every kind is the one recorded in its taxonomy entry. -/
theorem statement_kind_entry_default_authority
    (k : StatementKind) :
    k.entry.defaultAuthority = k.defaultAuthority := by
  cases k <;> rfl

/-- Statement admissibility predicate used by repo-level review. -/
def RepoAdmissibleStatement (S : FormalStatementSurface) : Prop :=
  if S.kind.isTheoremLike then
    S.hasTheoremAuthority ∨ S.isResidueBearing ∨ S.isFiniteWitnessOnly
  else
    True

/-- Any theorem-like checked proof is repo-admissible. -/
theorem checked_theorem_like_is_repo_admissible
    (S : FormalStatementSurface)
    (hk : S.kind.isTheoremLike = true)
    (ha : S.authority = AuthorityState.checkedProof) :
    RepoAdmissibleStatement S := by
  unfold RepoAdmissibleStatement
  rw [hk]
  exact Or.inl (checked_proof_gives_theorem_authority S ha)

/-- Any theorem-like trusted import is repo-admissible. -/
theorem trusted_import_theorem_like_is_repo_admissible
    (S : FormalStatementSurface)
    (hk : S.kind.isTheoremLike = true)
    (ha : S.authority = AuthorityState.trustedImport) :
    RepoAdmissibleStatement S := by
  unfold RepoAdmissibleStatement
  rw [hk]
  exact Or.inl (trusted_import_gives_theorem_authority S ha)

/-- Any theorem-like open residue is repo-admissible as residue, not as proof. -/
theorem open_residue_theorem_like_is_repo_admissible
    (S : FormalStatementSurface)
    (hk : S.kind.isTheoremLike = true)
    (ha : S.authority = AuthorityState.openResidue) :
    RepoAdmissibleStatement S := by
  unfold RepoAdmissibleStatement
  rw [hk]
  exact Or.inr (Or.inl (Or.inl ha))

end Think.Kernel
