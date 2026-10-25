# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GCongr.Variant90c4effa90044b641d9f2c225642ca71c8b6fc09c3cba280ee84280883e69a89

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2285a773e83277ecfdb6a34f69f5ab259a4afc8c` · SHA-256 `d13b2f810a022e7c9616954e88face44fe887bcb6b8205513f365eb7cec58dcb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Core.Variant97bfeb23b0df405ea4144f18e7b1ed56ef6b697325bf54c4395b45505d0ff83f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"97bfeb23b0df405ea4144f18e7b1ed56ef6b697325bf54c4395b45505d0ff83f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Core.Variant97bfeb23b0df405ea4144f18e7b1ed56ef6b697325bf54c4395b45505d0ff83f","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"97bfeb23b0df405ea4144f18e7b1ed56ef6b697325bf54c4395b45505d0ff83f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Tactic/GCongr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Mario Carneiro, Heather Macbeth. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Heather Macbeth, Jovan Gerbscheid, Yury Kudryashov
-/
module

public import Mathlib.Tactic.GCongr.Core
public import Mathlib.Tactic.Hint

/-! # Setup for the `gcongr` tactic

The core implementation of the `gcongr` ("generalized congruence") tactic is in the file
`Tactic.GCongr.Core`. -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Core.Variant97bfeb23b0df405ea4144f18e7b1ed56ef6b697325bf54c4395b45505d0ff83f

public section

namespace Mathlib.Tactic.GCongr

variable {a b c d : Prop}

/-- A version of `imp_imp_imp` that has an extra hypothesis `c` in the `b → d` hypothesis. -/
@[gcongr] lemma imp_mono (h₁ : c → a) (h₂ : c → b → d) : (a → b) → c → d :=
  fun h₃ hc => h₂ hc (h₃ (h₁ hc))

/-- A version of `And.imp` with an extra hypothesis `a` in the `b → d` hypothesis. -/
@[gcongr] lemma and_mono (h₁ : a → c) (h₂ : a → b → d) : (a ∧ b) → c ∧ d :=
  fun ⟨ha, hb⟩ => ⟨h₁ ha, h₂ ha hb⟩

attribute [gcongr] mt Or.imp forall_imp Exists.imp
  List.Sublist.append List.Sublist.reverse List.drop_sublist_drop_left List.Sublist.drop
  List.Perm.cons List.Perm.append List.Perm.map
  List.cons_subset_cons
  Nat.sub_le_sub_left Nat.sub_le_sub_right Nat.sub_lt_sub_left Nat.sub_lt_sub_right
  Nat.succ_le_succ Nat.div_le_div_right Nat.div_le_div

-- `Nat.pow_le_pow_right` has side condition `0 < n`, which `gcongr` discharges automatically via
-- `positivity`, unlike the `1 ≤ a` side condition of the more general `pow_le_pow_right₀`.
attribute [gcongr high] Nat.pow_le_pow_right


/-! We also use `assumption` to discharge side goals.
In a further downstream file, `positivity` will also be registered as a discharger.
From that point, `positivity` will be tried before `assumption` is: that is perfectly fine. -/
macro_rules | `(tactic| gcongr_discharger) => `(tactic| assumption)

/-!
We register `gcongr` with the `hint` tactic.
-/

register_hint 1000 gcongr

end Mathlib.Tactic.GCongr
```
