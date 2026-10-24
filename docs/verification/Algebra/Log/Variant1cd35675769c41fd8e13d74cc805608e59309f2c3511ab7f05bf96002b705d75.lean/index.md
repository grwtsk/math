# Verification target: GRWTSK.Algebra.Log.Variant1cd35675769c41fd8e13d74cc805608e59309f2c3511ab7f05bf96002b705d75

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08a22fbe71400b02c758a6391de70a7b5ff614b9",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Log/Variant1cd35675769c41fd8e13d74cc805608e59309f2c3511ab7f05bf96002b705d75.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Log/Variant1cd35675769c41fd8e13d74cc805608e59309f2c3511ab7f05bf96002b705d75.lean/index.md) · [Full source](../../../../mathematics/Algebra/Log/Variant1cd35675769c41fd8e13d74cc805608e59309f2c3511ab7f05bf96002b705d75.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08a22fbe71400b02c758a6391de70a7b5ff614b9`.

Source path: `GRWTSK/Algebra/Log/Variant1cd35675769c41fd8e13d74cc805608e59309f2c3511ab7f05bf96002b705d75.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Log/Variant1cd35675769c41fd8e13d74cc805608e59309f2c3511ab7f05bf96002b705d75.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [log](../../../../mathematics/Algebra/Log/Variant1cd35675769c41fd8e13d74cc805608e59309f2c3511ab7f05bf96002b705d75.lean/declarations/log--8fe27202d0c59aef5aeef54f.md) | 50 | `declaration-track:8fe27202d0c59aef5aeef54f0869daa6f38ccd07511cc09c36a4974dabcc5b9a` |
| 2 | `theorem` | [coeff_log](../../../../mathematics/Algebra/Log/Variant1cd35675769c41fd8e13d74cc805608e59309f2c3511ab7f05bf96002b705d75.lean/declarations/coeff-log--3f6fa17a5e05209dc7e87ac7.md) | 56 | `result-track:3f6fa17a5e05209dc7e87ac76264d65fc2bfc4f2d18fb35e4ad61d59dc6d900c` |
| 3 | `theorem` | [constantCoeff_log](../../../../mathematics/Algebra/Log/Variant1cd35675769c41fd8e13d74cc805608e59309f2c3511ab7f05bf96002b705d75.lean/declarations/constantcoeff-log--281efb43281833d01f6046a5.md) | 61 | `result-track:281efb43281833d01f6046a5264d9f123ca229c86855471e344e59abcfe7d4b5` |
| 4 | `theorem` | [map_log](../../../../mathematics/Algebra/Log/Variant1cd35675769c41fd8e13d74cc805608e59309f2c3511ab7f05bf96002b705d75.lean/declarations/map-log--e2bef8a9134a9bc30dcbddd4.md) | 65 | `result-track:e2bef8a9134a9bc30dcbddd4acc221f6b6b1de2f69bdc1fa19227e5465cb368b` |
| 5 | `theorem` | [coeff_one_log](../../../../mathematics/Algebra/Log/Variant1cd35675769c41fd8e13d74cc805608e59309f2c3511ab7f05bf96002b705d75.lean/declarations/coeff-one-log--2c108e25e8fa5705965c5984.md) | 69 | `result-track:2c108e25e8fa5705965c598489b83caf5629c628b66fc49a88480c5dceaab272` |
| 6 | `theorem` | [order_log](../../../../mathematics/Algebra/Log/Variant1cd35675769c41fd8e13d74cc805608e59309f2c3511ab7f05bf96002b705d75.lean/declarations/order-log--29853e8a8acc1579c21b9d89.md) | 71 | `result-track:29853e8a8acc1579c21b9d89e13df428b67a3bc4610da34cf5cfeaeba454e71b` |
| 7 | `theorem` | [derivative_log](../../../../mathematics/Algebra/Log/Variant1cd35675769c41fd8e13d74cc805608e59309f2c3511ab7f05bf96002b705d75.lean/declarations/derivative-log--05c0d3841e7bd0dd90cf93f1.md) | 75 | `result-track:05c0d3841e7bd0dd90cf93f1162e927a69c0d8bd28b1e1917488a35990a47b01` |
| 8 | `theorem` | [derivative_log_mul_one_add_X](../../../../mathematics/Algebra/Log/Variant1cd35675769c41fd8e13d74cc805608e59309f2c3511ab7f05bf96002b705d75.lean/declarations/derivative-log-mul-one-add-x--e97d16fddb2690b7584982ff.md) | 84 | `result-track:e97d16fddb2690b7584982ff331138258c5147bb5a0b39fc854ba2b7dfbea146` |
| 9 | `theorem` | [HasSubst.log](../../../../mathematics/Algebra/Log/Variant1cd35675769c41fd8e13d74cc805608e59309f2c3511ab7f05bf96002b705d75.lean/declarations/hassubst-log--fda810eabc8dee68d1444ddd.md) | 89 | `result-track:fda810eabc8dee68d1444dddf37b6d8fb808f4767738cd78730d9fae0b75c376` |
| 10 | `theorem` | [HasSubst.exp_sub_one](../../../../mathematics/Algebra/Log/Variant1cd35675769c41fd8e13d74cc805608e59309f2c3511ab7f05bf96002b705d75.lean/declarations/hassubst-exp-sub-one--90ac54f6e3ef096b5d0d0460.md) | 92 | `result-track:90ac54f6e3ef096b5d0d0460657dc04e6e72fbb7dcf0f094c99847cd871fd35c` |
| 11 | `def` | [logOf](../../../../mathematics/Algebra/Log/Variant1cd35675769c41fd8e13d74cc805608e59309f2c3511ab7f05bf96002b705d75.lean/declarations/logof--74ea6c3ccfc70cb58badefb8.md) | 96 | `declaration-track:74ea6c3ccfc70cb58badefb8a895eab508bc381e6412546dcef852422dca883b` |
| 12 | `theorem` | [logOf_eq](../../../../mathematics/Algebra/Log/Variant1cd35675769c41fd8e13d74cc805608e59309f2c3511ab7f05bf96002b705d75.lean/declarations/logof-eq--e13a626e4bd29aa9916cfdf1.md) | 99 | `result-track:e13a626e4bd29aa9916cfdf1f348f35607ada13c999dcf5e91bb9ab00cae1831` |
| 13 | `theorem` | [constantCoeff_logOf](../../../../mathematics/Algebra/Log/Variant1cd35675769c41fd8e13d74cc805608e59309f2c3511ab7f05bf96002b705d75.lean/declarations/constantcoeff-logof--c2a4687019bc1fec4dbe62b1.md) | 101 | `result-track:c2a4687019bc1fec4dbe62b18703be3cc7b60f8c2e50ddc5bab542919b31ddc8` |
| 14 | `theorem` | [logOf_one_add_X](../../../../mathematics/Algebra/Log/Variant1cd35675769c41fd8e13d74cc805608e59309f2c3511ab7f05bf96002b705d75.lean/declarations/logof-one-add-x--e2051c99509d94fcd39ae1a5.md) | 110 | `result-track:e2051c99509d94fcd39ae1a56db87b675ab0441afcc7d25a9187e467b6af1679` |
| 15 | `theorem` | [eq_of_derivative_mul_one_add_X_eq_self](../../../../mathematics/Algebra/Log/Variant1cd35675769c41fd8e13d74cc805608e59309f2c3511ab7f05bf96002b705d75.lean/declarations/eq-of-derivative-mul-one-add-x-eq-self--70e3d31cfdff5264cf6bd8ec.md) | 116 | `result-track:70e3d31cfdff5264cf6bd8ecb7385c5657d461b97ab661ae71fe8d09b1150e94` |
| 16 | `theorem` | [subst_exp_log](../../../../mathematics/Algebra/Log/Variant1cd35675769c41fd8e13d74cc805608e59309f2c3511ab7f05bf96002b705d75.lean/declarations/subst-exp-log--19c2b831c322ccce352f4583.md) | 136 | `result-track:19c2b831c322ccce352f4583731793ea92e097cfff89d987f4dbd383e5974d1a` |
| 17 | `theorem` | [subst_log_exp_sub_one](../../../../mathematics/Algebra/Log/Variant1cd35675769c41fd8e13d74cc805608e59309f2c3511ab7f05bf96002b705d75.lean/declarations/subst-log-exp-sub-one--8a07ba571cf582001d61071e.md) | 148 | `result-track:8a07ba571cf582001d61071e91b5c7897b4475559d1f011bc15d0ffe99ea049e` |
| 18 | `theorem` | [logOf_exp](../../../../mathematics/Algebra/Log/Variant1cd35675769c41fd8e13d74cc805608e59309f2c3511ab7f05bf96002b705d75.lean/declarations/logof-exp--03e85f4d903a59ea057b5cd1.md) | 158 | `result-track:03e85f4d903a59ea057b5cd16b0a5591e5391da60db5c2238ae8ed6f3179c189` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
