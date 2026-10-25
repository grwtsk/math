# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntroQ.Variant47504cb4dfd1b29a9c23128338c9ec48f66b04f70c1a0f88f9c8acaf17409ff1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `842a5de28dd39b65f7971b9bb97011608605a224` · SHA-256 `1c3ba75816e67ad6229e89a8ddefd40ac58afcb65e2adbf7a73c361aeac47c21`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntroQ.Variant461c31bc84defba6601904493d90c2216c071017ab2c90b397484e9fd2cfc2b2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"461c31bc84defba6601904493d90c2216c071017ab2c90b397484e9fd2cfc2b2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.IntroQ.Variant461c31bc84defba6601904493d90c2216c071017ab2c90b397484e9fd2cfc2b2","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"461c31bc84defba6601904493d90c2216c071017ab2c90b397484e9fd2cfc2b2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/Qq/QqTest/introQ.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Qq

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntroQ.Variant461c31bc84defba6601904493d90c2216c071017ab2c90b397484e9fd2cfc2b2

open Qq Lean

def introQ {α : Q(Sort u)} {β : Q($α → Sort v)} (mvar : Q(∀ a, $β a)) (n : Name) :
    MetaM ((a : Q($α)) × Q($β $a)) := do
  let (f, v) ← mvar.mvarId!.intro n
  pure ⟨.fvar f, .mvar v⟩

def assignQ {α : Q(Sort u)} (mvar : Q($α)) (val : Q($α)) : MetaM Unit :=
  mvar.mvarId!.assign val

elab "demo" : term => do
  let P ← mkFreshExprMVarQ q(∀ {n : Nat}, n = 1)
  let ⟨_, m⟩ ← introQ q(@$P) `n
  m.mvarId!.withContext do
  assignQ q($m) q(sorry)
  instantiateMVars P

/--
info: fun {n} => sorry : ∀ {n : Nat}, n = 1
-/
#guard_msgs in
#check demo
```
