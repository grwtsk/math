-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TacticBundle.Variantb179cdae89f28f2dab07453c8c4fab28594302e1640a2df1d80836bd047872f8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b179cdae89f28f2dab07453c8c4fab28594302e1640a2df1d80836bd047872f8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.TacticBundle.Variantb179cdae89f28f2dab07453c8c4fab28594302e1640a2df1d80836bd047872f8","mathematical_subject":"Computation.DataStructures","original_sha256":"b179cdae89f28f2dab07453c8c4fab28594302e1640a2df1d80836bd047872f8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/bourbaki/lean/src/Kernel/TacticBundle.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
  TacticBundle.lean — Kernel verification for tactic bundles.
  Elaborates and type-checks embedded tactics without executing them.
-/
import Lean
import Kernel.Core


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.TacticBundle.Variantb179cdae89f28f2dab07453c8c4fab28594302e1640a2df1d80836bd047872f8

namespace Kernel.TacticBundle

open Lean Elab Meta Kernel

/-- Internal structure matching the JSON `TacticBundle`. -/
structure TacticBundle where
  name  : String
  code  : String  -- Lean tactic code (as text)
  descr : String
  deriving Repr

/-- Result of attempting to elaborate a tactic script. -/
structure TacticCertResult where
  success : Bool
  message : Option String
  deriving Repr

/-- Elaborate the tactic string and check syntactic + semantic correctness. -/
def certify (b : TacticBundle) : IO Bool := do
  let env ← mkEmptyEnvironment
  let opts := Options.empty
  let input := b.code

  try
    -- Attempt to parse and elaborate the tactic code (not executed)
    let cmdStx ← Parser.runParserCategory input `tactic
    let _ ← Elab.Command.elabCommandTopLevel cmdStx
    return true
  catch e =>
    IO.println s!"[TacticCert] failed for '{b.name}': {e.toString}"
    return false

/-- Kernel-internal feature flag table for known certified tactics. -/
def KernelTactics : IO.Ref (Std.HashSet String) := unsafe unsafeIO (IO.mkRef {})

/-- Register a certified tactic bundle by name. Gated by feature flag. -/
def register (b : TacticBundle) : IO Unit := do
  if ← certify b then
    let h ← KernelTactics.get
    KernelTactics.set (h.insert b.name)
    IO.println s!"[TacticCert] tactic '{b.name}' registered"
  else
    throw <| IO.userError s!"Tactic '{b.name}' failed certification."

/-- Query registered tactic names. -/
def known : IO (List String) := do
  let h ← KernelTactics.get
  return h.toList

end Kernel.TacticBundle
