# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Logic.Variantea77529fa0ec1ffa356ca012b7628335f1a43e19d71533d9c77321ab7ebd4f30

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `24eef57e971b8005ef18e79df76f7b62adc19889` · SHA-256 `d97681fd675e1993697032cfa2d73eafab08c0956ee00d1993415cf5780b73b4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.AndNotNotOfNotOr.Variant4d05f698303f1d95ecc3a52996a76db7ce3321a1dae896a619eac33ddac91a9a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4d05f698303f1d95ecc3a52996a76db7ce3321a1dae896a619eac33ddac91a9a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.AndNotNotOfNotOr.Variant4d05f698303f1d95ecc3a52996a76db7ce3321a1dae896a619eac33ddac91a9a","mathematical_subject":"Logic.Foundations","original_sha256":"4d05f698303f1d95ecc3a52996a76db7ce3321a1dae896a619eac33ddac91a9a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Omega/Logic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
public import Init.Grind.Tactics
import Init.PropLemmas


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.AndNotNotOfNotOr.Variant4d05f698303f1d95ecc3a52996a76db7ce3321a1dae896a619eac33ddac91a9a

public section
/-!
# Specializations of basic logic lemmas

These are useful for `omega` while constructing proofs, but not considered generally useful
so are hidden in the `Lean.Omega` namespace.

If you find yourself needing them elsewhere, please move them first to another file.
-/

namespace Lean.Omega

theorem and_not_not_of_not_or (h : ¬ (p ∨ q)) : ¬ p ∧ ¬ q := not_or.mp h

theorem Decidable.or_not_not_of_not_and [Decidable p] [Decidable q]
    (h : ¬ (p ∧ q)) : ¬ p ∨ ¬ q :=
  Decidable.not_and_iff_or_not.mp h

theorem Decidable.and_or_not_and_not_of_iff {p q : Prop} [Decidable q] (h : p ↔ q) :
    (p ∧ q) ∨ (¬p ∧ ¬q) := Decidable.iff_iff_and_or_not_and_not.mp h

theorem Decidable.not_iff_iff_and_not_or_not_and [Decidable a] [Decidable b] :
    (¬ (a ↔ b)) ↔ (a ∧ ¬ b) ∨ ((¬ a) ∧ b) :=
  ⟨fun e => if hb : b then
    .inr ⟨fun ha => e ⟨fun _ => hb, fun _ => ha⟩, hb⟩
  else
    .inl ⟨if ha : a then ha else False.elim (e ⟨fun ha' => absurd ha' ha, fun hb' => absurd hb' hb⟩), hb⟩,
  Or.rec (And.rec fun ha nb w => nb (w.mp ha)) (And.rec fun na hb w => na (w.mpr hb))⟩

theorem Decidable.and_not_or_not_and_of_not_iff [Decidable a] [Decidable b]
    (h : ¬ (a ↔ b)) : a ∧ ¬b ∨ ¬a ∧ b :=
  Decidable.not_iff_iff_and_not_or_not_and.mp h

theorem Decidable.and_not_of_not_imp [Decidable a] (h : ¬(a → b)) : a ∧ ¬b :=
  Decidable.not_imp_iff_and_not.mp h

theorem ite_disjunction {α : Type u} {P : Prop} [Decidable P] {a b : α} :
    (P ∧ (if P then a else b) = a) ∨ (¬ P ∧ (if P then a else b) = b) :=
  if h : P then
    .inl ⟨h, if_pos h⟩
  else
    .inr ⟨h, if_neg h⟩

end Lean.Omega
```
