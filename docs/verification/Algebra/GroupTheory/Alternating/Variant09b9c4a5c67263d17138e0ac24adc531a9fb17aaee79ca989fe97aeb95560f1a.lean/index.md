# Verification target: GRWTSK.Algebra.GroupTheory.Alternating.Variant09b9c4a5c67263d17138e0ac24adc531a9fb17aaee79ca989fe97aeb95560f1a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0fec68f0f822f0bf9b60b946d0046cdc6f807a44",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Alternating/Variant09b9c4a5c67263d17138e0ac24adc531a9fb17aaee79ca989fe97aeb95560f1a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant09b9c4a5c67263d17138e0ac24adc531a9fb17aaee79ca989fe97aeb95560f1a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant09b9c4a5c67263d17138e0ac24adc531a9fb17aaee79ca989fe97aeb95560f1a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0fec68f0f822f0bf9b60b946d0046cdc6f807a44`.

Source path: `GRWTSK/Algebra/GroupTheory/Alternating/Variant09b9c4a5c67263d17138e0ac24adc531a9fb17aaee79ca989fe97aeb95560f1a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Alternating/Variant09b9c4a5c67263d17138e0ac24adc531a9fb17aaee79ca989fe97aeb95560f1a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.ConjFinite` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Fin` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.Simple` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IntervalCases` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [alternatingGroup](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant09b9c4a5c67263d17138e0ac24adc531a9fb17aaee79ca989fe97aeb95560f1a.lean/declarations/alternatinggroup--7bd0a54d9aefa7acb59a3679.md) | 58 | `declaration-track:7bd0a54d9aefa7acb59a3679f95da0cc045a5004a883abbc0961b701995b31bd` |
| 2 | `instance` | [fta](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant09b9c4a5c67263d17138e0ac24adc531a9fb17aaee79ca989fe97aeb95560f1a.lean/declarations/fta--0a6041067e4f0fc9c36c8703.md) | 63 | `declaration-track:0a6041067e4f0fc9c36c8703da0df48aa16cc82b16749fcc058312020bac43a8` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant09b9c4a5c67263d17138e0ac24adc531a9fb17aaee79ca989fe97aeb95560f1a.lean/declarations/instance--df6496c10ad60f274bd91141.md) | 66 | `declaration-track:df6496c10ad60f274bd91141194f0d63b08cac3abe6e4c58bd7bd03e5e839125` |
| 4 | `theorem` | [alternatingGroup_eq_sign_ker](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant09b9c4a5c67263d17138e0ac24adc531a9fb17aaee79ca989fe97aeb95560f1a.lean/declarations/alternatinggroup-eq-sign-ker--5b17b3cc24c83a6324788617.md) | 71 | `result-track:5b17b3cc24c83a6324788617e8ffb261bb68acdd357f312e5560d87ad492b213` |
| 5 | `theorem` | [mem_alternatingGroup](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant09b9c4a5c67263d17138e0ac24adc531a9fb17aaee79ca989fe97aeb95560f1a.lean/declarations/mem-alternatinggroup--b03e5e54268b32b83f7a4dbb.md) | 78 | `result-track:b03e5e54268b32b83f7a4dbb16f30bcc087a36bcb55a0c835d6d5fef4b40abc5` |
| 6 | `theorem` | [prod_list_swap_mem_alternatingGroup_iff_even_length](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant09b9c4a5c67263d17138e0ac24adc531a9fb17aaee79ca989fe97aeb95560f1a.lean/declarations/prod-list-swap-mem-alternatinggroup-iff-even-length--580948f660d59fa3bb423b93.md) | 82 | `result-track:580948f660d59fa3bb423b93b77e7a9655d04bce162efb267907315caa80c0d8` |
| 7 | `theorem` | [IsThreeCycle.mem_alternatingGroup](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant09b9c4a5c67263d17138e0ac24adc531a9fb17aaee79ca989fe97aeb95560f1a.lean/declarations/isthreecycle-mem-alternatinggroup--f803f34fd13707a4534b84a7.md) | 89 | `result-track:f803f34fd13707a4534b84a7279e529c0321c80bd5fde14b6b627d6e69b410a6` |
| 8 | `theorem` | [finRotate_bit1_mem_alternatingGroup](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant09b9c4a5c67263d17138e0ac24adc531a9fb17aaee79ca989fe97aeb95560f1a.lean/declarations/finrotate-bit1-mem-alternatinggroup--dd8f4221eeb252e3256ddf4b.md) | 95 | `result-track:dd8f4221eeb252e3256ddf4be2704051d25812556b5d0e6884c0d6c6e5d07a0f` |
| 9 | `theorem` | [two_mul_card_alternatingGroup](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant09b9c4a5c67263d17138e0ac24adc531a9fb17aaee79ca989fe97aeb95560f1a.lean/declarations/two-mul-card-alternatinggroup--52350381d1d02c9bff1ecb60.md) | 102 | `result-track:52350381d1d02c9bff1ecb60ac46e4f6ac5931f7975723bbbdf5f36507787885` |
| 10 | `instance` | [normal](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant09b9c4a5c67263d17138e0ac24adc531a9fb17aaee79ca989fe97aeb95560f1a.lean/declarations/normal--dd7042720d1f0a2db2efd6c8.md) | 113 | `declaration-track:dd7042720d1f0a2db2efd6c825845c88889ce03958f2e23242041bb5eaf461f9` |
| 11 | `theorem` | [isConj_of](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant09b9c4a5c67263d17138e0ac24adc531a9fb17aaee79ca989fe97aeb95560f1a.lean/declarations/isconj-of--6a4ab6aff57d0b032d268be2.md) | 117 | `result-track:6a4ab6aff57d0b032d268be2d7ff661b654e419151330bc87cf4e4a4bc3e3ab4` |
| 12 | `theorem` | [isThreeCycle_isConj](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant09b9c4a5c67263d17138e0ac24adc531a9fb17aaee79ca989fe97aeb95560f1a.lean/declarations/isthreecycle-isconj--a599cbdc4dbe8284fb19c65a.md) | 142 | `result-track:a599cbdc4dbe8284fb19c65a6f6eba3040e97948d53f24fff8d895c15b404739` |
| 13 | `theorem` | [closure_three_cycles_eq_alternating](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant09b9c4a5c67263d17138e0ac24adc531a9fb17aaee79ca989fe97aeb95560f1a.lean/declarations/closure-three-cycles-eq-alternating--3f5a6e358045b8bb612fd6cd.md) | 155 | `result-track:3f5a6e358045b8bb612fd6cd6bef15208797a290144ca622487263602c3b1ec7` |
| 14 | `theorem` | [IsThreeCycle.alternating_normalClosure](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant09b9c4a5c67263d17138e0ac24adc531a9fb17aaee79ca989fe97aeb95560f1a.lean/declarations/isthreecycle-alternating-normalclosure--2e661b9f8bf886f66b64ab33.md) | 183 | `result-track:2e661b9f8bf886f66b64ab3346e52d450c0897ac18b50a3fb61da87bff2ac99b` |
| 15 | `theorem` | [isThreeCycle_sq_of_three_mem_cycleType_five](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant09b9c4a5c67263d17138e0ac24adc531a9fb17aaee79ca989fe97aeb95560f1a.lean/declarations/isthreecycle-sq-of-three-mem-cycletype-five--a6799de798f0ced9e34bb46d.md) | 202 | `result-track:a6799de798f0ced9e34bb46d3fa40c55bf8690da2585c0e02a7e344387020e73` |
| 16 | `theorem` | [nontrivial_of_three_le_card](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant09b9c4a5c67263d17138e0ac24adc531a9fb17aaee79ca989fe97aeb95560f1a.lean/declarations/nontrivial-of-three-le-card--aef8b709fbb6d4e1706f02c9.md) | 224 | `result-track:aef8b709fbb6d4e1706f02c977bbca215fbd7613800c6608617d1ec3c7de3ffb` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant09b9c4a5c67263d17138e0ac24adc531a9fb17aaee79ca989fe97aeb95560f1a.lean/declarations/instance--f523b68923ab3fdab1e13345.md) | 232 | `declaration-track:f523b68923ab3fdab1e133452fc06f367c5cfad25d9c39e3f9f81fcf1e71c999` |
| 18 | `theorem` | [normalClosure_finRotate_five](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant09b9c4a5c67263d17138e0ac24adc531a9fb17aaee79ca989fe97aeb95560f1a.lean/declarations/normalclosure-finrotate-five--512b686b654ff8d7095e117c.md) | 240 | `result-track:512b686b654ff8d7095e117c284a621902898386bcafdd691a4fbf029a9b5874` |
| 19 | `theorem` | [normalClosure_swap_mul_swap_five](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant09b9c4a5c67263d17138e0ac24adc531a9fb17aaee79ca989fe97aeb95560f1a.lean/declarations/normalclosure-swap-mul-swap-five--2df82e5bf7455a64f34b81f6.md) | 263 | `result-track:2df82e5bf7455a64f34b81f61caa07a42f8faf30ffa7d93e874e90495f20ee96` |
| 20 | `theorem` | [isConj_swap_mul_swap_of_cycleType_two](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant09b9c4a5c67263d17138e0ac24adc531a9fb17aaee79ca989fe97aeb95560f1a.lean/declarations/isconj-swap-mul-swap-of-cycletype-two--e244c2623323a0b98b229e81.md) | 285 | `result-track:e244c2623323a0b98b229e813abfa394ee930174af43f05fde3248bc79d20829` |
| 21 | `instance` | [isSimpleGroup_five](../../../../../mathematics/Algebra/GroupTheory/Alternating/Variant09b9c4a5c67263d17138e0ac24adc531a9fb17aaee79ca989fe97aeb95560f1a.lean/declarations/issimplegroup-five--a7ae72431b9d902b6aab795d.md) | 316 | `declaration-track:a7ae72431b9d902b6aab795d30df8eeb8b9af964146c7173522b69f5a4d1faed` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
