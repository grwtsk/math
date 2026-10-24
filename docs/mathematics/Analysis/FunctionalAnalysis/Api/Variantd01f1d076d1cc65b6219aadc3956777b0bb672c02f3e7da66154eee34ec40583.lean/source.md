# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Api.Variantd01f1d076d1cc65b6219aadc3956777b0bb672c02f3e7da66154eee34ec40583

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `76ff09139ece144dc75e415b851fbb01c5c4ba31` · SHA-256 `162946a8d6e93c2322d885fb8fd564e2fffccddeb394b44c64f64a2e713a4b0e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.ThetaPolynomialGraphCore.Variant960a9ef5b8091cb1947ec269d4434406d6bcebebe95a6cb2dead5bbe7209e14c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"960a9ef5b8091cb1947ec269d4434406d6bcebebe95a6cb2dead5bbe7209e14c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.ThetaPolynomialGraphCore.Variant960a9ef5b8091cb1947ec269d4434406d6bcebebe95a6cb2dead5bbe7209e14c","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"960a9ef5b8091cb1947ec269d4434406d6bcebebe95a6cb2dead5bbe7209e14c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/theta-jacobi/Api.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ThetaPolynomialGraphCore
import Mathlib.Analysis.InnerProductSpace.GramSchmidtOrtho
import Mathlib.Analysis.InnerProductSpace.l2Space

namespace GRWTSK.Analysis.FunctionalAnalysis.ThetaPolynomialGraphCore.Variant960a9ef5b8091cb1947ec269d4434406d6bcebebe95a6cb2dead5bbe7209e14c

#check MeasureTheory.Lp.coeFn_sum
#check MeasureTheory.Lp.coeFn_smul
#check MeasureTheory.Lp.coeFn_zero
#check MeasureTheory.Lp.ext
#check Polynomial.coeff_sum
#check Polynomial.eval_finsetSum
#check Polynomial.coeff_monomial
#check Finset.sum_ite_eq'
#check HilbertBasis.mk
#check InnerProductSpace.span_gramSchmidtNormed_range
#check LinearIsometryEquiv.inner_map_map
#check LinearMap.domRestrict
#check LinearPMap.comp
#check Submodule.comap_equiv_eq_map_symm
#check LinearPMap.hasCore_iff_graph
```
