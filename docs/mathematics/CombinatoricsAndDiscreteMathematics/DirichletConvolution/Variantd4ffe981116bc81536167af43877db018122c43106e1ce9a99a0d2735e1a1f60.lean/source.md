# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.DirichletConvolution.Variantd4ffe981116bc81536167af43877db018122c43106e1ce9a99a0d2735e1a1f60

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ed203e70a5770766786c1851fe5a57422f039e0e` · SHA-256 `e6e731c1ec169e6c0b3de8993f05765b7e14a338bc0e7b392cce057db883a798`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.DirichletConv.Variantdb315ad78ef52d545a917d356ac733dce69f1335d1c92b422aba855caa6cc63a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"db315ad78ef52d545a917d356ac733dce69f1335d1c92b422aba855caa6cc63a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.DirichletConv.Variantdb315ad78ef52d545a917d356ac733dce69f1335d1c92b422aba855caa6cc63a","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"db315ad78ef52d545a917d356ac733dce69f1335d1c92b422aba855caa6cc63a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Rebuild/NumberTheory/DirichletConvolution.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Rebuild.NumberTheory.MultiplicativeFunction
import Mathlib.Data.Finset.NatDivisors

/-!
# Folder.Rebuild.NumberTheory.DirichletConvolution

Finite Dirichlet convolution for arithmetic functions.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DirichletConv.Variantdb315ad78ef52d545a917d356ac733dce69f1335d1c92b422aba855caa6cc63a

namespace Folder
namespace Rebuild
namespace NumberTheory

open scoped BigOperators

def dirichletConv
    [Semiring R]
    (f g : ArithFn R) : ArithFn R :=
  fun n => ∑ d ∈ Nat.divisors n, f d * g (n / d)

def dirichletEpsilon
    [Zero R] [One R] : ArithFn R :=
  fun n => if n = 1 then 1 else 0

theorem dirichletConv_apply
    [Semiring R]
    (f g : ArithFn R)
    (n : Nat) :
    dirichletConv f g n =
      ∑ d ∈ Nat.divisors n, f d * g (n / d) :=
  rfl

theorem dirichletEpsilon_one
    [Zero R] [One R] :
    dirichletEpsilon (R := R) 1 = 1 := by
  simp [dirichletEpsilon]

theorem dirichletEpsilon_of_ne_one
    [Zero R] [One R]
    {n : Nat}
    (hn : n ≠ 1) :
    dirichletEpsilon (R := R) n = 0 := by
  simp [dirichletEpsilon, hn]

theorem dirichletConv_epsilon_left_at_one
    [Semiring R]
    (f : ArithFn R) :
    dirichletConv (dirichletEpsilon (R := R)) f 1 = f 1 := by
  simp [dirichletConv, dirichletEpsilon]

end NumberTheory
end Rebuild
end Folder
```
