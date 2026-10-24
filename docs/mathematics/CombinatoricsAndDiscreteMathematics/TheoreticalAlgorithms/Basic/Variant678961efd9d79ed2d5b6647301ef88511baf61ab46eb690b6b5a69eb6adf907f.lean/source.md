# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Basic.Variant678961efd9d79ed2d5b6647301ef88511baf61ab46eb690b6b5a69eb6adf907f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cfd069b61308492c0205c2613faee6b7492fdf4b` · SHA-256 `678961efd9d79ed2d5b6647301ef88511baf61ab46eb690b6b5a69eb6adf907f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CaptureOrchestration.Basic
import Mathlib.Data.Finset.Basic

/-!
Concrete capture controllers consume primitive path, metadata, digest and byte
observations. Every branch and mutation below mirrors the finite controller
called by Runtime. Filesystem enumeration completeness, path normalization and
case folding, metadata authenticity, bounded reads, and serialization/hash
correctness remain interfaces. In particular these results do not establish an
atomic filesystem snapshot or discharge Runtime's outer traversal loop.
-/
namespace GRWTSK.CaptureHostRefinement
open CaptureConstruction

structure Header where
  schema : String
  root : String
  present : Bool
  directories : List String
  deriving DecidableEq

abbrev Inventory := CaptureOrchestration.Inventory Header

def header (root : String) (present : Bool) : Inventory :=
  ⟨⟨"noe.taxonomy-inventory/1",root,present,[]⟩,[],""⟩

inductive Rejected where
  | root | relativePath | caseCollision | symlink | nonregular | limit | directoryChanged | absentAppeared
  deriving DecidableEq

def rejectionCode : Rejected → String
  | .root => "DIRECTORY_ROOT_REQUIRED"
  | .relativePath => "RELATIVE_PATH_INVALID"
  | .caseCollision => "CASE_COLLISION"
  | .symlink => "SYMLINK_REJECTED"
  | .nonregular => "NONREGULAR_FILE"
  | .limit => "INVENTORY_LIMIT"
  | .directoryChanged | .absentAppeared => "SOURCE_READ_REJECTED"

structure Mutation (State Value : Type) where
  result : Except Rejected Value
  state : State
  deriving DecidableEq

def rootCheck (directory : Bool) : Except Rejected Unit :=
  if directory then .ok () else .error .root

def pathCheck (valid : Bool) (folded : String) (seen : Finset String) : Mutation (Finset String) Unit :=
  if valid then
    if folded ∈ seen then ⟨.error .caseCollision,seen⟩ else ⟨.ok (),insert folded seen⟩
  else ⟨.error .relativePath,seen⟩

def entryCheck (symlink directory regular : Bool) : Except Rejected Bool :=
  if symlink then .error .symlink
  else if directory then .ok true
  else if regular then .ok false else .error .nonregular

def directoryPush (directories : List String) (name : String) : Mutation (List String) Unit :=
  if directories.length < PlanResources.maxFiles then ⟨.ok (),directories ++ [name]⟩
  else ⟨.error .limit,directories⟩

structure FileState where
  observations : List Observation
  total : Nat
  deriving DecidableEq

def filePush (state : FileState) (event : Observation) : Mutation FileState Unit :=
  if acceptsPrefix state.observations.length state.total event.payload.length then
    ⟨.ok (),⟨state.observations ++ [event],state.total + event.payload.length⟩⟩
  else ⟨.error .limit,state⟩

def directoryCheck (directory symlink same : Bool) : Except Rejected Unit :=
  if directory && !symlink && same then .ok () else .error .directoryChanged

def absentCheck (absent : Bool) : Except Rejected Unit :=
  if absent then .ok () else .error .absentAppeared

theorem header_schema (root : String) (present : Bool) :
    (header root present).context.schema = "noe.taxonomy-inventory/1" := rfl

theorem header_root (root : String) (present : Bool) : (header root present).context.root = root := rfl

theorem header_exists (root : String) (present : Bool) : (header root present).context.present = present := rfl

theorem header_empty (root : String) (present : Bool) :
    (header root present).files = [] ∧ (header root present).context.directories = [] ∧
      (header root present).inventoryDigest = "" := ⟨rfl,rfl,rfl⟩

theorem rootCheck_exact (directory : Bool) : rootCheck directory = .ok () ↔ directory = true := by
  cases directory <;> decide

theorem rootCheck_rejection : rootCheck false = .error .root := rfl

theorem pathCheck_invalid (folded : String) (seen : Finset String) :
    pathCheck false folded seen = ⟨.error .relativePath,seen⟩ := rfl

theorem pathCheck_collision (folded : String) (seen : Finset String) (present : folded ∈ seen) :
    pathCheck true folded seen = ⟨.error .caseCollision,seen⟩ := by simp [pathCheck,present]

theorem pathCheck_fresh (folded : String) (seen : Finset String) (fresh : folded ∉ seen) :
    pathCheck true folded seen = ⟨.ok (),insert folded seen⟩ := by simp [pathCheck,fresh]

theorem pathCheck_success_iff (valid : Bool) (folded : String) (seen : Finset String) :
    (pathCheck valid folded seen).result = .ok () ↔ valid = true ∧ folded ∉ seen := by
  cases valid <;> by_cases present : folded ∈ seen <;> simp [pathCheck,present]

theorem pathCheck_failure_preserves (valid : Bool) (folded : String) (seen : Finset String)
    (error : Rejected) (failed : (pathCheck valid folded seen).result = .error error) :
    (pathCheck valid folded seen).state = seen := by
  cases valid <;> by_cases present : folded ∈ seen <;> simp_all [pathCheck]

theorem pathCheck_success_membership (valid : Bool) (folded query : String) (seen : Finset String)
    (accepted : (pathCheck valid folded seen).result = .ok ()) :
    query ∈ (pathCheck valid folded seen).state ↔ query = folded ∨ query ∈ seen := by
  obtain ⟨rfl,fresh⟩ := (pathCheck_success_iff _ _ _).mp accepted
  simp [pathCheck,fresh]

theorem entryCheck_symlink_first (directory regular : Bool) :
    entryCheck true directory regular = .error .symlink := rfl

theorem entryCheck_directory (regular : Bool) : entryCheck false true regular = .ok true := rfl

theorem entryCheck_regular : entryCheck false false true = .ok false := rfl

theorem entryCheck_nonregular : entryCheck false false false = .error .nonregular := rfl

theorem entryCheck_success_iff (symlink directory regular value : Bool) :
    entryCheck symlink directory regular = .ok value ↔
      symlink = false ∧ (directory = true ∧ value = true ∨ directory = false ∧ regular = true ∧ value = false) := by
  cases symlink <;> cases directory <;> cases regular <;> cases value <;> decide

theorem directoryPush_success (directories : List String) (name : String)
    (bounded : directories.length < PlanResources.maxFiles) :
    directoryPush directories name = ⟨.ok (),directories ++ [name]⟩ := by simp [directoryPush,bounded]

theorem directoryPush_failure (directories : List String) (name : String)
    (excess : PlanResources.maxFiles ≤ directories.length) :
    directoryPush directories name = ⟨.error .limit,directories⟩ := by
  simp [directoryPush,Nat.not_lt.mpr excess]

theorem directoryPush_success_iff (directories : List String) (name : String) :
    (directoryPush directories name).result = .ok () ↔ directories.length < PlanResources.maxFiles := by
  unfold directoryPush
  split <;> simp_all

theorem directoryPush_success_bound (directories : List String) (name : String)
    (accepted : (directoryPush directories name).result = .ok ()) :
    (directoryPush directories name).state.length ≤ PlanResources.maxFiles := by
  have bound := (directoryPush_success_iff _ _).mp accepted
  simp [directoryPush,bound]
  omega

theorem directoryPush_failure_preserves (directories : List String) (name : String)
    (failed : (directoryPush directories name).result = .error .limit) :
    (directoryPush directories name).state = directories := by
  by_cases bound : directories.length < PlanResources.maxFiles
  · simp [directoryPush,bound] at failed
  · simp [directoryPush,bound]

theorem filePush_success_iff (state : FileState) (event : Observation) :
    (filePush state event).result = .ok () ↔
      state.observations.length < PlanResources.maxFiles ∧
      event.payload.length ≤ PlanResources.maxFileBytes ∧ state.total + event.payload.length ≤ PlanResources.maxTotalBytes := by
  unfold filePush
  split <;> simp_all [acceptsPrefix_exact]

theorem filePush_success_exact (state : FileState) (event : Observation)
    (accepted : (filePush state event).result = .ok ()) :
    (filePush state event).state = ⟨state.observations ++ [event],state.total + event.payload.length⟩ := by
  unfold filePush at *
  split at accepted <;> simp_all

theorem filePush_failure_preserves (state : FileState) (event : Observation)
    (failed : (filePush state event).result = .error .limit) :
    (filePush state event).state = state := by
  unfold filePush at *
  split at failed <;> simp_all

theorem filePush_success_count (state : FileState) (event : Observation)
    (accepted : (filePush state event).result = .ok ()) :
    (filePush state event).state.observations.length = state.observations.length + 1 := by
  simp [filePush_success_exact _ _ accepted]

theorem filePush_success_literal_total (state : FileState) (event : Observation)
    (exact : state.total = (state.observations.map fun item => item.payload.length).sum)
    (accepted : (filePush state event).result = .ok ()) :
    (filePush state event).state.total =
      ((filePush state event).state.observations.map fun item => item.payload.length).sum := by
  simp [filePush_success_exact _ _ accepted,exact]

theorem filePush_success_nonwrapping (state : FileState) (event : Observation)
    (accepted : (filePush state event).result = .ok ()) :
    (filePush state event).state.total ≤ PlanResources.maxTotalBytes ∧
      (filePush state event).state.total < GreedyShards.u64Modulus := by
  rw [filePush_success_exact _ _ accepted]
  apply acceptsPrefix_nonwrapping (count := state.observations.length)
  unfold filePush at accepted
  split at accepted <;> simp_all

theorem filePush_preserves_observation_history (state : FileState) (event : Observation)
    (accepted : (filePush state event).result = .ok ()) :
    (filePush state event).state.observations.take state.observations.length = state.observations := by
  rw [filePush_success_exact _ _ accepted]
  simp

theorem directoryCheck_exact (directory symlink same : Bool) :
    directoryCheck directory symlink same = .ok () ↔ directory = true ∧ symlink = false ∧ same = true := by
  cases directory <;> cases symlink <;> cases same <;> decide

theorem directoryCheck_failure_exact (directory symlink same : Bool) :
    directoryCheck directory symlink same = .error .directoryChanged ↔
      directory = false ∨ symlink = true ∨ same = false := by
  cases directory <;> cases symlink <;> cases same <;> decide

theorem absentCheck_exact (absent : Bool) : absentCheck absent = .ok () ↔ absent = true := by
  cases absent <;> decide

theorem absentCheck_failure : absentCheck false = .error .absentAppeared := rfl

theorem rejectionCode_limit : rejectionCode .limit = "INVENTORY_LIMIT" := rfl

theorem rejectionCode_snapshot_errors :
    rejectionCode .directoryChanged = "SOURCE_READ_REJECTED" ∧
      rejectionCode .absentAppeared = "SOURCE_READ_REJECTED" := ⟨rfl,rfl⟩

/-- The remaining observation traversal is an explicit primitive interface. Its
returned full header is passed unchanged to the v12 pure construction driver. -/
structure Primitives (Native Error : Type) where
  absoluteRoot : Native → Except Error (String × Native)
  rootExists : String → Native → Except Error (Bool × Native)
  observe : Inventory → Native → Except Error ((Inventory × List Observation) × Native)
  digest : Inventory → Native → Except Error (String × Native)
  validate : Inventory → Native → Except Error Native

def prepare {Native Error : Type} (primitive : Primitives Native Error) (state : Native) :
    Except Error (Inventory × Native) :=
  match primitive.absoluteRoot state with
  | .error error => .error error
  | .ok (root,normalized) => match primitive.rootExists root normalized with
      | .error error => .error error
      | .ok (present,observed) => .ok (header root present,observed)

def host {Native Error : Type} (primitive : Primitives Native Error) :
    CaptureOrchestration.Host Header Native Error where
  prepare := prepare primitive
  observe := primitive.observe
  digest := primitive.digest
  validate := primitive.validate

theorem prepare_success_exact {Native Error : Type} (primitive : Primitives Native Error)
    (state final : Native) (inventory : Inventory)
    (accepted : prepare primitive state = .ok (inventory,final)) :
    ∃ root normalized present,
      primitive.absoluteRoot state = .ok (root,normalized) ∧
      primitive.rootExists root normalized = .ok (present,final) ∧ inventory = header root present := by
  unfold prepare at accepted
  cases rooted : primitive.absoluteRoot state with
  | error error => simp [rooted] at accepted
  | ok pair =>
      rcases pair with ⟨root,normalized⟩
      cases existed : primitive.rootExists root normalized with
      | error error => simp [rooted,existed] at accepted
      | ok pair =>
          rcases pair with ⟨present,observed⟩
          have same : header root present = inventory ∧ observed = final := by
            simpa [rooted,existed] using accepted
          exact ⟨root,normalized,present,rfl,by simpa [same.2] using existed,same.1.symm⟩

theorem prepare_root_error_stops {Native Error : Type} (primitive : Primitives Native Error)
    (state : Native) (error : Error) (failed : primitive.absoluteRoot state = .error error) :
    prepare primitive state = .error error := by simp [prepare,failed]

theorem prepare_exists_error_exact {Native Error : Type} (primitive : Primitives Native Error)
    (state normalized : Native) (root : String) (error : Error)
    (rooted : primitive.absoluteRoot state = .ok (root,normalized))
    (failed : primitive.rootExists root normalized = .error error) :
    prepare primitive state = .error error := by simp [prepare,rooted,failed]

theorem host_observe_arguments {Native Error : Type} (primitive : Primitives Native Error)
    (inventory : Inventory) (state : Native) :
    (host primitive).observe inventory state = primitive.observe inventory state := rfl

theorem host_digest_arguments {Native Error : Type} (primitive : Primitives Native Error)
    (inventory : Inventory) (state : Native) :
    (host primitive).digest inventory state = primitive.digest inventory state := rfl

theorem host_validate_arguments {Native Error : Type} (primitive : Primitives Native Error)
    (inventory : Inventory) (state : Native) :
    (host primitive).validate inventory state = primitive.validate inventory state := rfl

theorem concrete_capture_success_literal_constructor {Native Error : Type}
    (primitive : Primitives Native Error) (error : Error)
    (state final : CaptureOrchestration.DriverState Header Native)
    (accepted : (CaptureOrchestration.orchestrate (host primitive) error state).result = .ok final) :
    construct final.observations = some ⟨final.inventory.files,final.payloads⟩ :=
  CaptureOrchestration.orchestrate_success_literal_constructor _ _ _ _ accepted

theorem concrete_capture_success_literal_bounds {Native Error : Type}
    (primitive : Primitives Native Error) (error : Error)
    (state final : CaptureOrchestration.DriverState Header Native)
    (accepted : (CaptureOrchestration.orchestrate (host primitive) error state).result = .ok final) :
    final.payloads.length ≤ PlanResources.maxFiles ∧
      (final.payloads.map fun row => row.2.length).sum ≤ PlanResources.maxTotalBytes :=
  CaptureOrchestration.orchestrate_success_actual_byte_bounds _ _ _ _ accepted

theorem concrete_capture_success_validation {Native Error : Type}
    (primitive : Primitives Native Error) (error : Error)
    (state final : CaptureOrchestration.DriverState Header Native)
    (accepted : (CaptureOrchestration.orchestrate (host primitive) error state).result = .ok final) :
    ∃ before, primitive.validate final.inventory before = .ok final.native :=
  CaptureOrchestration.orchestrate_success_final_validation _ _ _ _ accepted

theorem fixture_header_absent : header "/frozen/source" false =
    ⟨⟨"noe.taxonomy-inventory/1","/frozen/source",false,[]⟩,[],""⟩ := rfl

theorem fixture_empty_file_accepts :
    (filePush ⟨[],0⟩ ⟨"A.lean","digest",.lean,[]⟩).result = .ok () := by decide

theorem fixture_directory_limit_unchanged (name : String) :
    directoryPush (List.replicate PlanResources.maxFiles "parent") name =
      ⟨.error .limit,List.replicate PlanResources.maxFiles "parent"⟩ := by
  apply directoryPush_failure
  simp


def acceptingPrimitives : Primitives Nat String where
  absoluteRoot native := .ok ("/frozen/source",native+1)
  rootExists _ native := .ok (false,native+1)
  observe inventory native := .ok ((inventory,[]),native+1)
  digest _ native := .ok ("observed-digest",native+1)
  validate _ native := .ok (native+1)

theorem fixture_concrete_capture_nonvacuous :
    CaptureOrchestration.result (host acceptingPrimitives) "construction-failed"
      ⟨header "initial" false,[],[],0⟩ =
      .ok (⟨⟨"noe.taxonomy-inventory/1","/frozen/source",false,[]⟩,[],"observed-digest"⟩,[]) := by decide

end GRWTSK.CaptureHostRefinement
```
