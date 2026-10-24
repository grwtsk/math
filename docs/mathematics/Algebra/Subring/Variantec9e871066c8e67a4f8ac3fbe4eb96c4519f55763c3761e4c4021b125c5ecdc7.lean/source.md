# Complete source: GRWTSK.Algebra.Subring.Variantec9e871066c8e67a4f8ac3fbe4eb96c4519f55763c3761e4c4021b125c5ecdc7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `536ea5cdbb739358e76ef08a7917f110efaf8d21` · SHA-256 `29be1c8f864fdf70fbb73570425b4b44c3ca220294b491b8509fb7ef8ad80e82`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.OfInjective.Variant6b23b43182be181b3d2074333c3b2f7b8a7e14f45dc55ca16df160cd748ef254","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6b23b43182be181b3d2074333c3b2f7b8a7e14f45dc55ca16df160cd748ef254","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.OfInjective.Variant6b23b43182be181b3d2074333c3b2f7b8a7e14f45dc55ca16df160cd748ef254","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"6b23b43182be181b3d2074333c3b2f7b8a7e14f45dc55ca16df160cd748ef254","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/LocalRing/Subring.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Michal Staromiejski. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Michal Staromiejski
-/
import Mathlib.Algebra.Ring.Subsemiring.Basic
import Mathlib.Algebra.GroupWithZero.NonZeroDivisors
import Mathlib.RingTheory.LocalRing.Defs

/-!
# Subrings of local rings

We prove basic properties of subrings of local rings.
-/


namespace GRWTSK.Algebra.OfInjective.Variant6b23b43182be181b3d2074333c3b2f7b8a7e14f45dc55ca16df160cd748ef254

namespace IsLocalRing

variable {R S} [Semiring R] [Semiring S]

open nonZeroDivisors

/-- If a (semi)ring `R` in which every element is either invertible or a zero divisor
embeds in a local (semi)ring `S`, then `R` is local. -/
theorem of_injective [IsLocalRing S] {f : R →+* S} (hf : Function.Injective f)
    (h : ∀ a, a ∈ R⁰ → IsUnit a) : IsLocalRing R := by
  haveI : Nontrivial R := f.domain_nontrivial
  refine .of_is_unit_or_is_unit_of_add_one fun {a b} hab ↦
    (IsLocalRing.isUnit_or_isUnit_of_add_one (map_add f .. ▸ map_one f ▸ congrArg f hab)).imp ?_ ?_
  <;> exact h _ ∘ mem_nonZeroDivisors_of_injective hf ∘ IsUnit.mem_nonZeroDivisors

/-- If in a sub(semi)ring `R` of a local (semi)ring `S` every element is either
invertible or a zero divisor, then `R` is local. -/
theorem of_subring [IsLocalRing S] {R : Subsemiring S} (h : ∀ a, a ∈ R⁰ → IsUnit a) :
    IsLocalRing R :=
  of_injective R.subtype_injective h

/-- If in a sub(semi)ring `R` of a local (semi)ring `R'` every element is either
invertible or a zero divisor, then `R` is local.
This version is for `R` and `R'` that are both sub(semi)rings of a (semi)ring `S`. -/
theorem of_subring' {R R' : Subsemiring S} [IsLocalRing R'] (inc : R ≤ R')
    (h : ∀ a, a ∈ R⁰ → IsUnit a) : IsLocalRing R :=
  of_injective (Subsemiring.inclusion_injective inc) h

end IsLocalRing
```
