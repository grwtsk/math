# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.M4b65726e656c2f417574686f72697479476174652e6c65616e.Variant6542e4a0fa21763b72efea4482477c05fa5ea3d4180659d71ba47b7c342768e9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3c2141d35c46b54910299a36bbeee4518f79c17d` · SHA-256 `6542e4a0fa21763b72efea4482477c05fa5ea3d4180659d71ba47b7c342768e9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean

/- source-tree-label: STL1|L|addr=01010110|role=proof_code_atom|slug=kernel-authoritygate|owner=canonical_owner|core=Kernel/AuthorityGate.lean|leaf=M4b65726e656c2f417574686f72697479476174652e6c65616e.lean -/

set_option autoImplicit false

namespace Think.Kernel.AuthorityGate

/-- Surfaces that may carry or be confused for authority-bearing claims. -/
inductive ClaimKind where
  | theorem
  | proposition
  | lemma
  | corollary
  | claim
  | identity
  | leanArtifact
  | rustArtifact
  | buildArtifact
  | discoveryHit
  | arxivMetadata
  | jepaPrediction
  | localModelOutput
  | skillLaunchPlan
  | urlSiteClosure
  | compactSummary
  | finiteWitness
  | refusalRecord
  | generatedText
deriving Repr, DecidableEq

inductive TheoremAuthority where
  | openResidue
  | candidateGeneralization
  | finiteWitnessOnly
  | checkedProof
  | trustedImport
  | refused
deriving Repr, DecidableEq

inductive LeanAuthority where
  | openResidue
  | leanCandidate
  | leanChecked
  | trustedImport
  | refused
deriving Repr, DecidableEq

inductive RustAuthority where
  | generatedCandidate
  | idiomMapped
  | compileChecked
  | testChecked
  | trustedImport
  | refused
deriving Repr, DecidableEq

inductive BuildAuthority where
  | notBuilt
  | buildCandidate
  | buildChecked
  | trustedImport
  | refused
deriving Repr, DecidableEq

def ClaimKind.isTheoremLike : ClaimKind → Prop
  | .theorem => True
  | .proposition => True
  | .lemma => True
  | .corollary => True
  | .claim => True
  | .identity => True
  | _ => False

/--
Generated, discovered, predicted, local-model, skill-plan, compact-summary,
finite-witness, refusal, and URLSite-closure surfaces are intentionally below
theorem-authority forwarding.
-/
def ClaimKind.isNonAuthoritativeSurface : ClaimKind → Prop
  | .discoveryHit => True
  | .arxivMetadata => True
  | .jepaPrediction => True
  | .localModelOutput => True
  | .skillLaunchPlan => True
  | .urlSiteClosure => True
  | .compactSummary => True
  | .finiteWitness => True
  | .refusalRecord => True
  | .generatedText => True
  | _ => False

def theoremAuthorityMayForward
    (kind : ClaimKind) (authority : TheoremAuthority) : Prop :=
  kind.isTheoremLike ∧
    (authority = TheoremAuthority.checkedProof ∨
      authority = TheoremAuthority.trustedImport)

def leanAuthorityMayForward (authority : LeanAuthority) : Prop :=
  authority = LeanAuthority.leanChecked ∨
    authority = LeanAuthority.trustedImport

def rustAuthorityMayForward (authority : RustAuthority) : Prop :=
  authority = RustAuthority.compileChecked ∨
    authority = RustAuthority.testChecked ∨
    authority = RustAuthority.trustedImport

def buildAuthorityMayForward (authority : BuildAuthority) : Prop :=
  authority = BuildAuthority.buildChecked ∨
    authority = BuildAuthority.trustedImport

/--
Central authority safety theorem for theorem-like claims.

If a claim forwards as theorem authority, then both gates are visible: its kind
is theorem-like and its authority is checked proof or trusted import. Generated
text, discovery, prediction, finite witnesses, local-model output, skill plans,
receipts, and compact summaries cannot satisfy this theorem unless they first
cease to be those surfaces and acquire one of the two proof-positive authority
states through an explicit gate.
-/
theorem authority_safety_theorem
    {k : ClaimKind} {a : TheoremAuthority} :
    theoremAuthorityMayForward k a →
      k.isTheoremLike ∧
        (a = TheoremAuthority.checkedProof ∨
          a = TheoremAuthority.trustedImport) := by
  intro h
  exact h

theorem theorem_forward_iff_checked_or_trusted
    {k : ClaimKind} {a : TheoremAuthority} :
    theoremAuthorityMayForward k a →
      a = TheoremAuthority.checkedProof ∨
        a = TheoremAuthority.trustedImport := by
  intro h
  exact h.2

theorem lean_forward_iff_checked_or_trusted
    {a : LeanAuthority} :
    leanAuthorityMayForward a →
      a = LeanAuthority.leanChecked ∨
        a = LeanAuthority.trustedImport := by
  intro h
  exact h

theorem rust_forward_iff_compile_test_or_trusted
    {a : RustAuthority} :
    rustAuthorityMayForward a →
      a = RustAuthority.compileChecked ∨
        a = RustAuthority.testChecked ∨
        a = RustAuthority.trustedImport := by
  intro h
  exact h

theorem build_forward_iff_build_checked_or_trusted
    {a : BuildAuthority} :
    buildAuthorityMayForward a →
      a = BuildAuthority.buildChecked ∨
        a = BuildAuthority.trustedImport := by
  intro h
  exact h

/-- Non-authoritative surfaces cannot forward as theorem authority. -/
theorem non_authoritative_surface_not_theorem_authority
    {k : ClaimKind} {a : TheoremAuthority}
    (hk : k.isNonAuthoritativeSurface) :
    ¬ theoremAuthorityMayForward k a := by
  intro h
  cases k <;> simp [ClaimKind.isNonAuthoritativeSurface,
    ClaimKind.isTheoremLike, theoremAuthorityMayForward] at hk h

theorem generated_text_not_theorem_authority :
    ¬ theoremAuthorityMayForward
      ClaimKind.generatedText
      TheoremAuthority.finiteWitnessOnly := by
  intro h
  exact h.1

theorem discovery_hit_not_theorem_authority :
    ¬ theoremAuthorityMayForward
      ClaimKind.discoveryHit
      TheoremAuthority.openResidue := by
  intro h
  exact h.1

theorem jepa_prediction_not_theorem_authority :
    ¬ theoremAuthorityMayForward
      ClaimKind.jepaPrediction
      TheoremAuthority.openResidue := by
  intro h
  exact h.1

theorem local_model_output_not_theorem_authority :
    ¬ theoremAuthorityMayForward
      ClaimKind.localModelOutput
      TheoremAuthority.openResidue := by
  intro h
  exact h.1

theorem skill_launch_plan_not_theorem_authority :
    ¬ theoremAuthorityMayForward
      ClaimKind.skillLaunchPlan
      TheoremAuthority.openResidue := by
  intro h
  exact h.1

/-!
## Transition-calculus form

The infrastructure theorem can also be read as a small transition calculus:
if a run starts below theorem authority, and no checked-proof or trusted-import
gate occurs anywhere in the run, then the final surface cannot carry
theorem-forwarding authority.
-/

/-- A finite claim surface tracked by kind and theorem-authority state. -/
structure AuthoritySurface where
  kind : ClaimKind
  authority : TheoremAuthority
deriving Repr, DecidableEq

/-- The theorem-forwarding predicate on a finite authority surface. -/
def AuthoritySurface.mayForwardTheorem (S : AuthoritySurface) : Prop :=
  theoremAuthorityMayForward S.kind S.authority

/-- Gate labels for a finite authority transition. -/
inductive AuthorityTransitionGate where
  | noGate
  | checkedProofGate
  | trustedImportGate
  | leanCheckedGate
  | rustCompileGate
  | rustTestGate
  | buildCheckedGate
  | refusalGate
deriving Repr, DecidableEq

/-- The only theorem-authority gates are checked proof and trusted import. -/
def AuthorityTransitionGate.isTheoremAuthorityGate :
    AuthorityTransitionGate → Prop
  | .checkedProofGate => True
  | .trustedImportGate => True
  | _ => False

/--
An admissible finite transition may output theorem-forwarding authority only
when either the input already had theorem-forwarding authority or the transition
itself records a theorem-authority gate.
-/
structure AuthorityTransition (before after : AuthoritySurface) where
  gate : AuthorityTransitionGate
  admissible :
    after.mayForwardTheorem →
      before.mayForwardTheorem ∨ gate.isTheoremAuthorityGate

/--
Reflexive-transitive authority runs in which no checked-proof or trusted-import
gate occurs.
-/
inductive GateFreeAuthorityRun : AuthoritySurface → AuthoritySurface → Prop where
  | refl (x : AuthoritySurface) : GateFreeAuthorityRun x x
  | step {x y z : AuthoritySurface}
      (t : AuthorityTransition x y)
      (hGate : ¬ t.gate.isTheoremAuthorityGate)
      (rest : GateFreeAuthorityRun y z) :
      GateFreeAuthorityRun x z

/-- A lightweight context symbol for the paper-style judgment `Γ ⊢ x ↦* y`. -/
structure AuthorityContext where
  label : String
deriving Repr, DecidableEq

/-- Context-indexed notation surface for gate-free authority runs. -/
def AuthorityContext.GateFreeRun
    (_Γ : AuthorityContext) (x y : AuthoritySurface) : Prop :=
  GateFreeAuthorityRun x y

/--
Transition-calculus authority non-promotion theorem.

If `Γ ⊢ x ↦* y` through a run with no checked-proof or trusted-import gate, and
`x` does not carry theorem-forwarding authority, then `y` does not carry
theorem-forwarding authority.
-/
theorem authority_non_promotion_for_gate_free_runs
    (Γ : AuthorityContext) {x y : AuthoritySurface}
    (hRun : Γ.GateFreeRun x y)
    (hStart : ¬ x.mayForwardTheorem) :
    ¬ y.mayForwardTheorem := by
  induction hRun with
  | refl x =>
      exact hStart
  | @step x y z t hGate rest ih =>
      have hMid : ¬ y.mayForwardTheorem := by
        intro hY
        have hAllowed := t.admissible hY
        cases hAllowed with
        | inl hBefore =>
            exact hStart hBefore
        | inr hTheoremGate =>
            exact hGate hTheoremGate
      exact ih hMid

end Think.Kernel.AuthorityGate
```
