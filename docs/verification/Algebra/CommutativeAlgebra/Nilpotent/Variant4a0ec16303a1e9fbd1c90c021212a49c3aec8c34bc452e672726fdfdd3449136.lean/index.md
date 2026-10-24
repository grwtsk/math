# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Nilpotent.Variant4a0ec16303a1e9fbd1c90c021212a49c3aec8c34bc452e672726fdfdd3449136

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b5ed3fc649678b13817d0f2ff4eed57f94ef1477",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Nilpotent/Variant4a0ec16303a1e9fbd1c90c021212a49c3aec8c34bc452e672726fdfdd3449136.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant4a0ec16303a1e9fbd1c90c021212a49c3aec8c34bc452e672726fdfdd3449136.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant4a0ec16303a1e9fbd1c90c021212a49c3aec8c34bc452e672726fdfdd3449136.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b5ed3fc649678b13817d0f2ff4eed57f94ef1477`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Nilpotent/Variant4a0ec16303a1e9fbd1c90c021212a49c3aec8c34bc452e672726fdfdd3449136.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Nilpotent/Variant4a0ec16303a1e9fbd1c90c021212a49c3aec8c34bc452e672726fdfdd3449136.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.Polynomial.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [isNilpotent_C_mul_pow_X_of_isNilpotent](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant4a0ec16303a1e9fbd1c90c021212a49c3aec8c34bc452e672726fdfdd3449136.lean/declarations/isnilpotent-c-mul-pow-x-of-isnilpotent--6fce40283587707ebc97ed6e.md) | 27 | `result-track:6fce40283587707ebc97ed6e21b247bbbcef5560593c9ac6afb39d3428b46829` |
| 2 | `lemma` | [isNilpotent_pow_X_mul_C_of_isNilpotent](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant4a0ec16303a1e9fbd1c90c021212a49c3aec8c34bc452e672726fdfdd3449136.lean/declarations/isnilpotent-pow-x-mul-c-of-isnilpotent--9bcbc98327dabef1541215de.md) | 34 | `result-track:9bcbc98327dabef1541215dee92b4a5a6b462ff1b94b47a44992742d3a8949b9` |
| 3 | `lemma` | [isNilpotent_monomial_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant4a0ec16303a1e9fbd1c90c021212a49c3aec8c34bc452e672726fdfdd3449136.lean/declarations/isnilpotent-monomial-iff--57d456e5799efec7d5126fc5.md) | 39 | `result-track:57d456e5799efec7d5126fc51a8d4f10e6479dffbd3c8cfd329f987f8779ee65` |
| 4 | `lemma` | [isNilpotent_C_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant4a0ec16303a1e9fbd1c90c021212a49c3aec8c34bc452e672726fdfdd3449136.lean/declarations/isnilpotent-c-iff--ef84903e4d671fd561c09c9d.md) | 43 | `result-track:ef84903e4d671fd561c09c9d67e83c40fffcc5a95f8258064ed9b8378ec0c494` |
| 5 | `lemma` | [isNilpotent_X_mul_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant4a0ec16303a1e9fbd1c90c021212a49c3aec8c34bc452e672726fdfdd3449136.lean/declarations/isnilpotent-x-mul-iff--a5b0562e9c6836c9da484b09.md) | 47 | `result-track:a5b0562e9c6836c9da484b090ccc43f88f8c1f7093fc8df8ba2cb523210b7332` |
| 6 | `lemma` | [isNilpotent_mul_X_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant4a0ec16303a1e9fbd1c90c021212a49c3aec8c34bc452e672726fdfdd3449136.lean/declarations/isnilpotent-mul-x-iff--8858e6c38f3986675791a1a8.md) | 54 | `result-track:8858e6c38f3986675791a1a89176ffeeca559cc736168f2df0a59327e9b63fc7` |
| 7 | `lemma` | [isNilpotent_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant4a0ec16303a1e9fbd1c90c021212a49c3aec8c34bc452e672726fdfdd3449136.lean/declarations/isnilpotent-iff--cee8e0f0e2d83e6ca376cbcb.md) | 65 | `result-track:cee8e0f0e2d83e6ca376cbcbed5e6113d749c725b9c00a4cc0dac28e2babfa7c` |
| 8 | `lemma` | [isNilpotent_reverse_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant4a0ec16303a1e9fbd1c90c021212a49c3aec8c34bc452e672726fdfdd3449136.lean/declarations/isnilpotent-reverse-iff--229480a06aafdbf31e54839e.md) | 82 | `result-track:229480a06aafdbf31e54839e82aee3bc8e910fa3e66522f196c9b0ee3d616edb` |
| 9 | `theorem` | [isUnit_of_coeff_isUnit_isNilpotent](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant4a0ec16303a1e9fbd1c90c021212a49c3aec8c34bc452e672726fdfdd3449136.lean/declarations/isunit-of-coeff-isunit-isnilpotent--637f755c182fc8670fa0a17f.md) | 95 | `result-track:637f755c182fc8670fa0a17f2ceb9910db8269cc13f4d0d87534d9cc3efaf557` |
| 10 | `theorem` | [coeff_isUnit_isNilpotent_of_isUnit](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant4a0ec16303a1e9fbd1c90c021212a49c3aec8c34bc452e672726fdfdd3449136.lean/declarations/coeff-isunit-isnilpotent-of-isunit--c2cd8a4267c8c9b48ce95e5b.md) | 121 | `result-track:c2cd8a4267c8c9b48ce95e5bdd7b1a20423e3ea1f829df7c517c55dfc38505fe` |
| 11 | `theorem` | [isUnit_iff_coeff_isUnit_isNilpotent](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant4a0ec16303a1e9fbd1c90c021212a49c3aec8c34bc452e672726fdfdd3449136.lean/declarations/isunit-iff-coeff-isunit-isnilpotent--bf7a4f98024275c1d93f7941.md) | 145 | `result-track:bf7a4f98024275c1d93f7941347d1ef4e33227403889bdc47e8eace4a81f8b54` |
| 12 | `lemma` | [isUnit_C_add_X_mul_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant4a0ec16303a1e9fbd1c90c021212a49c3aec8c34bc452e672726fdfdd3449136.lean/declarations/isunit-c-add-x-mul-iff--a41d0bc908071cebab9ee0d2.md) | 149 | `result-track:a41d0bc908071cebab9ee0d23c68c4dca72177250fb29ac2f395e0fa3eb8af8a` |
| 13 | `lemma` | [isUnit_iff'](../../../../../mathematics/Algebra/CommutativeAlgebra/Nilpotent/Variant4a0ec16303a1e9fbd1c90c021212a49c3aec8c34bc452e672726fdfdd3449136.lean/declarations/isunit-iff--2285d67d707e2eb50ba29696.md) | 156 | `result-track:2285d67d707e2eb50ba29696a0e3371072085e52a3efcff525260d1ae62bf5df` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
