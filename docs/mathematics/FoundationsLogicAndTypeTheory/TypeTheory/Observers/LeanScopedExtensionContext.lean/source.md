# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.TypeTheory.Observers.LeanScopedExtensionContext

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `38da46455e098db0cc67e337643b79e70f025b1e` · SHA-256 `cdd5c0af38a7a8ec83cc15df2150f343f8bdd390fc5818d8e36a3eacfbf851fb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lean

/-! A narrow observation of the registered scoped-extension stacks in Lean 4.33.

Uses the upstream registry and StateStack APIs in Lean/ScopedEnvExtension.lean.
The host pins the upstream source and compiler. Runtime extension indices are
identities only within the bound observer process; the opaque extension values
and entry payloads are deliberately unavailable, not reconstructed or trusted.
-/
namespace LeanScopedExtensionContext
open Lean

def observe (env : Environment) : IO (Except String Json) := do
  let registry ← scopedEnvExtensionsRef.get
  if registry.size > 10000 then return .error "SCOPED_EXTENSION_REGISTRY_10000"
  let mut rows : Array Json := #[]
  for ext in registry do
    let stack := ext.ext.getState env |>.stateStack
    if stack.length > 128 then return .error "SCOPED_EXTENSION_STACK_128"
    let mut scopes : Array Json := #[]
    for state in stack do
      let active := state.activeScopes.toList.mergeSort Name.lt
      if active.length > 100000 then return .error "SCOPED_EXTENSION_NAMES_100000"
      scopes := scopes.push (Json.mkObj [("active_namespaces", toJson (active.map toString)),
        ("delimits_local", toJson state.delimitsLocal)])
    rows := rows.push (Json.mkObj [("runtime_extension_index", toJson ext.ext.toEnvExtension.idx),
      ("registered_name", toJson ext.descr.name.toString), ("scope_stack", toJson scopes)])
  let value := Json.mkObj [("profile", toJson "LEAN-REGISTERED-SCOPED-EXTENSION-STACKS/v1"),
    ("status", toJson "KNOWN_PARTIAL"), ("registry_size", toJson registry.size),
    ("extensions", toJson rows), ("runtime_identity_scope", toJson "BOUND_OBSERVER_PROCESS_ONLY"),
    ("complete_context", toJson "UNAVAILABLE"), ("kernel_admission", toJson "NOT_CLAIMED"),
    ("unavailable", toJson (["opaque_extension_state_values", "scoped_entry_payloads",
      "local_entry_history", "external_io_refs_or_custom_effects"] : List String))]
  if value.compress.utf8ByteSize > 4 * 1024 * 1024 then return .error "SCOPED_EXTENSION_JSON_BYTES_4_MIB"
  return .ok value

end LeanScopedExtensionContext
```
