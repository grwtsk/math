# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.OrderIsoNat.Variantb4a77084f0c51ad1d598acdb9f1a4e48b1c0748247375a1645521b27a871adcb

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "178cdccc09f1bfd2961ed486fadfa9115e492d77",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variantb4a77084f0c51ad1d598acdb9f1a4e48b1c0748247375a1645521b27a871adcb.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variantb4a77084f0c51ad1d598acdb9f1a4e48b1c0748247375a1645521b27a871adcb.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variantb4a77084f0c51ad1d598acdb9f1a4e48b1c0748247375a1645521b27a871adcb.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `178cdccc09f1bfd2961ed486fadfa9115e492d77`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variantb4a77084f0c51ad1d598acdb9f1a4e48b1c0748247375a1645521b27a871adcb.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variantb4a77084f0c51ad1d598acdb9f1a4e48b1c0748247375a1645521b27a871adcb.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [natLT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variantb4a77084f0c51ad1d598acdb9f1a4e48b1c0748247375a1645521b27a871adcb.lean/declarations/natlt--0f08a711931b7c61246b6212.md) | 43 | `declaration-track:0f08a711931b7c61246b6212d61b7d433e062482a398d31eecc76d103529dae5` |
| 2 | `theorem` | [coe_natLT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variantb4a77084f0c51ad1d598acdb9f1a4e48b1c0748247375a1645521b27a871adcb.lean/declarations/coe-natlt--76f50de498f6967cc4c9df3b.md) | 47 | `result-track:76f50de498f6967cc4c9df3b451d7aaa40e199d6c669d62a0cddeeff186d84dc` |
| 3 | `def` | [natGT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variantb4a77084f0c51ad1d598acdb9f1a4e48b1c0748247375a1645521b27a871adcb.lean/declarations/natgt--9c67373a5d6a7743650235a5.md) | 51 | `declaration-track:9c67373a5d6a7743650235a59cab9f0dfda105057960637fe79bf5f91e74ad82` |
| 4 | `theorem` | [coe_natGT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variantb4a77084f0c51ad1d598acdb9f1a4e48b1c0748247375a1645521b27a871adcb.lean/declarations/coe-natgt--273901433aa5fde95b54581b.md) | 55 | `result-track:273901433aa5fde95b54581b118c7e9cebd417a0dcfa4431d3fda797d13a8583` |
| 5 | `theorem` | [acc_iff_isEmpty_subtype_mem_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variantb4a77084f0c51ad1d598acdb9f1a4e48b1c0748247375a1645521b27a871adcb.lean/declarations/acc-iff-isempty-subtype-mem-range--2cbf26232670cb90759a7479.md) | 59 | `result-track:2cbf26232670cb90759a7479cbaef0b33ef9b2a2b11200f4ed2e587c5d39cd99` |
| 6 | `theorem` | [not_acc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variantb4a77084f0c51ad1d598acdb9f1a4e48b1c0748247375a1645521b27a871adcb.lean/declarations/not-acc--27cd3e7b761455635426869d.md) | 67 | `result-track:27cd3e7b761455635426869d9d69518f9d0d806116e8d42af0da2e98f3d87ccd` |
| 7 | `theorem` | [wellFounded_iff_isEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variantb4a77084f0c51ad1d598acdb9f1a4e48b1c0748247375a1645521b27a871adcb.lean/declarations/wellfounded-iff-isempty--1fae517c964b9f1d3ef6d190.md) | 74 | `result-track:1fae517c964b9f1d3ef6d1903181ea99a72c4ccd35e4acb81cd9ca548add5ab6` |
| 8 | `theorem` | [not_wellFounded](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variantb4a77084f0c51ad1d598acdb9f1a4e48b1c0748247375a1645521b27a871adcb.lean/declarations/not-wellfounded--5090fbe0e5ab7d97228c3492.md) | 79 | `result-track:5090fbe0e5ab7d97228c349297f0068f8110ed9c06e01e3a704d3534505de8da` |
| 9 | `theorem` | [not_strictAnti_of_wellFoundedLT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variantb4a77084f0c51ad1d598acdb9f1a4e48b1c0748247375a1645521b27a871adcb.lean/declarations/not-strictanti-of-wellfoundedlt--409e5b10ff25381364b07a4e.md) | 85 | `result-track:409e5b10ff25381364b07a4ec5b701e1a89c78626082c6f1de84e3b7ae1f019c` |
| 10 | `theorem` | [not_strictMono_of_wellFoundedGT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variantb4a77084f0c51ad1d598acdb9f1a4e48b1c0748247375a1645521b27a871adcb.lean/declarations/not-strictmono-of-wellfoundedgt--9832edee8887deba3aa21923.md) | 89 | `result-track:9832edee8887deba3aa2192349ff8616432962c65736249e090f57cfc459fa78` |
| 11 | `def` | [orderEmbeddingOfSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variantb4a77084f0c51ad1d598acdb9f1a4e48b1c0748247375a1645521b27a871adcb.lean/declarations/orderembeddingofset--06f8aac237580de9f907336f.md) | 98 | `declaration-track:06f8aac237580de9f907336f120e3be451b9cb7736259bd640570400d5ff5802` |
| 12 | `def` | [Subtype.orderIsoOfNat](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variantb4a77084f0c51ad1d598acdb9f1a4e48b1c0748247375a1645521b27a871adcb.lean/declarations/subtype-orderisoofnat--65f12a28d0402b634a6506bd.md) | 105 | `declaration-track:65f12a28d0402b634a6506bdd90ae4c17fd30b9af8ad0ccfce0b828546af2999` |
| 13 | `theorem` | [coe_orderEmbeddingOfSet](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variantb4a77084f0c51ad1d598acdb9f1a4e48b1c0748247375a1645521b27a871adcb.lean/declarations/coe-orderembeddingofset--1955f5c3b2bbedbc33c8187c.md) | 116 | `result-track:1955f5c3b2bbedbc33c8187c7ff8392d05c94a4292fb39ffb11968382ee699f2` |
| 14 | `theorem` | [orderEmbeddingOfSet_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variantb4a77084f0c51ad1d598acdb9f1a4e48b1c0748247375a1645521b27a871adcb.lean/declarations/orderembeddingofset-apply--a47552f924a85d083f98096f.md) | 120 | `result-track:a47552f924a85d083f98096ffa21e690630f421d245ba1d0436e0d2ac14d17db` |
| 15 | `theorem` | [Subtype.orderIsoOfNat_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variantb4a77084f0c51ad1d598acdb9f1a4e48b1c0748247375a1645521b27a871adcb.lean/declarations/subtype-orderisoofnat-apply--3216f65c28840179be6fad3c.md) | 126 | `result-track:3216f65c28840179be6fad3ce16f065356b457238a7c19f475671456d9aa9ef4` |
| 16 | `theorem` | [orderEmbeddingOfSet_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variantb4a77084f0c51ad1d598acdb9f1a4e48b1c0748247375a1645521b27a871adcb.lean/declarations/orderembeddingofset-range--790836f8e6d0b8b53ebdfec3.md) | 134 | `result-track:790836f8e6d0b8b53ebdfec333d1876bdaa36989e15b4ee62ca76a463b5c9110` |
| 17 | `theorem` | [exists_subseq_of_forall_mem_union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variantb4a77084f0c51ad1d598acdb9f1a4e48b1c0748247375a1645521b27a871adcb.lean/declarations/exists-subseq-of-forall-mem-union--73e22e7f510240d07bf6eadb.md) | 138 | `result-track:73e22e7f510240d07bf6eadb608b24bf4745c470b6a5223f714dc98872caefc2` |
| 18 | `theorem` | [exists_increasing_or_nonincreasing_subseq'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variantb4a77084f0c51ad1d598acdb9f1a4e48b1c0748247375a1645521b27a871adcb.lean/declarations/exists-increasing-or-nonincreasing-subseq--6abc97fe3b3e02d1ca90f26a.md) | 150 | `result-track:6abc97fe3b3e02d1ca90f26a29f2127b3e421bed35175093af54363f065aee24` |
| 19 | `theorem` | [exists_increasing_or_nonincreasing_subseq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variantb4a77084f0c51ad1d598acdb9f1a4e48b1c0748247375a1645521b27a871adcb.lean/declarations/exists-increasing-or-nonincreasing-subseq--3bcf381eca8cdd3771695a6a.md) | 184 | `result-track:3bcf381eca8cdd3771695a6a5ca5740f443bab3a3b21a7ecf2288a3b808344cc` |
| 20 | `theorem` | [Infinite.exists_strictMono_or_strictAnti](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variantb4a77084f0c51ad1d598acdb9f1a4e48b1c0748247375a1645521b27a871adcb.lean/declarations/infinite-exists-strictmono-or-strictanti--7e6e6528576ee50d04cad237.md) | 199 | `result-track:7e6e6528576ee50d04cad237f137fa7499ad5d120c68ff9a828420d0b0fc4abb` |
| 21 | `theorem` | [Finite.of_wellFoundedLT_of_wellFoundedGT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variantb4a77084f0c51ad1d598acdb9f1a4e48b1c0748247375a1645521b27a871adcb.lean/declarations/finite-of-wellfoundedlt-of-wellfoundedgt--8f7cf0e2064a990f235c32d6.md) | 211 | `result-track:8f7cf0e2064a990f235c32d6a3999021829a3ecbd266aafa54567bfee49d7bb4` |
| 22 | `theorem` | [IsChain.finite_of_wellFoundedLT_of_wellFoundedGT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variantb4a77084f0c51ad1d598acdb9f1a4e48b1c0748247375a1645521b27a871adcb.lean/declarations/ischain-finite-of-wellfoundedlt-of-wellfoundedgt--d25657cdd426720a5b745dea.md) | 222 | `result-track:d25657cdd426720a5b745dea9b8bf168ff3e36fb27a9395f77045ffe7f986a77` |
| 23 | `theorem` | [wellFoundedGT_iff_monotone_chain_condition'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variantb4a77084f0c51ad1d598acdb9f1a4e48b1c0748247375a1645521b27a871adcb.lean/declarations/wellfoundedgt-iff-monotone-chain-condition--215ad1771ca281b4a1aac923.md) | 232 | `result-track:215ad1771ca281b4a1aac923b9e7e445c3fc6bc472f0dd022ec91a13b7f40976` |
| 24 | `theorem` | [WellFoundedGT.monotone_chain_condition'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variantb4a77084f0c51ad1d598acdb9f1a4e48b1c0748247375a1645521b27a871adcb.lean/declarations/wellfoundedgt-monotone-chain-condition--ee2779c7273a984af8eb67c0.md) | 242 | `result-track:ee2779c7273a984af8eb67c0b2bf89a0d0d4e9859309cc2abe9e7c2cf4ea1cfb` |
| 25 | `theorem` | [wellFoundedGT_iff_monotone_chain_condition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variantb4a77084f0c51ad1d598acdb9f1a4e48b1c0748247375a1645521b27a871adcb.lean/declarations/wellfoundedgt-iff-monotone-chain-condition--cff4b63e62cf2cbbd80fd6c1.md) | 249 | `result-track:cff4b63e62cf2cbbd80fd6c1588da2f57aafacb2c0e407f2c6dc32e095918458` |
| 26 | `theorem` | [WellFoundedGT.monotone_chain_condition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variantb4a77084f0c51ad1d598acdb9f1a4e48b1c0748247375a1645521b27a871adcb.lean/declarations/wellfoundedgt-monotone-chain-condition--002acccbbc590beb20eb8ba3.md) | 256 | `result-track:002acccbbc590beb20eb8ba3d5b5e26cea289610bbc8c8aeeaa5d633ba46f106` |
| 27 | `theorem` | [WellFoundedLT.antitone_chain_condition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variantb4a77084f0c51ad1d598acdb9f1a4e48b1c0748247375a1645521b27a871adcb.lean/declarations/wellfoundedlt-antitone-chain-condition--460dd97a34359d48d6f3cea0.md) | 265 | `result-track:460dd97a34359d48d6f3cea0ab328a4ae743539ec2280ee673b4886bfb31c9ff` |
| 28 | `def` | [monotonicSequenceLimitIndex](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variantb4a77084f0c51ad1d598acdb9f1a4e48b1c0748247375a1645521b27a871adcb.lean/declarations/monotonicsequencelimitindex--2718c28350a994e8859b4cac.md) | 273 | `declaration-track:2718c28350a994e8859b4cac1c4f1e80510722b167968811d7d40c8caa0dbc3d` |
| 29 | `def` | [monotonicSequenceLimit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variantb4a77084f0c51ad1d598acdb9f1a4e48b1c0748247375a1645521b27a871adcb.lean/declarations/monotonicsequencelimit--6718e815fe661ed538c3ecda.md) | 278 | `declaration-track:6718e815fe661ed538c3ecdacdc352cb81149a07ac72a77206a8593b6b3e87bc` |
| 30 | `theorem` | [le_monotonicSequenceLimit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variantb4a77084f0c51ad1d598acdb9f1a4e48b1c0748247375a1645521b27a871adcb.lean/declarations/le-monotonicsequencelimit--9cc939f8a112ff73d4ed561f.md) | 281 | `result-track:9cc939f8a112ff73d4ed561f7387cecace90d4a339b1b2465e226ff765a6b217` |
| 31 | `theorem` | [WellFoundedGT.iSup_eq_monotonicSequenceLimit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variantb4a77084f0c51ad1d598acdb9f1a4e48b1c0748247375a1645521b27a871adcb.lean/declarations/wellfoundedgt-isup-eq-monotonicsequencelimit--06477de5ce97545c92923c4b.md) | 288 | `result-track:06477de5ce97545c92923c4be269428a528a098237284897e6c233d600c9f0ba` |
| 32 | `theorem` | [WellFoundedGT.ciSup_eq_monotonicSequenceLimit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variantb4a77084f0c51ad1d598acdb9f1a4e48b1c0748247375a1645521b27a871adcb.lean/declarations/wellfoundedgt-cisup-eq-monotonicsequencelimit--e3512a8888f3558bce8f4891.md) | 292 | `result-track:e3512a8888f3558bce8f48910fc571bfb03cddd21681f3c56e90e3d98c1cc247` |
| 33 | `theorem` | [exists_covBy_seq_of_wellFoundedLT_wellFoundedGT](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variantb4a77084f0c51ad1d598acdb9f1a4e48b1c0748247375a1645521b27a871adcb.lean/declarations/exists-covby-seq-of-wellfoundedlt-wellfoundedgt--ba47f7a64a648f3e91ba204c.md) | 297 | `result-track:ba47f7a64a648f3e91ba204c047b7f1d806133d23c6ec4b40b337bf1f9179d9f` |
| 34 | `theorem` | [exists_covBy_seq_of_wellFoundedLT_wellFoundedGT_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/OrderIsoNat/Variantb4a77084f0c51ad1d598acdb9f1a4e48b1c0748247375a1645521b27a871adcb.lean/declarations/exists-covby-seq-of-wellfoundedlt-wellfoundedgt-of-le--a7c344b417436c73e4a50700.md) | 314 | `result-track:a7c344b417436c73e4a50700a66e815052899e477acddd4b9ceb0f7a50316e93` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
