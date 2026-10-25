# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variant21d5834e9dde7809c3201bd6f652f6e06e4bf3bd9de7ba76ac67eab8f7cd1d70

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d8c7fd8ab13dbd54b48ecec47879ba07bdf67f78` · SHA-256 `6e7e798a5392e16592e8e10d7028519b5b20a931f6685304e8859930f0155759`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rule.Varianta01206a7097efc52821b86341c382beb4250349a095d1f78b831ed4f77586f5d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a01206a7097efc52821b86341c382beb4250349a095d1f78b831ed4f77586f5d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Rule.Varianta01206a7097efc52821b86341c382beb4250349a095d1f78b831ed4f77586f5d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"a01206a7097efc52821b86341c382beb4250349a095d1f78b831ed4f77586f5d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/Rule/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.RuleTac.Descr


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Rule.Varianta01206a7097efc52821b86341c382beb4250349a095d1f78b831ed4f77586f5d

public section

open Lean

namespace Aesop

structure Rule (α : Type) where
  name : RuleName
  indexingMode : IndexingMode
  pattern? : Option RulePattern
  extra : α
  tac : RuleTacDescr
  deriving Inhabited

namespace Rule

instance : BEq (Rule α) where
  beq r s := r.name == s.name

instance : Ord (Rule α) where
  compare r s := compare r.name s.name

instance : Hashable (Rule α) where
  hash r := hash r.name

def compareByPriority [Ord α] (r s : Rule α) : Ordering :=
  compare r.extra s.extra

def compareByName (r s : Rule α) : Ordering :=
  r.name.compare s.name

def compareByPriorityThenName [Ord α] (r s : Rule α) : Ordering :=
  compareByPriority r s |>.then $ compareByName r s

@[inline]
protected def map (f : α → β) (r : Rule α) : Rule β :=
  { r with extra := f r.extra }

@[inline]
protected def mapM [Monad m] (f : α → m β) (r : Rule α) : m (Rule β) :=
  return { r with extra := ← f r.extra }

end Aesop.Rule
```
