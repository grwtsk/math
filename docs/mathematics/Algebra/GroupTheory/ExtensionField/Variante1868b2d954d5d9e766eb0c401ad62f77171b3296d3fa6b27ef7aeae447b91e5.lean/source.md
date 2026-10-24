# Complete source: GRWTSK.Algebra.GroupTheory.ExtensionField.Variante1868b2d954d5d9e766eb0c401ad62f77171b3296d3fa6b27ef7aeae447b91e5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `268c0f05d0019bb618b5f65229ea11ff42d61154` · SHA-256 `4d621948b4dcb186821ed925f332fe3cc9e8ef9565f40eb721a360e06f54d00a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.ExtensionFieldBasis.Variantf05b70e63ed1021784b2c753d7d2f973aef2dfc7f797a51d10004c1be85b8342","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f05b70e63ed1021784b2c753d7d2f973aef2dfc7f797a51d10004c1be85b8342","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.ExtensionFieldBasis.Variantf05b70e63ed1021784b2c753d7d2f973aef2dfc7f797a51d10004c1be85b8342","mathematical_subject":"Algebra.Groups","original_sha256":"f05b70e63ed1021784b2c753d7d2f973aef2dfc7f797a51d10004c1be85b8342","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/AbelReynolds/ExtensionField.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.AbelReynolds.Realization
import Mathlib.GroupTheory.Perm.Basic

/-!
# Certified extension-field tally realization

An extension-field coordinate is meaningful only relative to a certified
basis, polynomial, coordinate order, and reduction law.  This realization is
separate from the Archimedean, group, and frontier carriers.
-/


namespace GRWTSK.Algebra.GroupTheory.ExtensionFieldBasis.Variantf05b70e63ed1021784b2c753d7d2f973aef2dfc7f797a51d10004c1be85b8342

namespace Mathematics.AbelReynolds

structure ExtensionFieldBasis (prime degree : Nat) where
  nontrivialPrime : 2 ≤ prime
  positiveDegree : 0 < degree
  basisId : String
  irreduciblePolynomial : List (ZMod prime)
  coordinateOrder : Equiv.Perm (Fin degree)
  reductionLawId : String

def extensionFieldRealization
    {prime degree : Nat}
    (basis : ExtensionFieldBasis prime degree)
    (coordinates : Fin degree → Tally) :
    Fin degree → ZMod prime :=
  fun index =>
    modularRealization prime
      (coordinates (basis.coordinateOrder index))

@[simp] theorem extensionFieldRealization_apply
    {prime degree : Nat}
    (basis : ExtensionFieldBasis prime degree)
    (coordinates : Fin degree → Tally)
    (index : Fin degree) :
    extensionFieldRealization basis coordinates index =
      modularRealization prime
        (coordinates (basis.coordinateOrder index)) :=
  rfl

end Mathematics.AbelReynolds
```
