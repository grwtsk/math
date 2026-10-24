# Complete source: GRWTSK.Algebra.Basic.Variant591738d3c5f835ec6fabf379141ce7112521772cc5110539f8c0365bae4390e5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c7e42dea82999e243b3cb83b29d69aa44a1cdab2` · SHA-256 `a3c902f5ef8f54265674b00e5e0740129f0664ee9439548ba2de45592a2f0a57`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.MemMaximalIdeal.Variant8f5770a00a7ea607e9c897d289a7fa212a4ba61c54d3df2e9ba6f9d0ade241b7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8f5770a00a7ea607e9c897d289a7fa212a4ba61c54d3df2e9ba6f9d0ade241b7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.MemMaximalIdeal.Variant8f5770a00a7ea607e9c897d289a7fa212a4ba61c54d3df2e9ba6f9d0ade241b7","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"8f5770a00a7ea607e9c897d289a7fa212a4ba61c54d3df2e9ba6f9d0ade241b7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/RingTheory/LocalRing/MaximalIdeal/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Kenny Lau. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kenny Lau, Chris Hughes, Mario Carneiro
-/
module

public import Mathlib.RingTheory.Jacobson.Ideal
public import Mathlib.RingTheory.LocalRing.MaximalIdeal.Defs
public import Mathlib.RingTheory.Spectrum.Maximal.Defs

/-!

# Maximal ideal of local rings

We prove basic properties of the maximal ideal of a local ring.

-/


namespace GRWTSK.Algebra.MemMaximalIdeal.Variant8f5770a00a7ea607e9c897d289a7fa212a4ba61c54d3df2e9ba6f9d0ade241b7

public section

namespace IsLocalRing

variable {R K : Type*}

section CommSemiring

variable [CommSemiring R] [IsLocalRing R]

@[simp]
theorem mem_maximalIdeal (x) : x ∈ maximalIdeal R ↔ x ∈ nonunits R :=
  Iff.rfl

variable (R)

instance maximalIdeal.isMaximal : (maximalIdeal R).IsMaximal := by
  rw [Ideal.isMaximal_iff]
  constructor
  · intro h
    apply h
    exact isUnit_one
  · intro I x _ hx H
    rw [mem_maximalIdeal, mem_nonunits_iff, Classical.not_not] at hx
    rcases hx with ⟨u, rfl⟩
    simpa using I.mul_mem_left (↑u⁻¹) H

theorem isMaximal_iff {I : Ideal R} : I.IsMaximal ↔ I = maximalIdeal R where
  mp hI := hI.eq_of_le (maximalIdeal.isMaximal R).1.1 fun _ h ↦ hI.1.1 ∘ I.eq_top_of_isUnit_mem h
  mpr e := e ▸ maximalIdeal.isMaximal R

theorem maximal_ideal_unique : ∃! I : Ideal R, I.IsMaximal := by
  simp [isMaximal_iff]

variable {R}

theorem eq_maximalIdeal {I : Ideal R} (hI : I.IsMaximal) : I = maximalIdeal R :=
  ExistsUnique.unique (maximal_ideal_unique R) hI <| maximalIdeal.isMaximal R

/-- The maximal spectrum of a local ring is a singleton. -/
instance : Unique (MaximalSpectrum R) where
  default := ⟨maximalIdeal R, maximalIdeal.isMaximal R⟩
  uniq := fun I ↦ MaximalSpectrum.ext_iff.mpr <| eq_maximalIdeal I.isMaximal

omit [IsLocalRing R] in
/-- If the maximal spectrum of a ring is a singleton, then the ring is local. -/
theorem of_singleton_maximalSpectrum [Subsingleton (MaximalSpectrum R)]
    [Nonempty (MaximalSpectrum R)] : IsLocalRing R :=
  let m := Classical.arbitrary (MaximalSpectrum R)
  .of_unique_max_ideal ⟨m.asIdeal, m.isMaximal,
    fun I hI ↦ MaximalSpectrum.mk.inj <| Subsingleton.elim ⟨I, hI⟩ m⟩

theorem le_maximalIdeal {J : Ideal R} (hJ : J ≠ ⊤) : J ≤ maximalIdeal R := by
  rcases Ideal.exists_le_maximal J hJ with ⟨M, hM1, hM2⟩
  rwa [← eq_maximalIdeal hM1]

theorem le_maximalIdeal_of_isPrime (p : Ideal R) [hp : p.IsPrime] : p ≤ maximalIdeal R :=
  le_maximalIdeal hp.ne_top

/--
An element `x` of a commutative local semiring is not contained in the maximal ideal
iff it is a unit.
-/
theorem notMem_maximalIdeal {x : R} : x ∉ maximalIdeal R ↔ IsUnit x := by
  simp only [mem_maximalIdeal, mem_nonunits_iff, not_not]

theorem isField_iff_maximalIdeal_eq : IsField R ↔ maximalIdeal R = ⊥ :=
  not_iff_not.mp
    ⟨Ring.ne_bot_of_isMaximal_of_not_isField inferInstance, fun h =>
      Ring.not_isField_iff_exists_prime.mpr ⟨_, h, Ideal.IsMaximal.isPrime' _⟩⟩

end CommSemiring

section CommRing

variable [CommRing R] [IsLocalRing R]

theorem maximalIdeal_le_jacobson (I : Ideal R) :
    IsLocalRing.maximalIdeal R ≤ I.jacobson :=
  le_sInf fun _ ⟨_, h⟩ => le_of_eq (IsLocalRing.eq_maximalIdeal h).symm

theorem jacobson_eq_maximalIdeal (I : Ideal R) (h : I ≠ ⊤) :
    I.jacobson = IsLocalRing.maximalIdeal R :=
  le_antisymm (sInf_le ⟨le_maximalIdeal h, maximalIdeal.isMaximal R⟩)
              (maximalIdeal_le_jacobson I)

variable (R) in
theorem ringJacobson_eq_maximalIdeal : Ring.jacobson R = maximalIdeal R :=
  Ideal.jacobson_bot.symm.trans (jacobson_eq_maximalIdeal _ top_ne_bot.symm)

end CommRing

section

variable [CommRing R] [IsLocalRing R]

theorem ker_eq_maximalIdeal [DivisionRing K] (φ : R →+* K) (hφ : Function.Surjective φ) :
    RingHom.ker φ = maximalIdeal R :=
  IsLocalRing.eq_maximalIdeal <| (RingHom.ker_isMaximal_of_surjective φ) hφ

end

theorem maximalIdeal_eq_bot {R : Type*} [Field R] : IsLocalRing.maximalIdeal R = ⊥ :=
  IsLocalRing.isField_iff_maximalIdeal_eq.mp (Field.toIsField R)

end IsLocalRing

lemma Subsemiring.isLocalRing_of_unit {R : Type*} [Semiring R] [IsLocalRing R] (S : Subsemiring R)
    (h_unit : ∀ (x : R) (hx : x ∈ S), IsUnit x → IsUnit (⟨x, hx⟩ : S)) :
    IsLocalRing S where
  isUnit_or_isUnit_of_add_one {x y} hxy :=
    (‹IsLocalRing R›.isUnit_or_isUnit_of_add_one congr(Subtype.val $hxy)).elim
      (fun hx ↦ Or.inl (h_unit x.val x.prop hx)) (fun hy ↦ Or.inr (h_unit y.val y.prop hy))

lemma Subring.isLocalRing_of_unit {R : Type*} [Ring R] [IsLocalRing R] (S : Subring R)
    (h_unit : ∀ (x : R) (hx : x ∈ S), IsUnit x → IsUnit (⟨x, hx⟩ : S)) :
    IsLocalRing S :=
  S.toSubsemiring.isLocalRing_of_unit h_unit
```
