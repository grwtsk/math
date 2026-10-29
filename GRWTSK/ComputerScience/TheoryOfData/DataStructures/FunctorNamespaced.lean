-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.MapEquiv.Varianted04a601c8169ed62225d3a3702663026039c0290b40948f272bab4511a6fd07","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ed04a601c8169ed62225d3a3702663026039c0290b40948f272bab4511a6fd07","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.MapEquiv.Varianted04a601c8169ed62225d3a3702663026039c0290b40948f272bab4511a6fd07","mathematical_subject":"Logic.Foundations","original_sha256":"ed04a601c8169ed62225d3a3702663026039c0290b40948f272bab4511a6fd07","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Data/Equiv/Functor.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin, Simon Hudon, Scott Morrison
-/

import Mathlib.Control.Basic
import Mathlib.Logic.Equiv.Defs

/-!

# Functors can be applied to `Equiv`s.

```
def Functor.mapEquiv (f : Type u → Type v) [functor f] [LawfulFunctor f] :
  α ≃ β → f α ≃ f β
```

-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.MapEquiv.Varianted04a601c8169ed62225d3a3702663026039c0290b40948f272bab4511a6fd07

set_option autoImplicit true

open Equiv

namespace Functor

variable (f : Type u → Type v) [Functor f] [LawfulFunctor f]

/-- Apply a functor to an `Equiv`. -/
def map_equiv (h : α ≃ β) : f α ≃ f β where
  toFun    := map h
  invFun   := map h.symm
  left_inv x := by simp [map_map]
  right_inv x := by simp [map_map]

@[simp]
lemma map_equiv_apply (h : α ≃ β) (x : f α) :
  (map_equiv f h : f α ≃ f β) x = map h x := rfl

@[simp]
lemma map_equiv_symm_apply (h : α ≃ β) (y : f β) :
  (map_equiv f h : f α ≃ f β).symm y = map h.symm y := rfl

end Functor
