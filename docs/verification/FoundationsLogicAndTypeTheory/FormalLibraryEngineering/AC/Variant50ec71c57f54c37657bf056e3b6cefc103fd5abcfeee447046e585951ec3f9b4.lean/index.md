# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AC.Variant50ec71c57f54c37657bf056e3b6cefc103fd5abcfeee447046e585951ec3f9b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d68f645f39eb54676fe35ddcd7df853d73b0ca6",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant50ec71c57f54c37657bf056e3b6cefc103fd5abcfeee447046e585951ec3f9b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant50ec71c57f54c37657bf056e3b6cefc103fd5abcfeee447046e585951ec3f9b4.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant50ec71c57f54c37657bf056e3b6cefc103fd5abcfeee447046e585951ec3f9b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d68f645f39eb54676fe35ddcd7df853d73b0ca6`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant50ec71c57f54c37657bf056e3b6cefc103fd5abcfeee447046e585951ec3f9b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant50ec71c57f54c37657bf056e3b6cefc103fd5abcfeee447046e585951ec3f9b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 11; external provider; requires a separately pinned dependency.
- `Init.PropLemmas` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Expr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant50ec71c57f54c37657bf056e3b6cefc103fd5abcfeee447046e585951ec3f9b4.lean/declarations/expr--d850b5c88d545ecb93c4ec59.md) | 17 | `declaration-track:d850b5c88d545ecb93c4ec594c42a40339e3e19b93d0559bebc5100ca2da25ae` |
| 2 | `structure` | [Variable](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant50ec71c57f54c37657bf056e3b6cefc103fd5abcfeee447046e585951ec3f9b4.lean/declarations/variable--3ec6e7ae0f7b99ce0fd7fce5.md) | 24 | `declaration-track:3ec6e7ae0f7b99ce0fd7fce5de651cdb8bc28cd09242c33f5fb717652dfea074` |
| 3 | `structure` | [Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant50ec71c57f54c37657bf056e3b6cefc103fd5abcfeee447046e585951ec3f9b4.lean/declarations/context--9d1f47c67b625ac3a45e0888.md) | 28 | `declaration-track:9d1f47c67b625ac3a45e0888fa16d8c9f35ae8f13a9e714cd92de82a05092a9d` |
| 4 | `class` | [ContextInformation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant50ec71c57f54c37657bf056e3b6cefc103fd5abcfeee447046e585951ec3f9b4.lean/declarations/contextinformation--5ac40485d657d902dff99f7b.md) | 36 | `declaration-track:5ac40485d657d902dff99f7b83b9af9382b10a673c3f7b211b366e67a7ad1721` |
| 5 | `class` | [EvalInformation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant50ec71c57f54c37657bf056e3b6cefc103fd5abcfeee447046e585951ec3f9b4.lean/declarations/evalinformation--aade202f983fa5e4488fb0a6.md) | 41 | `declaration-track:aade202f983fa5e4488fb0a6701143680afb8905cb78ed29ffbdc8095d4d55cc` |
| 6 | `def` | [Context.var](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant50ec71c57f54c37657bf056e3b6cefc103fd5abcfeee447046e585951ec3f9b4.lean/declarations/context-var--686a4a2457afac8b6d5fce4b.md) | 46 | `declaration-track:686a4a2457afac8b6d5fce4b238096b8e9dee59449dfafb7deba6a0b76182988` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant50ec71c57f54c37657bf056e3b6cefc103fd5abcfeee447046e585951ec3f9b4.lean/declarations/instance--66a7923e5fbd378769c750ac.md) | 49 | `declaration-track:66a7923e5fbd378769c750ac5a0aaff529150529426f70131f70a2c7a79f8767` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant50ec71c57f54c37657bf056e3b6cefc103fd5abcfeee447046e585951ec3f9b4.lean/declarations/instance--6ec0d46c4ddb463bad72ca99.md) | 54 | `declaration-track:6ec0d46c4ddb463bad72ca99acb588f0f4d3eaa6ecd7eaba5cb073fc1f95d861` |
| 9 | `def` | [eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant50ec71c57f54c37657bf056e3b6cefc103fd5abcfeee447046e585951ec3f9b4.lean/declarations/eval--3c802f563a5dd70200799877.md) | 59 | `declaration-track:3c802f563a5dd702007998775c24cc1f2a104b55985eb9519d55da33e00ed90a` |
| 10 | `def` | [Expr.toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant50ec71c57f54c37657bf056e3b6cefc103fd5abcfeee447046e585951ec3f9b4.lean/declarations/expr-tolist--3d7e424c0e003843c79e18c5.md) | 63 | `declaration-track:3d7e424c0e003843c79e18c579b960b6292270a5637743199dc530a3bdd1c5a7` |
| 11 | `def` | [evalList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant50ec71c57f54c37657bf056e3b6cefc103fd5abcfeee447046e585951ec3f9b4.lean/declarations/evallist--5db5d8d933e63593bf331e4a.md) | 67 | `declaration-track:5db5d8d933e63593bf331e4a9d2801ec18c015620608e3f650a059aab0fd1752` |
| 12 | `def` | [insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant50ec71c57f54c37657bf056e3b6cefc103fd5abcfeee447046e585951ec3f9b4.lean/declarations/insert--be3e0579e57c3cca256b8bc6.md) | 72 | `declaration-track:be3e0579e57c3cca256b8bc6bca73939f71f4bc6619c581dc426ce20a76704d9` |
| 13 | `def` | [sort](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant50ec71c57f54c37657bf056e3b6cefc103fd5abcfeee447046e585951ec3f9b4.lean/declarations/sort--32389aab56e2c9a4847c809a.md) | 76 | `declaration-track:32389aab56e2c9a4847c809a8c5e06a2908866c5dadbf3b4f507ea44a13ca448` |
| 14 | `def` | [mergeIdem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant50ec71c57f54c37657bf056e3b6cefc103fd5abcfeee447046e585951ec3f9b4.lean/declarations/mergeidem--e584f6253a5f049886f7bf9b.md) | 82 | `declaration-track:e584f6253a5f049886f7bf9beaf4d5c2edea59cd9c8a3b32e22acf0746ceb329` |
| 15 | `def` | [removeNeutrals](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant50ec71c57f54c37657bf056e3b6cefc103fd5abcfeee447046e585951ec3f9b4.lean/declarations/removeneutrals--9ac0af789b8de5d9a2efe15d.md) | 95 | `declaration-track:9ac0af789b8de5d9a2efe15d8680b80c45add61d90bcaf04f3b6c61e8610816e` |
| 16 | `def` | [norm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant50ec71c57f54c37657bf056e3b6cefc103fd5abcfeee447046e585951ec3f9b4.lean/declarations/norm--10dc8181c9b4b5a592fc97d5.md) | 108 | `declaration-track:10dc8181c9b4b5a592fc97d59bc98c3c2f668c94818449eb3c9cb2d95fe670cf` |
| 17 | `def` | [List.two_step_induction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant50ec71c57f54c37657bf056e3b6cefc103fd5abcfeee447046e585951ec3f9b4.lean/declarations/list-two-step-induction--a7dec8a6dbed2f44c359e49c.md) | 114 | `declaration-track:a7dec8a6dbed2f44c359e49caf26499c80a35fbcbbbd2137a8e77369825d3489` |
| 18 | `theorem` | [Context.mergeIdem_nonEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant50ec71c57f54c37657bf056e3b6cefc103fd5abcfeee447046e585951ec3f9b4.lean/declarations/context-mergeidem-nonempty--c97bcb4495ec9ae1e696c770.md) | 125 | `result-track:c97bcb4495ec9ae1e696c7700b6ac3cd93d740d4a3a07fcf5e488eaff1ab8590` |
| 19 | `theorem` | [Context.mergeIdem_head](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant50ec71c57f54c37657bf056e3b6cefc103fd5abcfeee447046e585951ec3f9b4.lean/declarations/context-mergeidem-head--1beda5c5fb7ec42f6cc47668.md) | 131 | `result-track:1beda5c5fb7ec42f6cc476687c356dec947a7b934464ae9e918e2b6b2c3bb0b2` |
| 20 | `theorem` | [Context.mergeIdem_head2](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant50ec71c57f54c37657bf056e3b6cefc103fd5abcfeee447046e585951ec3f9b4.lean/declarations/context-mergeidem-head2--17c4ccedc403380e073a4375.md) | 134 | `result-track:17c4ccedc403380e073a4375c33e73e6050bb0b6d99f0fc64fb89e22b12c1bad` |
| 21 | `theorem` | [Context.evalList_mergeIdem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant50ec71c57f54c37657bf056e3b6cefc103fd5abcfeee447046e585951ec3f9b4.lean/declarations/context-evallist-mergeidem--a3e25ca366c4ee896888dd4e.md) | 137 | `result-track:a3e25ca366c4ee896888dd4e16ecee52dd2892e9e444b80a52349c3629e46b13` |
| 22 | `theorem` | [insert_nonEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant50ec71c57f54c37657bf056e3b6cefc103fd5abcfeee447046e585951ec3f9b4.lean/declarations/insert-nonempty--a799f877e26a3e592457a263.md) | 174 | `result-track:a799f877e26a3e592457a263b70b55882846e46f9c03f8ce769475ba9c1bd244` |
| 23 | `theorem` | [Context.sort_loop_nonEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant50ec71c57f54c37657bf056e3b6cefc103fd5abcfeee447046e585951ec3f9b4.lean/declarations/context-sort-loop-nonempty--c0bf7d97687fff75c562f254.md) | 179 | `result-track:c0bf7d97687fff75c562f25451c42b4c43deffc7cc5e1a7d451523bccf34124f` |
| 24 | `theorem` | [Context.evalList_insert](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant50ec71c57f54c37657bf056e3b6cefc103fd5abcfeee447046e585951ec3f9b4.lean/declarations/context-evallist-insert--908f78d0065dbb0aa717f916.md) | 184 | `result-track:908f78d0065dbb0aa717f916ed6c2e97af557625f1dc56d480acf1b48f8f551b` |
| 25 | `theorem` | [Context.evalList_sort_congr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant50ec71c57f54c37657bf056e3b6cefc103fd5abcfeee447046e585951ec3f9b4.lean/declarations/context-evallist-sort-congr--9977f58604d3b1f448eb8a80.md) | 205 | `result-track:9977f58604d3b1f448eb8a80c1e31f9ee41169130dc0a52dc6d5db8a9ee0bc2b` |
| 26 | `theorem` | [Context.evalList_sort_loop_swap](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant50ec71c57f54c37657bf056e3b6cefc103fd5abcfeee447046e585951ec3f9b4.lean/declarations/context-evallist-sort-loop-swap--4d6cf0ba17a612d30d03650b.md) | 224 | `result-track:4d6cf0ba17a612d30d03650be718fe1e98addb4b9708d459baae1efe1e76b953` |
| 27 | `theorem` | [Context.evalList_sort_cons](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant50ec71c57f54c37657bf056e3b6cefc103fd5abcfeee447046e585951ec3f9b4.lean/declarations/context-evallist-sort-cons--3b9cde779d16ce46bcbdd366.md) | 239 | `result-track:3b9cde779d16ce46bcbdd3661d1a4a1c4150151114044520ead50b0c7c78aa86` |
| 28 | `theorem` | [Context.evalList_sort](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant50ec71c57f54c37657bf056e3b6cefc103fd5abcfeee447046e585951ec3f9b4.lean/declarations/context-evallist-sort--c5c9c77614584138c798a7eb.md) | 263 | `result-track:c5c9c77614584138c798a7eb8ec5824987f85b68240afe7df5532494de79b5a6` |
| 29 | `theorem` | [Context.toList_nonEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant50ec71c57f54c37657bf056e3b6cefc103fd5abcfeee447046e585951ec3f9b4.lean/declarations/context-tolist-nonempty--064c84ccfc04aad73729ffc5.md) | 281 | `result-track:064c84ccfc04aad73729ffc5a7f9b840771c68dcf22124db98856895b3b7f7cf` |
| 30 | `theorem` | [Context.unwrap_isNeutral](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant50ec71c57f54c37657bf056e3b6cefc103fd5abcfeee447046e585951ec3f9b4.lean/declarations/context-unwrap-isneutral--273142d2a7a23fe68a6e2734.md) | 290 | `result-track:273142d2a7a23fe68a6e273478c78ea6cc1e16493ebc2b5ff9cf9e545eab2efb` |
| 31 | `theorem` | [Context.evalList_removeNeutrals](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant50ec71c57f54c37657bf056e3b6cefc103fd5abcfeee447046e585951ec3f9b4.lean/declarations/context-evallist-removeneutrals--ce9df2bcdb612e3466a2b441.md) | 301 | `result-track:ce9df2bcdb612e3466a2b44107de00fc0157556c7f520ad52d1092022443b36f` |
| 32 | `theorem` | [Context.evalList_append](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant50ec71c57f54c37657bf056e3b6cefc103fd5abcfeee447046e585951ec3f9b4.lean/declarations/context-evallist-append--acc9efe39cc0c93f7ae7a0ed.md) | 316 | `result-track:acc9efe39cc0c93f7ae7a0edd04b58f18ab06fbe78bd66cbdcebbb608816512d` |
| 33 | `theorem` | [Context.eval_toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant50ec71c57f54c37657bf056e3b6cefc103fd5abcfeee447046e585951ec3f9b4.lean/declarations/context-eval-tolist--673f5b8f4fc9c05b1b2debc7.md) | 330 | `result-track:673f5b8f4fc9c05b1b2debc74681d11d81eff0e800e0ef2c5d475323f6a17cc6` |
| 34 | `theorem` | [Context.eval_norm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant50ec71c57f54c37657bf056e3b6cefc103fd5abcfeee447046e585951ec3f9b4.lean/declarations/context-eval-norm--436f68be55c998e56f6170b1.md) | 337 | `result-track:436f68be55c998e56f6170b16ff4999eeab0b1220bf79ada571af90ee91e0733` |
| 35 | `theorem` | [Context.eq_of_norm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AC/Variant50ec71c57f54c37657bf056e3b6cefc103fd5abcfeee447046e585951ec3f9b4.lean/declarations/context-eq-of-norm--c0338c16aa28008f833e4589.md) | 342 | `result-track:c0338c16aa28008f833e4589d12d6b533c6dadbc13b30ca466372e6ea2e100fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
