-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.MonicIrreducibleOfIrreducibleMap.Variant685c4b33b23aa92033d5ef50415ed9ebce1bfceaf1506a36e5a6c6461aedb399","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"685c4b33b23aa92033d5ef50415ed9ebce1bfceaf1506a36e5a6c6461aedb399","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.MonicIrreducibleOfIrreducibleMap.Variant685c4b33b23aa92033d5ef50415ed9ebce1bfceaf1506a36e5a6c6461aedb399","mathematical_subject":"Algebra.Polynomials","original_sha256":"685c4b33b23aa92033d5ef50415ed9ebce1bfceaf1506a36e5a6c6461aedb399","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Polynomial/Eval/Irreducible.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Chris Hughes. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Chris Hughes, Johannes Hölzl, Kim Morrison, Jens Wagemaker
-/
import Mathlib.Algebra.Polynomial.Eval.Coeff
import Mathlib.Algebra.Polynomial.Eval.Degree
import Mathlib.Algebra.Prime.Defs

/-!
# Mapping irreducible polynomials

## Main results

* `Monic.irreducible_of_irreducible_map`: we can prove a monic polynomial is irreducible
  by mapping it to another integral domain and checking for irreducibility there.
-/


namespace GRWTSK.Algebra.CommutativeAlgebra.MonicIrreducibleOfIrreducibleMap.Variant685c4b33b23aa92033d5ef50415ed9ebce1bfceaf1506a36e5a6c6461aedb399

noncomputable section

open Finset AddMonoidAlgebra

open Polynomial

namespace Polynomial

universe u v w y

variable {R : Type u} {S : Type v} {T : Type w} {ι : Type y} {a b : R} {m n : ℕ}

section
variable [CommRing R] [IsDomain R] [CommRing S] [IsDomain S] (φ : R →+* S)

/-- A polynomial over an integral domain `R` is irreducible if it is monic and
irreducible after mapping into an integral domain `S`.

A special case of this lemma is that a polynomial over `ℤ` is irreducible if
it is monic and irreducible over `ℤ/pℤ` for some prime `p`.
-/
lemma Monic.irreducible_of_irreducible_map (f : R[X]) (h_mon : Monic f)
    (h_irr : Irreducible (f.map φ)) : Irreducible f := by
  refine ⟨h_irr.not_isUnit ∘ IsUnit.map (mapRingHom φ), fun a b h => ?_⟩
  dsimp [Monic] at h_mon
  have q := (leadingCoeff_mul a b).symm
  rw [← h, h_mon] at q
  refine (h_irr.isUnit_or_isUnit <|
    (congr_arg (Polynomial.map φ) h).trans (Polynomial.map_mul φ)).imp ?_ ?_ <;>
      apply isUnit_of_isUnit_leadingCoeff_of_isUnit_map <;>
    apply isUnit_of_mul_eq_one
  · exact q
  · rw [mul_comm]
    exact q

end
end Polynomial
