# Verification target: GRWTSK.Topology.AlgebraicTopology.Boundary.Variantca56d30cf0e28bc1901173c020577b6e0bc7cf7863d2258f0c4027386f705a29

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "491841dd56c58586a976996307814418718fd44a",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/Boundary/Variantca56d30cf0e28bc1901173c020577b6e0bc7cf7863d2258f0c4027386f705a29.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/Boundary/Variantca56d30cf0e28bc1901173c020577b6e0bc7cf7863d2258f0c4027386f705a29.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/Boundary/Variantca56d30cf0e28bc1901173c020577b6e0bc7cf7863d2258f0c4027386f705a29.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `491841dd56c58586a976996307814418718fd44a`.

Source path: `GRWTSK/Topology/AlgebraicTopology/Boundary/Variantca56d30cf0e28bc1901173c020577b6e0bc7cf7863d2258f0c4027386f705a29.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/Boundary/Variantca56d30cf0e28bc1901173c020577b6e0bc7cf7863d2258f0c4027386f705a29.lean.json)

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
| 1 | `def` | [boundary](../../../../../mathematics/Topology/AlgebraicTopology/Boundary/Variantca56d30cf0e28bc1901173c020577b6e0bc7cf7863d2258f0c4027386f705a29.lean/declarations/boundary--7f3f6232aad0b6d625777c5f.md) | 48 | `declaration-track:7f3f6232aad0b6d625777c5f9224683a98e9090ed6c64160c85c9cf392978500` |
| 2 | `lemma` | [boundary_eq_iSup](../../../../../mathematics/Topology/AlgebraicTopology/Boundary/Variantca56d30cf0e28bc1901173c020577b6e0bc7cf7863d2258f0c4027386f705a29.lean/declarations/boundary-eq-isup--f528f118ab55dee88cd12222.md) | 55 | `result-track:f528f118ab55dee88cd122228c5fe79b6466012c13816445b90ad14bf1ab524f` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/Boundary/Variantca56d30cf0e28bc1901173c020577b6e0bc7cf7863d2258f0c4027386f705a29.lean/declarations/instance--873259a928786403a8616bd4.md) | 61 | `declaration-track:873259a928786403a8616bd4c6cd76fbb9651cca21d8a7d4d904919de2008d53` |
| 4 | `lemma` | [mem_boundary_iff_notMem_range](../../../../../mathematics/Topology/AlgebraicTopology/Boundary/Variantca56d30cf0e28bc1901173c020577b6e0bc7cf7863d2258f0c4027386f705a29.lean/declarations/mem-boundary-iff-notmem-range--defc4895b6f7e5cef4df25a7.md) | 66 | `result-track:defc4895b6f7e5cef4df25a7151febeea9a6b824cf929678d86f724428b9a289` |
| 5 | `lemma` | [face_singleton_compl_le_boundary](../../../../../mathematics/Topology/AlgebraicTopology/Boundary/Variantca56d30cf0e28bc1901173c020577b6e0bc7cf7863d2258f0c4027386f705a29.lean/declarations/face-singleton-compl-le-boundary--6b8780a29dfeb99679f6c2e9.md) | 71 | `result-track:6b8780a29dfeb99679f6c2e9f12c89ff1e71637c788826382b6239685d5fc0f6` |
| 6 | `lemma` | [stdSimplex.notMem_boundary](../../../../../mathematics/Topology/AlgebraicTopology/Boundary/Variantca56d30cf0e28bc1901173c020577b6e0bc7cf7863d2258f0c4027386f705a29.lean/declarations/stdsimplex-notmem-boundary--28cbe9c5079d062c2c9c0899.md) | 76 | `result-track:28cbe9c5079d062c2c9c089975f9f9a1fd7b8554f32a5ed3427e64847c0722ff` |
| 7 | `lemma` | [boundary_lt_top](../../../../../mathematics/Topology/AlgebraicTopology/Boundary/Variantca56d30cf0e28bc1901173c020577b6e0bc7cf7863d2258f0c4027386f705a29.lean/declarations/boundary-lt-top--ce1501b937fcb2f16a1d87e4.md) | 82 | `result-track:ce1501b937fcb2f16a1d87e4273444e5497685a29d221d2e2b57c350c4c792de` |
| 8 | `lemma` | [boundary_obj_eq_univ](../../../../../mathematics/Topology/AlgebraicTopology/Boundary/Variantca56d30cf0e28bc1901173c020577b6e0bc7cf7863d2258f0c4027386f705a29.lean/declarations/boundary-obj-eq-univ--98d35b3d539a3fbf82eb0f38.md) | 86 | `result-track:98d35b3d539a3fbf82eb0f38f13cd2854cb58364c8215174374902638034870b` |
| 9 | `lemma` | [boundary_zero](../../../../../mathematics/Topology/AlgebraicTopology/Boundary/Variantca56d30cf0e28bc1901173c020577b6e0bc7cf7863d2258f0c4027386f705a29.lean/declarations/boundary-zero--e20816c380209fa9396135de.md) | 103 | `result-track:e20816c380209fa9396135de25545fe80a07a6b59d60b61eec2842b74ec91d9b` |
| 10 | `lemma` | [op_boundary](../../../../../mathematics/Topology/AlgebraicTopology/Boundary/Variantca56d30cf0e28bc1901173c020577b6e0bc7cf7863d2258f0c4027386f705a29.lean/declarations/op-boundary--c470acf521d86db1d6f4f5e1.md) | 110 | `result-track:c470acf521d86db1d6f4f5e1a9e3a0ee0d084dc6756d7d7a398e41c8ae22a4de` |
| 11 | `lemma` | [subcomplex_hasDimensionLT_of_neq_top](../../../../../mathematics/Topology/AlgebraicTopology/Boundary/Variantca56d30cf0e28bc1901173c020577b6e0bc7cf7863d2258f0c4027386f705a29.lean/declarations/subcomplex-hasdimensionlt-of-neq-top--4c5e9e693b0cce8e8ec98f5e.md) | 125 | `result-track:4c5e9e693b0cce8e8ec98f5e0c9691b9ea738c04bdaaa7496f133ed5abf2de88` |
| 12 | `lemma` | [le_boundary_iff](../../../../../mathematics/Topology/AlgebraicTopology/Boundary/Variantca56d30cf0e28bc1901173c020577b6e0bc7cf7863d2258f0c4027386f705a29.lean/declarations/le-boundary-iff--db80308f4308fe64ff8fb501.md) | 137 | `result-track:db80308f4308fe64ff8fb501a2369c3ed8476dc2dead091420659745fbe9770f` |
| 13 | `lemma` | [eq_boundary_iff](../../../../../mathematics/Topology/AlgebraicTopology/Boundary/Variantca56d30cf0e28bc1901173c020577b6e0bc7cf7863d2258f0c4027386f705a29.lean/declarations/eq-boundary-iff--55f8db4af63ca6cf82a2c506.md) | 151 | `result-track:55f8db4af63ca6cf82a2c506800b0128c06a2bd29723c8adf5aaec341fc4c320` |
| 14 | `def` | [faceι](../../../../../mathematics/Topology/AlgebraicTopology/Boundary/Variantca56d30cf0e28bc1901173c020577b6e0bc7cf7863d2258f0c4027386f705a29.lean/declarations/face--6344dc314f812bd9a9fa1e43.md) | 164 | `declaration-track:6344dc314f812bd9a9fa1e433730103469aab18e7cfa3f4bb987db9dd7254c94` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/Boundary/Variantca56d30cf0e28bc1901173c020577b6e0bc7cf7863d2258f0c4027386f705a29.lean/declarations/instance--f7741885741ccc8cce5deb58.md) | 168 | `declaration-track:f7741885741ccc8cce5deb58ff48f129bec524b6daaa55aa41821b215e305499` |
| 16 | `lemma` | [faceι_ι](../../../../../mathematics/Topology/AlgebraicTopology/Boundary/Variantca56d30cf0e28bc1901173c020577b6e0bc7cf7863d2258f0c4027386f705a29.lean/declarations/face--de87309aa9e9ce057e1f8c66.md) | 172 | `result-track:de87309aa9e9ce057e1f8c664ebd5193b3bd45c025aa2a03a3d4362a9ebb8e0d` |
| 17 | `def` | [ι](../../../../../mathematics/Topology/AlgebraicTopology/Boundary/Variantca56d30cf0e28bc1901173c020577b6e0bc7cf7863d2258f0c4027386f705a29.lean/declarations/anonymous--b03e591cc6b15f2ffc4bead4.md) | 178 | `declaration-track:b03e591cc6b15f2ffc4bead45abca2d6e2d54553fc4b6fbd6e7badca20180a5f` |
| 18 | `lemma` | [ι_ι](../../../../../mathematics/Topology/AlgebraicTopology/Boundary/Variantca56d30cf0e28bc1901173c020577b6e0bc7cf7863d2258f0c4027386f705a29.lean/declarations/anonymous--3efd3f5d49a0843db119e05a.md) | 186 | `result-track:3efd3f5d49a0843db119e05aad6ab6b85206ed8b0b431721a0d7863ce2fde04d` |
| 19 | `lemma` | [faceSingletonComplIso_inv_ι](../../../../../mathematics/Topology/AlgebraicTopology/Boundary/Variantca56d30cf0e28bc1901173c020577b6e0bc7cf7863d2258f0c4027386f705a29.lean/declarations/facesingletoncompliso-inv--9148e4c51657958a112ee8a4.md) | 190 | `result-track:9148e4c51657958a112ee8a414f876032a808d8687a5164379a6aa46b559fe60` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/Boundary/Variantca56d30cf0e28bc1901173c020577b6e0bc7cf7863d2258f0c4027386f705a29.lean/declarations/instance--eafd55fb9029f99fd1d639a5.md) | 195 | `declaration-track:eafd55fb9029f99fd1d639a5e336486e9599d5e5458c98fc72e449f186f9bbb2` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/Boundary/Variantca56d30cf0e28bc1901173c020577b6e0bc7cf7863d2258f0c4027386f705a29.lean/declarations/instance--2ad64ea0b73f758621497d91.md) | 200 | `declaration-track:2ad64ea0b73f758621497d9172459b70608fd9bcf8e1a3ba0b7fdafd2a5fcc93` |
| 22 | `lemma` | [hom_ext](../../../../../mathematics/Topology/AlgebraicTopology/Boundary/Variantca56d30cf0e28bc1901173c020577b6e0bc7cf7863d2258f0c4027386f705a29.lean/declarations/hom-ext--9b106afebc28efca8c20737c.md) | 205 | `result-track:9b106afebc28efca8c20737c2c38d62b7eb996df9e64d6d296ddc344d8ac2dd7` |
| 23 | `lemma` | [hom_ext₀](../../../../../mathematics/Topology/AlgebraicTopology/Boundary/Variantca56d30cf0e28bc1901173c020577b6e0bc7cf7863d2258f0c4027386f705a29.lean/declarations/hom-ext--e8cf804d4b5c24d55dbf1ded.md) | 215 | `result-track:e8cf804d4b5c24d55dbf1ded5d8e79f2aea761c15269844959ecad891d196de1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
