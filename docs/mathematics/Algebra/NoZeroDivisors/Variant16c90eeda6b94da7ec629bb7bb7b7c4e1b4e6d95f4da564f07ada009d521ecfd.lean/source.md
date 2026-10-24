# Complete source: GRWTSK.Algebra.NoZeroDivisors.Variant16c90eeda6b94da7ec629bb7bb7b7c4e1b4e6d95f4da564f07ada009d521ecfd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6b486179bfa503a35a023b79e5f68970c1705ecd` · SHA-256 `e6a12c0243faed7af9bc7b492c3894bfde16ca2b0f23acbaaf992298cf25ac32`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.SpanXIsPrime.Variant943bd2e894c708b00543826dc27d6098c9c141f6908c429b0999a2234a76b2b3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"943bd2e894c708b00543826dc27d6098c9c141f6908c429b0999a2234a76b2b3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.SpanXIsPrime.Variant943bd2e894c708b00543826dc27d6098c9c141f6908c429b0999a2234a76b2b3","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"943bd2e894c708b00543826dc27d6098c9c141f6908c429b0999a2234a76b2b3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/PowerSeries/NoZeroDivisors.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2019 Johan Commelin. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johan Commelin, Kenny Lau
-/
import Mathlib.RingTheory.PowerSeries.Order
import Mathlib.RingTheory.Ideal.Maps

/-!
# Power series over rings with no zero divisors

This file proves, using the properties of orders of power series,
that `R⟦X⟧` is an integral domain when `R` is.

We then state various results about `R⟦X⟧` with `R` an integral domain.

##  Instance

If `R` has `NoZeroDivisors`, then so does `R⟦X⟧`.

-/



namespace GRWTSK.Algebra.SpanXIsPrime.Variant943bd2e894c708b00543826dc27d6098c9c141f6908c429b0999a2234a76b2b3

variable {R : Type*}

namespace PowerSeries

section NoZeroDivisors

variable [Semiring R]

instance [NoZeroDivisors R] : NoZeroDivisors R⟦X⟧ where
  eq_zero_or_eq_zero_of_mul_eq_zero {φ ψ} h := by
    simp_rw [← order_eq_top, order_mul] at h ⊢
    exact WithTop.add_eq_top.mp h

end NoZeroDivisors

section IsDomain

instance [Ring R] [IsDomain R] : IsDomain R⟦X⟧ :=
  NoZeroDivisors.to_isDomain _

variable [CommRing R] [IsDomain R]

/-- The ideal spanned by the variable in the power series ring
over an integral domain is a prime ideal. -/
theorem span_X_isPrime : (Ideal.span ({X} : Set R⟦X⟧)).IsPrime := by
  suffices Ideal.span ({X} : Set R⟦X⟧) = RingHom.ker (constantCoeff R) by
    rw [this]
    exact RingHom.ker_isPrime _
  apply Ideal.ext
  intro φ
  rw [RingHom.mem_ker, Ideal.mem_span_singleton, X_dvd_iff]

/-- The variable of the power series ring over an integral domain is prime. -/
theorem X_prime : Prime (X : R⟦X⟧) := by
  rw [← Ideal.span_singleton_prime]
  · exact span_X_isPrime
  · intro h
    simpa [map_zero (coeff R 1)] using congr_arg (coeff R 1) h

/-- The variable of the power series ring over an integral domain is irreducible. -/
theorem X_irreducible : Irreducible (X : R⟦X⟧) := X_prime.irreducible

theorem rescale_injective {a : R} (ha : a ≠ 0) : Function.Injective (rescale a) := by
  intro p q h
  rw [PowerSeries.ext_iff] at *
  intro n
  specialize h n
  rwa [coeff_rescale, coeff_rescale, mul_right_inj' <| pow_ne_zero _ ha] at h

end IsDomain

end PowerSeries
```
