# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.CoefficientRing.Variant3fb21bfd0859be9e166111a5c1ae3c99488377055e5acae3a99d1075dafe09e5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d6fd64a3e08fdcb5909bf93602ae4a5dff3d49f2` · SHA-256 `ffe7e723a5c2464fa07634f572287803223412cdb5d30a0a7d4bd31ddc437cee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.RationalQSeries.Variantf4c563e716a5e62a711453819410259a1362f6022383575740872a12cef106de","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f4c563e716a5e62a711453819410259a1362f6022383575740872a12cef106de","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.RationalQSeries.Variantf4c563e716a5e62a711453819410259a1362f6022383575740872a12cef106de","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"f4c563e716a5e62a711453819410259a1362f6022383575740872a12cef106de","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/QSeries/CoefficientRing.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.PlaceInteraction

/-!
# Registered finite q-series

Only finite truncations are evaluated definitionally.  Infinite convergence
and coefficient-domain membership require separate certificates.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.RationalQSeries.Variantf4c563e716a5e62a711453819410259a1362f6022383575740872a12cef106de

namespace Mathematics.SemiLocalDefect.QSeries

open scoped BigOperators

structure RationalQSeries where
  coefficient : Nat → ℚ

def RationalQSeries.evaluateThrough
    (series : RationalQSeries)
    (order : Nat)
    (q : ℚ) : ℚ :=
  ∑ degree ∈ Finset.range (order + 1),
    series.coefficient degree * q ^ degree

structure QInterval where
  lower : ℚ
  upper : ℚ
  lower_nonnegative : 0 ≤ lower
  ordered : lower ≤ upper
  upper_le_one : upper ≤ 1

inductive CoefficientDomain
  | integers
  | dyadicSqrtTwo
  | rationals
  | registeredAlgebraic
deriving DecidableEq, Repr

structure CoefficientDomainCertificate
    (series : RationalQSeries) where
  domain : CoefficientDomain
  member : Nat → Prop
  allCoefficients :
    ∀ degree,
      member degree
  domainSound : Prop
  domainSoundProof : domainSound

end Mathematics.SemiLocalDefect.QSeries
```
