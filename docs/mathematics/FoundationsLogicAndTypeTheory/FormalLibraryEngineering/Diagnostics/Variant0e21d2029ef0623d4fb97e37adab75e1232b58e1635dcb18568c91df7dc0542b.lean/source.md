# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Diagnostics.Variant0e21d2029ef0623d4fb97e37adab75e1232b58e1635dcb18568c91df7dc0542b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1cb4711929f294c53b5f45b7792902ed8b598f5a` · SHA-256 `534c369aa09f38ab9b7998854aca4c1a0b075fd23c76e494370329ac87dc4f6d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DiagSummary.Variant4edad35b736c4ffcff7289ea25813e19f34a0b023eb1ef03e607c2992ffb62bd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4edad35b736c4ffcff7289ea25813e19f34a0b023eb1ef03e607c2992ffb62bd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.DiagSummary.Variant4edad35b736c4ffcff7289ea25813e19f34a0b023eb1ef03e607c2992ffb62bd","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"4edad35b736c4ffcff7289ea25813e19f34a0b023eb1ef03e607c2992ffb62bd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Diagnostics.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.Basic
import Lean.PrettyPrinter


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DiagSummary.Variant4edad35b736c4ffcff7289ea25813e19f34a0b023eb1ef03e607c2992ffb62bd

public section

namespace Lean.Meta

def collectAboveThreshold [BEq α] [Hashable α] (counters : PHashMap α Nat) (threshold : Nat) (p : α → Bool) (lt : α → α → Bool) : Array (α × Nat) := Id.run do
  let mut r := #[]
  for (declName, counter) in counters do
    if counter > threshold then
    if p declName then
      r := r.push (declName, counter)
  return r.qsort fun (d₁, c₁) (d₂, c₂) => if c₁ == c₂ then lt d₁ d₂ else c₁ > c₂

def subCounters [BEq α] [Hashable α] (newCounters oldCounters : PHashMap α Nat) : PHashMap α Nat := Id.run do
  let mut result := {}
  for (a, counterNew) in newCounters do
    if let some counterOld := oldCounters.find? a then
      result := result.insert a (counterNew - counterOld)
    else
      result := result.insert a counterNew
  return result

structure DiagSummary where
  data  : Array MessageData := #[]
  max   : Nat := 0
  deriving Inhabited

def DiagSummary.isEmpty (s : DiagSummary) : Bool :=
  s.data.isEmpty

def mkDiagSummary (cls : Name) (counters : PHashMap Name Nat) (p : Name → Bool := fun _ => true) : MetaM DiagSummary := do
  let threshold := diagnostics.threshold.get (← getOptions)
  let entries := collectAboveThreshold counters threshold p Name.lt
  if entries.isEmpty then
    return {}
  else
    let mut data := #[]
    for (declName, counter) in entries do
      data := data.push <| .trace { cls } m!"{.ofConst (← mkConstWithLevelParams declName)} ↦ {counter}" #[]
    return { data, max := entries[0]!.2 }

def mkDiagSummaryForUnfolded (counters : PHashMap Name Nat) (instances := false) : MetaM DiagSummary := do
  let env ← getEnv
  mkDiagSummary `reduction counters fun declName =>
    getReducibilityStatusCore env declName matches .semireducible
    && isInstanceCore env declName == instances

def mkDiagSummaryForUnfoldedReducible (counters : PHashMap Name Nat) : MetaM DiagSummary := do
  let env ← getEnv
  mkDiagSummary `reduction counters fun declName =>
    getReducibilityStatusCore env declName matches .reducible

def mkDiagSummaryForUsedInstances : MetaM DiagSummary := do
  mkDiagSummary `type_class (← get).diag.instanceCounter

def mkDiagSynthPendingFailure (failures : PHashMap Expr MessageData) : MetaM DiagSummary := do
  if failures.isEmpty then
    return {}
  else
    let mut data := #[]
    for (_, msg) in failures do
      data := data.push <| .trace { cls := `type_class } msg #[]
    return { data }

/--
We use below that this returns `m` unchanged if `s.isEmpty`
-/
def appendSection (m : Array MessageData) (cls : Name) (header : String) (s : DiagSummary) (resultSummary := true) : Array MessageData :=
  if s.isEmpty then
    m
  else
    let header := if resultSummary then s!"{header} (max: {s.max}, num: {s.data.size}):" else header
    m.push <| .trace { cls } header s.data

/-- Logs diagnostics and resets the counters -/
def reportDiag : MetaM Unit := do
  if (← isDiagnosticsEnabled) then
    -- Diagnostic output may reference private declarations (e.g. `_match_*`,
    -- `_sparseCasesOn_*`) that are not visible in exporting mode (issue #13581).
    withoutExporting do
    let unfoldCounter := (← get).diag.unfoldCounter
    let unfoldDefault ← mkDiagSummaryForUnfolded unfoldCounter
    let unfoldInstance ← mkDiagSummaryForUnfolded unfoldCounter (instances := true)
    let unfoldAxiom ← mkDiagSummary `reduction (← get).diag.unfoldAxiomCounter
    let unfoldReducible ← mkDiagSummaryForUnfoldedReducible unfoldCounter
    let heu ← mkDiagSummary `def_eq (← get).diag.heuristicCounter
    let inst ← mkDiagSummaryForUsedInstances
    let synthPending ← mkDiagSynthPendingFailure (← get).diag.synthPendingFailures
    let unfoldKernel ← mkDiagSummary `kernel (Kernel.getDiagnostics (← getEnv)).unfoldCounter
    let m := #[]
    let m := appendSection m `reduction "unfolded declarations" unfoldDefault
    let m := appendSection m `reduction "unfolded instances" unfoldInstance
    let m := appendSection m `reduction "unfolded reducible declarations" unfoldReducible
    let m := appendSection m `type_class "used instances" inst
    let m := appendSection m `type_class
              s!"max synth pending failures (maxSynthPendingDepth: {maxSynthPendingDepth.get (← getOptions)}), use `set_option maxSynthPendingDepth <limit>`"
              synthPending (resultSummary := false)
    let m := appendSection m `def_eq "heuristic for solving `f a =?= f b`" heu
    let m := appendSection m `reduction "Axioms (possibly imported non-exposed defs) that were tried to be unfolded" unfoldAxiom
    let m := appendSection m `kernel "unfolded declarations" unfoldKernel
    unless m.isEmpty do
      let m := m.push "use `set_option diagnostics.threshold <num>` to control threshold for reporting counters"
      logInfo <| .trace { cls := `diag, collapsed := false } "Diagnostics" m
    -- Reset any reported diagnostics, so that `reportDiag` can be called again
    modify (fun s => { s with diag := {} })
    modifyEnv (Kernel.setDiagnostics · {})

end Lean.Meta
```
