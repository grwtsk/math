-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NpowRec.Variant7a38aca83ffa33660079bec9c1ef03603d2ef9e1eac63572684c3ad116743978","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7a38aca83ffa33660079bec9c1ef03603d2ef9e1eac63572684c3ad116743978","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.NpowRec.Variant7a38aca83ffa33660079bec9c1ef03603d2ef9e1eac63572684c3ad116743978","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"7a38aca83ffa33660079bec9c1ef03603d2ef9e1eac63572684c3ad116743978","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Zero.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Gabriel Ebner. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Gabriel Ebner, Mario Carneiro
-/
module

prelude
public import Init.Tactics


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.NpowRec.Variant7a38aca83ffa33660079bec9c1ef03603d2ef9e1eac63572684c3ad116743978

public section

/-!
Instances converting between `Zero α` and `OfNat α (nat_lit 0)`.
-/

instance (priority := 300) Zero.toOfNat0 {α} [Zero α] : OfNat α (nat_lit 0) where
  ofNat := ‹Zero α›.1

instance (priority := 200) Zero.ofOfNat0 {α} [OfNat α (nat_lit 0)] : Zero α where
  zero := 0

/-!
Instances converting between `One α` and `OfNat α (nat_lit 1)`.
-/

instance (priority := 300) One.toOfNat1 {α} [One α] : OfNat α (nat_lit 1) where
  ofNat := ‹One α›.1

instance (priority := 200) One.ofOfNat1 {α} [OfNat α (nat_lit 1)] : One α where
  one := 1

/--
The fundamental power operation in a monoid.
`npowRec n a = a*a*...*a` n times.
This function should not be used directly; it is often used to implement a `Pow M Nat` instance,
but end users should use the `a ^ n` notation instead.
-/
@[expose]
def npowRec [One M] [Mul M] : Nat → M → M
  | 0, _ => 1
  | n + 1, a => npowRec n a * a

/--
The fundamental scalar multiplication in an additive monoid.
`nsmulRec n a = a+a+...+a` n times.
This function should not be used directly;
it is often used to implement an instance for scalar multiplication.
-/
@[expose]
def nsmulRec [Zero M] [Add M] : Nat → M → M
  | 0, _ => 0
  | n + 1, a => nsmulRec n a + a
