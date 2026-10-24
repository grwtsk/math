# Verification target: GRWTSK.Algebra.UniversalAlgebra.MinMax.Variantadf99745b3c90bcf3f8e116a5666d9717c00a27d37a4a4c94c693995f066e10e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c702b8a378f88039afe556e1aaa7f8bee056e526",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/MinMax/Variantadf99745b3c90bcf3f8e116a5666d9717c00a27d37a4a4c94c693995f066e10e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variantadf99745b3c90bcf3f8e116a5666d9717c00a27d37a4a4c94c693995f066e10e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variantadf99745b3c90bcf3f8e116a5666d9717c00a27d37a4a4c94c693995f066e10e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c702b8a378f88039afe556e1aaa7f8bee056e526`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/MinMax/Variantadf99745b3c90bcf3f8e116a5666d9717c00a27d37a4a4c94c693995f066e10e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/MinMax/Variantadf99745b3c90bcf3f8e116a5666d9717c00a27d37a4a4c94c693995f066e10e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Abs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Unbundled.MinMax` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [max_one_div_max_inv_one_eq_self](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variantadf99745b3c90bcf3f8e116a5666d9717c00a27d37a4a4c94c693995f066e10e.lean/declarations/max-one-div-max-inv-one-eq-self--12de22fc6503c16f6acc9ed8.md) | 20 | `result-track:12de22fc6503c16f6acc9ed867f8c9dd4c995282fba57f8adcd8b79cecfae475` |
| 2 | `lemma` | [max_inv_one](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variantadf99745b3c90bcf3f8e116a5666d9717c00a27d37a4a4c94c693995f066e10e.lean/declarations/max-inv-one--a18c5d762b21941034ee9084.md) | 26 | `result-track:a18c5d762b21941034ee908447ec7b71c56c5a3cd63dd72bbe714752182c6ccc` |
| 3 | `theorem` | [min_inv_inv'](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variantadf99745b3c90bcf3f8e116a5666d9717c00a27d37a4a4c94c693995f066e10e.lean/declarations/min-inv-inv--66af6093414e8894b986732c.md) | 36 | `result-track:66af6093414e8894b986732c0c4d0a2a3ed80d0ed2cf9d31f549f03c3ebcd9fc` |
| 4 | `theorem` | [max_inv_inv'](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variantadf99745b3c90bcf3f8e116a5666d9717c00a27d37a4a4c94c693995f066e10e.lean/declarations/max-inv-inv--948ad301d5255856cd7ea14c.md) | 41 | `result-track:948ad301d5255856cd7ea14c77b089405a7b2f0d72cf0c7b5022ec1a92538aa1` |
| 5 | `theorem` | [min_div_div_right'](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variantadf99745b3c90bcf3f8e116a5666d9717c00a27d37a4a4c94c693995f066e10e.lean/declarations/min-div-div-right--aa2bd1befed48c688021050a.md) | 46 | `result-track:aa2bd1befed48c688021050a5e4a5f63f2f3566a446c86e850fc3235a623ff7c` |
| 6 | `theorem` | [max_div_div_right'](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variantadf99745b3c90bcf3f8e116a5666d9717c00a27d37a4a4c94c693995f066e10e.lean/declarations/max-div-div-right--10071fcd90826938e1670567.md) | 50 | `result-track:10071fcd90826938e1670567614d08c36fad3c99dbf3c96be6062932d82b6966` |
| 7 | `theorem` | [min_div_div_left'](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variantadf99745b3c90bcf3f8e116a5666d9717c00a27d37a4a4c94c693995f066e10e.lean/declarations/min-div-div-left--3d3b179b2a550cd87efb25c8.md) | 54 | `result-track:3d3b179b2a550cd87efb25c8cbf2508ac56c507a3b53fb128565982fcd4d632f` |
| 8 | `theorem` | [max_div_div_left'](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variantadf99745b3c90bcf3f8e116a5666d9717c00a27d37a4a4c94c693995f066e10e.lean/declarations/max-div-div-left--2cb20769ab4f04b6844a8d95.md) | 58 | `result-track:2cb20769ab4f04b6844a8d952d118fd54f61de3035d31eaff24172448750d254` |
| 9 | `theorem` | [max_sub_max_le_max](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variantadf99745b3c90bcf3f8e116a5666d9717c00a27d37a4a4c94c693995f066e10e.lean/declarations/max-sub-max-le-max--8bc2ca3a175e5df7e30c0876.md) | 67 | `result-track:8bc2ca3a175e5df7e30c0876748b383d1089d1770a1ac53a2d0ccd46e6713ecf` |
| 10 | `theorem` | [abs_max_sub_max_le_max](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variantadf99745b3c90bcf3f8e116a5666d9717c00a27d37a4a4c94c693995f066e10e.lean/declarations/abs-max-sub-max-le-max--82612e664f3c4ce472f0bc8a.md) | 76 | `result-track:82612e664f3c4ce472f0bc8afdf5dd2dc6a27207160f7c80143935f81efdd640` |
| 11 | `theorem` | [abs_min_sub_min_le_max](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variantadf99745b3c90bcf3f8e116a5666d9717c00a27d37a4a4c94c693995f066e10e.lean/declarations/abs-min-sub-min-le-max--90e62e4c6a031bf90bd8feaf.md) | 82 | `result-track:90e62e4c6a031bf90bd8feafa8a34509413f2504d1a91830fea110e69373d05b` |
| 12 | `theorem` | [abs_max_sub_max_le_abs](../../../../../mathematics/Algebra/UniversalAlgebra/MinMax/Variantadf99745b3c90bcf3f8e116a5666d9717c00a27d37a4a4c94c693995f066e10e.lean/declarations/abs-max-sub-max-le-abs--bfd684a07313cfc75fbc2695.md) | 86 | `result-track:bfd684a07313cfc75fbc26957cc300e067ddb09f42c32abc06c8245f9c5d0259` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
