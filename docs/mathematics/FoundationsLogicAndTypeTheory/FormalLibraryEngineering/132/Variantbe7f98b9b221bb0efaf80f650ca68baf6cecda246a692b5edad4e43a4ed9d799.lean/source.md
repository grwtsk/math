# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.132.Variantbe7f98b9b221bb0efaf80f650ca68baf6cecda246a692b5edad4e43a4ed9d799

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f44b8265aed4ef91cb08b8e30078ca9a39e931b7` · SHA-256 `9d921648043e93c8a5a16fe175f64f3462b4183036fbeea002e8eb9a6545034e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Perm.Variant34f2ba5701de01e40410709c95b099dcfadb993472d43ead6f49618362aa6e90","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"34f2ba5701de01e40410709c95b099dcfadb993472d43ead6f49618362aa6e90","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Perm.Variant34f2ba5701de01e40410709c95b099dcfadb993472d43ead6f49618362aa6e90","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"34f2ba5701de01e40410709c95b099dcfadb993472d43ead6f49618362aa6e90","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/AesopTest/13_2.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Asta H. From. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Asta H. From, Jannis Limperg
-/
import Aesop


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Perm.Variant34f2ba5701de01e40410709c95b099dcfadb993472d43ead6f49618362aa6e90

set_option aesop.check.all true
set_option aesop.smallErrorMessages true

inductive Perm : (xs ys : List α) → Type where
  | prep {xs} x : Perm (x :: xs) (x :: xs)

inductive Proof : (Γ Δ : List Φ) → Prop where
  | basic (Γ Δ n) : Proof (n :: Γ) (n :: Δ)
  | per_l (Γ Γ' Δ) : Proof Γ Δ → Perm Γ' Γ → Proof Γ' Δ

/--
error: Tactic `aesop` failed, maximum number of rule applications (50) reached. Set the 'maxRuleApplications' option to increase the limit.
-/
#guard_msgs in
theorem weaken (Γ Δ : List Φ) (prf : Proof Γ Δ) (δ : Φ) : Proof Γ (δ :: Δ) := by
  induction prf
  case basic Γ Δ n =>
    aesop (add unsafe [constructors Proof, constructors Perm])
      (config := { maxRuleApplications := 50, terminal := true })
  case per_l Γ Γ' Δ _ perm ih =>
    apply Proof.per_l Γ Γ' (δ :: Δ) ih perm
```
