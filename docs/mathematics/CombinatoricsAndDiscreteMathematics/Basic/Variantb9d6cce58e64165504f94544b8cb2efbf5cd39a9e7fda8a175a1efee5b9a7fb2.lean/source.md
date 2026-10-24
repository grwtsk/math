# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Basic.Variantb9d6cce58e64165504f94544b8cb2efbf5cd39a9e7fda8a175a1efee5b9a7fb2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `abd56906346c593c5485f1921d033f5b309999ed` · SHA-256 `d47d115c5152e571159cf3b7ef6aa3e0a95a00229cbf61614978692f394481bc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.CapacityDigest.Variante2b3c39a0cccddefe42d4ad18dd71d96ce83c10f1a0046a83b2f0db2965c654d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e2b3c39a0cccddefe42d4ad18dd71d96ce83c10f1a0046a83b2f0db2965c654d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.CapacityDigest.Variante2b3c39a0cccddefe42d4ad18dd71d96ce83c10f1a0046a83b2f0db2965c654d","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"e2b3c39a0cccddefe42d4ad18dd71d96ce83c10f1a0046a83b2f0db2965c654d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/Basic.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Algebra.Module.Rat
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Data.Fintype.Powerset
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.DeriveFintype

/-!
# Semi-local defect identities

These identifiers bind finite cuts, balances, realizations, and certificates
without turning their metadata into mathematical authority.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.CapacityDigest.Variante2b3c39a0cccddefe42d4ad18dd71d96ce83c10f1a0046a83b2f0db2965c654d

namespace Mathematics.SemiLocalDefect

structure CapacityDigest where
  value : Nat
deriving DecidableEq, Ord, Repr

structure BalanceDigest where
  value : Nat
deriving DecidableEq, Ord, Repr

structure RealizationDigest where
  value : Nat
deriving DecidableEq, Ord, Repr

structure ReconstructionDigest where
  value : Nat
deriving DecidableEq, Ord, Repr

structure ArithmeticCutId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure CompressionId where
  value : Nat
deriving DecidableEq, Ord, Repr

structure CertificateDigest where
  value : Nat
deriving DecidableEq, Ord, Repr

inductive CertificateStatus
  | unknown
  | underConstruction
  | rejected
  | certified
deriving DecidableEq, Repr, Fintype

end Mathematics.SemiLocalDefect
```
