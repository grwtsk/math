# Verification target: GRWTSK.Algebra.GroupTheory.MulOpposite.Variante0b3fdba158bb2a85015966e5e23008cc5ac2107fcba71fcff29eaed67763432

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "470f5ad6b7acc46b48fad8222c28a3e60503fd36",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/MulOpposite/Variante0b3fdba158bb2a85015966e5e23008cc5ac2107fcba71fcff29eaed67763432.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variante0b3fdba158bb2a85015966e5e23008cc5ac2107fcba71fcff29eaed67763432.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variante0b3fdba158bb2a85015966e5e23008cc5ac2107fcba71fcff29eaed67763432.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `470f5ad6b7acc46b48fad8222c28a3e60503fd36`.

Source path: `GRWTSK/Algebra/GroupTheory/MulOpposite/Variante0b3fdba158bb2a85015966e5e23008cc5ac2107fcba71fcff29eaed67763432.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/MulOpposite/Variante0b3fdba158bb2a85015966e5e23008cc5ac2107fcba71fcff29eaed67763432.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Opposite` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [op](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variante0b3fdba158bb2a85015966e5e23008cc5ac2107fcba71fcff29eaed67763432.lean/declarations/op--7419f239d8831877a164f31c.md) | 25 | `declaration-track:7419f239d8831877a164f31c433ca563c8524ae610947b43290c3d6b14ac7a6f` |
| 2 | `theorem` | [mem_op](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variante0b3fdba158bb2a85015966e5e23008cc5ac2107fcba71fcff29eaed67763432.lean/declarations/mem-op--bb3956c945d7885fd1c58fad.md) | 31 | `result-track:bb3956c945d7885fd1c58fad1dd64602f3c086eeba4e8b0bcbd2d8f5c4ef1fd0` |
| 3 | `def` | [unop](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variante0b3fdba158bb2a85015966e5e23008cc5ac2107fcba71fcff29eaed67763432.lean/declarations/unop--f56099687654c98eb063f061.md) | 36 | `declaration-track:f56099687654c98eb063f061b3e2ca589437cb060706570efe103a95b703c1f1` |
| 4 | `theorem` | [mem_unop](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variante0b3fdba158bb2a85015966e5e23008cc5ac2107fcba71fcff29eaed67763432.lean/declarations/mem-unop--dcac0c15d57cb3622332e03e.md) | 42 | `result-track:dcac0c15d57cb3622332e03ef66124faa188f8aa9ba2ac977ef3f4ae1b20190d` |
| 5 | `theorem` | [unop_op](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variante0b3fdba158bb2a85015966e5e23008cc5ac2107fcba71fcff29eaed67763432.lean/declarations/unop-op--669940cef2bf7ae726cc1513.md) | 45 | `result-track:669940cef2bf7ae726cc1513d28bcfc50a6dbb3376a61973a20f4e396981e0ae` |
| 6 | `theorem` | [op_unop](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variante0b3fdba158bb2a85015966e5e23008cc5ac2107fcba71fcff29eaed67763432.lean/declarations/op-unop--6f89c393511741a5872ba914.md) | 48 | `result-track:6f89c393511741a5872ba914462df8d888d60ed888d1d4e56cf5370d1f96afe5` |
| 7 | `theorem` | [op_le_iff](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variante0b3fdba158bb2a85015966e5e23008cc5ac2107fcba71fcff29eaed67763432.lean/declarations/op-le-iff--daa55e1d2f2dbe7404ee4a7f.md) | 53 | `result-track:daa55e1d2f2dbe7404ee4a7ffa19815ac6c6d32344b55c56ca966be135ef8eff` |
| 8 | `theorem` | [le_op_iff](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variante0b3fdba158bb2a85015966e5e23008cc5ac2107fcba71fcff29eaed67763432.lean/declarations/le-op-iff--f3cd8a8bdc6b30d1fda514e7.md) | 57 | `result-track:f3cd8a8bdc6b30d1fda514e7269072c8619023a86a50f26e1a1e36410c028926` |
| 9 | `theorem` | [op_le_op_iff](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variante0b3fdba158bb2a85015966e5e23008cc5ac2107fcba71fcff29eaed67763432.lean/declarations/op-le-op-iff--eae984951dee59a78f2078a3.md) | 61 | `result-track:eae984951dee59a78f2078a34789ea452049e0f82cdcef04f2e53b5c3cd267c8` |
| 10 | `theorem` | [unop_le_unop_iff](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variante0b3fdba158bb2a85015966e5e23008cc5ac2107fcba71fcff29eaed67763432.lean/declarations/unop-le-unop-iff--2c1436845d7ce00340e53107.md) | 65 | `result-track:2c1436845d7ce00340e53107a4d350b64499fab51fc94d6d2179fd661af6512c` |
| 11 | `def` | [opEquiv](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variante0b3fdba158bb2a85015966e5e23008cc5ac2107fcba71fcff29eaed67763432.lean/declarations/opequiv--302be47d314da82fbd10cc7e.md) | 71 | `declaration-track:302be47d314da82fbd10cc7ed44802ef4b9eac635142550d803a527dfe6c860b` |
| 12 | `theorem` | [op_injective](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variante0b3fdba158bb2a85015966e5e23008cc5ac2107fcba71fcff29eaed67763432.lean/declarations/op-injective--95034d8c0bd0758bb12291b0.md) | 79 | `result-track:95034d8c0bd0758bb12291b0bf7f79ab7e557355a0383944dd317f357afcb961` |
| 13 | `theorem` | [unop_injective](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variante0b3fdba158bb2a85015966e5e23008cc5ac2107fcba71fcff29eaed67763432.lean/declarations/unop-injective--5db19c128293b4051b8407d0.md) | 82 | `result-track:5db19c128293b4051b8407d06a20d29172f219569573e4273c8c85b961aa4b89` |
| 14 | `theorem` | [op_inj](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variante0b3fdba158bb2a85015966e5e23008cc5ac2107fcba71fcff29eaed67763432.lean/declarations/op-inj--e2e6c601b824669d78f29598.md) | 85 | `result-track:e2e6c601b824669d78f295988025e374915667bec19ca230ff99a94561d8707f` |
| 15 | `theorem` | [unop_inj](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variante0b3fdba158bb2a85015966e5e23008cc5ac2107fcba71fcff29eaed67763432.lean/declarations/unop-inj--a43c4d86dfbdd58dc5c75699.md) | 88 | `result-track:a43c4d86dfbdd58dc5c75699a37ae93e8c95530cd6cee7c06ad6f0daa437f9b7` |
| 16 | `theorem` | [op_bot](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variante0b3fdba158bb2a85015966e5e23008cc5ac2107fcba71fcff29eaed67763432.lean/declarations/op-bot--eeb78796a5c08e3ad6870c59.md) | 91 | `result-track:eeb78796a5c08e3ad6870c5951522c5b998ff123119f4c52e9096d40a8c72881` |
| 17 | `theorem` | [op_eq_bot](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variante0b3fdba158bb2a85015966e5e23008cc5ac2107fcba71fcff29eaed67763432.lean/declarations/op-eq-bot--d49a243c1e9a76db360c59e4.md) | 94 | `result-track:d49a243c1e9a76db360c59e48e93a1c6a1237034d1b6b2e3c56f257e676ab3d1` |
| 18 | `theorem` | [unop_bot](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variante0b3fdba158bb2a85015966e5e23008cc5ac2107fcba71fcff29eaed67763432.lean/declarations/unop-bot--1fe60600acb29039e1a65316.md) | 97 | `result-track:1fe60600acb29039e1a6531696643c63b1f2da14fcd88d15f3e707872bd52a75` |
| 19 | `theorem` | [unop_eq_bot](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variante0b3fdba158bb2a85015966e5e23008cc5ac2107fcba71fcff29eaed67763432.lean/declarations/unop-eq-bot--ef2717a7e28593e6db6ed9d1.md) | 100 | `result-track:ef2717a7e28593e6db6ed9d14648c192d8fab2dc0157b8fb22b7565d378c233f` |
| 20 | `theorem` | [op_top](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variante0b3fdba158bb2a85015966e5e23008cc5ac2107fcba71fcff29eaed67763432.lean/declarations/op-top--be840a1a86459de4e75b0adf.md) | 103 | `result-track:be840a1a86459de4e75b0adfeca07943c8a6b0795e5f28c237352e124a4db816` |
| 21 | `theorem` | [op_eq_top](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variante0b3fdba158bb2a85015966e5e23008cc5ac2107fcba71fcff29eaed67763432.lean/declarations/op-eq-top--7bc46e77bc40a9e4a88b511d.md) | 106 | `result-track:7bc46e77bc40a9e4a88b511db018e40f0841efc8689c90debb67535b89f338ce` |
| 22 | `theorem` | [unop_top](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variante0b3fdba158bb2a85015966e5e23008cc5ac2107fcba71fcff29eaed67763432.lean/declarations/unop-top--f710efbb5bbabb59877cae6e.md) | 109 | `result-track:f710efbb5bbabb59877cae6e3adb8f05ec7944191f441d323658cc49bb5a2e9b` |
| 23 | `theorem` | [unop_eq_top](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variante0b3fdba158bb2a85015966e5e23008cc5ac2107fcba71fcff29eaed67763432.lean/declarations/unop-eq-top--f0a86eb7ed2638dbcf84a3cf.md) | 112 | `result-track:f0a86eb7ed2638dbcf84a3cf528c507988ea822343106b3069d09a93a577155f` |
| 24 | `theorem` | [op_sup](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variante0b3fdba158bb2a85015966e5e23008cc5ac2107fcba71fcff29eaed67763432.lean/declarations/op-sup--d620f440323e8651edd698aa.md) | 115 | `result-track:d620f440323e8651edd698aae8d278b6b7f362657a5d88ff5e27d28f56f6bd0f` |
| 25 | `theorem` | [unop_sup](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variante0b3fdba158bb2a85015966e5e23008cc5ac2107fcba71fcff29eaed67763432.lean/declarations/unop-sup--ca23d8deafa41ecf13162ba8.md) | 119 | `result-track:ca23d8deafa41ecf13162ba8da3660f4bcab9871dbd70ec2b0dc5b4462d1b3fa` |
| 26 | `theorem` | [op_inf](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variante0b3fdba158bb2a85015966e5e23008cc5ac2107fcba71fcff29eaed67763432.lean/declarations/op-inf--45722e80a1c33ed44e515704.md) | 123 | `result-track:45722e80a1c33ed44e5157045e71e433335ca49dedea7ea328dfdab75561be97` |
| 27 | `theorem` | [unop_inf](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variante0b3fdba158bb2a85015966e5e23008cc5ac2107fcba71fcff29eaed67763432.lean/declarations/unop-inf--0ccac0db9bb41d471cbce9c5.md) | 126 | `result-track:0ccac0db9bb41d471cbce9c55b27184a88f0579fd7803edbaba7db7d097af623` |
| 28 | `theorem` | [op_sSup](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variante0b3fdba158bb2a85015966e5e23008cc5ac2107fcba71fcff29eaed67763432.lean/declarations/op-ssup--3d947eb128ea8c42e57cefa9.md) | 129 | `result-track:3d947eb128ea8c42e57cefa9f00d08aa055a43f32ac6f834dd389f0e78968d62` |
| 29 | `theorem` | [unop_sSup](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variante0b3fdba158bb2a85015966e5e23008cc5ac2107fcba71fcff29eaed67763432.lean/declarations/unop-ssup--f3b0b7bcfd2cc4a1700b1e9d.md) | 133 | `result-track:f3b0b7bcfd2cc4a1700b1e9d975298c97e8afb16cea4436a5e9117e160d370a6` |
| 30 | `theorem` | [op_sInf](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variante0b3fdba158bb2a85015966e5e23008cc5ac2107fcba71fcff29eaed67763432.lean/declarations/op-sinf--506987a2d473ae30aca5c833.md) | 137 | `result-track:506987a2d473ae30aca5c833c65579a1c12fc88ccc596e88b23f4cb4b9e523c3` |
| 31 | `theorem` | [unop_sInf](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variante0b3fdba158bb2a85015966e5e23008cc5ac2107fcba71fcff29eaed67763432.lean/declarations/unop-sinf--d2af7ff1f63b4b230f56d10e.md) | 141 | `result-track:d2af7ff1f63b4b230f56d10e9d5bf2a05cf916e7b43606f14c22ae53c7edda20` |
| 32 | `theorem` | [op_iSup](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variante0b3fdba158bb2a85015966e5e23008cc5ac2107fcba71fcff29eaed67763432.lean/declarations/op-isup--6eed0c8923d822065977ca87.md) | 145 | `result-track:6eed0c8923d822065977ca8723def4956f7ce33eaa2905394097c8198a9214ac` |
| 33 | `theorem` | [unop_iSup](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variante0b3fdba158bb2a85015966e5e23008cc5ac2107fcba71fcff29eaed67763432.lean/declarations/unop-isup--735abdfe7b04c461aaf5afee.md) | 148 | `result-track:735abdfe7b04c461aaf5afeecad4aa1dbc6ec0b497c448164eba54495866b567` |
| 34 | `theorem` | [op_iInf](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variante0b3fdba158bb2a85015966e5e23008cc5ac2107fcba71fcff29eaed67763432.lean/declarations/op-iinf--f98fbea7acacfd63551a876e.md) | 152 | `result-track:f98fbea7acacfd63551a876e60398e89ca7b15c4cada10fc6af943bc20e63acc` |
| 35 | `theorem` | [unop_iInf](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variante0b3fdba158bb2a85015966e5e23008cc5ac2107fcba71fcff29eaed67763432.lean/declarations/unop-iinf--e0f99388c9bffb2019e077af.md) | 155 | `result-track:e0f99388c9bffb2019e077afb0af67c8a5a9e0d64e927945661bd23dd27588da` |
| 36 | `theorem` | [op_closure](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variante0b3fdba158bb2a85015966e5e23008cc5ac2107fcba71fcff29eaed67763432.lean/declarations/op-closure--7983eb6ad61f4fa60b0f44a9.md) | 159 | `result-track:7983eb6ad61f4fa60b0f44a9e4c4db840bef9f246517ea186fd30ae114049fbf` |
| 37 | `theorem` | [unop_closure](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variante0b3fdba158bb2a85015966e5e23008cc5ac2107fcba71fcff29eaed67763432.lean/declarations/unop-closure--7f717d23b4deca77e5bb2e90.md) | 165 | `result-track:7f717d23b4deca77e5bb2e90f8d78a914a0d0db06d0acdd0daa5a27f59f14e77` |
| 38 | `def` | [equivOp](../../../../../mathematics/Algebra/GroupTheory/MulOpposite/Variante0b3fdba158bb2a85015966e5e23008cc5ac2107fcba71fcff29eaed67763432.lean/declarations/equivop--8351b151478279848ad96701.md) | 171 | `declaration-track:8351b151478279848ad9670172460dae80626d399568848cb5ac63e3d7423986` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
