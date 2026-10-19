import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ApplicationOrchestration.Basic

/-!
The concrete application host lowers actions to a closed request language with
whole plan, certificate, inventory, exact-tree, path, and receipt values. Primitive
implementations (including JSON serialization, path joining, publication, and
readback) remain interfaces. Root accessors are the actual model-field
projections under the Rust/Lean interpretation, not freely inferred identities.
-/
namespace GRWTSK.ApplicationHostRefinement
open PlanOutputBounds ApplicationOrchestration

inductive RecordPhase where
  | prepared | archivePublished
  deriving DecidableEq

inductive BackupKind where
  | archive | destination
  deriving DecidableEq

inductive Rejected where
  | missingArchive | missingTaxonomy | rawIndex | retainedIndex
  deriving DecidableEq

structure Context (Plan Certificate Inventory Tree Path : Type) where
  plan : Plan
  certificate : Certificate
  journal : Path
  planDigest : String
  source : Inventory
  preservation : Inventory
  archive : Inventory
  destination : Inventory
  raw : List Inventory
  exactSource : Tree
  exactPreservation : Tree
  exactArchive : Tree
  exactDestination : Tree
  exactRaw : List Tree
  inventoryRoot : Inventory → String
  treeRoot : Tree → String

structure Paths (Path : Type) where
  taxonomy : Option Path
  archive : Option Path
  deriving DecidableEq

structure State (Path Native : Type) where
  paths : Paths Path
  native : Native
  deriving DecidableEq

inductive Request (Plan Certificate Inventory Tree Path : Type) where
  | stage (plan : Plan) (certificate : Certificate) (journal : Path) (area : Area)
  | recordPhase (journal : Path) (phase : RecordPhase) (planDigest : String)
  | verifyInputs (plan : Plan)
  | verifyCertificate (plan : Plan) (certificate : Certificate)
  | publish (candidate : Path) (current : Inventory) (journal : Path) (backup : BackupKind)
      (certificate : Certificate) (exact : Tree)
  | verifyInventory (inventory : Inventory)
  | retained (certificate : Certificate) (exact : Tree) (root : String)
  deriving DecidableEq

def Response {Plan Certificate Inventory Tree Path : Type} :
    Request Plan Certificate Inventory Tree Path → Type
  | .stage _ _ _ _ => Path
  | _ => Unit

def lower {Plan Certificate Inventory Tree Path : Type}
    (context : Context Plan Certificate Inventory Tree Path) (paths : Paths Path)
    (operation : Operation) : Except Rejected (Request Plan Certificate Inventory Tree Path) :=
  match operation.action with
  | .stageTaxonomy => .ok (.stage context.plan context.certificate context.journal .taxonomy)
  | .stageArchive => .ok (.stage context.plan context.certificate context.journal .archive)
  | .recordPrepared => .ok (.recordPhase context.journal .prepared context.planDigest)
  | .verifyInputs => .ok (.verifyInputs context.plan)
  | .verifyCertificate => .ok (.verifyCertificate context.plan context.certificate)
  | .publishArchive => match paths.archive with
      | none => .error .missingArchive
      | some candidate => .ok (.publish candidate context.archive context.journal .archive context.certificate context.exactArchive)
  | .recordArchivePublished => .ok (.recordPhase context.journal .archivePublished context.planDigest)
  | .verifySource => .ok (.verifyInventory context.source)
  | .verifyPreservation => .ok (.verifyInventory context.preservation)
  | .retainSource => .ok (.retained context.certificate context.exactSource (context.inventoryRoot context.source))
  | .retainPreservation => .ok (.retained context.certificate context.exactPreservation (context.inventoryRoot context.preservation))
  | .verifyRaw => match context.raw[operation.index]? with
      | none => .error .rawIndex
      | some inventory => .ok (.verifyInventory inventory)
  | .retainRaw => match context.exactRaw[operation.index]? with
      | none => .error .retainedIndex
      | some exact => .ok (.retained context.certificate exact (context.treeRoot exact))
  | .publishTaxonomy => match paths.taxonomy with
      | none => .error .missingTaxonomy
      | some candidate => .ok (.publish candidate context.destination context.journal .destination context.certificate context.exactDestination)

def setCandidate {Path : Type} (paths : Paths Path) (area : Area) (candidate : Path) : Paths Path :=
  match area with
  | .taxonomy => {paths with taxonomy := some candidate}
  | .archive => {paths with archive := some candidate}

/-- Candidate mutation is committed only after the fallible stage result. -/
def commitCandidate {Path Error : Type} (paths : Paths Path) (area : Area)
    (result : Except Error Path) : Except Error Unit × Paths Path :=
  match result with
  | .error error => (.error error,paths)
  | .ok candidate => (.ok (),setCandidate paths area candidate)

def applyRequest {Plan Certificate Inventory Tree Path Native Error : Type}
    (primitive : (request : Request Plan Certificate Inventory Tree Path) →
      Native → Except Error (Response request × Native))
    (request : Request Plan Certificate Inventory Tree Path) (state : State Path Native) :
    Except Error (State Path Native) :=
  match request with
  | .stage plan certificate journal area =>
      match primitive (.stage plan certificate journal area) state.native with
      | .error error => .error error
      | .ok (candidate,native) => .ok ⟨setCandidate state.paths area candidate,native⟩
  | request =>
      match primitive request state.native with
      | .error error => .error error
      | .ok (_,native) => .ok {state with native}

def invoke {Plan Certificate Inventory Tree Path Native Error : Type}
    (context : Context Plan Certificate Inventory Tree Path)
    (primitive : (request : Request Plan Certificate Inventory Tree Path) →
      Native → Except Error (Response request × Native))
    (reject : Rejected → Error) (operation : Operation) (state : State Path Native) :
    Except Error (State Path Native) :=
  match lower context state.paths operation with
  | .error error => .error (reject error)
  | .ok request => applyRequest primitive request state

theorem lower_stage_taxonomy {Plan Certificate Inventory Tree Path : Type}
    (context : Context Plan Certificate Inventory Tree Path) (paths : Paths Path) (index : Nat) :
    lower context paths ⟨.stageTaxonomy,index⟩ = .ok (.stage context.plan context.certificate context.journal .taxonomy) := rfl

theorem lower_stage_archive {Plan Certificate Inventory Tree Path : Type}
    (context : Context Plan Certificate Inventory Tree Path) (paths : Paths Path) (index : Nat) :
    lower context paths ⟨.stageArchive,index⟩ = .ok (.stage context.plan context.certificate context.journal .archive) := rfl

theorem lower_record_prepared {Plan Certificate Inventory Tree Path : Type}
    (context : Context Plan Certificate Inventory Tree Path) (paths : Paths Path) (index : Nat) :
    lower context paths ⟨.recordPrepared,index⟩ = .ok (.recordPhase context.journal .prepared context.planDigest) := rfl

theorem lower_verify_inputs {Plan Certificate Inventory Tree Path : Type}
    (context : Context Plan Certificate Inventory Tree Path) (paths : Paths Path) (index : Nat) :
    lower context paths ⟨.verifyInputs,index⟩ = .ok (.verifyInputs context.plan) := rfl

theorem lower_verify_certificate {Plan Certificate Inventory Tree Path : Type}
    (context : Context Plan Certificate Inventory Tree Path) (paths : Paths Path) (index : Nat) :
    lower context paths ⟨.verifyCertificate,index⟩ = .ok (.verifyCertificate context.plan context.certificate) := rfl

theorem lower_publish_archive {Plan Certificate Inventory Tree Path : Type}
    (context : Context Plan Certificate Inventory Tree Path) (paths : Paths Path) (index : Nat) (candidate : Path)
    (staged : paths.archive = some candidate) :
    lower context paths ⟨.publishArchive,index⟩ =
      .ok (.publish candidate context.archive context.journal .archive context.certificate context.exactArchive) := by simp [lower,staged]

theorem lower_missing_archive {Plan Certificate Inventory Tree Path : Type}
    (context : Context Plan Certificate Inventory Tree Path) (paths : Paths Path) (index : Nat)
    (missing : paths.archive = none) :
    lower context paths ⟨.publishArchive,index⟩ = .error .missingArchive := by simp [lower,missing]

theorem lower_record_archive {Plan Certificate Inventory Tree Path : Type}
    (context : Context Plan Certificate Inventory Tree Path) (paths : Paths Path) (index : Nat) :
    lower context paths ⟨.recordArchivePublished,index⟩ = .ok (.recordPhase context.journal .archivePublished context.planDigest) := rfl

theorem lower_verify_source {Plan Certificate Inventory Tree Path : Type}
    (context : Context Plan Certificate Inventory Tree Path) (paths : Paths Path) (index : Nat) :
    lower context paths ⟨.verifySource,index⟩ = .ok (.verifyInventory context.source) := rfl

theorem lower_verify_preservation {Plan Certificate Inventory Tree Path : Type}
    (context : Context Plan Certificate Inventory Tree Path) (paths : Paths Path) (index : Nat) :
    lower context paths ⟨.verifyPreservation,index⟩ = .ok (.verifyInventory context.preservation) := rfl

theorem lower_retain_source {Plan Certificate Inventory Tree Path : Type}
    (context : Context Plan Certificate Inventory Tree Path) (paths : Paths Path) (index : Nat) :
    lower context paths ⟨.retainSource,index⟩ =
      .ok (.retained context.certificate context.exactSource (context.inventoryRoot context.source)) := rfl

theorem lower_retain_preservation {Plan Certificate Inventory Tree Path : Type}
    (context : Context Plan Certificate Inventory Tree Path) (paths : Paths Path) (index : Nat) :
    lower context paths ⟨.retainPreservation,index⟩ =
      .ok (.retained context.certificate context.exactPreservation (context.inventoryRoot context.preservation)) := rfl

theorem lower_verify_raw {Plan Certificate Inventory Tree Path : Type}
    (context : Context Plan Certificate Inventory Tree Path) (paths : Paths Path) (index : Nat) (inventory : Inventory)
    (selected : context.raw[index]? = some inventory) :
    lower context paths ⟨.verifyRaw,index⟩ = .ok (.verifyInventory inventory) := by simp [lower,selected]

theorem lower_missing_raw {Plan Certificate Inventory Tree Path : Type}
    (context : Context Plan Certificate Inventory Tree Path) (paths : Paths Path) (index : Nat)
    (missing : context.raw[index]? = none) :
    lower context paths ⟨.verifyRaw,index⟩ = .error .rawIndex := by simp [lower,missing]

theorem lower_retain_raw {Plan Certificate Inventory Tree Path : Type}
    (context : Context Plan Certificate Inventory Tree Path) (paths : Paths Path) (index : Nat) (exact : Tree)
    (selected : context.exactRaw[index]? = some exact) :
    lower context paths ⟨.retainRaw,index⟩ = .ok (.retained context.certificate exact (context.treeRoot exact)) := by simp [lower,selected]

theorem lower_missing_retained {Plan Certificate Inventory Tree Path : Type}
    (context : Context Plan Certificate Inventory Tree Path) (paths : Paths Path) (index : Nat)
    (missing : context.exactRaw[index]? = none) :
    lower context paths ⟨.retainRaw,index⟩ = .error .retainedIndex := by simp [lower,missing]

theorem lower_publish_taxonomy {Plan Certificate Inventory Tree Path : Type}
    (context : Context Plan Certificate Inventory Tree Path) (paths : Paths Path) (index : Nat) (candidate : Path)
    (staged : paths.taxonomy = some candidate) :
    lower context paths ⟨.publishTaxonomy,index⟩ =
      .ok (.publish candidate context.destination context.journal .destination context.certificate context.exactDestination) := by simp [lower,staged]

theorem lower_missing_taxonomy {Plan Certificate Inventory Tree Path : Type}
    (context : Context Plan Certificate Inventory Tree Path) (paths : Paths Path) (index : Nat)
    (missing : paths.taxonomy = none) :
    lower context paths ⟨.publishTaxonomy,index⟩ = .error .missingTaxonomy := by simp [lower,missing]

theorem commitCandidate_error_preserves {Path Error : Type} (paths : Paths Path) (area : Area) (error : Error) :
    commitCandidate paths area (.error error) = (.error error,paths) := rfl

theorem commitCandidate_taxonomy {Path Error : Type} (paths : Paths Path) (candidate : Path) :
    commitCandidate (Error := Error) paths .taxonomy (.ok candidate) =
      (.ok (),{paths with taxonomy := some candidate}) := rfl

theorem commitCandidate_archive {Path Error : Type} (paths : Paths Path) (candidate : Path) :
    commitCandidate (Error := Error) paths .archive (.ok candidate) =
      (.ok (),{paths with archive := some candidate}) := rfl

theorem setCandidate_preserves_other {Path : Type} (paths : Paths Path) (candidate : Path) :
    (setCandidate paths .taxonomy candidate).archive = paths.archive ∧
      (setCandidate paths .archive candidate).taxonomy = paths.taxonomy := ⟨rfl,rfl⟩

theorem applyRequest_stage_success {Plan Certificate Inventory Tree Path Native Error : Type}
    (primitive : (request : Request Plan Certificate Inventory Tree Path) → Native → Except Error (Response request × Native))
    (plan : Plan) (certificate : Certificate) (journal : Path) (area : Area) (state : State Path Native)
    (candidate : Path) (native : Native)
    (accepted : primitive (.stage plan certificate journal area) state.native = .ok (candidate,native)) :
    applyRequest primitive (.stage plan certificate journal area) state = .ok ⟨setCandidate state.paths area candidate,native⟩ := by
  simp [applyRequest,accepted]

theorem applyRequest_stage_error {Plan Certificate Inventory Tree Path Native Error : Type}
    (primitive : (request : Request Plan Certificate Inventory Tree Path) → Native → Except Error (Response request × Native))
    (plan : Plan) (certificate : Certificate) (journal : Path) (area : Area) (state : State Path Native)
    (error : Error) (failed : primitive (.stage plan certificate journal area) state.native = .error error) :
    applyRequest primitive (.stage plan certificate journal area) state = .error error := by simp [applyRequest,failed]

theorem invoke_lowered {Plan Certificate Inventory Tree Path Native Error : Type}
    (context : Context Plan Certificate Inventory Tree Path)
    (primitive : (request : Request Plan Certificate Inventory Tree Path) → Native → Except Error (Response request × Native))
    (reject : Rejected → Error) (operation : Operation) (state : State Path Native)
    (request : Request Plan Certificate Inventory Tree Path)
    (lowered : lower context state.paths operation = .ok request) :
    invoke context primitive reject operation state = applyRequest primitive request state := by simp [invoke,lowered]

theorem invoke_rejected_no_primitive {Plan Certificate Inventory Tree Path Native Error : Type}
    (context : Context Plan Certificate Inventory Tree Path)
    (primitive : (request : Request Plan Certificate Inventory Tree Path) → Native → Except Error (Response request × Native))
    (reject : Rejected → Error) (operation : Operation) (state : State Path Native) (error : Rejected)
    (lowered : lower context state.paths operation = .error error) :
    invoke context primitive reject operation state = .error (reject error) := by simp [invoke,lowered]

structure Primitives (Plan Certificate Inventory Tree Path Native Error Receipt : Type) where
  call : (request : Request Plan Certificate Inventory Tree Path) → Native → Except Error (Response request × Native)
  verifyOutputs : Plan → Path → Native → Except Error (Receipt × Native)
  recordReceipt : Path → Receipt → Native → Except Error Native

def host {Plan Certificate Inventory Tree Path Native Error Receipt : Type}
    (context : Context Plan Certificate Inventory Tree Path)
    (primitive : Primitives Plan Certificate Inventory Tree Path Native Error Receipt)
    (reject : Rejected → Error) : Host (State Path Native) Error Receipt where
  step := invoke context primitive.call reject
  verifyOutputs state := match primitive.verifyOutputs context.plan context.journal state.native with
    | .error error => .error error
    | .ok (receipt,native) => .ok (receipt,{state with native})
  recordReceipt receipt state := match primitive.recordReceipt context.journal receipt state.native with
    | .error error => .error error
    | .ok native => .ok {state with native}

theorem host_outputs_arguments {Plan Certificate Inventory Tree Path Native Error Receipt : Type}
    (context : Context Plan Certificate Inventory Tree Path)
    (primitive : Primitives Plan Certificate Inventory Tree Path Native Error Receipt)
    (reject : Rejected → Error) (state final : State Path Native) (receipt : Receipt)
    (accepted : (host context primitive reject).verifyOutputs state = .ok (receipt,final)) :
    primitive.verifyOutputs context.plan context.journal state.native = .ok (receipt,final.native) ∧ final.paths = state.paths := by
  simp only [host] at accepted
  cases called : primitive.verifyOutputs context.plan context.journal state.native with
  | error error => simp [called] at accepted
  | ok pair =>
      rcases pair with ⟨observed,native⟩
      have same : observed = receipt ∧ {state with native} = final := by simpa [called] using accepted
      rcases same with ⟨rfl,rfl⟩
      exact ⟨rfl,rfl⟩

theorem host_receipt_arguments {Plan Certificate Inventory Tree Path Native Error Receipt : Type}
    (context : Context Plan Certificate Inventory Tree Path)
    (primitive : Primitives Plan Certificate Inventory Tree Path Native Error Receipt)
    (reject : Rejected → Error) (state final : State Path Native) (receipt : Receipt)
    (accepted : (host context primitive reject).recordReceipt receipt state = .ok final) :
    primitive.recordReceipt context.journal receipt state.native = .ok final.native ∧ final.paths = state.paths := by
  simp only [host] at accepted
  cases called : primitive.recordReceipt context.journal receipt state.native with
  | error error => simp [called] at accepted
  | ok native =>
      have same : {state with native} = final := by simpa [called] using accepted
      subst final
      exact ⟨rfl,rfl⟩

def execute {Plan Certificate Inventory Tree Path Native Error Receipt : Type}
    (context : Context Plan Certificate Inventory Tree Path)
    (primitive : Primitives Plan Certificate Inventory Tree Path Native Error Receipt)
    (reject : Rejected → Error) (state : State Path Native) : Execution (State Path Native) Error Receipt :=
  ApplicationOrchestration.execute (host context primitive reject) context.raw.length context.exactRaw.length state

theorem execute_success_receipt_primitive {Plan Certificate Inventory Tree Path Native Error Receipt : Type}
    (context : Context Plan Certificate Inventory Tree Path)
    (primitive : Primitives Plan Certificate Inventory Tree Path Native Error Receipt)
    (reject : Rejected → Error) (state final : State Path Native) (receipt : Receipt)
    (accepted : (execute context primitive reject state).result = .ok (receipt,final)) :
    ∃ verified : State Path Native, primitive.recordReceipt context.journal receipt verified.native = .ok final.native ∧ final.paths = verified.paths := by
  obtain ⟨verified,recorded⟩ := execute_success_receipt_identity _ _ _ _ _ _ accepted
  exact ⟨verified,host_receipt_arguments _ _ _ _ _ _ recorded⟩

theorem execute_success_exact_output_primitive {Plan Certificate Inventory Tree Path Native Error Receipt : Type}
    (context : Context Plan Certificate Inventory Tree Path)
    (primitive : Primitives Plan Certificate Inventory Tree Path Native Error Receipt)
    (reject : Rejected → Error) (state final : State Path Native) (receipt : Receipt)
    (accepted : (execute context primitive reject state).result = .ok (receipt,final)) :
    ∃ prepared verified : State Path Native,
      primitive.verifyOutputs context.plan context.journal prepared.native = .ok (receipt,verified.native) ∧
      primitive.recordReceipt context.journal receipt verified.native = .ok final.native := by
  obtain ⟨prepared,verified,_,outputs,recorded⟩ := execute_success_exact _ _ _ _ _ _ accepted
  exact ⟨prepared,verified,(host_outputs_arguments _ _ _ _ _ _ outputs).1,
    (host_receipt_arguments _ _ _ _ _ _ recorded).1⟩

theorem execute_success_concrete_order {Plan Certificate Inventory Tree Path Native Error Receipt : Type}
    (context : Context Plan Certificate Inventory Tree Path)
    (primitive : Primitives Plan Certificate Inventory Tree Path Native Error Receipt)
    (reject : Rejected → Error) (state final : State Path Native) (receipt : Receipt)
    (accepted : (execute context primitive reject state).result = .ok (receipt,final)) :
    (execute context primitive reject state).trace =
      (program context.raw.length context.exactRaw.length).map Event.step ++ [.outputs,.receipt receipt] :=
  execute_success_trace _ _ _ _ _ _ accepted


def rejectionCode : Rejected → String
  | .missingArchive | .missingTaxonomy => "APPLICATION_PHASE_INVALID"
  | .rawIndex | .retainedIndex => "APPLICATION_INDEX_INVALID"

def recordName : RecordPhase → String
  | .prepared => "prepared.json"
  | .archivePublished => "archive-published.json"

def phaseName : RecordPhase → String
  | .prepared => "prepared"
  | .archivePublished => "archive-published"

def backupName : BackupKind → String
  | .archive => "archive-before"
  | .destination => "destination-before"

theorem rejectionCode_missing : rejectionCode .missingArchive = "APPLICATION_PHASE_INVALID" ∧
    rejectionCode .missingTaxonomy = "APPLICATION_PHASE_INVALID" := ⟨rfl,rfl⟩

theorem rejectionCode_index : rejectionCode .rawIndex = "APPLICATION_INDEX_INVALID" ∧
    rejectionCode .retainedIndex = "APPLICATION_INDEX_INVALID" := ⟨rfl,rfl⟩

theorem recordName_exact : recordName .prepared = "prepared.json" ∧
    recordName .archivePublished = "archive-published.json" := ⟨rfl,rfl⟩

theorem phaseName_exact : phaseName .prepared = "prepared" ∧
    phaseName .archivePublished = "archive-published" := ⟨rfl,rfl⟩

theorem backupName_exact : backupName .archive = "archive-before" ∧
    backupName .destination = "destination-before" := ⟨rfl,rfl⟩

/-- Non-stage requests cannot replace either prepared candidate path. -/
theorem applyRequest_nonstage_preserves {Plan Certificate Inventory Tree Path Native Error : Type}
    (primitive : (request : Request Plan Certificate Inventory Tree Path) → Native → Except Error (Response request × Native))
    (request : Request Plan Certificate Inventory Tree Path) (state final : State Path Native)
    (nonstage : ∀ plan certificate journal area, request ≠ .stage plan certificate journal area)
    (accepted : applyRequest primitive request state = .ok final) : final.paths = state.paths := by
  cases request with
  | stage plan certificate journal area => exact False.elim (nonstage _ _ _ _ rfl)
  | _ =>
    simp only [applyRequest] at accepted
    split at accepted
    · cases accepted
    · rename_i pair called
      have same : {state with native := pair} = final := Except.ok.inj accepted
      subst final
      rfl

theorem invoke_success_lowered {Plan Certificate Inventory Tree Path Native Error : Type}
    (context : Context Plan Certificate Inventory Tree Path)
    (primitive : (request : Request Plan Certificate Inventory Tree Path) → Native → Except Error (Response request × Native))
    (reject : Rejected → Error) (operation : Operation) (state final : State Path Native)
    (accepted : invoke context primitive reject operation state = .ok final) :
    ∃ request, lower context state.paths operation = .ok request ∧ applyRequest primitive request state = .ok final := by
  unfold invoke at accepted
  cases lowered : lower context state.paths operation with
  | error error => simp [lowered] at accepted
  | ok request => exact ⟨request,rfl,by simpa [lowered] using accepted⟩

def acceptingCall (request : Request Unit Unit Unit Unit Unit) (native : Nat) :
    Except String (Response request × Nat) := by
  cases request <;> exact .ok ((),native+1)

def fixtureContext : Context Unit Unit Unit Unit Unit :=
  ⟨(),(),(),"plan",(),(),(),(),[],(),(),(),(),[],fun _ => "root",fun _ => "root"⟩

def acceptingPrimitives (receipt : Nat) : Primitives Unit Unit Unit Unit Unit Nat String Nat where
  call := acceptingCall
  verifyOutputs _ _ native := .ok (receipt,native+1)
  recordReceipt _ _ native := .ok (native+1)

theorem fixture_concrete_application_nonvacuous :
    (execute fixtureContext (acceptingPrimitives 7) rejectionCode ⟨⟨none,none⟩,0⟩).result =
      .ok (7,⟨⟨some (),some ()⟩,14⟩) := by decide

theorem fixture_unstaged_archive_no_primitive :
    invoke fixtureContext acceptingCall rejectionCode ⟨.publishArchive,0⟩ ⟨⟨none,none⟩,0⟩ =
      .error "APPLICATION_PHASE_INVALID" := rfl

theorem fixture_raw_index_no_primitive :
    invoke fixtureContext acceptingCall rejectionCode ⟨.verifyRaw,0⟩ ⟨⟨none,none⟩,0⟩ =
      .error "APPLICATION_INDEX_INVALID" := rfl


/-- Exact Rust field projections under the primitive type interpretation. -/
structure Projections (Plan Certificate Inventory Tree : Type) where
  planDigest : Plan → String
  source : Plan → Inventory
  preservation : Plan → Inventory
  archive : Plan → Inventory
  destination : Plan → Inventory
  raw : Plan → List Inventory
  exactSource : Certificate → Tree
  exactPreservation : Certificate → Tree
  exactArchive : Certificate → Tree
  exactDestination : Certificate → Tree
  exactRaw : Certificate → List Tree
  inventoryRoot : Inventory → String
  treeRoot : Tree → String

def freeze {Plan Certificate Inventory Tree Path : Type}
    (projection : Projections Plan Certificate Inventory Tree)
    (plan : Plan) (certificate : Certificate) (journal : Path) : Context Plan Certificate Inventory Tree Path :=
  ⟨plan,certificate,journal,projection.planDigest plan,projection.source plan,projection.preservation plan,
    projection.archive plan,projection.destination plan,projection.raw plan,projection.exactSource certificate,
    projection.exactPreservation certificate,projection.exactArchive certificate,projection.exactDestination certificate,
    projection.exactRaw certificate,projection.inventoryRoot,projection.treeRoot⟩

theorem freeze_whole_inputs {Plan Certificate Inventory Tree Path : Type}
    (projection : Projections Plan Certificate Inventory Tree) (plan : Plan) (certificate : Certificate) (journal : Path) :
    (freeze projection plan certificate journal).plan = plan ∧
    (freeze projection plan certificate journal).certificate = certificate ∧
    (freeze projection plan certificate journal).journal = journal := ⟨rfl,rfl,rfl⟩

theorem freeze_inventory_projections {Plan Certificate Inventory Tree Path : Type}
    (projection : Projections Plan Certificate Inventory Tree) (plan : Plan) (certificate : Certificate) (journal : Path) :
    (freeze projection plan certificate journal).planDigest = projection.planDigest plan ∧
    (freeze projection plan certificate journal).source = projection.source plan ∧
    (freeze projection plan certificate journal).preservation = projection.preservation plan ∧
    (freeze projection plan certificate journal).archive = projection.archive plan ∧
    (freeze projection plan certificate journal).destination = projection.destination plan ∧
    (freeze projection plan certificate journal).raw = projection.raw plan := ⟨rfl,rfl,rfl,rfl,rfl,rfl⟩

theorem freeze_certificate_projections {Plan Certificate Inventory Tree Path : Type}
    (projection : Projections Plan Certificate Inventory Tree) (plan : Plan) (certificate : Certificate) (journal : Path) :
    (freeze projection plan certificate journal).exactSource = projection.exactSource certificate ∧
    (freeze projection plan certificate journal).exactPreservation = projection.exactPreservation certificate ∧
    (freeze projection plan certificate journal).exactArchive = projection.exactArchive certificate ∧
    (freeze projection plan certificate journal).exactDestination = projection.exactDestination certificate ∧
    (freeze projection plan certificate journal).exactRaw = projection.exactRaw certificate := ⟨rfl,rfl,rfl,rfl,rfl⟩

def initialState {Path Native : Type} (native : Native) : State Path Native := ⟨⟨none,none⟩,native⟩

theorem initialState_no_candidates {Path Native : Type} (native : Native) :
    (initialState (Path := Path) native).paths.taxonomy = none ∧
      (initialState (Path := Path) native).paths.archive = none := ⟨rfl,rfl⟩

def orchestrate {Plan Certificate Inventory Tree Path Native Error Receipt : Type}
    (projection : Projections Plan Certificate Inventory Tree) (plan : Plan) (certificate : Certificate) (journal : Path)
    (primitive : Primitives Plan Certificate Inventory Tree Path Native Error Receipt)
    (reject : Rejected → Error) (native : Native) : Execution (State Path Native) Error Receipt :=
  execute (freeze projection plan certificate journal) primitive reject (initialState native)

theorem orchestrate_success_exact_receipt {Plan Certificate Inventory Tree Path Native Error Receipt : Type}
    (projection : Projections Plan Certificate Inventory Tree) (plan : Plan) (certificate : Certificate) (journal : Path)
    (primitive : Primitives Plan Certificate Inventory Tree Path Native Error Receipt)
    (reject : Rejected → Error) (native : Native) (final : State Path Native) (receipt : Receipt)
    (accepted : (orchestrate projection plan certificate journal primitive reject native).result = .ok (receipt,final)) :
    ∃ prepared verified : State Path Native,
      primitive.verifyOutputs plan journal prepared.native = .ok (receipt,verified.native) ∧
      primitive.recordReceipt journal receipt verified.native = .ok final.native :=
  execute_success_exact_output_primitive _ _ _ _ _ _ accepted

theorem orchestrate_success_frozen_trace {Plan Certificate Inventory Tree Path Native Error Receipt : Type}
    (projection : Projections Plan Certificate Inventory Tree) (plan : Plan) (certificate : Certificate) (journal : Path)
    (primitive : Primitives Plan Certificate Inventory Tree Path Native Error Receipt)
    (reject : Rejected → Error) (native : Native) (final : State Path Native) (receipt : Receipt)
    (accepted : (orchestrate projection plan certificate journal primitive reject native).result = .ok (receipt,final)) :
    (orchestrate projection plan certificate journal primitive reject native).trace =
      (program (projection.raw plan).length (projection.exactRaw certificate).length).map Event.step ++
        [.outputs,.receipt receipt] := execute_success_concrete_order _ _ _ _ _ _ accepted

end GRWTSK.ApplicationHostRefinement
