# Complete source: GRWTSK.Algebra.Basic.Variantb4d6059e67e50d89e63ed52fe327b95a096250d07e524228f7857ea10f9ed1dd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7548cf413f90d14ed532134607c5f210a981a5f7` · SHA-256 `453e66f17b639f78dfe7598f3bf6af829c7e295a376b9fef40c7d601a093416c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.EquivSubtype.Variant41994377f7e6018988239cca30fee9e26cefcda8f095e53230be4c46660da979","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"41994377f7e6018988239cca30fee9e26cefcda8f095e53230be4c46660da979","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.EquivSubtype.Variant41994377f7e6018988239cca30fee9e26cefcda8f095e53230be4c46660da979","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"41994377f7e6018988239cca30fee9e26cefcda8f095e53230be4c46660da979","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Spectrum/Maximal/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 David Kurniadi Angdinata. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Kurniadi Angdinata
-/
import Mathlib.RingTheory.Spectrum.Maximal.Defs
import Mathlib.RingTheory.Spectrum.Prime.Defs

/-!
# Maximal spectrum of a commutative (semi)ring

Basic properties the maximal spectrum of a ring.
-/


namespace GRWTSK.Algebra.EquivSubtype.Variant41994377f7e6018988239cca30fee9e26cefcda8f095e53230be4c46660da979

noncomputable section

variable (R S P : Type*) [CommSemiring R] [CommSemiring S] [CommSemiring P]

namespace MaximalSpectrum

/-- The prime spectrum is in bijection with the set of prime ideals. -/
@[simps]
def equivSubtype : MaximalSpectrum R ≃ {I : Ideal R // I.IsMaximal} where
  toFun I := ⟨I.asIdeal, I.2⟩
  invFun I := ⟨I, I.2⟩
  left_inv _ := rfl
  right_inv _ := rfl

theorem range_asIdeal : Set.range MaximalSpectrum.asIdeal = {J : Ideal R | J.IsMaximal} :=
  Set.ext fun J ↦
    ⟨fun hJ ↦ let ⟨j, hj⟩ := Set.mem_range.mp hJ; Set.mem_setOf.mpr <| hj ▸ j.isMaximal,
      fun hJ ↦ Set.mem_range.mpr ⟨⟨J, Set.mem_setOf.mp hJ⟩, rfl⟩⟩

variable {R}

instance [Nontrivial R] : Nonempty <| MaximalSpectrum R :=
  let ⟨I, hI⟩ := Ideal.exists_maximal R
  ⟨⟨I, hI⟩⟩

/-- The natural inclusion from the maximal spectrum to the prime spectrum. -/
def toPrimeSpectrum (x : MaximalSpectrum R) : PrimeSpectrum R :=
  ⟨x.asIdeal, x.isMaximal.isPrime⟩

theorem toPrimeSpectrum_injective : (@toPrimeSpectrum R _).Injective := fun ⟨_, _⟩ ⟨_, _⟩ h => by
  simpa only [MaximalSpectrum.mk.injEq] using PrimeSpectrum.ext_iff.mp h

end MaximalSpectrum
```
