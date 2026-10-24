# Verification target: GRWTSK.Algebra.LinearAlgebra.Pointwise.Variantfb1d508790d0c6bce2ad8a47b33e49edb16b23fbbe6152bb1015cfde678c7635

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f8f9f6daf5da630f9380d0ab8c70ab8ce3cafc79",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Pointwise/Variantfb1d508790d0c6bce2ad8a47b33e49edb16b23fbbe6152bb1015cfde678c7635.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantfb1d508790d0c6bce2ad8a47b33e49edb16b23fbbe6152bb1015cfde678c7635.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantfb1d508790d0c6bce2ad8a47b33e49edb16b23fbbe6152bb1015cfde678c7635.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f8f9f6daf5da630f9380d0ab8c70ab8ce3cafc79`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Pointwise/Variantfb1d508790d0c6bce2ad8a47b33e49edb16b23fbbe6152bb1015cfde678c7635.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Pointwise/Variantfb1d508790d0c6bce2ad8a47b33e49edb16b23fbbe6152bb1015cfde678c7635.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Subgroup.Pointwise` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Span` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pointwiseNeg](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantfb1d508790d0c6bce2ad8a47b33e49edb16b23fbbe6152bb1015cfde678c7635.lean/declarations/pointwiseneg--ae184ed977c25b4ffbe8e7ee.md) | 60 | `declaration-track:ae184ed977c25b4ffbe8e7ee77e03fa59a8742d6c8580ec133840d770b15b602` |
| 2 | `theorem` | [coe_set_neg](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantfb1d508790d0c6bce2ad8a47b33e49edb16b23fbbe6152bb1015cfde678c7635.lean/declarations/coe-set-neg--dc675f79528dbb257d323f6c.md) | 72 | `result-track:dc675f79528dbb257d323f6c9117931541ca5fe9007f9ed8dd2db40f01b2306d` |
| 3 | `theorem` | [neg_toAddSubmonoid](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantfb1d508790d0c6bce2ad8a47b33e49edb16b23fbbe6152bb1015cfde678c7635.lean/declarations/neg-toaddsubmonoid--749c6b57cc18a6103fd2e4e5.md) | 77 | `result-track:749c6b57cc18a6103fd2e4e5c99b683be89e92e88945e813eb44a4fd8acc34df` |
| 4 | `theorem` | [mem_neg](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantfb1d508790d0c6bce2ad8a47b33e49edb16b23fbbe6152bb1015cfde678c7635.lean/declarations/mem-neg--601467197647b74e74f115b2.md) | 82 | `result-track:601467197647b74e74f115b2a98112a553c64cf1c27f0e977fcf4dfefcc7f7a1` |
| 5 | `def` | [involutivePointwiseNeg](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantfb1d508790d0c6bce2ad8a47b33e49edb16b23fbbe6152bb1015cfde678c7635.lean/declarations/involutivepointwiseneg--672ff6b4e3dee67dd5bd46e3.md) | 89 | `declaration-track:672ff6b4e3dee67dd5bd46e332916bafb0f1c278ad6cbcb55708ff128b7bdff4` |
| 6 | `theorem` | [neg_le_neg](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantfb1d508790d0c6bce2ad8a47b33e49edb16b23fbbe6152bb1015cfde678c7635.lean/declarations/neg-le-neg--e0942609caad65dd9a96d56b.md) | 98 | `result-track:e0942609caad65dd9a96d56ba7e5eee3467a853cb49813f6c3474543ae2860b0` |
| 7 | `theorem` | [neg_le](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantfb1d508790d0c6bce2ad8a47b33e49edb16b23fbbe6152bb1015cfde678c7635.lean/declarations/neg-le--919c068b9676d8956c961780.md) | 102 | `result-track:919c068b9676d8956c961780e4bf1d9d5bdaf0b17a3ea817503d5172d542143b` |
| 8 | `def` | [negOrderIso](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantfb1d508790d0c6bce2ad8a47b33e49edb16b23fbbe6152bb1015cfde678c7635.lean/declarations/negorderiso--895ab6868bc431bf706990e9.md) | 107 | `declaration-track:895ab6868bc431bf706990e99401e4c0083cf6e0a65aa32b5b5954e29e6a07ea` |
| 9 | `theorem` | [closure_neg](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantfb1d508790d0c6bce2ad8a47b33e49edb16b23fbbe6152bb1015cfde678c7635.lean/declarations/closure-neg--71d006c21ebc61f6a2d70284.md) | 113 | `result-track:71d006c21ebc61f6a2d70284b400d70e00f698186eadd1250f82eca66a91ebe6` |
| 10 | `theorem` | [neg_inf](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantfb1d508790d0c6bce2ad8a47b33e49edb16b23fbbe6152bb1015cfde678c7635.lean/declarations/neg-inf--e00fead1da45dbf95e0ee8d2.md) | 122 | `result-track:e00fead1da45dbf95e0ee8d2ffcbff27afa72ec3be082688244749268f950e9c` |
| 11 | `theorem` | [neg_sup](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantfb1d508790d0c6bce2ad8a47b33e49edb16b23fbbe6152bb1015cfde678c7635.lean/declarations/neg-sup--ad7c7956e96d25733a3c93bd.md) | 127 | `result-track:ad7c7956e96d25733a3c93bd90a0baebe3cfa2eb737f5d73390205a77f9b19ee` |
| 12 | `theorem` | [neg_bot](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantfb1d508790d0c6bce2ad8a47b33e49edb16b23fbbe6152bb1015cfde678c7635.lean/declarations/neg-bot--e07dfc92c6e6cb6f207fe89f.md) | 132 | `result-track:e07dfc92c6e6cb6f207fe89f26847e16e2f8b6378cc38f0e7a387d8767d87cf5` |
| 13 | `theorem` | [neg_top](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantfb1d508790d0c6bce2ad8a47b33e49edb16b23fbbe6152bb1015cfde678c7635.lean/declarations/neg-top--65a15921d232dcc0516e2eb4.md) | 137 | `result-track:65a15921d232dcc0516e2eb4f8a95812cff96494b2a3f1b71de10871fbbd813f` |
| 14 | `theorem` | [neg_iInf](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantfb1d508790d0c6bce2ad8a47b33e49edb16b23fbbe6152bb1015cfde678c7635.lean/declarations/neg-iinf--f4cf992cb22e9a0fae402dff.md) | 142 | `result-track:f4cf992cb22e9a0fae402dffdea598e41af2a9f29325527fe98cfce0c956411c` |
| 15 | `theorem` | [neg_iSup](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantfb1d508790d0c6bce2ad8a47b33e49edb16b23fbbe6152bb1015cfde678c7635.lean/declarations/neg-isup--824e535482fde8abad7737d0.md) | 147 | `result-track:824e535482fde8abad7737d035917bd727e21c4c7cdd20ce4d1cfc33758fe75c` |
| 16 | `theorem` | [neg_eq_self](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantfb1d508790d0c6bce2ad8a47b33e49edb16b23fbbe6152bb1015cfde678c7635.lean/declarations/neg-eq-self--a52e54999824272975eb1ea8.md) | 156 | `result-track:a52e54999824272975eb1ea864de6a18e3616d8a256f129216b7c0f025082eb6` |
| 17 | `instance` | [pointwiseAddCommMonoid](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantfb1d508790d0c6bce2ad8a47b33e49edb16b23fbbe6152bb1015cfde678c7635.lean/declarations/pointwiseaddcommmonoid--fe1a956f6f1ccc4679623c01.md) | 164 | `declaration-track:fe1a956f6f1ccc4679623c0118394396f99ca08e37f0d3cbd84e9c4b010d88f7` |
| 18 | `theorem` | [add_eq_sup](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantfb1d508790d0c6bce2ad8a47b33e49edb16b23fbbe6152bb1015cfde678c7635.lean/declarations/add-eq-sup--0e99c11e52cb7cc276e6681e.md) | 175 | `result-track:0e99c11e52cb7cc276e6681ed80ad5f7284b33c4bf3956f503abf182216d1a81` |
| 19 | `theorem` | [zero_eq_bot](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantfb1d508790d0c6bce2ad8a47b33e49edb16b23fbbe6152bb1015cfde678c7635.lean/declarations/zero-eq-bot--ad391eaa8492d30c5ee505ba.md) | 180 | `result-track:ad391eaa8492d30c5ee505ba07a4b66290f126a5975aeea5f5c44721d0df2f8a` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantfb1d508790d0c6bce2ad8a47b33e49edb16b23fbbe6152bb1015cfde678c7635.lean/declarations/instance--beed95ca82334f767ab02451.md) | 184 | `declaration-track:beed95ca82334f767ab024513a311a8c88755d6d7a218c8a1824a1bb6af4aaff` |
| 21 | `def` | [pointwiseDistribMulAction](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantfb1d508790d0c6bce2ad8a47b33e49edb16b23fbbe6152bb1015cfde678c7635.lean/declarations/pointwisedistribmulaction--3937d2ebc59b24a2b4ed27ba.md) | 201 | `declaration-track:3937d2ebc59b24a2b4ed27ba509beefa1af5212b4d6c794af03a370f46ee9a99` |
| 22 | `theorem` | [coe_pointwise_smul](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantfb1d508790d0c6bce2ad8a47b33e49edb16b23fbbe6152bb1015cfde678c7635.lean/declarations/coe-pointwise-smul--52696ea53f813007752a05f8.md) | 218 | `result-track:52696ea53f813007752a05f85aef7c066892de63d719a0d3c24b87f9ad2e1664` |
| 23 | `theorem` | [pointwise_smul_toAddSubmonoid](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantfb1d508790d0c6bce2ad8a47b33e49edb16b23fbbe6152bb1015cfde678c7635.lean/declarations/pointwise-smul-toaddsubmonoid--c843f72a939690018e6cf9a1.md) | 223 | `result-track:c843f72a939690018e6cf9a1cc76fd07848c753b3a521016305800048cdcb63f` |
| 24 | `theorem` | [pointwise_smul_toAddSubgroup](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantfb1d508790d0c6bce2ad8a47b33e49edb16b23fbbe6152bb1015cfde678c7635.lean/declarations/pointwise-smul-toaddsubgroup--571e3efa4229d59f029d8f6e.md) | 229 | `result-track:571e3efa4229d59f029d8f6ef77b0f141f96a6d5006d8e2adde0e34eb530632a` |
| 25 | `theorem` | [smul_mem_pointwise_smul](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantfb1d508790d0c6bce2ad8a47b33e49edb16b23fbbe6152bb1015cfde678c7635.lean/declarations/smul-mem-pointwise-smul--f733ded96b35aec68c5c439f.md) | 235 | `result-track:f733ded96b35aec68c5c439f0cb38c3bd952db7dd72c43d68cc363d5692de87d` |
| 26 | `theorem` | [smul_bot'](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantfb1d508790d0c6bce2ad8a47b33e49edb16b23fbbe6152bb1015cfde678c7635.lean/declarations/smul-bot--484b19cf707dd343c124754b.md) | 241 | `result-track:484b19cf707dd343c124754bd534f66eeaa78693299bcc0ec00bb612a7575a4c` |
| 27 | `theorem` | [smul_sup'](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantfb1d508790d0c6bce2ad8a47b33e49edb16b23fbbe6152bb1015cfde678c7635.lean/declarations/smul-sup--3b7f645eaee88fb428193d6d.md) | 246 | `result-track:3b7f645eaee88fb428193d6d7be66a1edf53f9c15e2d62b035a1c4d9434f005b` |
| 28 | `theorem` | [smul_span](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantfb1d508790d0c6bce2ad8a47b33e49edb16b23fbbe6152bb1015cfde678c7635.lean/declarations/smul-span--b1af4fd2ef34e388948768c9.md) | 250 | `result-track:b1af4fd2ef34e388948768c92094d80e19b2aad0ab844d3981d3dfbe8b0c632f` |
| 29 | `theorem` | [span_smul](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantfb1d508790d0c6bce2ad8a47b33e49edb16b23fbbe6152bb1015cfde678c7635.lean/declarations/span-smul--87b59790986b4dc55c825fe6.md) | 254 | `result-track:87b59790986b4dc55c825fe659432f2850fe3b88fef415430c4fd1d80abec0a7` |
| 30 | `instance` | [pointwiseCentralScalar](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantfb1d508790d0c6bce2ad8a47b33e49edb16b23fbbe6152bb1015cfde678c7635.lean/declarations/pointwisecentralscalar--78b2ff9aa0961392a0390eef.md) | 258 | `declaration-track:78b2ff9aa0961392a0390eef97389eb8e90a03f9dbbd70b041b4089740bf4142` |
| 31 | `theorem` | [smul_le_self_of_tower](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantfb1d508790d0c6bce2ad8a47b33e49edb16b23fbbe6152bb1015cfde678c7635.lean/declarations/smul-le-self-of-tower--bc20dd7e7f1f28cef398cf8f.md) | 264 | `result-track:bc20dd7e7f1f28cef398cf8fd9fef9a131b0c460fa57f45d37618437dd7317be` |
| 32 | `def` | [pointwiseMulActionWithZero](../../../../../mathematics/Algebra/LinearAlgebra/Pointwise/Variantfb1d508790d0c6bce2ad8a47b33e49edb16b23fbbe6152bb1015cfde678c7635.lean/declarations/pointwisemulactionwithzero--98a60d94cbc5bd127d99c9ca.md) | 282 | `declaration-track:98a60d94cbc5bd127d99c9ca3c658939093f8b47f8da6f4391162f92db0cc7f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
