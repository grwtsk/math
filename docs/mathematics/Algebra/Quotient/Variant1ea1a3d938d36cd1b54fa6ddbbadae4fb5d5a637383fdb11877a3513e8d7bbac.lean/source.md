# Complete source: GRWTSK.Algebra.Quotient.Variant1ea1a3d938d36cd1b54fa6ddbbadae4fb5d5a637383fdb11877a3513e8d7bbac

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4f4368ee38869a16c0f81e142ee82f0f991cf3dd` · SHA-256 `46f3cfc1fa524c82d019f1a250c84926d8b68988e86371bf5382ab082f09cea6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.KerIntAlgebraMapEqSpan.Variant6aa90866ab5822acaac9bd366c993b9fc25c91bccd615fa4f399aa4e7f0b3bf2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6aa90866ab5822acaac9bd366c993b9fc25c91bccd615fa4f399aa4e7f0b3bf2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.KerIntAlgebraMapEqSpan.Variant6aa90866ab5822acaac9bd366c993b9fc25c91bccd615fa4f399aa4e7f0b3bf2","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"6aa90866ab5822acaac9bd366c993b9fc25c91bccd615fa4f399aa4e7f0b3bf2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/CharP/Quotient.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau, Eric Wieser
-/
import Mathlib.GroupTheory.OrderOfElement
import Mathlib.RingTheory.Ideal.Maps
import Mathlib.RingTheory.Ideal.Nonunits
import Mathlib.RingTheory.Ideal.Quotient.Defs

/-!
# Characteristic of quotients rings
-/



namespace GRWTSK.Algebra.KerIntAlgebraMapEqSpan.Variant6aa90866ab5822acaac9bd366c993b9fc25c91bccd615fa4f399aa4e7f0b3bf2

universe u v

namespace CharP

theorem ker_intAlgebraMap_eq_span
    {R : Type*} [Ring R] (p : ℕ) [CharP R p] :
    RingHom.ker (algebraMap ℤ R) = Ideal.span {(p : ℤ)} := by
  ext a
  simp [CharP.intCast_eq_zero_iff R p, Ideal.mem_span_singleton]

theorem quotient (R : Type u) [CommRing R] (p : ℕ) [hp1 : Fact p.Prime] (hp2 : ↑p ∈ nonunits R) :
    CharP (R ⧸ (Ideal.span ({(p : R)} : Set R) : Ideal R)) p :=
  have hp0 : (p : R ⧸ (Ideal.span {(p : R)} : Ideal R)) = 0 :=
    map_natCast (Ideal.Quotient.mk (Ideal.span {(p : R)} : Ideal R)) p ▸
      Ideal.Quotient.eq_zero_iff_mem.2 (Ideal.subset_span <| Set.mem_singleton _)
  ringChar.of_eq <|
    Or.resolve_left ((Nat.dvd_prime hp1.1).1 <| ringChar.dvd hp0) fun h1 =>
      hp2 <|
        isUnit_iff_dvd_one.2 <|
          Ideal.mem_span_singleton.1 <|
            Ideal.Quotient.eq_zero_iff_mem.1 <|
              @Subsingleton.elim _ (@CharOne.subsingleton _ _ (ringChar.of_eq h1)) _ _

/-- If an ideal does not contain any coercions of natural numbers other than zero, then its quotient
inherits the characteristic of the underlying ring. -/
theorem quotient' {R : Type*} [CommRing R] (p : ℕ) [CharP R p] (I : Ideal R)
    (h : ∀ x : ℕ, (x : R) ∈ I → (x : R) = 0) : CharP (R ⧸ I) p :=
  ⟨fun x => by
    rw [← cast_eq_zero_iff R p x, ← map_natCast (Ideal.Quotient.mk I)]
    refine Ideal.Quotient.eq.trans (?_ : ↑x - 0 ∈ I ↔ _)
    rw [sub_zero]
    exact ⟨h x, fun h' => h'.symm ▸ I.zero_mem⟩⟩

/-- `CharP.quotient'` as an `Iff`. -/
theorem quotient_iff {R : Type*} [CommRing R] (n : ℕ) [CharP R n] (I : Ideal R) :
    CharP (R ⧸ I) n ↔ ∀ x : ℕ, ↑x ∈ I → (x : R) = 0 := by
  refine ⟨fun _ x hx => ?_, CharP.quotient' n I⟩
  rw [CharP.cast_eq_zero_iff R n, ← CharP.cast_eq_zero_iff (R ⧸ I) n _]
  exact (Submodule.Quotient.mk_eq_zero I).mpr hx

/-- `CharP.quotient_iff`, but stated in terms of inclusions of ideals. -/
theorem quotient_iff_le_ker_natCast {R : Type*} [CommRing R] (n : ℕ) [CharP R n] (I : Ideal R) :
    CharP (R ⧸ I) n ↔ I.comap (Nat.castRingHom R) ≤ RingHom.ker (Nat.castRingHom R) := by
  rw [CharP.quotient_iff, RingHom.ker_eq_comap_bot]; rfl

end CharP

theorem Ideal.Quotient.index_eq_zero {R : Type*} [CommRing R] (I : Ideal R) :
    (↑I.toAddSubgroup.index : R ⧸ I) = 0 := by
  rw [AddSubgroup.index, Nat.card_eq]
  split_ifs with hq; swap
  · simp
  letI : Fintype (R ⧸ I) := @Fintype.ofFinite _ hq
  exact Nat.cast_card_eq_zero (R ⧸ I)
```
