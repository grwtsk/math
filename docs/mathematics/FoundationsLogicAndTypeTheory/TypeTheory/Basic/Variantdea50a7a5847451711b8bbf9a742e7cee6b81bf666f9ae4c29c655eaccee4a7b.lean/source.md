# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.Basic.Variantdea50a7a5847451711b8bbf9a742e7cee6b81bf666f9ae4c29c655eaccee4a7b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b9af39f7bab8929b4020ca69bc8abd01ea6118ac` · SHA-256 `dea50a7a5847451711b8bbf9a742e7cee6b81bf666f9ae4c29c655eaccee4a7b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.OccurrencePlans.Basic

/-!
Literal-byte certificate semantics. Slots decode to `List UInt8`; no digest
injectivity premise occurs. The reader's correspondence to OS observations and
the frontend's faithful construction of the concrete data remain distinct
interfaces. Exact expected/observed read-set equality includes empty directories,
absence, roots, file names, and every byte-object reference.
-/
namespace GRWTSK.SourceRefinement

abbrev Bytes := List UInt8
abbrev SourceKey := Nat × String
abbrev TargetKey := Nat × String

structure ReadSet where
  root : String
  present : Bool
  directories : List String
  files : List (String × Nat)
  deriving DecidableEq

structure Binding where
  sourceSet : Nat
  sourcePath : String
  area : Nat
  target : String
  deriving DecidableEq

structure Occurrence where
  binding : Binding
  object : Nat
  deriving DecidableEq

structure Output where
  area : Nat
  path : String
  object : Nat
  deriving DecidableEq

deriving instance DecidableEq for OccurrencePlans.Occurrence

abbrev ByteOccurrence := OccurrencePlans.Occurrence SourceKey TargetKey Bytes
abbrev ByteOutput := OccurrencePlans.Output TargetKey Bytes

variable (objects : List Bytes) (sets : List ReadSet)

def slot (name : String) : List (String × Nat) → Option Nat
  | [] => none
  | (path, index) :: rest => if name = path then some index else slot name rest

def sourcePayload (binding : Binding) : Option Bytes := do
  let set ← sets[binding.sourceSet]?
  let index ← slot binding.sourcePath set.files
  objects[index]?

def realize : List Binding → Option (List ByteOccurrence)
  | [] => some []
  | binding :: rest => do
      let payload ← sourcePayload objects sets binding
      let tail ← realize rest
      pure (⟨(binding.sourceSet, binding.sourcePath), (binding.area, binding.target), payload⟩ :: tail)

def renderOccurrences : List Occurrence → Option (List ByteOccurrence)
  | [] => some []
  | occurrence :: rest => do
      let payload ← objects[occurrence.object]?
      let tail ← renderOccurrences rest
      pure (⟨(occurrence.binding.sourceSet, occurrence.binding.sourcePath),
        (occurrence.binding.area, occurrence.binding.target), payload⟩ :: tail)

def renderOutputs : List Output → Option (List ByteOutput)
  | [] => some []
  | output :: rest => do
      let payload ← objects[output.object]?
      let tail ← renderOutputs rest
      pure (⟨(output.area, output.path), payload⟩ :: tail)

def keysAt (index : Nat) : List SourceKey :=
  match sets[index]? with
  | none => []
  | some set => set.files.map fun file => (index, file.1)

/-- Rust certificates list raw occurrence actions first, then prepared mappings. -/
def completeSourceKeys : List SourceKey :=
  ((List.range (sets.length - 4)).flatMap fun index => keysAt sets (index + 4)) ++ keysAt sets 0

def bindingKeys (bindings : List Binding) : List SourceKey :=
  bindings.map fun binding => (binding.sourceSet, binding.sourcePath)

def canonicalReadSet (set : ReadSet) : Prop :=
  (set.files.map Prod.fst).Pairwise (· < ·) ∧ set.directories.Pairwise (· < ·) ∧
  (set.present = false → set.files = [] ∧ set.directories = []) ∧
  ∀ file ∈ set.files, (objects[file.2]?).isSome = true

instance (set : ReadSet) : Decidable (canonicalReadSet objects set) := inferInstanceAs
  (Decidable ((set.files.map Prod.fst).Pairwise (· < ·) ∧ set.directories.Pairwise (· < ·) ∧
  (set.present = false → set.files = [] ∧ set.directories = []) ∧
  ∀ file ∈ set.files, (objects[file.2]?).isSome = true))

def readsetsCheck : Bool := decide (4 ≤ sets.length) &&
  sets.all fun set => decide (canonicalReadSet objects set)

def coverageCheck (occurrences : List Occurrence) (outputs : List Output) : Bool :=
  match renderOccurrences objects occurrences, renderOutputs objects outputs with
  | some entries, some result => OccurrencePlans.coverageCheck result entries
  | _, _ => false

def certificateCheck (expected observed : List ReadSet) (bindings : List Binding)
    (occurrences : List Occurrence) (outputs : List Output) : Bool :=
  readsetsCheck objects expected && decide (expected = observed) &&
  decide (bindingKeys bindings = completeSourceKeys expected) &&
  decide (realize objects observed bindings = renderOccurrences objects occurrences) &&
  (realize objects observed bindings).isSome && coverageCheck objects occurrences outputs

theorem readsetsCheck_spec : readsetsCheck objects sets = true ↔
    4 ≤ sets.length ∧ ∀ set ∈ sets, canonicalReadSet objects set := by
  simp [readsetsCheck]

theorem certificateCheck_spec (expected observed : List ReadSet) (bindings : List Binding)
    (occurrences : List Occurrence) (outputs : List Output) :
    certificateCheck objects expected observed bindings occurrences outputs = true ↔
      (4 ≤ expected.length ∧ ∀ set ∈ expected, canonicalReadSet objects set) ∧
      expected = observed ∧ bindingKeys bindings = completeSourceKeys expected ∧
      realize objects observed bindings = renderOccurrences objects occurrences ∧
      (realize objects observed bindings).isSome = true ∧
      coverageCheck objects occurrences outputs = true := by
  simp [certificateCheck, readsetsCheck_spec, and_assoc]

variable {objects sets}

theorem accepted_readset_exact {expected observed : List ReadSet} {bindings : List Binding}
    {occurrences : List Occurrence} {outputs : List Output}
    (accepted : certificateCheck objects expected observed bindings occurrences outputs = true) :
    expected = observed :=
  ((certificateCheck_spec objects expected observed bindings occurrences outputs).mp accepted).2.1

theorem accepted_complete_source_keys {expected observed : List ReadSet} {bindings : List Binding}
    {occurrences : List Occurrence} {outputs : List Output}
    (accepted : certificateCheck objects expected observed bindings occurrences outputs = true) :
    bindingKeys bindings = completeSourceKeys expected :=
  ((certificateCheck_spec objects expected observed bindings occurrences outputs).mp accepted).2.2.1

theorem stale_literal_readset_rejected (objects : List Bytes)
    (expected observed : List ReadSet) (bindings : List Binding)
    (occurrences : List Occurrence) (outputs : List Output) (drift : expected ≠ observed) :
    certificateCheck objects expected observed bindings occurrences outputs = false := by
  simp [certificateCheck, drift]

theorem omitted_source_occurrence_rejected (objects : List Bytes)
    (expected observed : List ReadSet) (bindings : List Binding)
    (occurrences : List Occurrence) (outputs : List Output)
    (omitted : bindingKeys bindings ≠ completeSourceKeys expected) :
    certificateCheck objects expected observed bindings occurrences outputs = false := by
  simp [certificateCheck, omitted]

theorem sourcePayload_exact {binding : Binding} {set : ReadSet} {index : Nat}
    {payload : Bytes} (readSet : sets[binding.sourceSet]? = some set)
    (file : slot binding.sourcePath set.files = some index)
    (literal : objects[index]? = some payload) :
    sourcePayload objects sets binding = some payload := by
  simp [sourcePayload, readSet, file, literal]

theorem missing_source_slot_rejected {binding : Binding} {set : ReadSet}
    (readSet : sets[binding.sourceSet]? = some set)
    (missing : slot binding.sourcePath set.files = none) :
    sourcePayload objects sets binding = none := by
  simp [sourcePayload, readSet, missing]

theorem coverageCheck_sound {occurrences : List Occurrence} {outputs : List Output}
    (covered : coverageCheck objects occurrences outputs = true) :
    ∃ entries result,
      renderOccurrences objects occurrences = some entries ∧
      renderOutputs objects outputs = some result ∧ OccurrencePlans.Covered result entries := by
  unfold coverageCheck at covered
  split at covered
  next entries result hentries hresult =>
    exact ⟨entries, result, hentries, hresult,
      (OccurrencePlans.coverageCheck_eq_true_iff _ _).mp covered⟩
  next => contradiction

/-- Every certified ordered occurrence reconstructs the exact resolved source
payload, including repeated content and repeated targets. -/
theorem accepted_exact_decode {expected observed : List ReadSet} {bindings : List Binding}
    {occurrences : List Occurrence} {outputs : List Output}
    (accepted : certificateCheck objects expected observed bindings occurrences outputs = true) :
    ∃ entries result,
      realize objects expected bindings = some entries ∧
      renderOccurrences objects occurrences = some entries ∧
      renderOutputs objects outputs = some result ∧
      OccurrencePlans.decode result (OccurrencePlans.references entries) = some entries := by
  have facts := (certificateCheck_spec objects expected observed bindings occurrences outputs).mp accepted
  obtain ⟨entries, result, hentries, hresult, covered⟩ := coverageCheck_sound facts.2.2.2.2.2
  refine ⟨entries, result, ?_, hentries, hresult,
    OccurrencePlans.decode_references_of_coverage covered⟩
  rw [facts.2.1, facts.2.2.2.1, hentries]

/-- A dictionary's numeric slot is only a reference; successful decoding gives
literal byte equality even when the hash label function is non-injective. -/
theorem same_literal_slot_equal {first second : Bytes} {index : Nat}
    (a : objects[index]? = some first) (b : objects[index]? = some second) : first = second :=
  Option.some.inj (a.symm.trans b)

theorem digest_equality_does_not_imply_bytes (digest : Bytes → Nat)
    (constant : ∀ bytes, digest bytes = 0) :
    ∃ first second : Bytes, digest first = digest second ∧ first ≠ second := by
  refine ⟨[], [0], ?_, by decide⟩
  rw [constant, constant]

def targetLess (first second : TargetKey) : Prop :=
  first.1 < second.1 ∨ (first.1 = second.1 ∧ first.2 < second.2)

instance (first second : TargetKey) : Decidable (targetLess first second) := inferInstanceAs
  (Decidable (first.1 < second.1 ∨ (first.1 = second.1 ∧ first.2 < second.2)))

def outputKeys (outputs : List Output) : List TargetKey :=
  outputs.map fun output => (output.area, output.path)

/-- The complete-plan wrapper freezes the literal table separately from the
observed table and checks an independently derived complete output inventory.
The derivation of `expectedOutputs` is an explicit frontend interface. -/
def planCertificateCheck (expectedObjects observedObjects : List Bytes)
    (expected observed : List ReadSet) (bindings : List Binding)
    (occurrences : List Occurrence) (expectedOutputs outputs : List Output) : Bool :=
  decide (expectedObjects = observedObjects) && decide (expectedOutputs = outputs) &&
  decide ((outputKeys outputs).Pairwise targetLess) &&
  certificateCheck observedObjects expected observed bindings occurrences outputs

theorem planCertificateCheck_spec (expectedObjects observedObjects : List Bytes)
    (expected observed : List ReadSet) (bindings : List Binding)
    (occurrences : List Occurrence) (expectedOutputs outputs : List Output) :
    planCertificateCheck expectedObjects observedObjects expected observed bindings occurrences
      expectedOutputs outputs = true ↔
      expectedObjects = observedObjects ∧ expectedOutputs = outputs ∧
      (outputKeys outputs).Pairwise targetLess ∧
      certificateCheck observedObjects expected observed bindings occurrences outputs = true := by
  simp [planCertificateCheck, and_assoc]

theorem accepted_literal_objects_exact {expectedObjects observedObjects : List Bytes}
    {expected observed : List ReadSet} {bindings : List Binding}
    {occurrences : List Occurrence} {expectedOutputs outputs : List Output}
    (accepted : planCertificateCheck expectedObjects observedObjects expected observed bindings
      occurrences expectedOutputs outputs = true) : expectedObjects = observedObjects :=
  ((planCertificateCheck_spec _ _ _ _ _ _ _ _).mp accepted).1

theorem accepted_output_inventory_exact {expectedObjects observedObjects : List Bytes}
    {expected observed : List ReadSet} {bindings : List Binding}
    {occurrences : List Occurrence} {expectedOutputs outputs : List Output}
    (accepted : planCertificateCheck expectedObjects observedObjects expected observed bindings
      occurrences expectedOutputs outputs = true) : expectedOutputs = outputs :=
  ((planCertificateCheck_spec _ _ _ _ _ _ _ _).mp accepted).2.1

theorem accepted_output_keys_unique {expectedObjects observedObjects : List Bytes}
    {expected observed : List ReadSet} {bindings : List Binding}
    {occurrences : List Occurrence} {expectedOutputs outputs : List Output}
    (accepted : planCertificateCheck expectedObjects observedObjects expected observed bindings
      occurrences expectedOutputs outputs = true) : (outputKeys outputs).Nodup := by
  have ordered := ((planCertificateCheck_spec _ _ _ _ _ _ _ _).mp accepted).2.2.1
  apply ordered.imp
  intro first second less same
  subst second
  rcases less with h | ⟨_, h⟩
  · exact Nat.lt_irrefl _ h
  · simp at h

theorem literal_payload_drift_rejected (expectedObjects observedObjects : List Bytes)
    (expected observed : List ReadSet) (bindings : List Binding)
    (occurrences : List Occurrence) (expectedOutputs outputs : List Output)
    (drift : expectedObjects ≠ observedObjects) :
    planCertificateCheck expectedObjects observedObjects expected observed bindings occurrences
      expectedOutputs outputs = false := by
  simp [planCertificateCheck, drift]

theorem changed_output_inventory_rejected (expectedObjects observedObjects : List Bytes)
    (expected observed : List ReadSet) (bindings : List Binding)
    (occurrences : List Occurrence) (expectedOutputs outputs : List Output)
    (drift : expectedOutputs ≠ outputs) :
    planCertificateCheck expectedObjects observedObjects expected observed bindings occurrences
      expectedOutputs outputs = false := by
  simp [planCertificateCheck, drift]

theorem plan_certificate_exact_decode {expectedObjects observedObjects : List Bytes}
    {expected observed : List ReadSet} {bindings : List Binding}
    {occurrences : List Occurrence} {expectedOutputs outputs : List Output}
    (accepted : planCertificateCheck expectedObjects observedObjects expected observed bindings
      occurrences expectedOutputs outputs = true) :
    ∃ entries result,
      realize expectedObjects expected bindings = some entries ∧
      renderOccurrences observedObjects occurrences = some entries ∧
      renderOutputs observedObjects outputs = some result ∧
      OccurrencePlans.decode result (OccurrencePlans.references entries) = some entries := by
  have facts := (planCertificateCheck_spec _ _ _ _ _ _ _ _).mp accepted
  obtain ⟨entries, result, hsource, hentries, hresult, decoded⟩ := accepted_exact_decode facts.2.2.2
  exact ⟨entries, result, facts.1.symm ▸ hsource, hentries, hresult, decoded⟩

example : certificateCheck [[0], []]
    [⟨"source", true, [], [("A.lean", 0)]⟩, ⟨"destination", false, [], []⟩,
     ⟨"archive", false, [], []⟩, ⟨"preservation", true, [], [("object", 0)]⟩]
    [⟨"source", true, [], [("A.lean", 0)]⟩, ⟨"destination", false, [], []⟩,
     ⟨"archive", false, [], []⟩, ⟨"preservation", true, [], [("object", 0)]⟩]
    [⟨0, "A.lean", 0, "Logic/A.lean"⟩]
    [⟨⟨0, "A.lean", 0, "Logic/A.lean"⟩, 0⟩]
    [⟨0, "Logic/A.lean", 0⟩] = true := by decide

end GRWTSK.SourceRefinement
```
