# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CNF.Variant0906e97a88bbb5e61fc661a6ccc2a69692aa6eb0343ff9490499674206ef621d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `be20846136a6022c1fd14e549da03e1a0924b4bd` · SHA-256 `49c0d93451f5578630c04bbd2f9e9b4a4cece0ede2cab93b9a7bd8bb6aa1cc21`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SatIff.Variantbcc67699ed74b0fe7f2a291f2757a3bbfe07d6016959029999de6e056871fff0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bcc67699ed74b0fe7f2a291f2757a3bbfe07d6016959029999de6e056871fff0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.SatIff.Variantbcc67699ed74b0fe7f2a291f2757a3bbfe07d6016959029999de6e056871fff0","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"bcc67699ed74b0fe7f2a291f2757a3bbfe07d6016959029999de6e056871fff0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Tactic/BVDecide/LRAT/Internal/CNF.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Josh Clune
-/
module

prelude
public import Std.Tactic.BVDecide.LRAT.Internal.Formula.Class


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SatIff.Variantbcc67699ed74b0fe7f2a291f2757a3bbfe07d6016959029999de6e056871fff0

@[expose] public section

namespace Std.Tactic.BVDecide
namespace LRAT
namespace Internal

open Clause Formula Std Sat

namespace Literal

theorem sat_iff (p : α → Bool) (a : α) (b : Bool) : p ⊨ (a, b) ↔ (p a) = b := Iff.rfl

theorem sat_negate_iff_not_sat {p : α → Bool} {l : Literal α} : p ⊨ Literal.negate l ↔ p ⊭ l := by
  grind [sat_iff, cases Bool]

theorem unsat_of_limplies_complement [Entails α t] (x : t) (l : Literal α) :
    Limplies α x l → Limplies α x (Literal.negate l) → Unsatisfiable α x := by
  intro h1 h2 p px
  specialize h1 p px
  specialize h2 p px
  rw [sat_negate_iff_not_sat] at h2
  exact h2 h1

end Literal

namespace Clause

theorem sat_iff_exists [Clause α β] (p : α → Bool) (c : β) : p ⊨ c ↔ ∃ l ∈ toList c, p ⊨ l := by
  simp only [(· ⊨ ·), eval]
  grind

theorem limplies_iff_mem [DecidableEq α] [Clause α β] (l : Literal α) (c : β) :
    Limplies α l c ↔ l ∈ toList c := by
  simp only [Limplies, sat_iff_exists, Prod.exists, Bool.exists_bool]
  constructor
  · simp only [(· ⊨ ·)]
    intro h
    -- Construct an assignment p such that p ⊨ l and p ⊭ c ∖ {l}
    let p := fun x : α => if x = l.1 then l.2 else (x, false) ∈ toList c
    specialize h p
    grind [not_tautology]
  · grind [cases Bool]

theorem entails_of_entails_delete [DecidableEq α] [Clause α β] {p : α → Bool} {c : β}
    {l : Literal α} :
    p ⊨ delete c l → p ⊨ c := by
  simp only [(· ⊨ ·), eval] at ⊢
  grind

end Clause

namespace Formula

theorem sat_iff_forall [Clause α β] [Entails α σ] [Formula α β σ] (p : α → Bool) (f : σ) :
    p ⊨ f ↔ ∀ c : β, c ∈ toList f → p ⊨ c := by
  simp only [formulaEntails_def]
  grind

theorem limplies_insert [Clause α β] [Entails α σ] [Formula α β σ] {c : β} {f : σ} :
    Limplies α (insert f c) f := by
  simp only [Limplies, formulaEntails_def]
  grind

theorem limplies_delete [Clause α β] [Entails α σ] [Formula α β σ] {f : σ} {arr : Array Nat} :
    Limplies α f (delete f arr) := by
  simp only [Limplies, formulaEntails_def]
  grind

end Formula

end Internal
end LRAT
end Std.Tactic.BVDecide
```
