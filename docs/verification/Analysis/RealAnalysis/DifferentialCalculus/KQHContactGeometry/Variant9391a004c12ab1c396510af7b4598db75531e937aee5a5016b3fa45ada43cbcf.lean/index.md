# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.KQHContactGeometry.Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61a6543767c7372be2b9fad21ec83b11dd2975c3",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61a6543767c7372be2b9fad21ec83b11dd2975c3`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Complex.Trigonometric` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Prod` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Determinant.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.NormNum` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Linarith` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Push` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Point](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean/declarations/point--827d834039aad5cfa33fb0d6.md) | 34 | `declaration-track:827d834039aad5cfa33fb0d6be72b04d1005212d2b81794937bdd39118ab042e` |
| 2 | `def` | [flow0](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean/declarations/flow0--3d8a3909ec542fbab7ef64bc.md) | 37 | `declaration-track:3d8a3909ec542fbab7ef64bc9f8db8545fda675aa672615cfade7e9adf434651` |
| 3 | `def` | [flow1](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean/declarations/flow1--a72e891105762d877b51bb55.md) | 40 | `declaration-track:a72e891105762d877b51bb553c9611fc2afd4b7cebb7cda27de67259478878a0` |
| 4 | `def` | [central](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean/declarations/central--7e4b0e4dd502df8073ca0edc.md) | 43 | `declaration-track:7e4b0e4dd502df8073ca0edc35398f7bdd25a40b7a497f353e078785e241f055` |
| 5 | `theorem` | [flow0_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean/declarations/flow0-add--8f3ec55c601f2cc83c06c43f.md) | 45 | `result-track:8f3ec55c601f2cc83c06c43f7de9553070692a738b7fc3b255e09d4f05310e0e` |
| 6 | `theorem` | [flow1_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean/declarations/flow1-add--fa49f31d43c11953c75a7c4d.md) | 48 | `result-track:fa49f31d43c11953c75a7c4d08c27f4e4e6108e4428cca6efa91704dcfa442ff` |
| 7 | `theorem` | [flow0_inverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean/declarations/flow0-inverse--ae9760b539437ffa5574c3af.md) | 51 | `result-track:ae9760b539437ffa5574c3afef0043fe5145c7280c5024660ead4fd646bc8d9a` |
| 8 | `theorem` | [flow1_inverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean/declarations/flow1-inverse--56bf3f1d0dadbf9e663de71b.md) | 54 | `result-track:56bf3f1d0dadbf9e663de71b3f334f0545cf92f241371c4222784eee5054b5df` |
| 9 | `theorem` | [contact_loop](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean/declarations/contact-loop--41aba05650e23ace7102dbbc.md) | 58 | `result-track:41aba05650e23ace7102dbbc985625b5fbc626c145939f7d59b1c9074511e3fa` |
| 10 | `def` | [field0](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean/declarations/field0--913a606b09c26921205ac099.md) | 63 | `declaration-track:913a606b09c26921205ac09919ef939446e182b623b7d09eb67bc62a66102bcd` |
| 11 | `def` | [field1](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean/declarations/field1--63f19781dbb6abf8eab982b0.md) | 66 | `declaration-track:63f19781dbb6abf8eab982b068acc931516a410276c8323978eed8cb6fc7635c` |
| 12 | `theorem` | [flow0_derivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean/declarations/flow0-derivative--715db967ad4d744839948f95.md) | 68 | `result-track:715db967ad4d744839948f95745e3aa9ef8fb88a43084e6c6159b16e7566eec0` |
| 13 | `theorem` | [flow1_derivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean/declarations/flow1-derivative--061668690676684f93876e5e.md) | 75 | `result-track:061668690676684f93876e5edb895bb2a09d989badb5a175396df710e08867f2` |
| 14 | `theorem` | [field0_directional_derivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean/declarations/field0-directional-derivative--c9c9f75ab02e2b69cd979cc0.md) | 83 | `result-track:c9c9f75ab02e2b69cd979cc0d78fdc706e7436cb52032af51323f86e187f1b95` |
| 15 | `theorem` | [field1_directional_derivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean/declarations/field1-directional-derivative--67a3c5a3f8e5eb2e1a116e0b.md) | 89 | `result-track:67a3c5a3f8e5eb2e1a116e0b7654d6a42abaf68bd7d3fda97d07ff45a91b6cf3` |
| 16 | `def` | [bracket](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean/declarations/bracket--71fad7f9751b915353367add.md) | 95 | `declaration-track:71fad7f9751b915353367addf1a887001ba78f7ee5a7c6e5960c0a85315c1cbf` |
| 17 | `theorem` | [contact_bracket](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean/declarations/contact-bracket--930a944a6e6d6f0e0241fa90.md) | 97 | `result-track:930a944a6e6d6f0e0241fa900b64983cbb7ebbafbdd6895b1c56d8dba3dfabbf` |
| 18 | `def` | [segment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean/declarations/segment--3eb8d7da1db41821aee32127.md) | 101 | `declaration-track:3eb8d7da1db41821aee321274ec4448a37621b8ba2af854612b976afe4495e84` |
| 19 | `theorem` | [segment_horizontal](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean/declarations/segment-horizontal--b73d36135c89fe4746c59958.md) | 104 | `result-track:b73d36135c89fe4746c59958460f6a7d3ae4a226058754cf02fc3dc73da5b3a9` |
| 20 | `def` | [endpoint](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean/declarations/endpoint--0a895d5d55614402a7e5376e.md) | 110 | `declaration-track:0a895d5d55614402a7e5376e26a4dd85f3187a19966d9a6dc9d94c229780c194` |
| 21 | `theorem` | [endpoint_formula](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean/declarations/endpoint-formula--dcde4b5eb402c3c4d1ddb404.md) | 114 | `result-track:dcde4b5eb402c3c4d1ddb404f7320c250464af6c79c2a0c9fe03d7fdb63a9f0b` |
| 22 | `def` | [endpointJacobian](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean/declarations/endpointjacobian--e0132e1b6657d5df8e908faf.md) | 123 | `declaration-track:e0132e1b6657d5df8e908faf017b883e5286a432211a197f22aa5a2635428062` |
| 23 | `theorem` | [endpoint_Y_partial1](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean/declarations/endpoint-y-partial1--0fa184191559eab828ce7fbb.md) | 129 | `result-track:0fa184191559eab828ce7fbb9441c26a711b5a65dad0805f683444a264a63c30` |
| 24 | `theorem` | [endpoint_Y_partial2](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean/declarations/endpoint-y-partial2--87ae4091e688606767afbcf9.md) | 139 | `result-track:87ae4091e688606767afbcf99538b17c78e30d26620b87f270ec834f15214865` |
| 25 | `theorem` | [endpoint_Y_partial3](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean/declarations/endpoint-y-partial3--014192a13e3036249aa503bd.md) | 148 | `result-track:014192a13e3036249aa503bd33de8621b8f1839bb9c3778c69e49d05392eb61c` |
| 26 | `theorem` | [endpoint_jacobian_det](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean/declarations/endpoint-jacobian-det--39c2ab4f2279febbd42ce9d3.md) | 157 | `result-track:39c2ab4f2279febbd42ce9d38b947373fefe9173a7713c06fe897aa0259d0c7c` |
| 27 | `theorem` | [endpoint_fiber_moments](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean/declarations/endpoint-fiber-moments--a4f030ae98fd8fbd91b9584c.md) | 165 | `result-track:a4f030ae98fd8fbd91b9584c57e92cc81c0c7e90b13fdc87d3e5a49a6b729c7c` |
| 28 | `theorem` | [centered_residual](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean/declarations/centered-residual--1e4c2e02dfbc6853112b5775.md) | 181 | `result-track:1e4c2e02dfbc6853112b5775b57b3f9ac428f55df63f6c9efe09105f3135afb6` |
| 29 | `theorem` | [centered_residual_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean/declarations/centered-residual-bound--1d2c850604b3b1f0189e2bd5.md) | 186 | `result-track:1d2c850604b3b1f0189e2bd589c83454b52eb5a06a7ec89adbb3018e3d7d6e97` |
| 30 | `def` | [phase](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean/declarations/phase--c478ad44b4496991b0fc7d64.md) | 193 | `declaration-track:c478ad44b4496991b0fc7d646e4cc0f3587c572881d1df475cc34bce86f17c88` |
| 31 | `theorem` | [phase_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean/declarations/phase-add--4fb3bf37e94783381a2b7588.md) | 195 | `result-track:4fb3bf37e94783381a2b75884817f2a34f3d9e939ac8b3c8928b19729ca2d00a` |
| 32 | `theorem` | [phase_norm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean/declarations/phase-norm--4bd978c436248ceaa9c87849.md) | 202 | `result-track:4bd978c436248ceaa9c8784907891a203dcc5ad511ff795d0b5c5c98edbb64e6` |
| 33 | `def` | [U](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean/declarations/u--ad691f471ad3ad76e6a942c6.md) | 206 | `declaration-track:ad691f471ad3ad76e6a942c634c059d6a841f2a3cf832127ab73f87d151bd434` |
| 34 | `def` | [V](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean/declarations/v--e86bd34ccb653234dc46accf.md) | 210 | `declaration-track:e86bd34ccb653234dc46accf3d1b7601cdb0380d1699554e79f56d000fe9a324` |
| 35 | `def` | [centralMode](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean/declarations/centralmode--a857cc2dd1de0862090114bb.md) | 214 | `declaration-track:a857cc2dd1de0862090114bbb4236b1e1c3d2eb643ce0cd598c8777400ad97cc` |
| 36 | `theorem` | [pullback_flow0](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean/declarations/pullback-flow0--575ed659f6cd358519004ca0.md) | 217 | `result-track:575ed659f6cd358519004ca0d1de28b0c62d4faadb528f7b8c5d70913d37f80c` |
| 37 | `theorem` | [pullback_flow1](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean/declarations/pullback-flow1--dc56f83ea2d9eec39841e510.md) | 223 | `result-track:dc56f83ea2d9eec39841e510a979fa15877e86cbc44c6ce3adae4e7a68df6e77` |
| 38 | `theorem` | [fiber_weyl](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean/declarations/fiber-weyl--ca1d908a446aacf8b1158d1a.md) | 229 | `result-track:ca1d908a446aacf8b1158d1a3c8468dc776dc56ca30c6c3306fbe48a4e50fb01` |
| 39 | `theorem` | [U_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean/declarations/u-comp--95d45513cd50a59d039e3748.md) | 234 | `result-track:95d45513cd50a59d039e37482471aa8c8ed56010269c03bb8f68313640300e2a` |
| 40 | `theorem` | [V_comp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean/declarations/v-comp--f0b9e1dde3e6257592e7465b.md) | 239 | `result-track:f0b9e1dde3e6257592e7465b470a6c9dbf0a3d9fe9105c71a25048bf086eebaa` |
| 41 | `theorem` | [U_inverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean/declarations/u-inverse--bb697243cd393dbc3253f7ff.md) | 244 | `result-track:bb697243cd393dbc3253f7ff9a8637a4fdc3e697ed7dd0534ba7880cd45083ed` |
| 42 | `theorem` | [V_inverse](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean/declarations/v-inverse--91ad0c6f400467b608b050ee.md) | 249 | `result-track:91ad0c6f400467b608b050ee78ac37991319be096545c760b4ed32dd5910cbae` |
| 43 | `theorem` | [U_norm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean/declarations/u-norm--d4e0517d2d6b85745f924521.md) | 254 | `result-track:d4e0517d2d6b85745f92452118201fb1cfec92cb1fb8f6b19596ced6c462e5e1` |
| 44 | `theorem` | [V_norm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/KQHContactGeometry/Variant9391a004c12ab1c396510af7b4598db75531e937aee5a5016b3fa45ada43cbcf.lean/declarations/v-norm--690762ece815b0b9b011775a.md) | 258 | `result-track:690762ece815b0b9b011775ac68deb394a9bc39bc07b54928fd5bacd5e649efa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
