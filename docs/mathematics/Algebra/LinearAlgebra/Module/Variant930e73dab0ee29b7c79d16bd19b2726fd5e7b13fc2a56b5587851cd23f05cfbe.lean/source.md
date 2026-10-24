# Complete source: GRWTSK.Algebra.LinearAlgebra.Module.Variant930e73dab0ee29b7c79d16bd19b2726fd5e7b13fc2a56b5587851cd23f05cfbe

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8e7b9fe5c83cbcd3fbda0565df293480ef9f154c` · SHA-256 `186a86bd57d2c1936999adbc9aa8bd55d8687a1bc98fc1a5cd4a2f143dd75d22`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.LocalizedModuleSubsingletonIffDisjoint.Variant51dabc064d922dcb20466d74d980aede82b79fa72164c0888eb12c0707764ec9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"51dabc064d922dcb20466d74d980aede82b79fa72164c0888eb12c0707764ec9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.LocalizedModuleSubsingletonIffDisjoint.Variant51dabc064d922dcb20466d74d980aede82b79fa72164c0888eb12c0707764ec9","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"51dabc064d922dcb20466d74d980aede82b79fa72164c0888eb12c0707764ec9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/RingTheory/Spectrum/Prime/Module.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Andrew Yang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Andrew Yang
-/
import Mathlib.RingTheory.Spectrum.Prime.Topology
import Mathlib.RingTheory.Support

/-!

# Subsets of prime spectra related to modules

## Main results

- `LocalizedModule.subsingleton_iff_disjoint` : `M[1/f] = 0 ↔ D(f) ∩ Supp M = 0`.
- `Module.isClosed_support` : If `M` is a finite `R`-module, then `Supp M` is closed.

## TODO
- If `M` is finitely presented, the complement of `Supp M` is quasi-compact. (stacks#051B)

-/


namespace GRWTSK.Algebra.LinearAlgebra.LocalizedModuleSubsingletonIffDisjoint.Variant51dabc064d922dcb20466d74d980aede82b79fa72164c0888eb12c0707764ec9

variable {R A M : Type*} [CommRing R] [AddCommGroup M] [Module R M]
  [CommRing A] [Algebra R A] [Module A M]


section support

/-- `M[1/f] = 0` if and only if `D(f) ∩ Supp M = 0`. -/
lemma LocalizedModule.subsingleton_iff_disjoint {f : R} :
    Subsingleton (LocalizedModule (.powers f) M) ↔
      Disjoint ↑(PrimeSpectrum.basicOpen f) (Module.support R M) := by
  rw [subsingleton_iff_support_subset, PrimeSpectrum.basicOpen_eq_zeroLocus_compl,
    disjoint_compl_left_iff, Set.le_iff_subset]

lemma Module.stableUnderSpecialization_support :
    StableUnderSpecialization (Module.support R M) := by
  intros x y e H
  rw [mem_support_iff_exists_annihilator] at H ⊢
  obtain ⟨m, hm⟩ := H
  exact ⟨m, hm.trans ((PrimeSpectrum.le_iff_specializes _ _).mpr e)⟩

lemma Module.isClosed_support [Module.Finite R M] :
    IsClosed (Module.support R M) := by
  rw [support_eq_zeroLocus]
  apply PrimeSpectrum.isClosed_zeroLocus

lemma Module.support_subset_preimage_comap [IsScalarTower R A M] :
    Module.support A M ⊆ PrimeSpectrum.comap (algebraMap R A) ⁻¹' Module.support R M := by
  intro x hx
  simp only [Set.mem_preimage, mem_support_iff', PrimeSpectrum.comap_asIdeal, Ideal.mem_comap,
    ne_eq, not_imp_not] at hx ⊢
  obtain ⟨m, hm⟩ := hx
  exact ⟨m, fun r e ↦ hm _ (by simpa)⟩

end support
```
