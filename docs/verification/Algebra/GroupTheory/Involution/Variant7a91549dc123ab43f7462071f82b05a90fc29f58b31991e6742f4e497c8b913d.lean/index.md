# Verification target: GRWTSK.Algebra.GroupTheory.Involution.Variant7a91549dc123ab43f7462071f82b05a90fc29f58b31991e6742f4e497c8b913d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2c021e92b0b08f436166d06b8731920f65ad8e68",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Involution/Variant7a91549dc123ab43f7462071f82b05a90fc29f58b31991e6742f4e497c8b913d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Involution/Variant7a91549dc123ab43f7462071f82b05a90fc29f58b31991e6742f4e497c8b913d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Involution/Variant7a91549dc123ab43f7462071f82b05a90fc29f58b31991e6742f4e497c8b913d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2c021e92b0b08f436166d06b8731920f65ad8e68`.

Source path: `GRWTSK/Algebra/GroupTheory/Involution/Variant7a91549dc123ab43f7462071f82b05a90fc29f58b31991e6742f4e497c8b913d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Involution/Variant7a91549dc123ab43f7462071f82b05a90fc29f58b31991e6742f4e497c8b913d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.FiniteDynamics.Permutation` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Support` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CertifiedInvolution](../../../../../mathematics/Algebra/GroupTheory/Involution/Variant7a91549dc123ab43f7462071f82b05a90fc29f58b31991e6742f4e497c8b913d.lean/declarations/certifiedinvolution--16edfb17c76f5449774af1fa.md) | 22 | `declaration-track:16edfb17c76f5449774af1fa9878c9256bfce42fe69d91d592c2ce0dd5625a3a` |
| 2 | `def` | [toPerm](../../../../../mathematics/Algebra/GroupTheory/Involution/Variant7a91549dc123ab43f7462071f82b05a90fc29f58b31991e6742f4e497c8b913d.lean/declarations/toperm--0286e0e52a84b9ff0f72563b.md) | 34 | `declaration-track:0286e0e52a84b9ff0f72563ba5b034f17c029dba3a3fce8d2095f27da701fc83` |
| 3 | `theorem` | [toPerm_apply](../../../../../mathematics/Algebra/GroupTheory/Involution/Variant7a91549dc123ab43f7462071f82b05a90fc29f58b31991e6742f4e497c8b913d.lean/declarations/toperm-apply--0c5f48bbc3d418d36dfaf27e.md) | 41 | `result-track:0c5f48bbc3d418d36dfaf27eade4c899d6a230e8620e7aab31a304c037c032c7` |
| 4 | `theorem` | [toPerm_symm_apply](../../../../../mathematics/Algebra/GroupTheory/Involution/Variant7a91549dc123ab43f7462071f82b05a90fc29f58b31991e6742f4e497c8b913d.lean/declarations/toperm-symm-apply--06576c507c0486352a491483.md) | 46 | `result-track:06576c507c0486352a4914831c02c7f7a5fb8313a558295ad506e3c9597f6f10` |
| 5 | `theorem` | [act_act](../../../../../mathematics/Algebra/GroupTheory/Involution/Variant7a91549dc123ab43f7462071f82b05a90fc29f58b31991e6742f4e497c8b913d.lean/declarations/act-act--37754243b289f4e257e646f5.md) | 51 | `result-track:37754243b289f4e257e646f502517e6ef63065607943502367974e4e61cecff0` |
| 6 | `theorem` | [toPerm_mul_self](../../../../../mathematics/Algebra/GroupTheory/Involution/Variant7a91549dc123ab43f7462071f82b05a90fc29f58b31991e6742f4e497c8b913d.lean/declarations/toperm-mul-self--16a102cc91fc4300ab19e06f.md) | 56 | `result-track:16a102cc91fc4300ab19e06fc426fe40ef78fcee770625cdd54c46aada2f6767` |
| 7 | `theorem` | [toPerm_symm](../../../../../mathematics/Algebra/GroupTheory/Involution/Variant7a91549dc123ab43f7462071f82b05a90fc29f58b31991e6742f4e497c8b913d.lean/declarations/toperm-symm--5e7ee629d358f99a6caaa1e2.md) | 62 | `result-track:5e7ee629d358f99a6caaa1e2fae7f10384401c2a7db6742fee2a54f35d7f1774` |
| 8 | `theorem` | [toPerm_support](../../../../../mathematics/Algebra/GroupTheory/Involution/Variant7a91549dc123ab43f7462071f82b05a90fc29f58b31991e6742f4e497c8b913d.lean/declarations/toperm-support--dd33d9301d51ad0b17cceabb.md) | 68 | `result-track:dd33d9301d51ad0b17cceabbd91678d3246a6b8af6a4af75bb791f851676e8f9` |
| 9 | `theorem` | [not_mem_support_iff](../../../../../mathematics/Algebra/GroupTheory/Involution/Variant7a91549dc123ab43f7462071f82b05a90fc29f58b31991e6742f4e497c8b913d.lean/declarations/not-mem-support-iff--6b86c6cc731c715ebf7e5abf.md) | 75 | `result-track:6b86c6cc731c715ebf7e5abfd8c5576fa0419f0a458940580de7825dca3f8974` |
| 10 | `theorem` | [mem_support_act](../../../../../mathematics/Algebra/GroupTheory/Involution/Variant7a91549dc123ab43f7462071f82b05a90fc29f58b31991e6742f4e497c8b913d.lean/declarations/mem-support-act--bfc65a44f668b7953d0f8281.md) | 84 | `result-track:bfc65a44f668b7953d0f82816c4b7e0fd80fc51b78c87b7ba849f47f0eb77433` |
| 11 | `def` | [pointOrbit](../../../../../mathematics/Algebra/GroupTheory/Involution/Variant7a91549dc123ab43f7462071f82b05a90fc29f58b31991e6742f4e497c8b913d.lean/declarations/pointorbit--b17c0d92e930e859d0c98a43.md) | 98 | `declaration-track:b17c0d92e930e859d0c98a43c58ecd5be906c39dad0f075fe653d7694b3045e2` |
| 12 | `theorem` | [mem_pointOrbit](../../../../../mathematics/Algebra/GroupTheory/Involution/Variant7a91549dc123ab43f7462071f82b05a90fc29f58b31991e6742f4e497c8b913d.lean/declarations/mem-pointorbit--ae668e689fb1f2f23c8fca24.md) | 102 | `result-track:ae668e689fb1f2f23c8fca24bfc9f3c07ff08755f9a8b9da0dc5851ec10a8111` |
| 13 | `theorem` | [pointOrbit_act](../../../../../mathematics/Algebra/GroupTheory/Involution/Variant7a91549dc123ab43f7462071f82b05a90fc29f58b31991e6742f4e497c8b913d.lean/declarations/pointorbit-act--1fc57a1ceb88106cc74676eb.md) | 106 | `result-track:1fc57a1ceb88106cc74676eb0e78d613cd6d7711f3737ab37c870cf2189a5311` |
| 14 | `theorem` | [pointOrbit_card](../../../../../mathematics/Algebra/GroupTheory/Involution/Variant7a91549dc123ab43f7462071f82b05a90fc29f58b31991e6742f4e497c8b913d.lean/declarations/pointorbit-card--652202cac855636cc39fe230.md) | 111 | `result-track:652202cac855636cc39fe230c17e8c15bccd2560c56a4b56843cfccb2cdb4176` |
| 15 | `theorem` | [pointOrbit_card_eq_one_iff](../../../../../mathematics/Algebra/GroupTheory/Involution/Variant7a91549dc123ab43f7462071f82b05a90fc29f58b31991e6742f4e497c8b913d.lean/declarations/pointorbit-card-eq-one-iff--31248d843a62868b4e43e916.md) | 118 | `result-track:31248d843a62868b4e43e916a5c862908199e29fdc3edb7da22cece32efc28d9` |
| 16 | `theorem` | [pointOrbit_card_eq_two_iff](../../../../../mathematics/Algebra/GroupTheory/Involution/Variant7a91549dc123ab43f7462071f82b05a90fc29f58b31991e6742f4e497c8b913d.lean/declarations/pointorbit-card-eq-two-iff--314a97e3a2f5a451f3407570.md) | 125 | `result-track:314a97e3a2f5a451f34075704888083617d5285fc04fd23950336a18d3f26a4e` |
| 17 | `theorem` | [transposition_pair](../../../../../mathematics/Algebra/GroupTheory/Involution/Variant7a91549dc123ab43f7462071f82b05a90fc29f58b31991e6742f4e497c8b913d.lean/declarations/transposition-pair--f1a465d202ad548fd773fbfd.md) | 131 | `result-track:f1a465d202ad548fd773fbfda3ed07bebc3537e566b0bb5f4fe9093a78733586` |
| 18 | `def` | [conjugate](../../../../../mathematics/Algebra/GroupTheory/Involution/Variant7a91549dc123ab43f7462071f82b05a90fc29f58b31991e6742f4e497c8b913d.lean/declarations/conjugate--8edc36796f625036cab1e387.md) | 138 | `declaration-track:8edc36796f625036cab1e387a498f5de2aba07106149d1bc33380aae1cfe61e7` |
| 19 | `theorem` | [conjugate_act](../../../../../mathematics/Algebra/GroupTheory/Involution/Variant7a91549dc123ab43f7462071f82b05a90fc29f58b31991e6742f4e497c8b913d.lean/declarations/conjugate-act--865e75d1343c392d7a5c0857.md) | 156 | `result-track:865e75d1343c392d7a5c0857106ca3bdab31cd2137c301148f6ebedd69dc8f91` |
| 20 | `theorem` | [conjugate_support](../../../../../mathematics/Algebra/GroupTheory/Involution/Variant7a91549dc123ab43f7462071f82b05a90fc29f58b31991e6742f4e497c8b913d.lean/declarations/conjugate-support--6610287a4c20800ae500b80b.md) | 160 | `result-track:6610287a4c20800ae500b80baf99b7473c9961208fd4b47f25f8a2b8b9b4d132` |
| 21 | `theorem` | [conjugate_toPerm](../../../../../mathematics/Algebra/GroupTheory/Involution/Variant7a91549dc123ab43f7462071f82b05a90fc29f58b31991e6742f4e497c8b913d.lean/declarations/conjugate-toperm--abb033494795163ac1f582c4.md) | 164 | `result-track:abb033494795163ac1f582c4e75fbbf0cd95c3c52697b7a79d8f5db964514f22` |
| 22 | `def` | [transport](../../../../../mathematics/Algebra/GroupTheory/Involution/Variant7a91549dc123ab43f7462071f82b05a90fc29f58b31991e6742f4e497c8b913d.lean/declarations/transport--be88fcd0a639bfbe62d9d037.md) | 170 | `declaration-track:be88fcd0a639bfbe62d9d0372505f0e623554378960d4e32b579b0acc6dc1d10` |
| 23 | `theorem` | [transport_act](../../../../../mathematics/Algebra/GroupTheory/Involution/Variant7a91549dc123ab43f7462071f82b05a90fc29f58b31991e6742f4e497c8b913d.lean/declarations/transport-act--bd729ca551e5da0a14dd4b1b.md) | 189 | `result-track:bd729ca551e5da0a14dd4b1b598b855dfb62474601f4d139d8d5d419b170b0b1` |
| 24 | `theorem` | [transport_support](../../../../../mathematics/Algebra/GroupTheory/Involution/Variant7a91549dc123ab43f7462071f82b05a90fc29f58b31991e6742f4e497c8b913d.lean/declarations/transport-support--4e7f6d89554349a9bfc35ce8.md) | 195 | `result-track:4e7f6d89554349a9bfc35ce8902063d38a5c95c720c319d685bcff35b2904db7` |
| 25 | `theorem` | [transport_toPerm](../../../../../mathematics/Algebra/GroupTheory/Involution/Variant7a91549dc123ab43f7462071f82b05a90fc29f58b31991e6742f4e497c8b913d.lean/declarations/transport-toperm--2f7ba35f2840878acb6e3cbb.md) | 201 | `result-track:2f7ba35f2840878acb6e3cbb651203a75f7279b5c47c8daa05f95dfce2790b03` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
