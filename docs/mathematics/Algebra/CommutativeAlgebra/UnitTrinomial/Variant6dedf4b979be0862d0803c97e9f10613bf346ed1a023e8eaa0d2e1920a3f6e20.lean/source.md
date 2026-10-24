# Complete source: GRWTSK.Algebra.CommutativeAlgebra.UnitTrinomial.Variant6dedf4b979be0862d0803c97e9f10613bf346ed1a023e8eaa0d2e1920a3f6e20

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1c758074efe732915e64206e666ccc12ee0914b9` · SHA-256 `e0f9f17209cad5374a3424eb35a3c41c2cd80104f2bf86296534dec368391b94`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.IrreducibleOfCoprimePrime.Variant883832c8e4c483b76a2d0c7f2c298f0c3b7e5ebe5500177faad2d842ad568142","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"883832c8e4c483b76a2d0c7f2c298f0c3b7e5ebe5500177faad2d842ad568142","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.IrreducibleOfCoprimePrime.Variant883832c8e4c483b76a2d0c7f2c298f0c3b7e5ebe5500177faad2d842ad568142","mathematical_subject":"Algebra.Polynomials","original_sha256":"883832c8e4c483b76a2d0c7f2c298f0c3b7e5ebe5500177faad2d842ad568142","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/Complex/Polynomial/UnitTrinomial.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Thomas Browning. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Thomas Browning
-/
import Mathlib.Algebra.Polynomial.UnitTrinomial
import Mathlib.Analysis.Complex.Polynomial.Basic

/-!
# Irreducibility of unit trinomials

## TODO

Develop more theory (e.g., it suffices to check that `aeval z p ≠ 0` for `z = 0` and `z` a root of
unity).
-/


namespace GRWTSK.Algebra.CommutativeAlgebra.IrreducibleOfCoprimePrime.Variant883832c8e4c483b76a2d0c7f2c298f0c3b7e5ebe5500177faad2d842ad568142

namespace Polynomial.IsUnitTrinomial
variable {p : ℤ[X]}

/-- A unit trinomial is irreducible if it has no complex roots in common with its mirror. -/
theorem irreducible_of_coprime' (hp : IsUnitTrinomial p)
    (h : ∀ z : ℂ, ¬(aeval z p = 0 ∧ aeval z (mirror p) = 0)) : Irreducible p := by
  refine hp.irreducible_of_coprime fun q hq hq' => ?_
  suffices ¬0 < q.natDegree by
    rcases hq with ⟨p, rfl⟩
    replace hp := hp.leadingCoeff_isUnit
    rw [leadingCoeff_mul] at hp
    replace hp := isUnit_of_mul_isUnit_left hp
    rw [not_lt, Nat.le_zero] at this
    rwa [eq_C_of_natDegree_eq_zero this, isUnit_C, ← this]
  intro hq''
  rw [natDegree_pos_iff_degree_pos] at hq''
  rw [← degree_map_eq_of_injective (algebraMap ℤ ℂ).injective_int] at hq''
  obtain ⟨z, hz⟩ := Complex.exists_root hq''
  rw [IsRoot, eval_map, ← aeval_def] at hz
  refine h z ⟨?_, ?_⟩
  · obtain ⟨g', hg'⟩ := hq
    rw [hg', aeval_mul, hz, zero_mul]
  · obtain ⟨g', hg'⟩ := hq'
    rw [hg', aeval_mul, hz, zero_mul]

end Polynomial.IsUnitTrinomial
```
