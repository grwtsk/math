# Verification target: GRWTSK.Algebra.UniversalAlgebra.Chebyshev.Variantac830e6cf1303c127860baa51f28c1b8e6428cb7725b708e3ae40206cdadd379

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a0d52c5ec81a328fb2298ecffa0ff5d095dd4019",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/Chebyshev/Variantac830e6cf1303c127860baa51f28c1b8e6428cb7725b708e3ae40206cdadd379.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/Chebyshev/Variantac830e6cf1303c127860baa51f28c1b8e6428cb7725b708e3ae40206cdadd379.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/Chebyshev/Variantac830e6cf1303c127860baa51f28c1b8e6428cb7725b708e3ae40206cdadd379.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a0d52c5ec81a328fb2298ecffa0ff5d095dd4019`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/Chebyshev/Variantac830e6cf1303c127860baa51f28c1b8e6428cb7725b708e3ae40206cdadd379.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/Chebyshev/Variantac830e6cf1303c127860baa51f28c1b8e6428cb7725b708e3ae40206cdadd379.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Monovary` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Rearrangement` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Cycle.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.GCongr` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Positivity` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [MonovaryOn.sum_smul_sum_le_card_smul_sum](../../../../../mathematics/Algebra/UniversalAlgebra/Chebyshev/Variantac830e6cf1303c127860baa51f28c1b8e6428cb7725b708e3ae40206cdadd379.lean/declarations/monovaryon-sum-smul-sum-le-card-smul-sum--4267fd2375fd45a5c2cec6f6.md) | 63 | `result-track:4267fd2375fd45a5c2cec6f689794d5424ea87f048f0374a321d3293fda9eae8` |
| 2 | `theorem` | [AntivaryOn.card_smul_sum_le_sum_smul_sum](../../../../../mathematics/Algebra/UniversalAlgebra/Chebyshev/Variantac830e6cf1303c127860baa51f28c1b8e6428cb7725b708e3ae40206cdadd379.lean/declarations/antivaryon-card-smul-sum-le-sum-smul-sum--57efcbc07b73edde35f4316f.md) | 74 | `result-track:57efcbc07b73edde35f4316fce362a464cec7111a5ed7c7cb024356795a77dba` |
| 3 | `theorem` | [Monovary.sum_smul_sum_le_card_smul_sum](../../../../../mathematics/Algebra/UniversalAlgebra/Chebyshev/Variantac830e6cf1303c127860baa51f28c1b8e6428cb7725b708e3ae40206cdadd379.lean/declarations/monovary-sum-smul-sum-le-card-smul-sum--dcf886ca079557239badec39.md) | 83 | `result-track:dcf886ca079557239badec395455a1f3b5c7a2e617ae4692367d00998f6a317b` |
| 4 | `theorem` | [Antivary.card_smul_sum_le_sum_smul_sum](../../../../../mathematics/Algebra/UniversalAlgebra/Chebyshev/Variantac830e6cf1303c127860baa51f28c1b8e6428cb7725b708e3ae40206cdadd379.lean/declarations/antivary-card-smul-sum-le-sum-smul-sum--e8087f64d7aa66ef8f558a7b.md) | 90 | `result-track:e8087f64d7aa66ef8f558a7b370121a968fd5ff06f4bf9e0d4a2643d59c6b084` |
| 5 | `theorem` | [MonovaryOn.sum_mul_sum_le_card_mul_sum](../../../../../mathematics/Algebra/UniversalAlgebra/Chebyshev/Variantac830e6cf1303c127860baa51f28c1b8e6428cb7725b708e3ae40206cdadd379.lean/declarations/monovaryon-sum-mul-sum-le-card-mul-sum--b06e5e806d4e90bfddb55bd7.md) | 110 | `result-track:b06e5e806d4e90bfddb55bd79c77f44032afd6aa908fc861a11f9ad493cbea28` |
| 6 | `theorem` | [AntivaryOn.card_mul_sum_le_sum_mul_sum](../../../../../mathematics/Algebra/UniversalAlgebra/Chebyshev/Variantac830e6cf1303c127860baa51f28c1b8e6428cb7725b708e3ae40206cdadd379.lean/declarations/antivaryon-card-mul-sum-le-sum-mul-sum--036b1fa1f3a2438db8e7c4b7.md) | 118 | `result-track:036b1fa1f3a2438db8e7c4b7f8b4c635166e0ad7ce1303979fd36894f9ef607a` |
| 7 | `lemma` | [pow_sum_le_card_mul_sum_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Chebyshev/Variantac830e6cf1303c127860baa51f28c1b8e6428cb7725b708e3ae40206cdadd379.lean/declarations/pow-sum-le-card-mul-sum-pow--d93aa647d76fa48c6771791c.md) | 124 | `result-track:d93aa647d76fa48c6771791c837ef83123f13e2c8cde799c8196b09cb33fd930` |
| 8 | `theorem` | [sq_sum_le_card_mul_sum_sq](../../../../../mathematics/Algebra/UniversalAlgebra/Chebyshev/Variantac830e6cf1303c127860baa51f28c1b8e6428cb7725b708e3ae40206cdadd379.lean/declarations/sq-sum-le-card-mul-sum-sq--2ce106d3b83d798c3f620482.md) | 141 | `result-track:2ce106d3b83d798c3f6204827184d280a5af2a4b81f03b49a326b40f457d2c46` |
| 9 | `theorem` | [Monovary.sum_mul_sum_le_card_mul_sum](../../../../../mathematics/Algebra/UniversalAlgebra/Chebyshev/Variantac830e6cf1303c127860baa51f28c1b8e6428cb7725b708e3ae40206cdadd379.lean/declarations/monovary-sum-mul-sum-le-card-mul-sum--1b191abf4ab0f15cb5b258d9.md) | 150 | `result-track:1b191abf4ab0f15cb5b258d9ef0efaa569c160dcac044ecd06d0c90f415eb883` |
| 10 | `theorem` | [Antivary.card_mul_sum_le_sum_mul_sum](../../../../../mathematics/Algebra/UniversalAlgebra/Chebyshev/Variantac830e6cf1303c127860baa51f28c1b8e6428cb7725b708e3ae40206cdadd379.lean/declarations/antivary-card-mul-sum-le-sum-mul-sum--24edf0ca81a2ec724d644bd3.md) | 157 | `result-track:24edf0ca81a2ec724d644bd320478c5f43a44f5bb158a63179b8f01ed1c40ce8` |
| 11 | `lemma` | [pow_sum_div_card_le_sum_pow](../../../../../mathematics/Algebra/UniversalAlgebra/Chebyshev/Variantac830e6cf1303c127860baa51f28c1b8e6428cb7725b708e3ae40206cdadd379.lean/declarations/pow-sum-div-card-le-sum-pow--012b2a7991085375ca2b769f.md) | 167 | `result-track:012b2a7991085375ca2b769f70f103a90ac9bd8ee69218626147eb03363a01aa` |
| 12 | `theorem` | [sum_div_card_sq_le_sum_sq_div_card](../../../../../mathematics/Algebra/UniversalAlgebra/Chebyshev/Variantac830e6cf1303c127860baa51f28c1b8e6428cb7725b708e3ae40206cdadd379.lean/declarations/sum-div-card-sq-le-sum-sq-div-card--6ac343026a1e46eae2960f01.md) | 174 | `result-track:6ac343026a1e46eae2960f01d8f8bc23c8d79a3ee259a4d39ad1f51e8a5413b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
