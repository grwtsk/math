# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExactLDL.Variantc628df0127864143dfd386ab51cc3ba28c39801253e425a33e18bb7073b84363

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1ede13c80d87458b2a9aaded452102e2b3891abf` · SHA-256 `d8274b9947a28df4db42d6d5c55e6bca7475981306683a2d87d1044d08f86ca9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExactLDLCertificate.Variant84d32b869f47bec27d7c1e44567cf6644a0325ee132266d80e15b6a089abb74d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"84d32b869f47bec27d7c1e44567cf6644a0325ee132266d80e15b6a089abb74d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ExactLDLCertificate.Variant84d32b869f47bec27d7c1e44567cf6644a0325ee132266d80e15b6a089abb74d","mathematical_subject":"Foundations.Unclassified","original_sha256":"84d32b869f47bec27d7c1e44567cf6644a0325ee132266d80e15b6a089abb74d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/QSeries/ExactLDL.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.QSeries.JacobiCompression

/-!
# Exact finite LDL certificates

The factorization identity and the induced quadratic-form inequality are both
carried explicitly.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExactLDLCertificate.Variant84d32b869f47bec27d7c1e44567cf6644a0325ee132266d80e15b6a089abb74d

namespace Mathematics.SemiLocalDefect.QSeries

structure ExactLDLCertificate
    {system : OnePrimeMomentSystem}
    {rank : Nat}
    (compression :
      JacobiCompression system rank) where
  lower : RationalMatrix rank
  diagonal : Fin rank → ℚ
  lowerTriangular :
    ∀ row column,
      row < column →
      lower row column = 0
  diagonal_nonnegative :
    ∀ index,
      0 ≤ diagonal index
  factorization : Prop
  factorizationProof : factorization
  quadraticSound :
    ∀ vector,
      0 ≤
        rationalQuadraticForm
          compression.defect vector

theorem exactLDL_nonnegative
    {system : OnePrimeMomentSystem}
    {rank : Nat}
    {compression :
      JacobiCompression system rank}
    (certificate :
      ExactLDLCertificate compression)
    (vector : Fin rank → ℚ) :
    0 ≤ rationalQuadraticForm
      compression.defect vector :=
  certificate.quadraticSound vector

structure NegativeCompressionWitness
    {system : OnePrimeMomentSystem}
    {rank : Nat}
    (compression :
      JacobiCompression system rank) where
  vector : Fin rank → ℚ
  value : ℚ
  value_eq :
    value =
    rationalQuadraticForm
      compression.defect vector
  value_negative : value < 0
  exactEvaluation : Prop
  exactEvaluationProof : exactEvaluation

end Mathematics.SemiLocalDefect.QSeries
```
