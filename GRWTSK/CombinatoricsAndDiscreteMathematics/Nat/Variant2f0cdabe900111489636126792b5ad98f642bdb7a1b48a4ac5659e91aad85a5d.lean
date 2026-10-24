-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.FactorsEq.Variant67ac4cef9cde400e4599ff983d1830cb4234bb9a328a29ebcdd9ef967f003826","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"67ac4cef9cde400e4599ff983d1830cb4234bb9a328a29ebcdd9ef967f003826","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.FactorsEq.Variant67ac4cef9cde400e4599ff983d1830cb4234bb9a328a29ebcdd9ef967f003826","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"67ac4cef9cde400e4599ff983d1830cb4234bb9a328a29ebcdd9ef967f003826","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/UniqueFactorizationDomain/Nat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Jens Wagemaker, Aaron Anderson
-/
module

public import Mathlib.Data.ENat.Basic
public import Mathlib.Data.Nat.Factors
public import Mathlib.RingTheory.UniqueFactorizationDomain.NormalizedFactors
public import Mathlib.Data.ENat.Monoid

/-!
# Unique factorization of natural numbers

## Main definitions

* `Nat.instUniqueFactorizationMonoid`: the natural numbers have unique factorization
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FactorsEq.Variant67ac4cef9cde400e4599ff983d1830cb4234bb9a328a29ebcdd9ef967f003826

public section

assert_not_exists Field

namespace Nat

instance instWfDvdMonoid : WfDvdMonoid ℕ := by
  refine RelHomClass.wellFounded
    (⟨fun x : ℕ => if x = 0 then (⊤ : ℕ∞) else x, ?_⟩ : DvdNotUnit →r (· < ·)) wellFounded_lt
  intro a b h
  rcases a with - | a
  · exfalso
    revert h
    simp [DvdNotUnit]
  cases b
  · simp
  obtain ⟨h1, h2⟩ := dvd_and_not_dvd_iff.2 h
  simp only [succ_ne_zero, ENat.natCast_lt_natCast, ite_false]
  refine lt_of_le_of_ne (Nat.le_of_dvd (Nat.succ_pos _) h1) fun con => h2 ?_
  rw [con]

instance instUniqueFactorizationMonoid : UniqueFactorizationMonoid ℕ where
  irreducible_iff_prime := Nat.irreducible_iff_prime

open UniqueFactorizationMonoid

lemma factors_eq : ∀ n : ℕ, normalizedFactors n = n.primeFactorsList
  | 0 => by simp
  | n + 1 => by
    rw [← Multiset.rel_eq, ← associated_eq_eq]
    apply UniqueFactorizationMonoid.factors_unique irreducible_of_normalized_factor _
    · rw [Multiset.prod_coe, Nat.prod_primeFactorsList n.succ_ne_zero]
      exact prod_normalizedFactors n.succ_ne_zero
    · intro x hx
      rw [Nat.irreducible_iff_prime, ← Nat.prime_iff]
      exact Nat.prime_of_mem_primeFactorsList hx

lemma factors_multiset_prod_of_irreducible {s : Multiset ℕ} (h : ∀ x : ℕ, x ∈ s → Irreducible x) :
    normalizedFactors s.prod = s := by
  rw [← Multiset.rel_eq, ← associated_eq_eq]
  apply UniqueFactorizationMonoid.factors_unique irreducible_of_normalized_factor h
    (prod_normalizedFactors _)
  rw [Ne, Multiset.prod_eq_zero_iff]
  exact fun con ↦ not_irreducible_zero (h 0 con)

end Nat
