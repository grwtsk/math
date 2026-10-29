-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.MachineStep.Variant4806602333167e53b2fd916d4c6df5a3c003fe3722c0988f28044af228ed9acb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4806602333167e53b2fd916d4c6df5a3c003fe3722c0988f28044af228ed9acb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.MachineStep.Variant4806602333167e53b2fd916d4c6df5a3c003fe3722c0988f28044af228ed9acb","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"4806602333167e53b2fd916d4c6df5a3c003fe3722c0988f28044af228ed9acb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/GraphAccess/Machine.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.GraphAccess.Output

/-!
# Fuel-ready access machines

Concrete modes contribute states and invariants.  The core requires only a
finite step observation, monotone resource accounting, certified frontier
extraction, and round-trip serialization.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.MachineStep.Variant4806602333167e53b2fd916d4c6df5a3c003fe3722c0988f28044af228ed9acb

namespace Mathematics.GraphAccess

inductive MachineStep
    {G : GraphCut}
    {profiles : ModeProfileFamily G}
    {req : AdmittedAccessRequest G profiles}
    {outputs : ModeOutputFamily G req}
    (State : Type)
  | continue (next : State)
  | terminal (result : CertifiedModeOutput outputs)
  | blocked
      (unknowns : Finset GraphAccessUnknownKind)
      (unknowns_nonempty : unknowns.Nonempty)
  | operationalFailure (failure : OperationalFailure)

structure AccessMachine
    (G : GraphCut)
    {profiles : ModeProfileFamily G}
    (req : AdmittedAccessRequest G profiles)
    (outputs : ModeOutputFamily G req) where
  State : Type
  initial : State
  invariant : State → Prop
  initial_invariant : invariant initial
  usage : State → TraversalUsage
  initial_usage :
    usage initial = TraversalUsage.zero
  initial_within_budget :
    WithinBudget (usage initial) req.budget
  step :
    State →
      MachineStep
        (G := G)
        (profiles := profiles)
        (req := req)
        (outputs := outputs)
        State
  step_preserves :
    ∀ state next,
      invariant state →
      step state = .continue next →
      invariant next
  step_advances_one :
    ∀ state next,
      invariant state →
      step state = .continue next →
      (usage next).steps = (usage state).steps + 1
  usage_monotone :
    ∀ state next,
      invariant state →
      step state = .continue next →
      UsageMonotone (usage state) (usage next)
  frontier :
    State → ResidualCause → ResidualFrontier G req
  frontier_usage :
    ∀ state cause,
      (frontier state cause).usage = usage state
  frontier_sound :
    ∀ state cause,
      invariant state →
      (frontier state cause).summarySound
  encode : State → ByteArray
  decode : ByteArray → Option State
  decode_encode :
    ∀ state, decode (encode state) = some state
  decode_invariant :
    ∀ bytes state,
      decode bytes = some state →
      invariant state
  encoded_size_bound :
    ∀ state,
      (encode state).size ≤
        (usage state).persistedBytes
  stateDigest : State → StateDigest

namespace AccessMachine

theorem encode_injective
    {G : GraphCut}
    {profiles : ModeProfileFamily G}
    {req : AdmittedAccessRequest G profiles}
    {outputs : ModeOutputFamily G req}
    (machine : AccessMachine G req outputs) :
    Function.Injective machine.encode := by
  intro left right equality
  have decoded :=
    congrArg machine.decode equality
  simpa only [machine.decode_encode,
    Option.some.injEq] using decoded

theorem step_preserves_invariant
    {G : GraphCut}
    {profiles : ModeProfileFamily G}
    {req : AdmittedAccessRequest G profiles}
    {outputs : ModeOutputFamily G req}
    (machine : AccessMachine G req outputs)
    {state next : machine.State}
    (stateInvariant : machine.invariant state)
    (continued :
      machine.step state = .continue next) :
    machine.invariant next :=
  machine.step_preserves
    state next stateInvariant continued

theorem continue_advances_one_step
    {G : GraphCut}
    {profiles : ModeProfileFamily G}
    {req : AdmittedAccessRequest G profiles}
    {outputs : ModeOutputFamily G req}
    (machine : AccessMachine G req outputs)
    {state next : machine.State}
    (stateInvariant : machine.invariant state)
    (continued :
      machine.step state = .continue next) :
    (machine.usage next).steps =
      (machine.usage state).steps + 1 :=
  machine.step_advances_one
    state next stateInvariant continued

end AccessMachine

end Mathematics.GraphAccess
