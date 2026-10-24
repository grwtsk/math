# Complete source: GRWTSK.Algebra.CommutativeAlgebra.EquationSemantics.Varianta0b49420fcb259193de0de40ccf0992822fd276288272dfb678d9eae53e4fabb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `46cb0f823a8c688116770f4148c3f78ae476393c` · SHA-256 `c7b6b0fbaa624cdc0c1ac7e79a04b1792684f5f05785fec9b484c55751b0a8c0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.CommutativeAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.CommutativeAlgebra.SchemeSemanticCertificate.Variant02acfa3134a6c8fba9fc8a889b106e0272d58a6c51dc1e88a81ad6c7f49d2e96","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"02acfa3134a6c8fba9fc8a889b106e0272d58a6c51dc1e88a81ad6c7f49d2e96","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Polynomials.SourceCorpus.SchemeSemanticCertificate.Variant02acfa3134a6c8fba9fc8a889b106e0272d58a6c51dc1e88a81ad6c7f49d2e96","mathematical_subject":"Algebra.Polynomials","original_sha256":"02acfa3134a6c8fba9fc8a889b106e0272d58a6c51dc1e88a81ad6c7f49d2e96","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/MobiusOntology/EquationSemantics.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Polynomial.RadicalCertificate

/-!
# Polynomial equations and certified geometric consequences

The exact radical identity is the authority.  It proves set-theoretic
vanishing on the certified solution space; no scheme-theoretic equality is
silently inferred.
-/


namespace GRWTSK.Algebra.CommutativeAlgebra.SchemeSemanticCertificate.Variant02acfa3134a6c8fba9fc8a889b106e0272d58a6c51dc1e88a81ad6c7f49d2e96

namespace Mathematics.MobiusOntology

universe u v

abbrev PolynomialSystem
    (Variable : Type u) (K : Type v) [CommSemiring K] :=
  Mathematics.Polynomial.EquationSystem Variable K

abbrev NullstellensatzCertificate
    {Variable : Type u} {K : Type v} [CommSemiring K]
    (system : PolynomialSystem Variable K)
    (claim : MvPolynomial Variable K) :=
  Mathematics.Polynomial.RadicalCertificate system claim

theorem nullstellensatz_geometric_consequence
    {Variable : Type u} {K : Type v} [Field K]
    {system : PolynomialSystem Variable K}
    {claim : MvPolynomial Variable K}
    (certificate : NullstellensatzCertificate system claim)
    (solution : system.SolutionSpace) :
    MvPolynomial.eval solution.coordinates claim = 0 :=
  certificate.geometricConsequence solution

/--
Scheme-theoretic authority is separate and must carry the stronger declared
ideal statement.
-/
structure SchemeSemanticCertificate
    (Statement : Prop) : Prop where
  proof : Statement

end Mathematics.MobiusOntology
```
