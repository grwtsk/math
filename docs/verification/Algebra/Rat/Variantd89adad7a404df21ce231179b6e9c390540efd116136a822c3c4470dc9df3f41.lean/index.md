# Verification target: GRWTSK.Algebra.Rat.Variantd89adad7a404df21ce231179b6e9c390540efd116136a822c3c4470dc9df3f41

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "598cd44720ef6ae115f30fcb26f22756ab5e8e37",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Rat/Variantd89adad7a404df21ce231179b6e9c390540efd116136a822c3c4470dc9df3f41.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Rat/Variantd89adad7a404df21ce231179b6e9c390540efd116136a822c3c4470dc9df3f41.lean/index.md) · [Full source](../../../../mathematics/Algebra/Rat/Variantd89adad7a404df21ce231179b6e9c390540efd116136a822c3c4470dc9df3f41.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `598cd44720ef6ae115f30fcb26f22756ab5e8e37`.

Source path: `GRWTSK/Algebra/Rat/Variantd89adad7a404df21ce231179b6e9c390540efd116136a822c3c4470dc9df3f41.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Rat/Variantd89adad7a404df21ce231179b6e9c390540efd116136a822c3c4470dc9df3f41.lean.json)

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
| 1 | `instance` | [instField](../../../../mathematics/Algebra/Rat/Variantd89adad7a404df21ce231179b6e9c390540efd116136a822c3c4470dc9df3f41.lean/declarations/instfield--72cb7796ff86cb725e4bc1a5.md) | 27 | `declaration-track:72cb7796ff86cb725e4bc1a5f0f6592849aefe79126bfea4a0939a574df96333` |
| 2 | `instance` | [instDivisionRing](../../../../mathematics/Algebra/Rat/Variantd89adad7a404df21ce231179b6e9c390540efd116136a822c3c4470dc9df3f41.lean/declarations/instdivisionring--5c47dcbd43da49a83e039d86.md) | 44 | `declaration-track:5c47dcbd43da49a83e039d8655f73764abeb9a01eeaf9fc237c9c5acf109d77b` |
| 3 | `lemma` | [inv_nonneg](../../../../mathematics/Algebra/Rat/Variantd89adad7a404df21ce231179b6e9c390540efd116136a822c3c4470dc9df3f41.lean/declarations/inv-nonneg--dd50fcd16dfe521c6adf7fd8.md) | 46 | `result-track:dd50fcd16dfe521c6adf7fd8a1275cacad28e503a8e933360772e6c436643a94` |
| 4 | `lemma` | [div_nonneg](../../../../mathematics/Algebra/Rat/Variantd89adad7a404df21ce231179b6e9c390540efd116136a822c3c4470dc9df3f41.lean/declarations/div-nonneg--a1ea24a80c59b01c560cd870.md) | 50 | `result-track:a1ea24a80c59b01c560cd8704e6a26ea6aa6499fee52b319c41765f1731f4be9` |
| 5 | `instance` | [instInv](../../../../mathematics/Algebra/Rat/Variantd89adad7a404df21ce231179b6e9c390540efd116136a822c3c4470dc9df3f41.lean/declarations/instinv--2284f62ee33ffc3423221d89.md) | 57 | `declaration-track:2284f62ee33ffc3423221d89b240c517741e5764bc0101a5f79b6a4af37c1be0` |
| 6 | `instance` | [instDiv](../../../../mathematics/Algebra/Rat/Variantd89adad7a404df21ce231179b6e9c390540efd116136a822c3c4470dc9df3f41.lean/declarations/instdiv--50577915536d851c5a9c6ac3.md) | 60 | `declaration-track:50577915536d851c5a9c6ac32c503f8d24d3915eb0ee55e39a8198c4fe5052b5` |
| 7 | `instance` | [instZPow](../../../../mathematics/Algebra/Rat/Variantd89adad7a404df21ce231179b6e9c390540efd116136a822c3c4470dc9df3f41.lean/declarations/instzpow--4d40f8911716ee6ffa8ddf61.md) | 63 | `declaration-track:4d40f8911716ee6ffa8ddf616c879fa9f11656908908e13248492bbe7206dc5d` |
| 8 | `lemma` | [coe_inv](../../../../mathematics/Algebra/Rat/Variantd89adad7a404df21ce231179b6e9c390540efd116136a822c3c4470dc9df3f41.lean/declarations/coe-inv--a87ae1700e0ee12634003456.md) | 66 | `result-track:a87ae1700e0ee1263400345604e6bb5c446e8f09903ac38d9c3aea8a5e3f12e0` |
| 9 | `lemma` | [coe_div](../../../../mathematics/Algebra/Rat/Variantd89adad7a404df21ce231179b6e9c390540efd116136a822c3c4470dc9df3f41.lean/declarations/coe-div--d67305a17f02180177c583e4.md) | 67 | `result-track:d67305a17f02180177c583e4fab065968c944bb9e6f6909b9ae1a23da0d84246` |
| 10 | `lemma` | [coe_zpow](../../../../mathematics/Algebra/Rat/Variantd89adad7a404df21ce231179b6e9c390540efd116136a822c3c4470dc9df3f41.lean/declarations/coe-zpow--72985e2cc127361a5b8ce5d2.md) | 68 | `result-track:72985e2cc127361a5b8ce5d2a19638f7ed788515ae4afec06a4e1eecbd3b7760` |
| 11 | `lemma` | [inv_def](../../../../mathematics/Algebra/Rat/Variantd89adad7a404df21ce231179b6e9c390540efd116136a822c3c4470dc9df3f41.lean/declarations/inv-def--728b3f31192f2e1c67f5b7c7.md) | 70 | `result-track:728b3f31192f2e1c67f5b7c792acf55c6278c2abc9e6539f38a67e14517bb12b` |
| 12 | `lemma` | [div_def](../../../../mathematics/Algebra/Rat/Variantd89adad7a404df21ce231179b6e9c390540efd116136a822c3c4470dc9df3f41.lean/declarations/div-def--a8d0e252ecbfa2d22690f690.md) | 71 | `result-track:a8d0e252ecbfa2d22690f690394310cb18f7fb28f9a915d20f6fed55ef4f7c51` |
| 13 | `theorem` | [divNat_eq_div](../../../../mathematics/Algebra/Rat/Variantd89adad7a404df21ce231179b6e9c390540efd116136a822c3c4470dc9df3f41.lean/declarations/divnat-eq-div--6b9e9f56f585ce2231760125.md) | 74 | `result-track:6b9e9f56f585ce2231760125ecd9b77ab1aa128b7622ff37a638e75daa5fffd3` |
| 14 | `lemma` | [num_inv_of_ne_zero](../../../../mathematics/Algebra/Rat/Variantd89adad7a404df21ce231179b6e9c390540efd116136a822c3c4470dc9df3f41.lean/declarations/num-inv-of-ne-zero--93942a34ace7231ad59c5c12.md) | 79 | `result-track:93942a34ace7231ad59c5c12f20215c965e267063a60290482623111c1d58f26` |
| 15 | `lemma` | [den_inv_of_ne_zero](../../../../mathematics/Algebra/Rat/Variantd89adad7a404df21ce231179b6e9c390540efd116136a822c3c4470dc9df3f41.lean/declarations/den-inv-of-ne-zero--394644d45757fcca3b2fc95e.md) | 85 | `result-track:394644d45757fcca3b2fc95e861d1ce2b26554faa6bfd661d54b5396df0069ea` |
| 16 | `lemma` | [num_div_den](../../../../mathematics/Algebra/Rat/Variantd89adad7a404df21ce231179b6e9c390540efd116136a822c3c4470dc9df3f41.lean/declarations/num-div-den--fce84218aebb956b4daecc8f.md) | 90 | `result-track:fce84218aebb956b4daecc8f55f7cd35e9c678e29211939b73b72b40d7e0d4e0` |
| 17 | `instance` | [instSemifield](../../../../mathematics/Algebra/Rat/Variantd89adad7a404df21ce231179b6e9c390540efd116136a822c3c4470dc9df3f41.lean/declarations/instsemifield--0453d588007a20537311ebbd.md) | 95 | `declaration-track:0453d588007a20537311ebbd9fb66bd00e9666705d6829d5d9e6d01a3eca9233` |
| 18 | `theorem` | [NNRatCast.ofScientific_eq_ite](../../../../mathematics/Algebra/Rat/Variantd89adad7a404df21ce231179b6e9c390540efd116136a822c3c4470dc9df3f41.lean/declarations/nnratcast-ofscientific-eq-ite--30c6b8c45b537337a6c9eb66.md) | 108 | `result-track:30c6b8c45b537337a6c9eb667f99c885cb573de5851e48e7802ccae12556c361` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
