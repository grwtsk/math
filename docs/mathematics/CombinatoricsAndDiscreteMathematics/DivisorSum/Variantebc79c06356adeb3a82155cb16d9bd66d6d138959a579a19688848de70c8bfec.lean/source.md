# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.DivisorSum.Variantebc79c06356adeb3a82155cb16d9bd66d6d138959a579a19688848de70c8bfec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aebbfd11f073003953e54eb659775be6a03ca0d2` · SHA-256 `aec872fd5b9f6d41061b57962a7efc0a7a01b8d638d7c12ea4d1b2d0c02c63cd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.DivisorSum.Variant8300b6ca46cc3cc1f3d35b95e1a212bb7ad452e13ce610811418fb6329552970","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8300b6ca46cc3cc1f3d35b95e1a212bb7ad452e13ce610811418fb6329552970","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.DivisorSum.Variant8300b6ca46cc3cc1f3d35b95e1a212bb7ad452e13ce610811418fb6329552970","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"8300b6ca46cc3cc1f3d35b95e1a212bb7ad452e13ce610811418fb6329552970","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/NumberTheory/DivisorSum.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.NumberTheory.MultiplicativeFunction
import Mathlib.Data.Finset.NatDivisors

/-!
# Folder.Rebuild.NumberTheory.DivisorSum

Finite divisor sums for arithmetic functions.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DivisorSum.Variant8300b6ca46cc3cc1f3d35b95e1a212bb7ad452e13ce610811418fb6329552970

namespace Folder
namespace Rebuild
namespace NumberTheory

open scoped BigOperators

noncomputable def divisorSum
    [AddCommMonoid R]
    (f : ArithFn R) : ArithFn R :=
  fun n => ∑ d ∈ Nat.divisors n, f d

theorem divisorSum_one
    [AddCommMonoid R]
    (f : ArithFn R) :
    divisorSum f 1 = f 1 := by
  simp [divisorSum]

theorem divisorSum_congr
    [AddCommMonoid R]
    {f g : ArithFn R}
    (h : ∀ n, f n = g n) :
    divisorSum f = divisorSum g := by
  funext n
  simp [divisorSum, h]

end NumberTheory
end Rebuild
end Folder
```
