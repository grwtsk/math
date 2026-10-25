-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpTheorems.Variant481191717f0be1d3c826f1720473aab95367e1234340d3d8e279826575ddebcd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"481191717f0be1d3c826f1720473aab95367e1234340d3d8e279826575ddebcd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.SimpTheorems.Variant481191717f0be1d3c826f1720473aab95367e1234340d3d8e279826575ddebcd","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"481191717f0be1d3c826f1720473aab95367e1234340d3d8e279826575ddebcd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/Attr/Register.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Init
import Lean.Meta.Tactic.Simp.SimpTheorems
import Lean.Meta.Tactic.Simp.RegisterCommand
import Lean.LabelAttribute

/-!
# Attributes used in `Mathlib`

In this file we define all `simp`-like and `label`-like attributes used in `Mathlib`. We declare all
of them in one file for two reasons:

- in Lean 4, one cannot use an attribute in the same file where it was declared;
- this way it is easy to see which simp sets contain a given lemma.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SimpTheorems.Variant481191717f0be1d3c826f1720473aab95367e1234340d3d8e279826575ddebcd

/-- Simp set for `functor_norm` -/
register_simp_attr functor_norm

-- Porting note:
-- in mathlib3 we declared `monad_norm` using:
--   mk_simp_attribute monad_norm none with functor_norm
-- This syntax is not supported by mathlib4's `register_simp_attr`.
-- See https://github.com/leanprover-community/mathlib4/issues/802
-- TODO: add `@[monad_norm]` to all `@[functor_norm] lemmas

/-- Simp set for `functor_norm` -/
register_simp_attr monad_norm

/-- The simpset `field_simps` is used by the tactic `field_simp` to
reduce an expression in a field to an expression of the form `n / d` where `n` and `d` are
division-free. -/
register_simp_attr field_simps

/-- Simp attribute for lemmas about `Even` -/
register_simp_attr parity_simps

/-- "Simp attribute for lemmas about `RCLike`" -/
register_simp_attr rclike_simps

/-- The simpset `rify_simps` is used by the tactic `rify` to move expressions from `ℕ`, `ℤ`, or
`ℚ` to `ℝ`. -/
register_simp_attr rify_simps

/-- The simpset `qify_simps` is used by the tactic `qify` to move expressions from `ℕ` or `ℤ` to `ℚ`
which gives a well-behaved division. -/
register_simp_attr qify_simps

/-- The simpset `zify_simps` is used by the tactic `zify` to move expressions from `ℕ` to `ℤ`
which gives a well-behaved subtraction. -/
register_simp_attr zify_simps

/--
The simpset `mfld_simps` records several simp lemmas that are
especially useful in manifolds. It is a subset of the whole set of simp lemmas, but it makes it
possible to have quicker proofs (when used with `squeeze_simp` or `simp only`) while retaining
readability.

The typical use case is the following, in a file on manifolds:
If `simp [foo, bar]` is slow, replace it with `squeeze_simp [foo, bar, mfld_simps]` and paste
its output. The list of lemmas should be reasonable (contrary to the output of
`squeeze_simp [foo, bar]` which might contain tens of lemmas), and the outcome should be quick
enough.
-/
register_simp_attr mfld_simps

/-- Simp set for integral rules. -/
register_simp_attr integral_simps

/-- simp set for the manipulation of typevec and arrow expressions -/
register_simp_attr typevec

/-- Simplification rules for ghost equations. -/
register_simp_attr ghost_simps

/-- The `@[nontriviality]` simp set is used by the `nontriviality` tactic to automatically
discharge theorems about the trivial case (where we know `Subsingleton α` and many theorems
in e.g. groups are trivially true). -/
register_simp_attr nontriviality

/-- A stub attribute for `is_poly`. -/
register_label_attr is_poly

/-- A simp set for the `fin_omega` wrapper around `omega`. -/
register_simp_attr fin_omega

/-- A simp set for simplifying expressions involving `⊤` in `enat_to_nat`. -/
register_simp_attr enat_to_nat_top

/-- A simp set for pushing coercions from `ℕ` to `ℕ∞` in `enat_to_nat`. -/
register_simp_attr enat_to_nat_coe

/-- A simp set for the `pnat_to_nat` tactic. -/
register_simp_attr pnat_to_nat_coe
