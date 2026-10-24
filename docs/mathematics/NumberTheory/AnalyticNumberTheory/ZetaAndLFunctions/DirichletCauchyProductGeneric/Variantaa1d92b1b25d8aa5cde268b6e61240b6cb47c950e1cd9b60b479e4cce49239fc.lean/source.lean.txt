-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.ComplexWeightEqCpowNeg.Variantaca49824744f0cc2ff09e3595a72a93fbf759ae437654be5b25a40c065f67a16","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"aca49824744f0cc2ff09e3595a72a93fbf759ae437654be5b25a40c065f67a16","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.LFunctions.SourceCorpus.ComplexWeightEqCpowNeg.Variantaca49824744f0cc2ff09e3595a72a93fbf759ae437654be5b25a40c065f67a16","mathematical_subject":"NumberTheory.LFunctions","original_sha256":"aca49824744f0cc2ff09e3595a72a93fbf759ae437654be5b25a40c065f67a16","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/AnalyticNumberTheory/DirichletCauchyProductGeneric.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.AnalyticNumberTheory.PositivePairReindexing
import Folder.Rebuild.AnalyticNumberTheory.MobiusDirichletSeries
import Folder.Rebuild.AnalyticNumberTheory.ComplexZetaHalfPlane
import Mathlib.NumberTheory.LSeries.Convolution
import Mathlib.Analysis.Normed.Ring.InfiniteSum

/-!
# Folder.Rebuild.AnalyticNumberTheory.DirichletCauchyProductGeneric

The generic absolutely convergent Dirichlet-series Cauchy product in the
rebuild API.

The proof uses Mathlib's checked `LSeries_convolution'` theorem after proving
that the local rebuild term and convolution definitions agree with the Mathlib
L-series definitions.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.ComplexWeightEqCpowNeg.Variantaca49824744f0cc2ff09e3595a72a93fbf759ae437654be5b25a40c065f67a16

namespace Folder
namespace Rebuild
namespace AnalyticNumberTheory

open Folder.Rebuild.NumberTheory
open scoped BigOperators
open scoped LSeries.notation

theorem complexWeight_eq_cpow_neg
    (s : Complex)
    {n : Nat}
    (hn : n ≠ 0) :
    complexWeight s n = (n : Complex) ^ (-s) := by
  rw [complexWeight_of_pos s (Nat.pos_of_ne_zero hn)]
  rw [Complex.cpow_def_of_ne_zero]
  · have hlog :
        ((Real.log (n : Real) : Real) : Complex) =
          Complex.log (n : Complex) := by
      exact Complex.ofReal_log (show 0 ≤ (n : Real) by positivity)
    rw [hlog]
    congr 1
    ring
  · exact_mod_cast hn

theorem complexWeight_eq_one_div_cpow
    (s : Complex)
    {n : Nat}
    (hn : n ≠ 0) :
    complexWeight s n = 1 / (n : Complex) ^ s := by
  rw [complexWeight_eq_cpow_neg s hn, Complex.cpow_neg]
  ring

theorem complexDirichletTerm_eq_lseries_term
    (a : ArithFn Complex)
    (s : Complex)
    (n : Nat) :
    complexDirichletTerm a s n = LSeries.term a s n := by
  by_cases hn : n = 0
  · simp [hn, complexDirichletTerm, complexWeight]
  · rw [LSeries.term_of_ne_zero hn]
    rw [complexDirichletTerm, complexWeight_eq_one_div_cpow s hn]
    simp [div_eq_mul_inv]

theorem complexDirichletSeries_eq_lseries
    (a : ArithFn Complex)
    (s : Complex) :
    complexDirichletSeries a s = LSeries a s := by
  simp [complexDirichletSeries, LSeries, complexDirichletTerm_eq_lseries_term]

theorem zetaComplexHalfPlane_eq_complexDirichletSeries_one
    (s : Complex) :
    zetaComplexHalfPlane s =
      complexDirichletSeries oneArithFnComplex s := by
  simp [zetaComplexHalfPlane, complexDirichletSeries, complexDirichletTerm,
    oneArithFnComplex]

theorem zetaComplexHalfPlane_eq_lseries_one
    (s : Complex) :
    zetaComplexHalfPlane s = LSeries oneArithFnComplex s := by
  rw [zetaComplexHalfPlane_eq_complexDirichletSeries_one,
    complexDirichletSeries_eq_lseries]

theorem mobiusDirichletSeries_eq_lseries
    (s : Complex) :
    mobiusDirichletSeries s = LSeries mobiusComplex s :=
  complexDirichletSeries_eq_lseries mobiusComplex s

theorem complexDirichletSeries_epsilon
    (s : Complex) :
    complexDirichletSeries epsilonComplex s = 1 := by
  unfold complexDirichletSeries complexDirichletTerm epsilonComplex
  rw [tsum_eq_single 1]
  · simp [complexWeight_one]
  · intro n hn
    by_cases h0 : n = 0
    · simp [h0, complexWeight_zero]
    · by_cases h1 : n = 1
      · exact False.elim (hn h1)
      · simp [h1]

theorem complexDirichletSeries_term_norm_summable
    (a : ArithFn Complex)
    (s : Complex)
    (ha : ComplexDirichletAbsSummable a s) :
    Summable fun n : Nat => ‖complexDirichletTerm a s n‖ :=
  ha

theorem complexDirichletSeries_terms_summable
    (a : ArithFn Complex)
    (s : Complex)
    (ha : ComplexDirichletAbsSummable a s) :
    Summable fun n : Nat => complexDirichletTerm a s n :=
  Summable.of_norm ha

theorem lseriesSummable_of_complexDirichletAbsSummable
    (a : ArithFn Complex)
    (s : Complex)
    (ha : ComplexDirichletAbsSummable a s) :
    LSeriesSummable a s := by
  have hterm := complexDirichletSeries_terms_summable a s ha
  simpa [LSeriesSummable, complexDirichletTerm_eq_lseries_term] using hterm

theorem lseries_convolution_eq_dirichletConv_of_ne_zero
    (a b : ArithFn Complex)
    {n : Nat}
    (_hn : n ≠ 0) :
    (LSeries.convolution a b) n = dirichletConv a b n := by
  rw [LSeries.convolution_def, dirichletConv]
  exact Nat.sum_divisorsAntidiagonal (fun d e => a d * b e)

theorem complexDirichletSeries_mul_expanded_pair_tsum
    (a b : ArithFn Complex)
    (s : Complex)
    (ha : ComplexDirichletAbsSummable a s)
    (hb : ComplexDirichletAbsSummable b s) :
    complexDirichletSeries a s * complexDirichletSeries b s =
      ∑' mn : Nat × Nat,
        complexDirichletTerm a s mn.1 *
          complexDirichletTerm b s mn.2 := by
  simpa [complexDirichletSeries] using
    (tsum_mul_tsum_of_summable_norm
      (R := Complex)
      (ι := Nat)
      (ι' := Nat)
      (f := fun n => complexDirichletTerm a s n)
      (g := fun n => complexDirichletTerm b s n)
      ha hb)

/--
Absolutely convergent Dirichlet-series Cauchy product.

If the Dirichlet series for `a` and `b` are absolutely summable at `s`, then
the product of their sums is the Dirichlet series of their Dirichlet convolution.

This is a theorem only in the region of absolute convergence. It is not analytic
continuation and does not imply PNT, RH, or generalized RH.
-/
theorem complexDirichletSeries_mul_of_absSummable
    (a b : ArithFn Complex)
    (s : Complex)
    (ha : ComplexDirichletAbsSummable a s)
    (hb : ComplexDirichletAbsSummable b s) :
    complexDirichletSeries a s * complexDirichletSeries b s =
      complexDirichletSeries (dirichletConv a b) s := by
  have hconv :=
    LSeries_convolution'
      (lseriesSummable_of_complexDirichletAbsSummable a s ha)
      (lseriesSummable_of_complexDirichletAbsSummable b s hb)
  calc
    complexDirichletSeries a s * complexDirichletSeries b s
        = LSeries a s * LSeries b s := by
            rw [complexDirichletSeries_eq_lseries a s,
              complexDirichletSeries_eq_lseries b s]
    _ = LSeries (LSeries.convolution a b) s := hconv.symm
    _ = LSeries (dirichletConv a b) s := by
            exact LSeries_congr
              (fun {n} hn =>
                lseries_convolution_eq_dirichletConv_of_ne_zero a b hn) s
    _ = complexDirichletSeries (dirichletConv a b) s := by
            rw [complexDirichletSeries_eq_lseries]

/--
Reindexing an absolutely summable double Dirichlet-term series by product
fibers.

This is the finite-fiber analytic step behind the Dirichlet-series Cauchy
product. It is not an Euler product, analytic continuation, or a zero-free
theorem.
-/
theorem tsum_dirichlet_pair_reindex_by_mul
    (a b : ArithFn Complex)
    (s : Complex)
    (ha : ComplexDirichletAbsSummable a s)
    (hb : ComplexDirichletAbsSummable b s) :
    (∑' mn : Nat × Nat,
        complexDirichletTerm a s mn.1 *
          complexDirichletTerm b s mn.2) =
      ∑' n : Nat,
        dirichletConv a b n * complexWeight s n := by
  calc
    (∑' mn : Nat × Nat,
        complexDirichletTerm a s mn.1 *
          complexDirichletTerm b s mn.2)
        = complexDirichletSeries a s * complexDirichletSeries b s := by
            exact (complexDirichletSeries_mul_expanded_pair_tsum
              a b s ha hb).symm
    _ = complexDirichletSeries (dirichletConv a b) s :=
            complexDirichletSeries_mul_of_absSummable a b s ha hb
    _ = ∑' n : Nat,
        dirichletConv a b n * complexWeight s n := rfl

end AnalyticNumberTheory
end Rebuild
end Folder
