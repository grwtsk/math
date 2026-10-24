# Verification target: GRWTSK.Algebra.UniversalAlgebra.AddTorsor.Variantc2a5fef32eb462ebfc226eed2e70eafd40c35ec549687feb86f0354a380dd2ec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "72750b1fe68cc8b2a6666a6bfcc883c035f0268a",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/UniversalAlgebra/AddTorsor/Variantc2a5fef32eb462ebfc226eed2e70eafd40c35ec549687feb86f0354a380dd2ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/UniversalAlgebra/AddTorsor/Variantc2a5fef32eb462ebfc226eed2e70eafd40c35ec549687feb86f0354a380dd2ec.lean/index.md) · [Full source](../../../../../mathematics/Algebra/UniversalAlgebra/AddTorsor/Variantc2a5fef32eb462ebfc226eed2e70eafd40c35ec549687feb86f0354a380dd2ec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `72750b1fe68cc8b2a6666a6bfcc883c035f0268a`.

Source path: `GRWTSK/Algebra/UniversalAlgebra/AddTorsor/Variantc2a5fef32eb462ebfc226eed2e70eafd40c35ec549687feb86f0354a380dd2ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/UniversalAlgebra/AddTorsor/Variantc2a5fef32eb462ebfc226eed2e70eafd40c35ec549687feb86f0354a380dd2ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Action.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Monoid.Defs` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsOrderedVAdd](../../../../../mathematics/Algebra/UniversalAlgebra/AddTorsor/Variantc2a5fef32eb462ebfc226eed2e70eafd40c35ec549687feb86f0354a380dd2ec.lean/declarations/isorderedvadd--9a63448b109d7ebc42f478c7.md) | 55 | `declaration-track:9a63448b109d7ebc42f478c71861a1ec1af16a33a2fb66e3e0b54848e796e8aa` |
| 2 | `class` | [IsOrderedSMul](../../../../../mathematics/Algebra/UniversalAlgebra/AddTorsor/Variantc2a5fef32eb462ebfc226eed2e70eafd40c35ec549687feb86f0354a380dd2ec.lean/declarations/isorderedsmul--8d89d047edb76ed1a14c5093.md) | 63 | `declaration-track:8d89d047edb76ed1a14c5093ddbcfca0bd3c2f73b3227971514259f572591e25` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/AddTorsor/Variantc2a5fef32eb462ebfc226eed2e70eafd40c35ec549687feb86f0354a380dd2ec.lean/declarations/instance--0fc9611b1482192b16ca05a3.md) | 68 | `declaration-track:0fc9611b1482192b16ca05a3efa7181ccdead74216b1b9cc33626fe81b5bc14f` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/AddTorsor/Variantc2a5fef32eb462ebfc226eed2e70eafd40c35ec549687feb86f0354a380dd2ec.lean/declarations/instance--fe56960db6f790449a826916.md) | 72 | `declaration-track:fe56960db6f790449a826916e805fd36d754abcebde509f2ebd331f37500f0c6` |
| 5 | `theorem` | [IsOrderedSMul.smul_le_smul](../../../../../mathematics/Algebra/UniversalAlgebra/AddTorsor/Variantc2a5fef32eb462ebfc226eed2e70eafd40c35ec549687feb86f0354a380dd2ec.lean/declarations/isorderedsmul-smul-le-smul--6e3ccb86bab330e46374e9d1.md) | 77 | `result-track:6e3ccb86bab330e46374e9d1df87e07edf00dd741938a4f2473533ea4d9fae24` |
| 6 | `theorem` | [Monotone.smul](../../../../../mathematics/Algebra/UniversalAlgebra/AddTorsor/Variantc2a5fef32eb462ebfc226eed2e70eafd40c35ec549687feb86f0354a380dd2ec.lean/declarations/monotone-smul--c19a4d24b2c2c9bd3c24f641.md) | 82 | `result-track:c19a4d24b2c2c9bd3c24f6418cc8fae00e2aca554140ff6730dbce483bbc7af3` |
| 7 | `class` | [IsCancelVAdd](../../../../../mathematics/Algebra/UniversalAlgebra/AddTorsor/Variantc2a5fef32eb462ebfc226eed2e70eafd40c35ec549687feb86f0354a380dd2ec.lean/declarations/iscancelvadd--fdeff7ccd1dfa55f95f62ce9.md) | 89 | `declaration-track:fdeff7ccd1dfa55f95f62ce9e9025acb945fb396f27e111d2edbe7551becf625` |
| 8 | `class` | [IsCancelSMul](../../../../../mathematics/Algebra/UniversalAlgebra/AddTorsor/Variantc2a5fef32eb462ebfc226eed2e70eafd40c35ec549687feb86f0354a380dd2ec.lean/declarations/iscancelsmul--9da7feb7d70d5e9fc8ad8802.md) | 95 | `declaration-track:9da7feb7d70d5e9fc8ad880269adcea02fbd7fb3ba417eba6c90f81107b363ff` |
| 9 | `class` | [IsOrderedCancelVAdd](../../../../../mathematics/Algebra/UniversalAlgebra/AddTorsor/Variantc2a5fef32eb462ebfc226eed2e70eafd40c35ec549687feb86f0354a380dd2ec.lean/declarations/isorderedcancelvadd--7ab0d64faeefe693afb1ffa4.md) | 100 | `declaration-track:7ab0d64faeefe693afb1ffa412f129d4e5e364eefe76b19671007397d5d71ebb` |
| 10 | `class` | [IsOrderedCancelSMul](../../../../../mathematics/Algebra/UniversalAlgebra/AddTorsor/Variantc2a5fef32eb462ebfc226eed2e70eafd40c35ec549687feb86f0354a380dd2ec.lean/declarations/isorderedcancelsmul--a2426a33319dc73a37c34b1b.md) | 108 | `declaration-track:a2426a33319dc73a37c34b1bf891274f471b900bac02a703611ee09e359764d7` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/AddTorsor/Variantc2a5fef32eb462ebfc226eed2e70eafd40c35ec549687feb86f0354a380dd2ec.lean/declarations/instance--8eced1cc688feae9f2a635a5.md) | 114 | `declaration-track:8eced1cc688feae9f2a635a5d8d91a9f89b57a728429e8c43313ba5b3d75c194` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/AddTorsor/Variantc2a5fef32eb462ebfc226eed2e70eafd40c35ec549687feb86f0354a380dd2ec.lean/declarations/instance--4706adcf426cb4f2afed0396.md) | 122 | `declaration-track:4706adcf426cb4f2afed0396dcee6f9039122c87ed1ea6db8fd96f44aebc0d7e` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/UniversalAlgebra/AddTorsor/Variantc2a5fef32eb462ebfc226eed2e70eafd40c35ec549687feb86f0354a380dd2ec.lean/declarations/instance--03d7068131235837d3d136fe.md) | 127 | `declaration-track:03d7068131235837d3d136fee8dae8cbec5fbc3c7c7dc0e0611ceb945fc14ef0` |
| 14 | `theorem` | [smul_lt_smul_of_le_of_lt](../../../../../mathematics/Algebra/UniversalAlgebra/AddTorsor/Variantc2a5fef32eb462ebfc226eed2e70eafd40c35ec549687feb86f0354a380dd2ec.lean/declarations/smul-lt-smul-of-le-of-lt--43fcba05e52646593c9e810e.md) | 134 | `result-track:43fcba05e52646593c9e810ee5b838459d0e7dc65f77e067b74130418bd832f4` |
| 15 | `theorem` | [smul_lt_smul_of_lt_of_le](../../../../../mathematics/Algebra/UniversalAlgebra/AddTorsor/Variantc2a5fef32eb462ebfc226eed2e70eafd40c35ec549687feb86f0354a380dd2ec.lean/declarations/smul-lt-smul-of-lt-of-le--618fc39f02f044aed97e98c8.md) | 145 | `result-track:618fc39f02f044aed97e98c8b12b05daf8eb5dcee65ea49e1fc757a7b1aff901` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
