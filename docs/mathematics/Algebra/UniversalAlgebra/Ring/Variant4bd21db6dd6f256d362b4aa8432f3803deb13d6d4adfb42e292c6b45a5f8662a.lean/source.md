# Complete source: GRWTSK.Algebra.UniversalAlgebra.Ring.Variant4bd21db6dd6f256d362b4aa8432f3803deb13d6d4adfb42e292c6b45a5f8662a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `edd250801c40f4e9e16f6960961720cd346540d3` · SHA-256 `61ee3a0fdcd8a4b55ae08cc97101171e4cf112f89acf9d869e2846b0caeeb6bb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.FractAbsLeOne.Variantdc4f212bf46352e3b9f6f2cd229a7c5b989ad1b92ee600e50cabd6865f19b099","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"dc4f212bf46352e3b9f6f2cd229a7c5b989ad1b92ee600e50cabd6865f19b099","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.FractAbsLeOne.Variantdc4f212bf46352e3b9f6f2cd229a7c5b989ad1b92ee600e50cabd6865f19b099","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"dc4f212bf46352e3b9f6f2cd229a7c5b989ad1b92ee600e50cabd6865f19b099","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/06/16/PrimeNumberTheoremAnd-main 2/PrimeNumberTheoremAnd/Mathlib/Algebra/Order/Floor/Ring.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import Mathlib.Algebra.Order.Floor.Ring

/-!
# Floor and fractional-part estimates

Small floor-ring lemmas used by summation and Abel-continuation arguments.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.FractAbsLeOne.Variantdc4f212bf46352e3b9f6f2cd229a7c5b989ad1b92ee600e50cabd6865f19b099

@[expose] public section

namespace Int

variable {R : Type*} [Ring R] [LinearOrder R] [IsOrderedRing R] [FloorRing R]

theorem fract_abs_le_one (a : R) : |fract a| ≤ 1 := by
  rw [abs_fract]
  exact (fract_lt_one a).le

end Int
```
