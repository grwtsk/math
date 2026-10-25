# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Numeric.Variant42cbdc5cc8c7370f0bb6da901681e24cbe75c244222a0e2e123a4e0c9a21da94

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `071b208cbc42d7e95d896009cbce19479aab75db` · SHA-256 `e95450ccf23233543a5381fb1448085a6600430331b8bbd33895d5a6d4734a73`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.Tolerance.Variant01ac2f382702c1e4fa56d8a2c36d3761bd86c18487358c68a10fa2ed1a4b47b6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"01ac2f382702c1e4fa56d8a2c36d3761bd86c18487358c68a10fa2ed1a4b47b6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Tolerance.Variant01ac2f382702c1e4fa56d8a2c36d3761bd86c18487358c68a10fa2ed1a4b47b6","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"01ac2f382702c1e4fa56d8a2c36d3761bd86c18487358c68a10fa2ed1a4b47b6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BitMatrix/Runtime/Numeric.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Real.Basic

/-!
# Numeric representation boundaries
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.Tolerance.Variant01ac2f382702c1e4fa56d8a2c36d3761bd86c18487358c68a10fa2ed1a4b47b6

namespace BitMatrix.Runtime.Numeric

/-- Mathematical arbitrary-precision integers used to specify JavaScript `BigInt` values. -/
abbrev ArbitraryPrecisionInteger := ℤ

/-- Nonnegative absolute and relative tolerances. -/
structure Tolerance where
  absolute : ℝ
  relative : ℝ
  absoluteNonnegative : 0 ≤ absolute
  relativeNonnegative : 0 ≤ relative

/-- The symmetric mixed absolute/relative comparison contract. -/
def Tolerance.NearlyEqual (tolerance : Tolerance) (left right : ℝ) : Prop :=
  |left - right| ≤
    tolerance.absolute + tolerance.relative * max |left| |right|

/-- Checked conversion is a partial relation, never wrapping or saturating. -/
def CheckedNaturalConversion (integer : ArbitraryPrecisionInteger) (natural : Nat) : Prop :=
  integer = natural

end BitMatrix.Runtime.Numeric
```
