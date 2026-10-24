# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Nilpotent.Variant115e9e767635d7ea91204de4b10296f95218e99d1e6a5618983eaba939d8da6e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1d8eb7c71778e2b4e6f2a1d9619d512edbb798d5",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Nilpotent/Variant115e9e767635d7ea91204de4b10296f95218e99d1e6a5618983eaba939d8da6e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant115e9e767635d7ea91204de4b10296f95218e99d1e6a5618983eaba939d8da6e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant115e9e767635d7ea91204de4b10296f95218e99d1e6a5618983eaba939d8da6e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1d8eb7c71778e2b4e6f2a1d9619d512edbb798d5`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Nilpotent/Variant115e9e767635d7ea91204de4b10296f95218e99d1e6a5618983eaba939d8da6e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Nilpotent/Variant115e9e767635d7ea91204de4b10296f95218e99d1e6a5618983eaba939d8da6e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Polynomial.AlgebraMap` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Div` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Polynomial.Identities` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Ideal.Quotient.Operations` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nilpotent.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Nilpotent.Lemmas` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Polynomial.Tower` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isNilpotent_C_mul_pow_X_of_isNilpotent](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant115e9e767635d7ea91204de4b10296f95218e99d1e6a5618983eaba939d8da6e.lean/declarations/isnilpotent-c-mul-pow-x-of-isnilpotent--e97a10c67d4391b349377daa.md) | 33 | `result-track:e97a10c67d4391b349377daaa4cef8b28fb70a43e1f2b49040483dcc2cf1a8da` |
| 2 | `lemma` | [isNilpotent_pow_X_mul_C_of_isNilpotent](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant115e9e767635d7ea91204de4b10296f95218e99d1e6a5618983eaba939d8da6e.lean/declarations/isnilpotent-pow-x-mul-c-of-isnilpotent--c8d347a0b81980d00d7007a3.md) | 40 | `result-track:c8d347a0b81980d00d7007a3272588d060051a8c584030e1bb78d0a673362d98` |
| 3 | `lemma` | [isNilpotent_monomial_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant115e9e767635d7ea91204de4b10296f95218e99d1e6a5618983eaba939d8da6e.lean/declarations/isnilpotent-monomial-iff--bff37e311493eef5484289ec.md) | 45 | `result-track:bff37e311493eef5484289ec7d321fab9865737c117cef087e50910cb986c44a` |
| 4 | `lemma` | [isNilpotent_C_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant115e9e767635d7ea91204de4b10296f95218e99d1e6a5618983eaba939d8da6e.lean/declarations/isnilpotent-c-iff--d9d8a00731831bdd67002dfe.md) | 49 | `result-track:d9d8a00731831bdd67002dfe0da7e296afa38439431f2642e8882e18f8db21c7` |
| 5 | `lemma` | [isNilpotent_X_mul_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant115e9e767635d7ea91204de4b10296f95218e99d1e6a5618983eaba939d8da6e.lean/declarations/isnilpotent-x-mul-iff--0e8498c01c7dfee3186573f2.md) | 53 | `result-track:0e8498c01c7dfee3186573f27fabc0ce7cc3a8f3a0d8b731a3c1bde3796ae86d` |
| 6 | `lemma` | [isNilpotent_mul_X_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant115e9e767635d7ea91204de4b10296f95218e99d1e6a5618983eaba939d8da6e.lean/declarations/isnilpotent-mul-x-iff--9ddfd7a52618335030c688f3.md) | 60 | `result-track:9ddfd7a52618335030c688f38f029ff8e13a7ac1fad55b30079a46776d1c3134` |
| 7 | `lemma` | [isNilpotent_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant115e9e767635d7ea91204de4b10296f95218e99d1e6a5618983eaba939d8da6e.lean/declarations/isnilpotent-iff--b065e779595cfbe26982a754.md) | 71 | `result-track:b065e779595cfbe26982a7542b5316637cd646d424dfc8d85096ef711044340a` |
| 8 | `lemma` | [isNilpotent_reflect_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant115e9e767635d7ea91204de4b10296f95218e99d1e6a5618983eaba939d8da6e.lean/declarations/isnilpotent-reflect-iff--e6b06cd64e1432443c10554e.md) | 91 | `result-track:e6b06cd64e1432443c10554e8e06f6d89e605d04d7b8cf88238117f7b715b594` |
| 9 | `lemma` | [isNilpotent_reverse_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant115e9e767635d7ea91204de4b10296f95218e99d1e6a5618983eaba939d8da6e.lean/declarations/isnilpotent-reverse-iff--1256aaee8fcf9684749ed34d.md) | 100 | `result-track:1256aaee8fcf9684749ed34da9f42cc5cc5908a8e3b0ac97a509c44ce18427b4` |
| 10 | `theorem` | [isUnit_of_coeff_isUnit_isNilpotent](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant115e9e767635d7ea91204de4b10296f95218e99d1e6a5618983eaba939d8da6e.lean/declarations/isunit-of-coeff-isunit-isnilpotent--6e0707813024e58820365f90.md) | 108 | `result-track:6e0707813024e58820365f90ca639e51780b8d54d312ba4ed313e6690483f639` |
| 11 | `theorem` | [coeff_isUnit_isNilpotent_of_isUnit](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant115e9e767635d7ea91204de4b10296f95218e99d1e6a5618983eaba939d8da6e.lean/declarations/coeff-isunit-isnilpotent-of-isunit--98f4568f18b338e5336473c6.md) | 132 | `result-track:98f4568f18b338e5336473c6c8b186a75de8c462fb6e9a24c6fd4f9ff9689d27` |
| 12 | `theorem` | [isUnit_iff_coeff_isUnit_isNilpotent](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant115e9e767635d7ea91204de4b10296f95218e99d1e6a5618983eaba939d8da6e.lean/declarations/isunit-iff-coeff-isunit-isnilpotent--a1444abc0fad33715d3dd24d.md) | 156 | `result-track:a1444abc0fad33715d3dd24dce0ed6be66acd866f60018c3a1db6215aafbb7d5` |
| 13 | `lemma` | [isUnit_C_add_X_mul_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant115e9e767635d7ea91204de4b10296f95218e99d1e6a5618983eaba939d8da6e.lean/declarations/isunit-c-add-x-mul-iff--528aa3003b4fb4cc3a0b62a2.md) | 160 | `result-track:528aa3003b4fb4cc3a0b62a2063c9f03d6c5c94f262609c1c544eb0200bb713e` |
| 14 | `lemma` | [isUnit_iff'](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant115e9e767635d7ea91204de4b10296f95218e99d1e6a5618983eaba939d8da6e.lean/declarations/isunit-iff--92bb9cab2a9a26984cff5586.md) | 167 | `result-track:92bb9cab2a9a26984cff558665303d9d70d40f0b5c756c1260a40d0641c73c52` |
| 15 | `theorem` | [not_isUnit_of_natDegree_pos_of_isReduced](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant115e9e767635d7ea91204de4b10296f95218e99d1e6a5618983eaba939d8da6e.lean/declarations/not-isunit-of-natdegree-pos-of-isreduced--6e63aebff66dea88600dcadf.md) | 174 | `result-track:6e63aebff66dea88600dcadf69859bafce0727e171905ea0682f1e22fdc623f6` |
| 16 | `theorem` | [not_isUnit_of_degree_pos_of_isReduced](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant115e9e767635d7ea91204de4b10296f95218e99d1e6a5618983eaba939d8da6e.lean/declarations/not-isunit-of-degree-pos-of-isreduced--8c1df7de623f33f3ce8a3023.md) | 184 | `result-track:8c1df7de623f33f3ce8a30239a07c9ebc5133ea635a97aca2ea2715fef53e353` |
| 17 | `lemma` | [isNilpotent_aeval_sub_of_isNilpotent_sub](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant115e9e767635d7ea91204de4b10296f95218e99d1e6a5618983eaba939d8da6e.lean/declarations/isnilpotent-aeval-sub-of-isnilpotent-sub--1bce3f0912faa25e229ea553.md) | 194 | `result-track:1bce3f0912faa25e229ea553eeafda7c17848e99b856df233c8eeed5b1438715` |
| 18 | `lemma` | [isUnit_aeval_of_isUnit_aeval_of_isNilpotent_sub](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant115e9e767635d7ea91204de4b10296f95218e99d1e6a5618983eaba939d8da6e.lean/declarations/isunit-aeval-of-isunit-aeval-of-isnilpotent-sub--38a92d10370d8b9976eb6b77.md) | 202 | `result-track:38a92d10370d8b9976eb6b775448ea9b254966e5134d8aa637c42453a31780a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
