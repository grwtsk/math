import GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.BoundedCursorProtocols

/-!
Concrete staging lowers every phase to exactly one typed primitive request.
Path joining, the operating system, primitive readback, and certificate checking
remain interfaces. Plan, certificate, and candidate values stay whole opaque
values; no digest or numeric identifier substitutes for argument equality.
-/
namespace GRWTSK.TransactionHostRefinement
open PlanOutputBounds TransactionConstruction TransactionOrchestration

structure Context (Plan Certificate Path : Type) where
  plan : Plan
  certificate : Certificate
  area : Area
  candidate : Path
  files : Files Record
  directories : List String
  writes : Files WriteSource

inductive Rejected where
  | directoryIndex | writeIndex | terminal
  deriving DecidableEq

inductive Request (Plan Certificate Path : Type) where
  | fresh (candidate : Path)
  | directory (candidate : Path) (relative : String)
  | empty (candidate : Path) (target : String)
  | copy (candidate : Path) (target : String) (source : WriteSource)
  | readback (candidate : Path) (files : Files Record) (directories : List String)
  | certificate (plan : Plan) (certificate : Certificate) (area : Area) (candidate : Path)
  deriving DecidableEq

def lower {Plan Certificate Path : Type} (context : Context Plan Certificate Path)
    (operation : Operation) : Except Rejected (Request Plan Certificate Path) :=
  match operation.phase with
  | .fresh => .ok (.fresh context.candidate)
  | .directory => match context.directories[operation.index]? with
      | none => .error .directoryIndex
      | some relative => .ok (.directory context.candidate relative)
  | .write => match context.writes[operation.index]? with
      | none => .error .writeIndex
      | some (target, source) =>
          if source.empty then .ok (.empty context.candidate target)
          else .ok (.copy context.candidate target source)
  | .readback => .ok (.readback context.candidate context.files context.directories)
  | .certificate => .ok (.certificate context.plan context.certificate context.area context.candidate)
  | .success | .failed => .error .terminal

def invoke {Plan Certificate Path State Error : Type}
    (context : Context Plan Certificate Path)
    (primitive : Request Plan Certificate Path → State → Except Error State)
    (reject : Rejected → Error) (operation : Operation) (state : State) : Except Error State :=
  match lower context operation with
  | .error error => .error (reject error)
  | .ok request => primitive request state

theorem lower_fresh {Plan Certificate Path : Type} (context : Context Plan Certificate Path) (index : Nat) :
    lower context ⟨.fresh,index⟩ = .ok (.fresh context.candidate) := rfl

theorem lower_directory {Plan Certificate Path : Type} (context : Context Plan Certificate Path)
    (index : Nat) (relative : String) (selected : context.directories[index]? = some relative) :
    lower context ⟨.directory,index⟩ = .ok (.directory context.candidate relative) := by
  simp [lower, selected]

theorem lower_directory_rejected {Plan Certificate Path : Type} (context : Context Plan Certificate Path)
    (index : Nat) (missing : context.directories[index]? = none) :
    lower context ⟨.directory,index⟩ = .error .directoryIndex := by simp [lower, missing]

theorem lower_empty {Plan Certificate Path : Type} (context : Context Plan Certificate Path)
    (index : Nat) (target : String) (source : WriteSource)
    (selected : context.writes[index]? = some (target,source)) (empty : source.empty = true) :
    lower context ⟨.write,index⟩ = .ok (.empty context.candidate target) := by simp [lower, selected, empty]

theorem lower_copy {Plan Certificate Path : Type} (context : Context Plan Certificate Path)
    (index : Nat) (target : String) (source : WriteSource)
    (selected : context.writes[index]? = some (target,source)) (copy : source.empty = false) :
    lower context ⟨.write,index⟩ =
      .ok (.copy context.candidate target source) := by
  simp [lower, selected, copy]

theorem lower_write_rejected {Plan Certificate Path : Type} (context : Context Plan Certificate Path)
    (index : Nat) (missing : context.writes[index]? = none) :
    lower context ⟨.write,index⟩ = .error .writeIndex := by simp [lower, missing]

theorem lower_readback {Plan Certificate Path : Type} (context : Context Plan Certificate Path) (index : Nat) :
    lower context ⟨.readback,index⟩ = .ok (.readback context.candidate context.files context.directories) := rfl

theorem lower_certificate {Plan Certificate Path : Type} (context : Context Plan Certificate Path) (index : Nat) :
    lower context ⟨.certificate,index⟩ =
      .ok (.certificate context.plan context.certificate context.area context.candidate) := rfl

theorem lower_success_rejected {Plan Certificate Path : Type} (context : Context Plan Certificate Path) (index : Nat) :
    lower context ⟨.success,index⟩ = .error .terminal := rfl

theorem lower_failed_rejected {Plan Certificate Path : Type} (context : Context Plan Certificate Path) (index : Nat) :
    lower context ⟨.failed,index⟩ = .error .terminal := rfl

theorem lower_directory_iff {Plan Certificate Path : Type} (context : Context Plan Certificate Path)
    (index : Nat) (request : Request Plan Certificate Path) :
    lower context ⟨.directory,index⟩ = .ok request ↔
      ∃ relative, context.directories[index]? = some relative ∧ request = .directory context.candidate relative := by
  simp only [lower]
  cases selected : context.directories[index]? <;> simp [eq_comm]

theorem lower_write_iff {Plan Certificate Path : Type} (context : Context Plan Certificate Path)
    (index : Nat) (request : Request Plan Certificate Path) :
    lower context ⟨.write,index⟩ = .ok request ↔
      ∃ target source, context.writes[index]? = some (target,source) ∧
        request = if source.empty then .empty context.candidate target
          else .copy context.candidate target source := by
  simp only [lower]
  cases selected : context.writes[index]? with
  | none => simp
  | some row =>
      rcases row with ⟨target,source⟩
      cases empty : source.empty
      all_goals
        simp only [empty, Bool.false_eq_true, ↓reduceIte]
        constructor
        · intro accepted
          exact ⟨target,source,rfl,by simpa [empty] using (Except.ok.inj accepted).symm⟩
        · rintro ⟨target',source',selected,same⟩
          have pair := Option.some.inj selected
          cases pair
          simpa [empty] using congrArg (Except.ok (ε := Rejected)) same.symm

theorem invoke_request_exact {Plan Certificate Path State Error : Type}
    (context : Context Plan Certificate Path)
    (primitive : Request Plan Certificate Path → State → Except Error State)
    (reject : Rejected → Error) (operation : Operation) (state : State)
    (request : Request Plan Certificate Path) (lowered : lower context operation = .ok request) :
    invoke context primitive reject operation state = primitive request state := by simp [invoke, lowered]

theorem invoke_rejection_no_primitive {Plan Certificate Path State Error : Type}
    (context : Context Plan Certificate Path)
    (primitive : Request Plan Certificate Path → State → Except Error State)
    (reject : Rejected → Error) (operation : Operation) (state : State)
    (error : Rejected) (lowered : lower context operation = .error error) :
    invoke context primitive reject operation state = .error (reject error) := by simp [invoke, lowered]

theorem invoke_success_exact {Plan Certificate Path State Error : Type}
    (context : Context Plan Certificate Path)
    (primitive : Request Plan Certificate Path → State → Except Error State)
    (reject : Rejected → Error) (operation : Operation) (state final : State)
    (accepted : invoke context primitive reject operation state = .ok final) :
    ∃ request, lower context operation = .ok request ∧ primitive request state = .ok final := by
  unfold invoke at accepted
  cases lowered : lower context operation with
  | error error => simp [lowered] at accepted
  | ok request => exact ⟨request,rfl,by simpa [lowered] using accepted⟩

theorem invoke_primitive_error_exact {Plan Certificate Path State Error : Type}
    (context : Context Plan Certificate Path)
    (primitive : Request Plan Certificate Path → State → Except Error State)
    (reject : Rejected → Error) (operation : Operation) (state : State)
    (request : Request Plan Certificate Path) (error : Error)
    (lowered : lower context operation = .ok request) (failed : primitive request state = .error error) :
    invoke context primitive reject operation state = .error error := by simp [invoke, lowered, failed]

def execute {Plan Certificate Path State Error : Type}
    (context : Context Plan Certificate Path)
    (primitive : Request Plan Certificate Path → State → Except Error State)
    (reject : Rejected → Error) (state : State) : Execution State Error :=
  TransactionOrchestration.execute (invoke context primitive reject)
    context.directories.length context.writes.length state

theorem execute_success_order {Plan Certificate Path State Error : Type}
    (context : Context Plan Certificate Path)
    (primitive : Request Plan Certificate Path → State → Except Error State)
    (reject : Rejected → Error) (state final : State)
    (accepted : (execute context primitive reject state).result = .ok final) :
    (execute context primitive reject state).trace = program context.directories.length context.writes.length :=
  execute_success_trace _ _ _ _ _ accepted

theorem execute_success_mandatory_gates {Plan Certificate Path State Error : Type}
    (context : Context Plan Certificate Path)
    (primitive : Request Plan Certificate Path → State → Except Error State)
    (reject : Rejected → Error) (state final : State)
    (accepted : (execute context primitive reject state).result = .ok final) :
    (execute context primitive reject state).trace[context.directories.length + context.writes.length + 1]? =
      some ⟨.readback,0⟩ ∧
    (execute context primitive reject state).trace[context.directories.length + context.writes.length + 2]? =
      some ⟨.certificate,0⟩ := execute_success_mandatory_readback _ _ _ _ _ accepted

theorem execute_error_prefix {Plan Certificate Path State Error : Type}
    (context : Context Plan Certificate Path)
    (primitive : Request Plan Certificate Path → State → Except Error State)
    (reject : Rejected → Error) (state : State) (error : Error)
    (failed : (execute context primitive reject state).result = .error error) :
    ∃ before operation after reached,
      program context.directories.length context.writes.length = before ++ operation :: after ∧
      (run (invoke context primitive reject) before state).result = .ok reached ∧
      invoke context primitive reject operation reached = .error error ∧
      (execute context primitive reject state).trace = before ++ [operation] := run_failure_exact _ _ _ _ failed

/-- Binding a successful preflight replaces all three finite output inventories. -/
def withPrepared {Plan Certificate Path : Type} (context : Context Plan Certificate Path) (prepared : Prepared) :
    Context Plan Certificate Path :=
  {context with files := prepared.files, directories := prepared.directories.map Prod.fst, writes := prepared.writes}

theorem withPrepared_exact {Plan Certificate Path : Type}
    (context : Context Plan Certificate Path) (prepared : Prepared) :
    (withPrepared context prepared).plan = context.plan ∧
    (withPrepared context prepared).certificate = context.certificate ∧
    (withPrepared context prepared).area = context.area ∧
    (withPrepared context prepared).candidate = context.candidate ∧
    (withPrepared context prepared).files = prepared.files ∧
    (withPrepared context prepared).directories = prepared.directories.map Prod.fst ∧
    (withPrepared context prepared).writes = prepared.writes := ⟨rfl,rfl,rfl,rfl,rfl,rfl,rfl⟩


def rejectionCode : Rejected → String
  | .directoryIndex | .writeIndex => "STAGING_INDEX_INVALID"
  | .terminal => "STAGING_PHASE_INVALID"

theorem rejectionCode_index : rejectionCode .directoryIndex = "STAGING_INDEX_INVALID" ∧
    rejectionCode .writeIndex = "STAGING_INDEX_INVALID" := ⟨rfl,rfl⟩

theorem rejectionCode_terminal : rejectionCode .terminal = "STAGING_PHASE_INVALID" := rfl

/-- Every reached successful operation invokes the exact lowered primitive. -/
theorem run_success_requests {Plan Certificate Path State Error : Type}
    (context : Context Plan Certificate Path)
    (primitive : Request Plan Certificate Path → State → Except Error State)
    (reject : Rejected → Error) (operations : List Operation) (state final : State)
    (accepted : (run (invoke context primitive reject) operations state).result = .ok final)
    (operation : Operation) (selected : operation ∈ operations) :
    ∃ before after request, lower context operation = .ok request ∧ primitive request before = .ok after := by
  induction operations generalizing state with
  | nil => simp at selected
  | cons first rest ih =>
      cases called : invoke context primitive reject first state with
      | error error => simp [run,called] at accepted
      | ok next =>
          have tail : (run (invoke context primitive reject) rest next).result = .ok final := by
            simpa [run,called] using accepted
          rcases List.mem_cons.mp selected with same | later
          · subst operation
            obtain ⟨request,lowered,exact⟩ := invoke_success_exact context primitive reject first state next called
            exact ⟨state,next,request,lowered,exact⟩
          · exact ih next tail later

theorem execute_success_requests {Plan Certificate Path State Error : Type}
    (context : Context Plan Certificate Path)
    (primitive : Request Plan Certificate Path → State → Except Error State)
    (reject : Rejected → Error) (state final : State)
    (accepted : (execute context primitive reject state).result = .ok final)
    (operation : Operation) (selected : operation ∈ program context.directories.length context.writes.length) :
    ∃ before after request, lower context operation = .ok request ∧ primitive request before = .ok after :=
  run_success_requests context primitive reject _ state final accepted operation selected

def emptyContext : Context Unit Unit Unit := ⟨(),(),.taxonomy,(),[],[],[]⟩

theorem fixture_empty_concrete_staging :
    (execute emptyContext (fun _ state => Except.ok (ε := String) (state+1)) rejectionCode 0).result = .ok 3 := by decide

theorem fixture_invalid_directory_no_primitive :
    invoke emptyContext (fun _ (_ : Nat) => Except.ok (ε := String) 99) rejectionCode ⟨.directory,0⟩ 0 =
      .error "STAGING_INDEX_INVALID" := rfl

theorem fixture_terminal_no_primitive :
    invoke emptyContext (fun _ (_ : Nat) => Except.ok (ε := String) 99) rejectionCode ⟨.success,0⟩ 0 =
      .error "STAGING_PHASE_INVALID" := rfl

end GRWTSK.TransactionHostRefinement
