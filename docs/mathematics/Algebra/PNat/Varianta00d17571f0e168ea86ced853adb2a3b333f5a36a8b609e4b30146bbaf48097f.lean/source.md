# Complete source: GRWTSK.Algebra.PNat.Varianta00d17571f0e168ea86ced853adb2a3b333f5a36a8b609e4b30146bbaf48097f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c3b05408b7716368a79bbb9b94bcdc37e770b594` · SHA-256 `8d7ff5f61be49a780f115161350a59a29a2ed4a5dce02dbaac2cc08f1acc60e0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.Ring.Variant11afe18345e6c47981afa3819057b25aaf1333b0e9b27f10dc77ed9dbe5a91db","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"11afe18345e6c47981afa3819057b25aaf1333b0e9b27f10dc77ed9dbe5a91db","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.Ring.Variant11afe18345e6c47981afa3819057b25aaf1333b0e9b27f10dc77ed9dbe5a91db","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"11afe18345e6c47981afa3819057b25aaf1333b0e9b27f10dc77ed9dbe5a91db","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Tactic/Ring/PNat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["scope_end_name_mismatch","scope_underflow","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Tactic.Ring.Basic
import Mathlib.Data.PNat.Basic

/-!
# Additional instances for `ring` over `PNat`

This adds some instances which enable `ring` to work on `PNat` even though it is not a commutative
semiring, by lifting to `Nat`.
-/


namespace GRWTSK.Algebra.Ring.Variant11afe18345e6c47981afa3819057b25aaf1333b0e9b27f10dc77ed9dbe5a91db

namespace Mathlib.Tactic.Ring

instance : CSLift ℕ+ Nat where
  lift := PNat.val
  inj := PNat.coe_injective

-- FIXME: this `no_index` seems to be in the wrong place, but
-- #synth CSLiftVal (3 : ℕ+) _ doesn't work otherwise
instance {n} : CSLiftVal (no_index (OfNat.ofNat (n+1)) : ℕ+) (n + 1) := ⟨rfl⟩

instance {n h} : CSLiftVal (Nat.toPNat n h) n := ⟨rfl⟩


instance {n} : CSLiftVal (Nat.succPNat n) (n + 1) := ⟨rfl⟩

instance {n} : CSLiftVal (Nat.toPNat' n) (n.pred + 1) := ⟨rfl⟩

instance {n k} : CSLiftVal (PNat.divExact n k) (n.div k + 1) := ⟨rfl⟩

instance {n n' k k'} [h1 : CSLiftVal (n : ℕ+) n'] [h2 : CSLiftVal (k : ℕ+) k'] :
    CSLiftVal (n + k) (n' + k') := ⟨by simp [h1.1, h2.1, CSLift.lift]⟩

instance {n n' k k'} [h1 : CSLiftVal (n : ℕ+) n'] [h2 : CSLiftVal (k : ℕ+) k'] :
    CSLiftVal (n * k) (n' * k') := ⟨by simp [h1.1, h2.1, CSLift.lift]⟩

instance {n n' k} [h1 : CSLiftVal (n : ℕ+) n'] :
    CSLiftVal (n ^ k) (n' ^ k) := ⟨by simp [h1.1, CSLift.lift]⟩

end Ring

end Mathlib.Tactic
```
