# Complete source: GRWTSK.Topology.GeneralTopology.Periodic.Variantfb1aceae943663ec2017f50f75bdd612accc1be57ffcc4001fe5d9a5be681390

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f2e3451442fa82a871ed14b030f6981e9369bd2f` · SHA-256 `0032274f8833f531ce4511a8d85fd911edb714149f498992bb616c1eff50d40f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.PeriodicGcd.Variantaa77aaebec0d4216f13aef9db964ee6e2eca497c03b477c05eb05d2e03387260","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aa77aaebec0d4216f13aef9db964ee6e2eca497c03b477c05eb05d2e03387260","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.PeriodicGcd.Variantaa77aaebec0d4216f13aef9db964ee6e2eca497c03b477c05eb05d2e03387260","mathematical_subject":"Topology.GeneralTopology","original_sha256":"aa77aaebec0d4216f13aef9db964ee6e2eca497c03b477c05eb05d2e03387260","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Nat/Periodic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Bolton Bailey. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Bolton Bailey
-/
import Mathlib.Algebra.Ring.Periodic
import Mathlib.Data.Nat.Count

/-!
# Periodic Functions on ℕ

This file identifies a few functions on `ℕ` which are periodic, and also proves a lemma about
periodic predicates which helps determine their cardinality when filtering intervals over them.
-/


namespace GRWTSK.Topology.GeneralTopology.PeriodicGcd.Variantaa77aaebec0d4216f13aef9db964ee6e2eca497c03b477c05eb05d2e03387260

assert_not_exists TwoSidedIdeal

namespace Nat

open Function

theorem periodic_gcd (a : ℕ) : Periodic (gcd a) a := by
  simp only [forall_const, gcd_add_self_right, eq_self_iff_true, Periodic]

theorem periodic_coprime (a : ℕ) : Periodic (Coprime a) a := by
  simp only [coprime_add_self_right, forall_const, eq_iff_iff, Periodic]

theorem periodic_mod (a : ℕ) : Periodic (fun n => n % a) a := by
  simp only [forall_const, eq_self_iff_true, add_mod_right, Periodic]

theorem _root_.GRWTSK.Topology.GeneralTopology.PeriodicGcd.Variantaa77aaebec0d4216f13aef9db964ee6e2eca497c03b477c05eb05d2e03387260.Function.Periodic.map_mod_nat {α : Type*} {f : ℕ → α} {a : ℕ} (hf : Periodic f a) :
    ∀ n, f (n % a) = f n := fun n => by
  conv_rhs => rw [← Nat.mod_add_div n a, mul_comm, ← Nat.nsmul_eq_mul, hf.nsmul]

section Multiset

open Multiset

/-- An interval of length `a` filtered over a periodic predicate of period `a` has cardinality
equal to the number naturals below `a` for which `p a` is true. -/
theorem filter_multiset_Ico_card_eq_of_periodic (n a : ℕ) (p : ℕ → Prop) [DecidablePred p]
    (pp : Periodic p a) : card (filter p (Ico n (n + a))) = a.count p := by
  rw [count_eq_card_filter_range, Finset.card, Finset.filter_val, Finset.range_val, ←
    multiset_Ico_map_mod n, ← map_count_True_eq_filter_card, ← map_count_True_eq_filter_card,
    map_map]
  congr; funext n
  exact (Function.Periodic.map_mod_nat pp n).symm

end Multiset

section Finset

open Finset

/-- An interval of length `a` filtered over a periodic predicate of period `a` has cardinality
equal to the number naturals below `a` for which `p a` is true. -/
theorem filter_Ico_card_eq_of_periodic (n a : ℕ) (p : ℕ → Prop) [DecidablePred p]
    (pp : Periodic p a) : ((Ico n (n + a)).filter p).card = a.count p :=
  filter_multiset_Ico_card_eq_of_periodic n a p pp

end Finset

end Nat
```
