namespace Formal.Checked.Projection.Flatten

inductive FlattenOperation where
  | replace
  | restrict
  | excise
  | collar
  | cap
  | graft
  | flow
  | surgeryCut
  | surgeryPaste
  | rollback
  | merge
  | replaceDefault
  deriving DecidableEq, Repr

structure LocalOverwrite (α : Type) where
  changedValue : α

def flattenValue {α : Type}
    (operation : FlattenOperation)
    (_inheritedValue : α)
    (overwrite : LocalOverwrite α) : α :=
  match operation with
  | .replace => overwrite.changedValue
  | .replaceDefault => overwrite.changedValue
  | .restrict => overwrite.changedValue
  | .excise => overwrite.changedValue
  | .collar => overwrite.changedValue
  | .cap => overwrite.changedValue
  | .graft => overwrite.changedValue
  | .flow => overwrite.changedValue
  | .surgeryCut => overwrite.changedValue
  | .surgeryPaste => overwrite.changedValue
  | .rollback => overwrite.changedValue
  | .merge => overwrite.changedValue

theorem localOverwriteFlatten_replace {α : Type}
    (inheritedValue : α)
    (overwrite : LocalOverwrite α) :
    flattenValue .replace inheritedValue overwrite = overwrite.changedValue := by
  rfl

theorem localOverwriteFlatten_restrict {α : Type}
    (inheritedValue : α)
    (overwrite : LocalOverwrite α) :
    flattenValue .restrict inheritedValue overwrite = overwrite.changedValue := by
  rfl

theorem localOverwriteFlatten_excise {α : Type}
    (inheritedValue : α)
    (overwrite : LocalOverwrite α) :
    flattenValue .excise inheritedValue overwrite = overwrite.changedValue := by
  rfl

theorem localOverwriteFlatten_collar {α : Type}
    (inheritedValue : α)
    (overwrite : LocalOverwrite α) :
    flattenValue .collar inheritedValue overwrite = overwrite.changedValue := by
  rfl

theorem localOverwriteFlatten_cap {α : Type}
    (inheritedValue : α)
    (overwrite : LocalOverwrite α) :
    flattenValue .cap inheritedValue overwrite = overwrite.changedValue := by
  rfl

theorem localOverwriteFlatten_graft {α : Type}
    (inheritedValue : α)
    (overwrite : LocalOverwrite α) :
    flattenValue .graft inheritedValue overwrite = overwrite.changedValue := by
  rfl

theorem localOverwriteFlatten_flow {α : Type}
    (inheritedValue : α)
    (overwrite : LocalOverwrite α) :
    flattenValue .flow inheritedValue overwrite = overwrite.changedValue := by
  rfl

theorem localOverwriteFlatten_surgeryCut {α : Type}
    (inheritedValue : α)
    (overwrite : LocalOverwrite α) :
    flattenValue .surgeryCut inheritedValue overwrite = overwrite.changedValue := by
  rfl

theorem localOverwriteFlatten_surgeryPaste {α : Type}
    (inheritedValue : α)
    (overwrite : LocalOverwrite α) :
    flattenValue .surgeryPaste inheritedValue overwrite = overwrite.changedValue := by
  rfl

theorem localOverwriteFlatten_rollback {α : Type}
    (inheritedValue : α)
    (overwrite : LocalOverwrite α) :
    flattenValue .rollback inheritedValue overwrite = overwrite.changedValue := by
  rfl

theorem localOverwriteFlatten_merge {α : Type}
    (inheritedValue : α)
    (overwrite : LocalOverwrite α) :
    flattenValue .merge inheritedValue overwrite = overwrite.changedValue := by
  rfl

theorem localOverwriteFlatten_replaceDefault {α : Type}
    (inheritedValue : α)
    (overwrite : LocalOverwrite α) :
    flattenValue .replaceDefault inheritedValue overwrite = overwrite.changedValue := by
  rfl

def repertoire : List FlattenOperation :=
  [ .replace
  , .restrict
  , .excise
  , .collar
  , .cap
  , .graft
  , .flow
  , .surgeryCut
  , .surgeryPaste
  , .rollback
  , .merge
  , .replaceDefault
  ]

theorem replace_is_default :
    repertoire.head? = some FlattenOperation.replace := by
  rfl

end Formal.Checked.Projection.Flatten
