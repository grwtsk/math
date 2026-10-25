-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReifyNormSubDiv.Variantcd6e843b053d047b4adc99b03ae5871d9a4c326b82e86c2e1ffdec4d7fd6f9db","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cd6e843b053d047b4adc99b03ae5871d9a4c326b82e86c2e1ffdec4d7fd6f9db","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ReifyNormSubDiv.Variantcd6e843b053d047b4adc99b03ae5871d9a4c326b82e86c2e1ffdec4d7fd6f9db","mathematical_subject":"Foundations.Unclassified","original_sha256":"cd6e843b053d047b4adc99b03ae5871d9a4c326b82e86c2e1ffdec4d7fd6f9db","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/target/think/external/PrimeNumberTheoremAnd/.lake/packages/leancert/LeanCert/Test/test_reify_reflect.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import LeanCert.Meta.ToExpr
import LeanCert.Tactic.IntervalAuto

-- Reflection smoke tests: these fail to compile if reification cannot parse the form.

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ReifyNormSubDiv.Variantcd6e843b053d047b4adc99b03ae5871d9a4c326b82e86c2e1ffdec4d7fd6f9db

#leancert_reflect (fun x : Real => x + 1)
#leancert_reflect (fun x : Real => x - 1)
#leancert_reflect (fun x : Real => x / 2)
#leancert_reflect (fun x : Real => abs x)
#leancert_reflect (fun x : Real => x ^ ((1 : Real) / 2))
#leancert_reflect (fun x : Real => x ^ ((2 : Real)⁻¹))
#leancert_reflect (fun x : Real => x ^ ((3 : Real) / 2))
#leancert_reflect (fun x : Real => x ^ (1.5 : Real))
#leancert_reflect (fun x : Real => x ^ ((5 : Real) / 2))
#leancert_reflect (fun x : Real => x ^ ((-1 : Real) / 2))
#leancert_reflect (fun x : Real => x ^ ((-3 : Real) / 2))
#leancert_reflect (fun x : Real => x ^ ((-2 : Real)))
#leancert_reflect (fun x : Real => x ^ ((1 : Real) / 3))
#leancert_reflect (fun x : Real => x ^ ((2 : Real) / 3))
#leancert_reflect (fun x : Real => x ^ ((1 : Real) / 5))
#leancert_reflect (fun x : Real => x ^ ((-2 : Real) / 3))
#leancert_reflect (fun x : Real => Real.sinh x + Real.cosh x + Real.tanh x)
#leancert_reflect (fun x : Real => max x (1 / 2 : Real))
#leancert_reflect (fun x : Real => min x (1 / 2 : Real))

theorem reify_norm_sub_div :
    ∀ x ∈ Set.Icc (1 : Real) 2, x - x / 2 ≤ (2 : Rat) := by
  interval_bound

theorem reify_norm_casts :
    ∀ x ∈ Set.Icc (0 : Real) 1, x + ((1 : Nat) : Real) ≤ (2 : Rat) := by
  interval_bound

theorem reify_norm_max :
    ∀ x ∈ Set.Icc (0 : Real) 1, max x (1 / 2 : Real) ≤ (2 : Rat) := by
  interval_bound

theorem reify_norm_min :
    ∀ x ∈ Set.Icc (0 : Real) 1, (-1 : Rat) ≤ min x (1 / 2 : Real) := by
  interval_bound
theorem reify_rpow_thirds_bound :
    ∀ x ∈ Set.Icc (2 : Real) 3, x ^ ((1 : Real) / 3) ≤ (2 : Rat) := by
  interval_bound

theorem reify_rpow_neg_thirds_bound :
    ∀ x ∈ Set.Icc (2 : Real) 3, x ^ ((-2 : Real) / 3) ≤ (1 : Rat) := by
  interval_bound
