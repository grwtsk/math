# Complete source: GRWTSK.Analysis.ComplexAnalysis.IntegerCompl.Variantcb95f3e1a645c6c8cffbe8f7987c611d30026128e5a4712d906850720583e48c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `59a26eb3ab4fff9271c79dfa08db43036e6f8f63` · SHA-256 `91375133e6e7da2fcec62eaa5c3e200b8bbd31a7cda06eee7025540d366638c8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.ComplexAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.ComplexAnalysis.ComplexIntegerComplement.Variantdfe26cb9a2e550d8ad5cd430eb042eac454ad75509b1083d1c43847ae947d3f2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dfe26cb9a2e550d8ad5cd430eb042eac454ad75509b1083d1c43847ae947d3f2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.ComplexAnalysis.SourceCorpus.ComplexIntegerComplement.Variantdfe26cb9a2e550d8ad5cd430eb042eac454ad75509b1083d1c43847ae947d3f2","mathematical_subject":"Analysis.ComplexAnalysis","original_sha256":"dfe26cb9a2e550d8ad5cd430eb042eac454ad75509b1083d1c43847ae947d3f2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Analysis/Complex/IntegerCompl.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Chris Birkbeck. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Birkbeck
-/

import Mathlib.Analysis.Complex.UpperHalfPlane.Basic

/-!
# Integer Complement

We define the complement of the integers in the complex plane and give some basic lemmas about it.
We also show that the upper half plane embeds into the integer complement.

-/


namespace GRWTSK.Analysis.ComplexAnalysis.ComplexIntegerComplement.Variantdfe26cb9a2e550d8ad5cd430eb042eac454ad75509b1083d1c43847ae947d3f2

open UpperHalfPlane

/-- The complement of the integers in `ℂ` -/
def Complex.integerComplement := (Set.range ((↑) : ℤ → ℂ))ᶜ

namespace Complex

local notation "ℂ_ℤ " => integerComplement

lemma integerComplement_eq : ℂ_ℤ = {z : ℂ | ¬ ∃ (n : ℤ), n = z} := rfl

lemma integerComplement.mem_iff {x : ℂ} : x ∈ ℂ_ℤ ↔ ¬ ∃ (n : ℤ), n = x := Iff.rfl

lemma UpperHalfPlane.coe_mem_integerComplement (z : ℍ) : ↑z ∈ ℂ_ℤ :=
  not_exists.mpr fun x hx ↦ ne_int z x hx.symm

lemma integerComplement.add_coe_int_mem {x : ℂ} (a : ℤ) : x + (a : ℂ) ∈ ℂ_ℤ ↔ x ∈ ℂ_ℤ := by
  simp only [mem_iff, not_iff_not]
  exact ⟨(Exists.elim · fun n hn ↦ ⟨n - a, by simp [hn]⟩),
    (Exists.elim · fun n hn ↦ ⟨n + a, by simp [hn]⟩)⟩

lemma integerComplement.ne_zero {x : ℂ} (hx : x ∈ ℂ_ℤ) : x ≠ 0 :=
  fun hx' ↦ hx ⟨0, by exact_mod_cast hx'.symm⟩

lemma integerComplement_add_ne_zero {x : ℂ} (hx : x ∈ ℂ_ℤ) (a : ℤ) : x + (a : ℂ)  ≠ 0 :=
  integerComplement.ne_zero ((integerComplement.add_coe_int_mem a).mpr hx)

lemma integerComplement.ne_one {x : ℂ} (hx : x ∈ ℂ_ℤ): x ≠ 1 :=
  fun hx' ↦ hx ⟨1, by exact_mod_cast hx'.symm⟩

end Complex
```
