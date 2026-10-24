# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DescriptorStoreTransitions

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b089d2fbd5a2ddb60b13c2e5a87234dab98f3ff7` · SHA-256 `c844c094cde39fcf31454a4d9a168946965fa568f29ca9f711f357dd1f999ba5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.SnapshotPublicationTransitions

/-!
# Descriptor operations and conditional transaction refinement

Source correspondence: `transaction/fs.rs::{read,rename_exclusive}` and
`transaction.rs::{verify,check_moved_preimage,retire}`. This development specifies
the OS boundary those functions require. It does not postulate that Rust, rustix,
the compiler, a filesystem, or an external grant implements that boundary.
Literal lists of bytes are compared; no digest injectivity axiom is present.

Names are parent-inode/component pairs; open descriptors bind inode identities.
Path resolution never follows symbolic links. A detached descriptor remains
readable, which demonstrates why the Rust adapter must separately recheck path
attachment. Durable stores are distinct from volatile stores. The directory-sync
model assumes a successful sync persists that directory's entries and preserves
already durable entries of other directories. Real host applicability, sync
failure behavior and power-loss semantics remain external obligations.
-/

namespace GRWTSK.FilesystemRefinement

abbrev Bytes := List UInt8
abbrev Inode := Nat
abbrev Descriptor := Nat

structure Name where
  parent : Inode
  component : String
  deriving DecidableEq, Repr

inductive Node where
  | directory
  | regular (bytes : Bytes)
  | symbolic (target : List String)
  deriving DecidableEq, Repr

structure Store where
  names : Name → Option Inode
  nodes : Inode → Option Node

structure Host where
  live : Store
  durable : Store
  descriptors : Descriptor → Option Inode

/-- Lexical resolution under the open root; symbolic nodes are never followed. -/
def resolveFrom (store : Store) (start : Inode) : List String → Option Inode
  | [] => some start
  | component :: tail => do
      if store.nodes start != some .directory then none else
        let child ← store.names ⟨start, component⟩
        resolveFrom store child tail

def Attached (host : Host) (fd : Descriptor) (root : Inode) (path : List String) : Prop :=
  ∃ inode, host.descriptors fd = some inode ∧
    resolveFrom host.live root path = some inode ∧ host.live.nodes inode = some .directory

theorem absent_descriptor_is_not_attached (host : Host) (fd : Descriptor)
    (root : Inode) (path : List String) (absent : host.descriptors fd = none) :
    ¬ Attached host fd root path := by
  simp [Attached, absent]

def readAt (host : Host) (fd : Descriptor) (component : String) : Option Bytes := do
  let parent ← host.descriptors fd
  if host.live.nodes parent != some .directory then none else
    let child ← host.live.names ⟨parent, component⟩
    match host.live.nodes child with
    | some (.regular bytes) => some bytes
    | _ => none

theorem resolveFrom_regular_rejects (store : Store) (start : Inode)
    (bytes : Bytes) (regular : store.nodes start = some (.regular bytes))
    (component : String) (tail : List String) :
    resolveFrom store start (component :: tail) = none := by
  simp [resolveFrom, regular]

theorem resolveFrom_symbolic_rejects (store : Store) (start : Inode)
    (target : List String) (symbolic : store.nodes start = some (.symbolic target))
    (component : String) (tail : List String) :
    resolveFrom store start (component :: tail) = none := by
  simp [resolveFrom, symbolic]

theorem readAt_exact (host : Host) (fd : Descriptor) (component : String)
    (parent child : Inode) (bytes : Bytes)
    (opened : host.descriptors fd = some parent)
    (directory : host.live.nodes parent = some .directory)
    (named : host.live.names ⟨parent, component⟩ = some child)
    (payload : host.live.nodes child = some (.regular bytes)) :
    readAt host fd component = some bytes := by
  simp [readAt, opened, directory, named, payload]

theorem readAt_rejects_symbolic (host : Host) (fd : Descriptor) (component : String)
    (parent child : Inode) (target : List String)
    (opened : host.descriptors fd = some parent)
    (directory : host.live.nodes parent = some .directory)
    (named : host.live.names ⟨parent, component⟩ = some child)
    (symbolic : host.live.nodes child = some (.symbolic target)) :
    readAt host fd component = none := by
  simp [readAt, opened, directory, named, symbolic]

/-- The two name updates made by a successful NOREPLACE rename. -/
def renamed (store : Store) (source target : Name) (inode : Inode) : Store where
  names := fun name => if name = source then none else
    if name = target then some inode else store.names name
  nodes := store.nodes

def renameExclusive (store : Store) (source target : Name) : Option Store :=
  if source = target then none else
  match store.names source, store.names target with
  | some inode, none => some (renamed store source target inode)
  | _, _ => none

theorem occupied_target_blocks_rename (store : Store) (source target : Name)
    (occupied : Inode) (present : store.names target = some occupied) :
    renameExclusive store source target = none := by
  simp [renameExclusive, present]

theorem absent_source_blocks_rename (store : Store) (source target : Name)
    (absent : store.names source = none) :
    renameExclusive store source target = none := by
  simp [renameExclusive, absent]

theorem exclusive_rename_moves_exact_inode (store : Store) (source target : Name)
    (inode : Inode) (different : source ≠ target)
    (present : store.names source = some inode) (empty : store.names target = none) :
    renameExclusive store source target = some (renamed store source target inode) ∧
      (renamed store source target inode).names source = none ∧
      (renamed store source target inode).names target = some inode := by
  simp [renameExclusive, renamed, different, Ne.symm different, present, empty]

theorem exclusive_rename_preserves_other_names (store : Store) (source target other : Name)
    (inode : Inode) (notSource : other ≠ source) (notTarget : other ≠ target) :
    (renamed store source target inode).names other = store.names other := by
  simp [renamed, notSource, notTarget]

theorem exclusive_rename_preserves_all_inode_bytes (store : Store)
    (source target : Name) (inode other : Inode) :
    (renamed store source target inode).nodes other = store.nodes other := rfl

/-- A successful file sync affects one durable inode, without granting authority. -/
def syncFile (host : Host) (inode : Inode) : Host :=
  { host with durable.nodes := fun other =>
      if other = inode then host.live.nodes other else host.durable.nodes other }

/-- Per-directory successful sync, explicitly an OS assumption at deployment. -/
def syncDirectory (host : Host) (parent : Inode) : Host :=
  { host with durable.names := fun name =>
      if name.parent = parent then host.live.names name else host.durable.names name }

def crash (host : Host) : Host :=
  { host with live := host.durable, descriptors := fun _ => none }

theorem crash_closes_descriptors (host : Host) (fd : Descriptor) :
    (crash host).descriptors fd = none := rfl

theorem crash_reads_only_durable_bytes (host : Host) (inode : Inode) :
    (crash host).live.nodes inode = host.durable.nodes inode := rfl

theorem synced_file_survives_crash (host : Host) (inode : Inode) :
    (crash (syncFile host inode)).live.nodes inode = host.live.nodes inode := by
  simp [crash, syncFile]

theorem synced_directory_survives_crash (host : Host) (name : Name) :
    (crash (syncDirectory host name.parent)).live.names name = host.live.names name := by
  simp [crash, syncDirectory]

/-- Even before a target sync, the original durable name is retained. -/
theorem rename_before_sync_retains_durable_source (host : Host) (source target : Name)
    (inode : Inode) (durableSource : host.durable.names source = some inode) :
    (crash { host with live := renamed host.live source target inode }).live.names source =
      some inode := durableSource

/-- The target-first sync in Rust preserves at least one durable name even when
source and target have the same parent: in that case the target itself survives. -/
theorem target_first_sync_retains_exact_inode (host : Host) (source target : Name)
    (inode : Inode) (different : source ≠ target) :
    (crash (syncDirectory
      { host with live := renamed host.live source target inode } target.parent)).live.names target =
      some inode := by
  simp [crash, syncDirectory, renamed, Ne.symm different]

theorem completed_rename_syncs_persist_target (host : Host) (source target : Name)
    (inode : Inode) (different : source ≠ target) :
    (crash (syncDirectory (syncDirectory
      { host with live := renamed host.live source target inode } target.parent)
      source.parent)).live.names target = some inode := by
  simp [crash, syncDirectory, renamed, Ne.symm different]

/-- Old source-first order can persist removal without persisting the new name. -/
theorem source_first_sync_can_lose_both_names (host : Host) (source target : Name)
    (inode : Inode) (differentParents : source.parent ≠ target.parent)
    (targetNotDurable : host.durable.names target = none) :
    let afterRename := { host with live := renamed host.live source target inode }
    (crash (syncDirectory afterRename source.parent)).live.names source = none ∧
      (crash (syncDirectory afterRename source.parent)).live.names target = none := by
  simp [crash, syncDirectory, renamed, Ne.symm differentParents, targetNotDurable]

/-- Retaining the same descriptor/inode does not imply attachment to a live path. -/
theorem descriptor_equality_does_not_imply_attachment :
    ∃ host : Host, host.descriptors 7 = some 1 ∧
      ¬ Attached host 7 0 ["live"] := by
  let empty : Store := ⟨fun _ => none, fun _ => none⟩
  let live : Store := ⟨fun _ => some 2,
    fun inode => if inode = 0 then some .directory else none⟩
  let host : Host := ⟨live, empty, fun _ => some 1⟩
  exact ⟨host, rfl, by simp [Attached, resolveFrom, host, live]⟩

namespace Transaction

open FoundationsLogicAndTypeTheory.MathematicalLogic.GovernedTransactions

/-- Exact observations checked by `verify`, the retained-preimage readback, and
the source readback in `retire`. Neither hash labels nor grant claims occur here. -/
def retirementCheck (context : Retirement.Context) (state : Retirement.State) : Bool :=
  decide (state.phase = .readback) && state.verifiedNow && state.readbackSeen &&
  decide (state.destination = some context.desired) &&
  decide (state.sourcePreimage = some context.source) &&
  decide (state.destinationPreimage = context.destination) &&
  decide (state.source = some context.source) && decide (state.retiredSource = none)

theorem retirementCheck_exact (context : Retirement.Context) (state : Retirement.State) :
    retirementCheck context state = true ↔
      state.phase = .readback ∧ state.verifiedNow = true ∧ state.readbackSeen = true ∧
      state.destination = some context.desired ∧
      state.sourcePreimage = some context.source ∧
      state.destinationPreimage = context.destination ∧
      state.source = some context.source ∧ state.retiredSource = none := by
  simp [retirementCheck, and_assoc]

/-- This is conditional refinement of the concrete observation check: the caller
must independently establish that the observation still describes the host at
the rename linearization point and that the external operation is authorized. -/
theorem checked_retirement_refines_guarded_step
    (Granted : Retirement.Operation → Prop) (context : Retirement.Context)
    (state : Retirement.State) (checked : retirementCheck context state = true)
    (externalGrant : Granted .retire) :
    Retirement.Step Granted context .retire state
      { state with phase := .retired, source := none, retiredSource := some context.source } := by
  obtain ⟨phase, verified, seen, destination, sourcePreimage, destinationPreimage,
    source, emptyRetired⟩ := (retirementCheck_exact context state).mp checked
  exact .retire state phase verified seen destination sourcePreimage
    destinationPreimage source emptyRetired externalGrant

theorem stale_source_rejects_retirement (context : Retirement.Context)
    (state : Retirement.State) (stale : state.source ≠ some context.source) :
    retirementCheck context state = false := by
  simp [retirementCheck, stale]

theorem stale_destination_rejects_retirement (context : Retirement.Context)
    (state : Retirement.State) (stale : state.destination ≠ some context.desired) :
    retirementCheck context state = false := by
  simp [retirementCheck, stale]

theorem no_readback_rejects_retirement (context : Retirement.Context)
    (state : Retirement.State) (unseen : state.readbackSeen = false) :
    retirementCheck context state = false := by
  simp [retirementCheck, unseen]

theorem checked_retirement_retains_literal_source
    (Granted : Retirement.Operation → Prop) (context : Retirement.Context)
    (state : Retirement.State) (checked : retirementCheck context state = true)
    (externalGrant : Granted .retire) :
    let after := { state with phase := .retired, source := none, retiredSource := some context.source }
    after.retiredSource = some context.source ∧
      after.sourcePreimage = some context.source ∧ after.destination = some context.desired := by
  have step := checked_retirement_refines_guarded_step Granted context state checked externalGrant
  exact (Retirement.retire_preserves_source_as_preimage step).2

end Transaction
end GRWTSK.FilesystemRefinement
```
