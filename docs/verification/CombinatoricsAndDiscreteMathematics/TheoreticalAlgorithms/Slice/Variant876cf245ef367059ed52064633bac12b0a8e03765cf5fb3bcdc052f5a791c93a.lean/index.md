# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Slice.Variant876cf245ef367059ed52064633bac12b0a8e03765cf5fb3bcdc052f5a791c93a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "abe4e9b0c778700d3ae792f1253d49dc1b1396e6",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variant876cf245ef367059ed52064633bac12b0a8e03765cf5fb3bcdc052f5a791c93a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variant876cf245ef367059ed52064633bac12b0a8e03765cf5fb3bcdc052f5a791c93a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variant876cf245ef367059ed52064633bac12b0a8e03765cf5fb3bcdc052f5a791c93a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `abe4e9b0c778700d3ae792f1253d49dc1b1396e6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variant876cf245ef367059ed52064633bac12b0a8e03765cf5fb3bcdc052f5a791c93a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variant876cf245ef367059ed52064633bac12b0a8e03765cf5fb3bcdc052f5a791c93a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Lemmas.Pattern.Memcmp` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.ByteArray.Lemmas` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.IsEmpty` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.FindPos` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [beq_eq_true_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variant876cf245ef367059ed52064633bac12b0a8e03765cf5fb3bcdc052f5a791c93a.lean/declarations/beq-eq-true-iff--efc9a49584bf479f3c174697.md) | 24 | `result-track:efc9a49584bf479f3c174697f79c73d4c2da392cc448b5a53f147c9099f0cc9f` |
| 2 | `theorem` | [beq_eq_false_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variant876cf245ef367059ed52064633bac12b0a8e03765cf5fb3bcdc052f5a791c93a.lean/declarations/beq-eq-false-iff--2b93c3000ee8ad16381cf31d.md) | 35 | `result-track:2b93c3000ee8ad16381cf31dff04ee761bee7bd2f1e15ea5f00cd24fcd4c5089` |
| 3 | `theorem` | [beq_eq_decide](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variant876cf245ef367059ed52064633bac12b0a8e03765cf5fb3bcdc052f5a791c93a.lean/declarations/beq-eq-decide--59e71057d4644a39fe5e56d7.md) | 38 | `result-track:59e71057d4644a39fe5e56d7d31b5ce2e7da09d194a4d38010348b471594aea8` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variant876cf245ef367059ed52064633bac12b0a8e03765cf5fb3bcdc052f5a791c93a.lean/declarations/instance--8c826718703c725c540ce91b.md) | 41 | `declaration-track:8c826718703c725c540ce91b0cf435f34012f3b96ef228b697bc97a7de56a094` |
| 5 | `theorem` | [beq_list_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variant876cf245ef367059ed52064633bac12b0a8e03765cf5fb3bcdc052f5a791c93a.lean/declarations/beq-list-iff--d528f6d98c9dcb5c65a60195.md) | 44 | `result-track:d528f6d98c9dcb5c65a601959990ebea06b59cccbc8146a597338f682332d5ed` |
| 6 | `theorem` | [beq_list_eq_false_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variant876cf245ef367059ed52064633bac12b0a8e03765cf5fb3bcdc052f5a791c93a.lean/declarations/beq-list-eq-false-iff--9fe02596783c3da6be8c6460.md) | 47 | `result-track:9fe02596783c3da6be8c64609c695bb6053b7d180ead9f85d5c60805297d0a49` |
| 7 | `theorem` | [beq_list_eq_decide](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variant876cf245ef367059ed52064633bac12b0a8e03765cf5fb3bcdc052f5a791c93a.lean/declarations/beq-list-eq-decide--745625b2362f9997cbd803ed.md) | 51 | `result-track:745625b2362f9997cbd803edb6d72454ca11d8b293129202b3d2844866314440` |
| 8 | `theorem` | [get?_eq_dif](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variant876cf245ef367059ed52064633bac12b0a8e03765cf5fb3bcdc052f5a791c93a.lean/declarations/get-eq-dif--b0278684409e6ea74b825bd5.md) | 59 | `result-track:b0278684409e6ea74b825bd5b6d191c80c87caf35625a37d428ec6154af88546` |
| 9 | `theorem` | [get?_eq_some_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variant876cf245ef367059ed52064633bac12b0a8e03765cf5fb3bcdc052f5a791c93a.lean/declarations/get-eq-some-get--3a6e19fab56acb622ed77b74.md) | 62 | `result-track:3a6e19fab56acb622ed77b74712862297404b89c3cb0e85fa8f09366d629876b` |
| 10 | `theorem` | [get?_eq_none_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variant876cf245ef367059ed52064633bac12b0a8e03765cf5fb3bcdc052f5a791c93a.lean/declarations/get-eq-none-iff--7cb3481e852e5963bedb35c6.md) | 66 | `result-track:7cb3481e852e5963bedb35c6e851e90b1db51058a3bc69f0a91cb5db48b14e2f` |
| 11 | `theorem` | [get?_eq_none](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variant876cf245ef367059ed52064633bac12b0a8e03765cf5fb3bcdc052f5a791c93a.lean/declarations/get-eq-none--e6474b72f4a05cd204bbbce1.md) | 69 | `result-track:e6474b72f4a05cd204bbbce138447f4956a5264639e7b17de93eac689b2dc84f` |
| 12 | `theorem` | [get?_endPos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variant876cf245ef367059ed52064633bac12b0a8e03765cf5fb3bcdc052f5a791c93a.lean/declarations/get-endpos--0ad0269d8531eb088d6c85f1.md) | 73 | `result-track:0ad0269d8531eb088d6c85f129fb503aacd56c298f7f72fab2e19168443e6f04` |
| 13 | `theorem` | [get?_toSlice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variant876cf245ef367059ed52064633bac12b0a8e03765cf5fb3bcdc052f5a791c93a.lean/declarations/get-toslice--43b8045c54d8bd1ae393062a.md) | 82 | `result-track:43b8045c54d8bd1ae393062a8dbabce37a85e4e5ef73f0ece3038dd95694a689` |
| 14 | `theorem` | [get?_eq_dif](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variant876cf245ef367059ed52064633bac12b0a8e03765cf5fb3bcdc052f5a791c93a.lean/declarations/get-eq-dif--e2296418c9306fc43d6d99c6.md) | 85 | `result-track:e2296418c9306fc43d6d99c6fa8967571ffdd42277e3ab6db52c4367d7d0e21f` |
| 15 | `theorem` | [get?_eq_some_get](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variant876cf245ef367059ed52064633bac12b0a8e03765cf5fb3bcdc052f5a791c93a.lean/declarations/get-eq-some-get--298204db98516be72dc7e7e2.md) | 88 | `result-track:298204db98516be72dc7e7e2f432fb4422f70dc7d2429514b7ec11876f553dac` |
| 16 | `theorem` | [get?_eq_none_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variant876cf245ef367059ed52064633bac12b0a8e03765cf5fb3bcdc052f5a791c93a.lean/declarations/get-eq-none-iff--2d6c62ac32858edee00e2118.md) | 92 | `result-track:2d6c62ac32858edee00e211883ea10ccc68e3add10ebdc34bfe2a71e384f3e0b` |
| 17 | `theorem` | [get?_eq_none](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variant876cf245ef367059ed52064633bac12b0a8e03765cf5fb3bcdc052f5a791c93a.lean/declarations/get-eq-none--4ec163de78221ba5933e910a.md) | 95 | `result-track:4ec163de78221ba5933e910a1f398f5f7045451dcd2e78b7a4a8164d89805c9e` |
| 18 | `theorem` | [get?_endPos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variant876cf245ef367059ed52064633bac12b0a8e03765cf5fb3bcdc052f5a791c93a.lean/declarations/get-endpos--f2d0b65bc745e9dc9d4f5043.md) | 99 | `result-track:f2d0b65bc745e9dc9d4f50439791995a2950e06d6be9bad5784af47bae6ca6eb` |
| 19 | `theorem` | [front?_eq_get?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variant876cf245ef367059ed52064633bac12b0a8e03765cf5fb3bcdc052f5a791c93a.lean/declarations/front-eq-get--733e5e89f34a2ce189c632f6.md) | 106 | `result-track:733e5e89f34a2ce189c632f6dbb0b701cdbd0a59ad19096fcacb802659b7a4c6` |
| 20 | `theorem` | [front?_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variant876cf245ef367059ed52064633bac12b0a8e03765cf5fb3bcdc052f5a791c93a.lean/declarations/front-eq--42b6731de49a1cced28e1ed8.md) | 109 | `result-track:42b6731de49a1cced28e1ed8ac3a007acc3a62566944330c0d94373e54f1d57f` |
| 21 | `theorem` | [front_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variant876cf245ef367059ed52064633bac12b0a8e03765cf5fb3bcdc052f5a791c93a.lean/declarations/front-eq--991d4d7795583548812eede5.md) | 118 | `result-track:991d4d7795583548812eede59534c00d7a1e90048f81abb84a6d933dba22ef45` |
| 22 | `theorem` | [back?_eq_get?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variant876cf245ef367059ed52064633bac12b0a8e03765cf5fb3bcdc052f5a791c93a.lean/declarations/back-eq-get--83088e3d0d49fe3ba27cd591.md) | 121 | `result-track:83088e3d0d49fe3ba27cd5914b04f563e2e7c31ef3bc6b6382adcb66baf7ff44` |
| 23 | `theorem` | [back?_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variant876cf245ef367059ed52064633bac12b0a8e03765cf5fb3bcdc052f5a791c93a.lean/declarations/back-eq--cd6d39f4611f8edf5570f038.md) | 124 | `result-track:cd6d39f4611f8edf5570f038712e4f51d1b5e0f9bf0d11e2133c1136cedde0ff` |
| 24 | `theorem` | [back_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Slice/Variant876cf245ef367059ed52064633bac12b0a8e03765cf5fb3bcdc052f5a791c93a.lean/declarations/back-eq--32a79465d20e74a14a7c8dbe.md) | 133 | `result-track:32a79465d20e74a14a7c8dbed033bfe3dc7ca5a22923d51ea6469c18456e375c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
