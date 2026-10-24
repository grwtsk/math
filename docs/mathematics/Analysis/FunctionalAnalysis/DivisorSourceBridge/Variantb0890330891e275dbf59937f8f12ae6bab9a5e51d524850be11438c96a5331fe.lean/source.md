# Complete source: GRWTSK.Analysis.FunctionalAnalysis.DivisorSourceBridge.Variantb0890330891e275dbf59937f8f12ae6bab9a5e51d524850be11438c96a5331fe

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `31892397b4f508e0e077c8704f7ecf21c2a4811e` · SHA-256 `0e847c9b8013035a7e4039208afea4b820dd5e15f8f8d172b9bbf76a2403a1d7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.ResidualDivisor.Variant7f5049fb2ca9a2184c8b8e86006c9807f28a6ad6b6caa17240bf5d7fa1f04bd7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7f5049fb2ca9a2184c8b8e86006c9807f28a6ad6b6caa17240bf5d7fa1f04bd7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ResidualDivisor.Variant7f5049fb2ca9a2184c8b8e86006c9807f28a6ad6b6caa17240bf5d7fa1f04bd7","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"7f5049fb2ca9a2184c8b8e86006c9807f28a6ad6b6caa17240bf5d7fa1f04bd7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/finite-lattice-arithmetic-gap-20261007/FormalResearch/FiniteLatticeArithmetic/DivisorSourceBridge.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.FiniteLatticeArithmetic.CyclicGraphWitness
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.FactorState
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.DivisibilityPacking

/-!
# Exact divisor representation on the certified arithmetic states

The source factors, residuals, exclusions, and CRT modulus are retained literally.
The bridge adds an exact order/congruence view; it supplies no primality or
quadratic lower-bound conclusion from a raw packing survivor.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.ResidualDivisor.Variant7f5049fb2ca9a2184c8b8e86006c9807f28a6ad6b6caa17240bf5d7fa1f04bd7

namespace FormalResearch.FiniteLatticeArithmetic

namespace SourceBridge

open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open scoped BigOperators

/-- The current actual residual is a divisor of the immutable original integer. -/
def residualDivisor {N : ℕ} (s : FactorState.State N) : Divisor N :=
  ⟨s.residual, (dvd_mul_right _ _).trans (dvd_of_eq s.conservation.symm)⟩

/-- The extracted integer is a divisor of the same original integer. -/
def extractedDivisor {N : ℕ} (s : FactorState.State N) : Divisor N :=
  ⟨FactorState.primeProduct s.extracted,
    (dvd_mul_left _ _).trans (dvd_of_eq s.conservation.symm)⟩

/-- The divisor representation keeps the complete, literal stored valuation map. -/
theorem extractedDivisor_valuation {N : ℕ} (s : FactorState.State N) :
    (extractedDivisor s).val.factorization = s.extracted :=
  Nat.prod_pow_factorization_eq_self s.extracted_primes

/-- The source invariant is an exact partition of all prime valuations. -/
theorem state_valuation_partition {N : ℕ} (s : FactorState.State N) :
    N.factorization = (residualDivisor s).val.factorization + s.extracted := by
  calc
    N.factorization = (s.residual * FactorState.primeProduct s.extracted).factorization :=
      congrArg Nat.factorization s.conservation
    _ = s.residual.factorization + (FactorState.primeProduct s.extracted).factorization :=
      Nat.factorization_mul s.residual_pos.ne'
        (FactorState.primeProduct_pos s.extracted_primes).ne'
    _ = (residualDivisor s).val.factorization + s.extracted :=
      congrArg (fun v : ℕ →₀ ℕ => s.residual.factorization + v) (extractedDivisor_valuation s)

/-- Exact integer conservation survives the valuation representation. -/
theorem state_representation_reconstruction {N : ℕ} [NeZero N] (s : FactorState.State N) :
    N = (residualDivisor s).val *
      (Divisor.valuationOrderIso (extractedDivisor s)).val.prod (· ^ ·) := by
  rw [Divisor.valuation_reconstruct]
  exact s.conservation

/-- A checked source refinement is the literal descending order of divisor coordinates. -/
theorem refinement_residual_order {N : ℕ} {s t : FactorState.State N}
    (c : FactorState.Refinement s t) : residualDivisor t ≤ residualDivisor s := c.residual_dvd

/-- The same actual refinement descends in the full cyclic subgroup representation. -/
theorem refinement_cyclic_subgroup {N : ℕ} [NeZero N] {s t : FactorState.State N}
    (c : FactorState.Refinement s t) :
    cyclicSubgroup (residualDivisor t) ≤ cyclicSubgroup (residualDivisor s) :=
  (cyclicSubgroup_le_iff _ _).mpr (refinement_residual_order c)

/-- Every old certified nondivisibility observation persists through the exact bridge. -/
theorem refinement_exclusion {N p : ℕ} {s t : FactorState.State N}
    (c : FactorState.Refinement s t) (h : ¬p ∣ (residualDivisor s).val) :
    ¬p ∣ (residualDivisor t).val := c.negative_persists h

/-- The full divisor congruence representation applies to the actual CRT observation modulus. -/
noncomputable def packingCongruenceOrderIso (y : ℕ) :
    Divisor (DivisibilityPacking.Modulus y) ≃o
      OAI.FiniteCongruence.Congruence (cyclicGroupAlgebra (DivisibilityPacking.Modulus y)) :=
  cyclicGroupCongruenceOrderIso

/-- The actual packing modulus has the complete principal-color graph witness. -/
theorem packing_graph_witness (y : ℕ) :
    OAI.FiniteCongruence.IsGraphWitness (cyclicColor (M := DivisibilityPacking.Modulus y)) :=
  cyclicColor_isGraphWitness

/-- A visible prime's exact local kernel is a divisor coordinate of the actual modulus. -/
def packingKernelDivisor (y : ℕ) (p : DivisibilityPacking.primeSupport y) :
    Divisor (DivisibilityPacking.Modulus y) :=
  ⟨DivisibilityPacking.Modulus y / (p : ℕ),
    Nat.div_dvd_of_dvd (Finset.dvd_prod_of_mem id p.property)⟩

/-- Vanishing in a literal source CRT coordinate is an exact principal-color threshold. -/
theorem packing_reduction_threshold (y : ℕ) (p : DivisibilityPacking.primeSupport y)
    (a : ZMod (DivisibilityPacking.Modulus y)) :
    DivisibilityPacking.localReduction y p a = 0 ↔ cyclicColor a 0 ≤ packingKernelDivisor y p := by
  rw [cyclicColor_threshold]
  change DivisibilityPacking.localReduction y p a = 0 ↔ (packingKernelDivisor y p).val • (a - 0) = 0
  simp only [sub_zero]
  rw [← ZMod.natCast_zmod_val a, map_natCast, nsmul_eq_mul, ← Nat.cast_mul,
    ZMod.natCast_eq_zero_iff, ZMod.natCast_eq_zero_iff]
  have hM : DivisibilityPacking.Modulus y = (packingKernelDivisor y p).val * (p : ℕ) :=
    (Nat.div_mul_cancel (Finset.dvd_prod_of_mem id p.property)).symm
  exact (Nat.mul_dvd_mul_iff_left (packingKernelDivisor y p).pos).symm.trans
    (Eq.to_iff (congrArg (fun m : ℕ => m ∣ (packingKernelDivisor y p).val * a.val) hM.symm))

/-- Each forbidden residue is precisely a translate of an actual divisor congruence class. -/
theorem packing_forbidden_threshold (H : Finset ℤ) (y : ℕ) (p : DivisibilityPacking.primeSupport y)
    (a : ZMod (DivisibilityPacking.Modulus y)) :
    DivisibilityPacking.localReduction y p a ∉ DivisibilityPacking.forbiddenResidues H p ↔
      ∀ h ∈ H, ¬cyclicColor (a + (h : ZMod (DivisibilityPacking.Modulus y))) 0 ≤
        packingKernelDivisor y p := by
  classical
  simp only [DivisibilityPacking.forbiddenResidues, Finset.mem_image, not_exists, not_and]
  apply forall_congr'
  intro h
  apply imp_congr_right
  intro _
  rw [← packing_reduction_threshold]
  simp only [map_add, map_intCast]
  apply not_congr
  constructor
  · intro he
    exact eq_neg_iff_add_eq_zero.mp he.symm
  · intro hz
    exact (eq_neg_iff_add_eq_zero.mpr hz).symm

/-- The actual source wheel predicate is the conjunction of these exact color exclusions. -/
theorem rawAdmissible_color_consumer (H : Finset ℤ) (y : ℕ)
    (a : ZMod (DivisibilityPacking.Modulus y)) :
    DivisibilityPacking.RawAdmissible H y a ↔ ∀ p : DivisibilityPacking.primeSupport y, ∀ h ∈ H,
      ¬cyclicColor (a + (h : ZMod (DivisibilityPacking.Modulus y))) 0 ≤
        packingKernelDivisor y p := by
  exact forall_congr' fun p => packing_forbidden_threshold H y p a

/-- The existing local CRT arithmetic predicate is preserved by the representation view. -/
theorem packing_integer_consumer (H : Finset ℤ) (y : ℕ) (n : ℤ) :
    DivisibilityPacking.IntegerSurvivor H y n ↔
      DivisibilityPacking.RawAdmissible H y (n : ZMod (DivisibilityPacking.Modulus y)) :=
  DivisibilityPacking.integerSurvivor_iff_rawAdmissible H y n

/-- The bridge keeps the exact survivor count, including empty prime support. -/
theorem packing_card_consumer (H : Finset ℤ) (y : ℕ) :
    Fintype.card (DivisibilityPacking.RawPacking H y) =
      ∏ p ∈ DivisibilityPacking.primeSupport y, (p - DivisibilityPacking.localForbiddenCount H p) :=
  DivisibilityPacking.rawPacking_card H y

end SourceBridge

end FormalResearch.FiniteLatticeArithmetic
```
