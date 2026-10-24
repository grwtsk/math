# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Clause.Variantf74ec155e599ea8bbfed0c18f4599e11d08c888cedb74efe8cf664ceb750fbff

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3db4e69b4832b58856cc7695dbea734d3849dc7f",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Clause/Variantf74ec155e599ea8bbfed0c18f4599e11d08c888cedb74efe8cf664ceb750fbff.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Clause/Variantf74ec155e599ea8bbfed0c18f4599e11d08c888cedb74efe8cf664ceb750fbff.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Clause/Variantf74ec155e599ea8bbfed0c18f4599e11d08c888cedb74efe8cf664ceb750fbff.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3db4e69b4832b58856cc7695dbea734d3849dc7f`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Clause/Variantf74ec155e599ea8bbfed0c18f4599e11d08c888cedb74efe8cf664ceb750fbff.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Clause/Variantf74ec155e599ea8bbfed0c18f4599e11d08c888cedb74efe8cf664ceb750fbff.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Erase` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.List.Pairwise` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ReduceResult](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Clause/Variantf74ec155e599ea8bbfed0c18f4599e11d08c888cedb74efe8cf664ceb750fbff.lean/declarations/reduceresult--6df74ea3f1889523cb8f6df2.md) | 33 | `declaration-track:6df74ea3f1889523cb8f6df2c18a46d0cd796355645641427ff6b0513b8a3ceb` |
| 2 | `class` | [Clause](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Clause/Variantf74ec155e599ea8bbfed0c18f4599e11d08c888cedb74efe8cf664ceb750fbff.lean/declarations/clause--14aff0ba40fef5af8b5b0733.md) | 43 | `declaration-track:14aff0ba40fef5af8b5b073394230100a02757ad189dc4136f026c1305f46059` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Clause/Variantf74ec155e599ea8bbfed0c18f4599e11d08c888cedb74efe8cf664ceb750fbff.lean/declarations/instance--b40cc2ebcc0550377c02cf4a.md) | 71 | `declaration-track:b40cc2ebcc0550377c02cf4ade67ff8897b4712fd00fd0e2e5307710df5b1f08` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Clause/Variantf74ec155e599ea8bbfed0c18f4599e11d08c888cedb74efe8cf664ceb750fbff.lean/declarations/instance--1ffe7e516073b429c161da48.md) | 74 | `declaration-track:1ffe7e516073b429c161da484a63345c24bbb0721d6de741f3a96dc21121aa5d` |
| 5 | `def` | [eval](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Clause/Variantf74ec155e599ea8bbfed0c18f4599e11d08c888cedb74efe8cf664ceb750fbff.lean/declarations/eval--be3d5c3a1f76a46545ffa594.md) | 77 | `declaration-track:be3d5c3a1f76a46545ffa5946060e058baf3a24ec3c587fd8045b439067d2450` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Clause/Variantf74ec155e599ea8bbfed0c18f4599e11d08c888cedb74efe8cf664ceb750fbff.lean/declarations/instance--3c5ff9be2b1045ae89e3be53.md) | 80 | `declaration-track:3c5ff9be2b1045ae89e3be53078e09bd41b21f76292f4df32f3441c18268a962` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Clause/Variantf74ec155e599ea8bbfed0c18f4599e11d08c888cedb74efe8cf664ceb750fbff.lean/declarations/instance--e6f06514c799c9be3d93ec9f.md) | 83 | `declaration-track:e6f06514c799c9be3d93ec9fb81fb707150ba592bdeb325f63fbc765ab90f281` |
| 8 | `structure` | [DefaultClause](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Clause/Variantf74ec155e599ea8bbfed0c18f4599e11d08c888cedb74efe8cf664ceb750fbff.lean/declarations/defaultclause--bc763356d62d521555afe9e7.md) | 103 | `declaration-track:bc763356d62d521555afe9e7d4b48348f2536453ea2bef2776722226104b4863` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Clause/Variantf74ec155e599ea8bbfed0c18f4599e11d08c888cedb74efe8cf664ceb750fbff.lean/declarations/instance--8f4139e583b59a9644b52569.md) | 109 | `declaration-track:8f4139e583b59a9644b5256913d9c02d1724ed6d3e883182d323602a0e0ce806` |
| 10 | `def` | [toList](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Clause/Variantf74ec155e599ea8bbfed0c18f4599e11d08c888cedb74efe8cf664ceb750fbff.lean/declarations/tolist--c9ede59ab70a11569240d3ac.md) | 114 | `declaration-track:c9ede59ab70a11569240d3ac2d2402b127aef3d8984ef10ddec1dfaefec0184b` |
| 11 | `theorem` | [not_tautology](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Clause/Variantf74ec155e599ea8bbfed0c18f4599e11d08c888cedb74efe8cf664ceb750fbff.lean/declarations/not-tautology--8c9bfbdbbdc7f1ef79aa9b21.md) | 118 | `result-track:8c9bfbdbbdc7f1ef79aa9b21eb9533b58822dbdf091df225e6f7f56a4e1eeb2c` |
| 12 | `def` | [empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Clause/Variantf74ec155e599ea8bbfed0c18f4599e11d08c888cedb74efe8cf664ceb750fbff.lean/declarations/empty--166c3a3234ea79ed7f19e65b.md) | 123 | `declaration-track:166c3a3234ea79ed7f19e65b3f92885fcfce881bbd06a5a5c96e7d2d223305cb` |
| 13 | `theorem` | [empty_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Clause/Variantf74ec155e599ea8bbfed0c18f4599e11d08c888cedb74efe8cf664ceb750fbff.lean/declarations/empty-eq--1621aae5445d6774dd3d4e8c.md) | 126 | `result-track:1621aae5445d6774dd3d4e8cd049e4694785d562406da927d38987160f006b73` |
| 14 | `def` | [unit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Clause/Variantf74ec155e599ea8bbfed0c18f4599e11d08c888cedb74efe8cf664ceb750fbff.lean/declarations/unit--0a305fe5632f2a8517b53cfb.md) | 129 | `declaration-track:0a305fe5632f2a8517b53cfbe898803163b2eeeb7dfeefb66fd323c8730f9f42` |
| 15 | `theorem` | [unit_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Clause/Variantf74ec155e599ea8bbfed0c18f4599e11d08c888cedb74efe8cf664ceb750fbff.lean/declarations/unit-eq--b7ee1a9ab380a5c13aa9f702.md) | 132 | `result-track:b7ee1a9ab380a5c13aa9f702fe35a7a3f203073ec99bec6befd339756f2785e1` |
| 16 | `def` | [isUnit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Clause/Variantf74ec155e599ea8bbfed0c18f4599e11d08c888cedb74efe8cf664ceb750fbff.lean/declarations/isunit--f01c525b9ab61e95e760e51e.md) | 135 | `declaration-track:f01c525b9ab61e95e760e51e87f317eb6f12d7f0e24056e646d037dac766e259` |
| 17 | `theorem` | [isUnit_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Clause/Variantf74ec155e599ea8bbfed0c18f4599e11d08c888cedb74efe8cf664ceb750fbff.lean/declarations/isunit-iff--effa5205218beb8138695535.md) | 140 | `result-track:effa5205218beb8138695535f10c06fcae55bca96a34e9502b003c3e9ae5400e` |
| 18 | `def` | [negate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Clause/Variantf74ec155e599ea8bbfed0c18f4599e11d08c888cedb74efe8cf664ceb750fbff.lean/declarations/negate--5bd9a41b396b55dbc9957a9b.md) | 145 | `declaration-track:5bd9a41b396b55dbc9957a9bd472a71c2b01d56e76a339cc50d8cb38f2ba93e9` |
| 19 | `theorem` | [negate_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Clause/Variantf74ec155e599ea8bbfed0c18f4599e11d08c888cedb74efe8cf664ceb750fbff.lean/declarations/negate-eq--5ddae5cd37e1f860b503e1df.md) | 147 | `result-track:5ddae5cd37e1f860b503e1df9c3b5589c5b67a83d9a7780b24b673e16f4e2542` |
| 20 | `def` | [ofArray.folder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Clause/Variantf74ec155e599ea8bbfed0c18f4599e11d08c888cedb74efe8cf664ceb750fbff.lean/declarations/ofarray-folder--153c3e9459e88f8be166bc63.md) | 149 | `declaration-track:153c3e9459e88f8be166bc6345920e69192c0ec2fa0c4adb21148778f75b7538` |
| 21 | `def` | [ofArray](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Clause/Variantf74ec155e599ea8bbfed0c18f4599e11d08c888cedb74efe8cf664ceb750fbff.lean/declarations/ofarray--3119df4bc2c63adfcf0a0fa0.md) | 170 | `declaration-track:3119df4bc2c63adfcf0a0fa081c067b03eca585444c69cffe305b86015df9e4f` |
| 22 | `theorem` | [ofArray.foldl_folder_none_eq_none](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Clause/Variantf74ec155e599ea8bbfed0c18f4599e11d08c888cedb74efe8cf664ceb750fbff.lean/declarations/ofarray-foldl-folder-none-eq-none--9d7a9807577500c309913a29.md) | 179 | `result-track:9d7a9807577500c309913a29e32098632f9c4e8933258c9398ac4bd3e218e8bf` |
| 23 | `theorem` | [ofArray.mem_of_mem_of_foldl_folder_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Clause/Variantf74ec155e599ea8bbfed0c18f4599e11d08c888cedb74efe8cf664ceb750fbff.lean/declarations/ofarray-mem-of-mem-of-foldl-folder-eq-some--6fc2e6079d292034b51a8769.md) | 184 | `result-track:6fc2e6079d292034b51a8769b96478f9ab137bc06445d12475af2c25c08056a5` |
| 24 | `theorem` | [ofArray.folder_foldl_mem_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Clause/Variantf74ec155e599ea8bbfed0c18f4599e11d08c888cedb74efe8cf664ceb750fbff.lean/declarations/ofarray-folder-foldl-mem-of-mem--d20353383e803354237032a6.md) | 191 | `result-track:d20353383e803354237032a6fb070a6b86c2bf32c39576ec0448300b29097f2b` |
| 25 | `def` | [delete](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Clause/Variantf74ec155e599ea8bbfed0c18f4599e11d08c888cedb74efe8cf664ceb750fbff.lean/declarations/delete--580c32bdf6e88e74dfdfa593.md) | 202 | `declaration-track:580c32bdf6e88e74dfdfa5939ee7a3e9d69744dccc7fa2a407a2d38f2b02c62b` |
| 26 | `theorem` | [delete_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Clause/Variantf74ec155e599ea8bbfed0c18f4599e11d08c888cedb74efe8cf664ceb750fbff.lean/declarations/delete-iff--931ad383b487fb44762c2589.md) | 205 | `result-track:931ad383b487fb44762c258941f84114d2899c9c1bdb4111ff4c015d077e36cd` |
| 27 | `def` | [contains](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Clause/Variantf74ec155e599ea8bbfed0c18f4599e11d08c888cedb74efe8cf664ceb750fbff.lean/declarations/contains--ff97bdfbe69a3e7f4dbe11e5.md) | 210 | `declaration-track:ff97bdfbe69a3e7f4dbe11e56df83e10d1b09dd7b25039c3017c38c2791779e7` |
| 28 | `theorem` | [contains_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Clause/Variantf74ec155e599ea8bbfed0c18f4599e11d08c888cedb74efe8cf664ceb750fbff.lean/declarations/contains-iff--a5fd032c89ec44cefd04c691.md) | 212 | `result-track:a5fd032c89ec44cefd04c691797b9cdf34511595b9f2cc0d542739eadaf1baec` |
| 29 | `def` | [reduce_fold_fn](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Clause/Variantf74ec155e599ea8bbfed0c18f4599e11d08c888cedb74efe8cf664ceb750fbff.lean/declarations/reduce-fold-fn--8aee185253c9c7735d44d09c.md) | 216 | `declaration-track:8aee185253c9c7735d44d09ce98320e72158fe9b1ba5dc7b9d0cf89d759af07c` |
| 30 | `def` | [reduce](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Clause/Variantf74ec155e599ea8bbfed0c18f4599e11d08c888cedb74efe8cf664ceb750fbff.lean/declarations/reduce--03f382372960e4bb2de88d0b.md) | 265 | `declaration-track:03f382372960e4bb2de88d0b71105cbedc63d313708cb17ca31d8b20532c0ef9` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Clause/Variantf74ec155e599ea8bbfed0c18f4599e11d08c888cedb74efe8cf664ceb750fbff.lean/declarations/instance--41d4fbbc687c9af8cca2665a.md) | 268 | `declaration-track:41d4fbbc687c9af8cca2665a060a33ff8ce7986862a0cc11ac35e125b3aa6b3c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
