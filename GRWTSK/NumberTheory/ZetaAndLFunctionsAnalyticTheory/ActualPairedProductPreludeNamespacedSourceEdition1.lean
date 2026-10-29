-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CenteredSeriesZeroIffExistsNontrivial.Variant501542344b7ea1d95a525066d713cb07347b7ad779ed22a48ef99e21ffeb3485","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"501542344b7ea1d95a525066d713cb07347b7ad779ed22a48ef99e21ffeb3485","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.CenteredSeriesZeroIffExistsNontrivial.Variant501542344b7ea1d95a525066d713cb07347b7ad779ed22a48ef99e21ffeb3485","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"501542344b7ea1d95a525066d713cb07347b7ad779ed22a48ef99e21ffeb3485","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/50/501542344b7ea1d95a525066d713cb07347b7ad779ed22a48ef99e21ffeb3485--ActualPairedProductPrelude.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.XiFiniteOrder
import FormalResearch.RiemannHypothesis.XiZeroTransport
import FormalResearch.RiemannHypothesis.ActualPairedProductInfrastructure

/-!
# Source-bound prelude for the actual paired Hadamard product

This module attaches the generic multiplicity and locally-uniform convergence
infrastructure to the unchanged xi source.  It proves the exact zero lift through
squaring and the no-double-counting multiplicity law for the two centered
functional-equation preimages.  It assumes neither RH nor any PF/minor/
Grassmannian positivity statement.

The theta normalization, unconditional exclusion of real nontrivial zeros,
global genus-zero factorization, actual multiplicity-complete enumeration, and
finite-product convergence remain the subsequent issue-#153 obligations.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.CenteredSeriesZeroIffExistsNontrivial.Variant501542344b7ea1d95a525066d713cb07347b7ad779ed22a48ef99e21ffeb3485

namespace FormalResearch.RiemannHypothesis.XiFiniteOrder

open Filter Set
open scoped Topology
open FormalResearch.RiemannHypothesis.ActualPairedProductInfrastructure

noncomputable section

/-- Zeros of the unchanged descended series are exactly squared coordinates of
actual nontrivial zeta zeros.  The square root is chosen only pointwise. -/
theorem centeredSeries_zero_iff_exists_nontrivial (w : ℂ) :
    XiToeplitz.centeredSeries w = 0 ↔
      ∃ u : ℂ, u ^ 2 = w ∧ NontrivialZetaZero (1 / 2 + u) := by
  constructor
  · intro hw
    obtain ⟨u, hu⟩ := XiToeplitz.exists_complex_square w
    refine ⟨u, hu, ?_⟩
    apply (XiToeplitz.xi_zero_iff_nontrivial (1 / 2 + u)).mp
    rw [← XiToeplitz.centeredSeries_square u, hu, hw]
  · rintro ⟨u, rfl, hu⟩
    rw [XiToeplitz.centeredSeries_square]
    exact (XiToeplitz.xi_zero_iff_nontrivial (1 / 2 + u)).mpr hu

/-- Translation from the centered coordinate does not change analytic
multiplicity. -/
theorem centeredXi_order (u : ℂ) :
    meromorphicOrderAt (fun z : ℂ => XiToeplitz.xi (1 / 2 + z)) u =
      meromorphicOrderAt XiToeplitz.xi (1 / 2 + u) := by
  simpa [Function.comp_def, add_comm] using
    (meromorphicOrderAt_comp_add_const_eq_meromorphicOrderAt
      (x := u) (c := (1 / 2 : ℂ)) (f := XiToeplitz.xi))

/-- Exact multiplicity transport from an actual centered xi zero to the
corresponding descended zero. -/
theorem xi_order_eq_descended_order (u : ℂ) (hu : u ≠ 0) :
    meromorphicOrderAt XiToeplitz.xi (1 / 2 + u) =
      meromorphicOrderAt XiToeplitz.centeredSeries (u ^ 2) := by
  have hs := meromorphicOrderAt_comp_square XiToeplitz.centeredSeries u hu
  have heq : (XiToeplitz.centeredSeries ∘ fun z : ℂ => z ^ 2) =
      (fun z : ℂ => XiToeplitz.xi (1 / 2 + z)) := by
    funext z
    exact XiToeplitz.centeredSeries_square z
  rw [heq] at hs
  exact (centeredXi_order u).symm.trans hs

/-- The centered preimages `u` and `-u` are one descended zero occurrence,
not two: the analytic orders agree exactly. -/
theorem xi_order_center_reflection (u : ℂ) (hu : u ≠ 0) :
    meromorphicOrderAt XiToeplitz.xi (1 / 2 + u) =
      meromorphicOrderAt XiToeplitz.xi (1 / 2 - u) := by
  have hp := xi_order_eq_descended_order u hu
  have hm := xi_order_eq_descended_order (-u) (neg_ne_zero.mpr hu)
  have hs : (-u) ^ 2 = u ^ 2 := by ring
  have hc : (1 / 2 : ℂ) + (-u) = 1 / 2 - u := by ring
  rw [hs, hc] at hm
  exact hp.trans hm.symm

/-- The actual centered series is not the zero function: the restored endpoint
`xi(1)=1/2` supplies a concrete nonzero value at `w=1/4`. -/
theorem centeredSeries_ne_zero_function :
    XiToeplitz.centeredSeries ≠ 0 := by
  intro h
  have hz := congrFun h ((1 / 2 : ℂ) ^ 2)
  rw [Pi.zero_apply, XiToeplitz.centeredSeries_square] at hz
  norm_num [XiToeplitz.xi_one] at hz

end

end FormalResearch.RiemannHypothesis.XiFiniteOrder
