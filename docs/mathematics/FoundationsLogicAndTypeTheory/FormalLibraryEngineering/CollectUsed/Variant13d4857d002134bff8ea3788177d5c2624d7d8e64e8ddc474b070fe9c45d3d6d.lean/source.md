# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CollectUsed.Variant13d4857d002134bff8ea3788177d5c2624d7d8e64e8ddc474b070fe9c45d3d6d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f320279c1b7f7081ea4c6739bbe50efe89916510` · SHA-256 `f2959201230d8be41b6a829e6c3da6ad09f69af40dfbed4024855f02acb3dad9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Context.Variantdcdef93e2faf60e22f4169b0c2df169390a44704211bc0338278003e7e8fe544","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dcdef93e2faf60e22f4169b0c2df169390a44704211bc0338278003e7e8fe544","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Context.Variantdcdef93e2faf60e22f4169b0c2df169390a44704211bc0338278003e7e8fe544","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"dcdef93e2faf60e22f4169b0c2df169390a44704211bc0338278003e7e8fe544","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/LeanArchitect/Architect/CollectUsed.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean
import Architect.Basic

/-!
This is similar to Lean's `collectAxioms`, but collects nodes in the blueprint (plus all axioms)
rather than just axioms.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Context.Variantdcdef93e2faf60e22f4169b0c2df169390a44704211bc0338278003e7e8fe544

namespace Architect

open Lean

namespace CollectUsed

structure Context where
  env : Environment
  root : Name

structure State where
  visited : NameSet    := {}
  used    : Array Name := #[]

abbrev M := ReaderT Context $ StateM State

partial def collect (c : Name) : M Unit := do
  let collectExpr (e : Expr) : M Unit := e.getUsedConstants.forM collect
  let s ← get
  unless s.visited.contains c do
    modify fun s => { s with visited := s.visited.insert c }
    let { env, root } ← read
    -- When we collect constants used by `a`, we don't just want to return `{a}`.
    if c != root && (blueprintExt.find? env c).isSome then
      modify fun s => { s with used := s.used.push c }
    else
      -- This line is `match env.checked.get.find? c with` in Lean.CollectAxioms
      match env.find? c with
      | some (ConstantInfo.axiomInfo _)  => modify fun s => { s with used := s.used.push c }
      | some (ConstantInfo.defnInfo v)   => collectExpr v.type *> collectExpr v.value
      | some (ConstantInfo.thmInfo v)    => collectExpr v.type *> collectExpr v.value
      | some (ConstantInfo.opaqueInfo v) => collectExpr v.type *> collectExpr v.value
      | some (ConstantInfo.quotInfo _)   => pure ()
      | some (ConstantInfo.ctorInfo v)   => collectExpr v.type
      | some (ConstantInfo.recInfo v)    => collectExpr v.type
      | some (ConstantInfo.inductInfo v) => collectExpr v.type *> v.ctors.forM collect
      | none                             => pure ()

end CollectUsed

/--
Returns the irreflexive transitive set of blueprint nodes that a constant depends on,
as a pair of sets (constants used by type, constants used by value).
They are made disjoint except that possibly both contain `sorryAx`.
-/
def collectUsed [Monad m] [MonadEnv m] [MonadError m] (constName : Name) :
    m (NameSet × NameSet) := do
  let env ← getEnv
  let mut s : CollectUsed.State := {}

  -- Collect constants used by statement
  let info ← getConstInfo constName
  for c in info.type.getUsedConstants do
    (_, s) := ((CollectUsed.collect c).run { env, root := constName }).run s
  let typeUsed := NameSet.ofArray s.used

  -- Collect constants used by proof
  (_, s) := ((CollectUsed.collect constName).run { env, root := constName }).run s
  let valueUsed := NameSet.ofArray s.used

  return (typeUsed, valueUsed \ typeUsed.erase ``sorryAx)

end Architect
```
