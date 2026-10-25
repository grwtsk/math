# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant91aa8ec622a2f5d220ea79a4fe909f1eb9ce3d45f772045ebe75ecf7144a93c4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `44ee86f8348e6a1e517cb60a951fcb5e515d7171` · SHA-256 `9d35378684ee9ac33c1d24d549aa866844a4648932e5baaf6b715f1d96f6dae8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ForwardInstantiationStats.Variantdfd6a895c344ebe6a1dddc573c0886403bec5ea839b5b4b5c66e6aa523233319","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dfd6a895c344ebe6a1dddc573c0886403bec5ea839b5b4b5c66e6aa523233319","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ForwardInstantiationStats.Variantdfd6a895c344ebe6a1dddc573c0886403bec5ea839b5b4b5c66e6aa523233319","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"dfd6a895c344ebe6a1dddc573c0886403bec5ea839b5b4b5c66e6aa523233319","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Stats/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","interpolated_literals","lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022-2024 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Rule.Name
public import Aesop.Tracing
public import Aesop.Options.Public


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ForwardInstantiationStats.Variantdfd6a895c344ebe6a1dddc573c0886403bec5ea839b5b4b5c66e6aa523233319

public section

open Lean

namespace Aesop

structure ForwardInstantiationStats where
  «matches» : Nat
  hyps : Nat
  deriving Inhabited, ToJson

structure ForwardClusterStateStats where
  slots : Nat
  instantiationStats : Array ForwardInstantiationStats
  deriving Inhabited, ToJson

structure ForwardRuleStateStats where
  ruleName : RuleName
  clusterStateStats : Array ForwardClusterStateStats
  deriving Inhabited, ToJson

structure ForwardStateStats where
  ruleStateStats : Array ForwardRuleStateStats
  deriving Inhabited, ToJson

inductive GoalKind
  | preNorm
  | postNorm
  deriving Inhabited, ToJson

structure GoalStats where
  goalId : Nat -- We don't use GoalId to avoid an import cycle
  goalKind : GoalKind
  /-- Number of fvars in the local context, excluding implementation detail
  fvars. -/
  lctxSize : Nat
  /-- This goal's depth in the search tree. -/
  depth : Nat
  forwardStateStats : ForwardStateStats
  deriving Inhabited, ToJson

structure RuleStats where
  rule : DisplayRuleName
  elapsed : Nanos
  successful : Bool
  deriving Inhabited, ToJson

namespace RuleStats

instance : ToString RuleStats where
  toString rp :=
    let success := if rp.successful then "successful" else "failed"
    s!"[{rp.elapsed.printAsMillis}] apply rule {rp.rule} ({success})"

end RuleStats

inductive ScriptGenerated.Method where
  | static
  | dynamic
  deriving Inhabited, ToJson

instance : ToString ScriptGenerated.Method where
  toString
    | .static => "static"
    | .dynamic => "dynamic"

structure ScriptGenerated where
  method : ScriptGenerated.Method
  perfect : Bool
  hasMVar : Bool
  deriving Inhabited, ToJson

namespace ScriptGenerated

protected def toString (g : ScriptGenerated) : String :=
  s!"with {if g.perfect then "perfect" else "imperfect"} {g.method} structuring"

end ScriptGenerated

structure Stats where
  total : Nanos
  configParsing : Nanos
  ruleSetConstruction : Nanos
  search : Nanos
  ruleSelection : Nanos
  script : Nanos
  forwardState : Nanos
  scriptGenerated : Option ScriptGenerated
  ruleStats : Array RuleStats
  goalStats : Array GoalStats
  deriving Inhabited

namespace Stats

protected def empty : Stats := by
  refine' { scriptGenerated := none, ruleStats := #[], goalStats := #[], .. } <;> exact 0

instance : EmptyCollection Stats :=
  ⟨Stats.empty⟩

end Stats


structure RuleStatsTotals where
  /--
  Number of successful applications of a rule.
  -/
  numSuccessful : Nat
  /--
  Number of failed applications of a rule.
  -/
  numFailed : Nat
  /--
  Total elapsed time of successful applications of a rule.
  -/
  elapsedSuccessful : Nanos
  /--
  Total elapsed time of failed applications of a rule.
  -/
  elapsedFailed : Nanos

namespace RuleStatsTotals

protected def empty : RuleStatsTotals where
  numSuccessful := 0
  numFailed := 0
  elapsedSuccessful := 0
  elapsedFailed := 0

instance : EmptyCollection RuleStatsTotals :=
  ⟨.empty⟩

def compareByTotalElapsed : (x y : RuleStatsTotals) → Ordering :=
  compareOn λ totals => totals.elapsedSuccessful + totals.elapsedFailed

end RuleStatsTotals


namespace Stats

def ruleStatsTotals (p : Stats)
    (init : Std.HashMap DisplayRuleName RuleStatsTotals := ∅) :
    Std.HashMap DisplayRuleName RuleStatsTotals :=
  p.ruleStats.foldl (init := init) λ m rp => Id.run do
    let mut stats := m.getD rp.rule ∅
    if rp.successful then
      stats := { stats with
        numSuccessful := stats.numSuccessful + 1
        elapsedSuccessful := stats.elapsedSuccessful + rp.elapsed
      }
    else
      stats := { stats with
        numFailed := stats.numFailed + 1
        elapsedFailed := stats.elapsedFailed + rp.elapsed
      }
    m.insert rp.rule stats

def _root_.GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ForwardInstantiationStats.Variantdfd6a895c344ebe6a1dddc573c0886403bec5ea839b5b4b5c66e6aa523233319.Aesop.sortRuleStatsTotals
    (ts : Array (DisplayRuleName × RuleStatsTotals)) :
    Array (DisplayRuleName × RuleStatsTotals) :=
  let lt := λ (n₁, t₁) (n₂, t₂) =>
    RuleStatsTotals.compareByTotalElapsed t₁ t₂ |>.swap.then
    (compare n₁ n₂)
    |>.isLT
  ts.qsort lt

def trace (p : Stats) (opt : TraceOption) : CoreM Unit := do
  if ! (← opt.isEnabled) then
    return
  let { total, configParsing, ruleSetConstruction, search, ruleSelection, script, forwardState, scriptGenerated, ruleStats, goalStats := _goalStats } := p -- TODO print goal stats?
  let totalRuleApplications :=
    ruleStats.foldl (init := 0) λ total rp => total + rp.elapsed
  aesop_trace![opt] "Total: {total.printAsMillis}"
  aesop_trace![opt] "Configuration parsing: {configParsing.printAsMillis}"
  aesop_trace![opt] "Rule set construction: {ruleSetConstruction.printAsMillis}"
  aesop_trace![opt] "Script generation: {script.printAsMillis}"
  aesop_trace![opt] "Script generated: {match scriptGenerated with | none => "no" | some g => g.toString}"
  withConstAesopTraceNode opt (collapsed := false)
      (return m!"Search: {search.printAsMillis}") do
    aesop_trace![opt] "Rule selection: {ruleSelection.printAsMillis}"
    aesop_trace![opt] "Forward state updates: {forwardState.printAsMillis}"
    withConstAesopTraceNode opt (collapsed := false)
        (return m!"Rule applications: {totalRuleApplications.printAsMillis} [total / successful / failed]") do
      let timings := sortRuleStatsTotals p.ruleStatsTotals.toArray
      for (n, t) in timings do
        aesop_trace![opt] "[{t.numSuccessful + t.numFailed} {(t.elapsedSuccessful + t.elapsedFailed).printAsMillis} / {t.numSuccessful} {t.elapsedSuccessful.printAsMillis} / {t.numFailed} {t.elapsedFailed.printAsMillis}] {n}"

end Stats


abbrev StatsRef := IO.Ref Stats

class MonadStats (m) extends MonadOptions m where
  modifyGetStats : (Stats → α × Stats) → m α
  getStats : m Stats :=
    modifyGetStats λ s => (s, s)
  modifyStats : (Stats → Stats) → m Unit :=
    λ f => modifyGetStats λ s => ((), f s)

export MonadStats (modifyGetStats getStats modifyStats)

instance [MonadStats m] : MonadStats (StateRefT' ω σ m) where
  modifyGetStats f := (modifyGetStats f : m _)
  getStats := (getStats : m _)
  modifyStats f := (modifyStats f : m _)

instance [MonadStats m] : MonadStats (ReaderT α m) where
  modifyGetStats f := (modifyGetStats f : m _)
  getStats := (getStats : m _)
  modifyStats f := (modifyStats f : m _)

instance [MonadOptions m] [MonadStateOf Stats m] : MonadStats m where
  modifyGetStats f := modifyGetThe Stats f
  getStats := getThe Stats
  modifyStats := modifyThe Stats

variable [Monad m]

@[inline, always_inline]
def enableStatsCollection [MonadOptions m] : m Bool :=
  aesop.collectStats.get <$> getOptions

@[inline, always_inline]
def enableStatsTracing [MonadOptions m] : m Bool :=
  TraceOption.stats.isEnabled

@[inline, always_inline]
def enableStatsFile [MonadOptions m] : m Bool := do
  return aesop.stats.file.get (← getOptions) != ""

@[inline, always_inline]
def enableStats [MonadOptions m] : m Bool :=
  enableStatsCollection <||> enableStatsTracing <||> enableStatsFile

variable [MonadStats m] [MonadLiftT BaseIO m]

@[inline, always_inline]
def profiling (recordStats : Stats → α → Nanos → Stats) (x : m α) : m α := do
  if ← enableStats then
    let (result, elapsed) ← time x
    modifyStats (recordStats · result elapsed)
    return result
  else
    x

@[inline, always_inline]
def profilingRuleSelection : m α → m α :=
  profiling λ stats _ elapsed =>
    { stats with ruleSelection := stats.ruleSelection + elapsed }

@[inline, always_inline]
def profilingRule (rule : DisplayRuleName) (wasSuccessful : α → Bool) :
    m α → m α :=
  profiling λ stats a elapsed =>
    let rp := { successful := wasSuccessful a, rule, elapsed }
    { stats with ruleStats := stats.ruleStats.push rp }

@[inline, always_inline]
def profilingForwardState : m α → m α :=
  profiling λ stats _ elapsed =>
    { stats with forwardState := stats.forwardState + elapsed }

def modifyStatsIfEnabled (f : Stats → Stats) : m Unit := do
  if ← enableStats then
    modifyStats f

def recordScriptGenerated (x : ScriptGenerated) : m Unit := do
  modifyStatsIfEnabled ({ · with scriptGenerated := some x })

end Aesop
```
