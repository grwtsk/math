# Verification target: GRWTSK.Algebra.GroupTheory.Frobenius.Variant0af9c9791f5b8d9ca8796ed63546be39789039c8e0764143a955836fcb74a409

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dbe78f20dff6d4bc0a752f7ab114aacceb72e6ad",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Frobenius/Variant0af9c9791f5b8d9ca8796ed63546be39789039c8e0764143a955836fcb74a409.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant0af9c9791f5b8d9ca8796ed63546be39789039c8e0764143a955836fcb74a409.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant0af9c9791f5b8d9ca8796ed63546be39789039c8e0764143a955836fcb74a409.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dbe78f20dff6d4bc0a752f7ab114aacceb72e6ad`.

Source path: `GRWTSK/Algebra/GroupTheory/Frobenius/Variant0af9c9791f5b8d9ca8796ed63546be39789039c8e0764143a955836fcb74a409.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Frobenius/Variant0af9c9791f5b8d9ca8796ed63546be39789039c8e0764143a955836fcb74a409.lean.json)

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
| 1 | `lemma` | [frobenius_def](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant0af9c9791f5b8d9ca8796ed63546be39789039c8e0764143a955836fcb74a409.lean/declarations/frobenius-def--90ba9e9bf278334fb6f6284a.md) | 40 | `result-track:90ba9e9bf278334fb6f6284acac87737652b4632b4789ae9d1158fc13b4eb771` |
| 2 | `lemma` | [iterateFrobenius_def](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant0af9c9791f5b8d9ca8796ed63546be39789039c8e0764143a955836fcb74a409.lean/declarations/iteratefrobenius-def--d59b517f99d944c1a59c3108.md) | 42 | `result-track:d59b517f99d944c1a59c3108ba86d897246dec88f0c82f8cc5f050f9d4f31463` |
| 3 | `lemma` | [iterate_frobenius](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant0af9c9791f5b8d9ca8796ed63546be39789039c8e0764143a955836fcb74a409.lean/declarations/iterate-frobenius--edefe7fe33f7af5f9fe85e48.md) | 44 | `result-track:edefe7fe33f7af5f9fe85e48ce2145c82a53a9921e2036c3d48141f03a8972cf` |
| 4 | `lemma` | [iterateFrobenius_eq_pow](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant0af9c9791f5b8d9ca8796ed63546be39789039c8e0764143a955836fcb74a409.lean/declarations/iteratefrobenius-eq-pow--b8fdd8dfd878e7f1380b34c7.md) | 48 | `result-track:b8fdd8dfd878e7f1380b34c7fe6ddbaab760eb47add23c71dc65d67d75ad2bc6` |
| 5 | `lemma` | [coe_iterateFrobenius](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant0af9c9791f5b8d9ca8796ed63546be39789039c8e0764143a955836fcb74a409.lean/declarations/coe-iteratefrobenius--30b0dd334ead480186b0b0ff.md) | 51 | `result-track:30b0dd334ead480186b0b0ff63404e812ec69b8db06fdb29081910e5dbf4c183` |
| 6 | `lemma` | [iterateFrobenius_one_apply](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant0af9c9791f5b8d9ca8796ed63546be39789039c8e0764143a955836fcb74a409.lean/declarations/iteratefrobenius-one-apply--b74f5d597a0d6d0d92bfb6c7.md) | 54 | `result-track:b74f5d597a0d6d0d92bfb6c7793e802f9ff4e9618c5de343935a1117c46c3a1b` |
| 7 | `lemma` | [iterateFrobenius_one](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant0af9c9791f5b8d9ca8796ed63546be39789039c8e0764143a955836fcb74a409.lean/declarations/iteratefrobenius-one--fcd3376572b228d44e835ac2.md) | 58 | `result-track:fcd3376572b228d44e835ac25adac0849d5eda1c0e90bf21212dad3a04d9d913` |
| 8 | `lemma` | [iterateFrobenius_zero_apply](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant0af9c9791f5b8d9ca8796ed63546be39789039c8e0764143a955836fcb74a409.lean/declarations/iteratefrobenius-zero-apply--fc71504737fcf977bf0e2f9a.md) | 61 | `result-track:fc71504737fcf977bf0e2f9a73c15a8a75780e765d2e698c293bab8c366abd82` |
| 9 | `lemma` | [iterateFrobenius_zero](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant0af9c9791f5b8d9ca8796ed63546be39789039c8e0764143a955836fcb74a409.lean/declarations/iteratefrobenius-zero--d4db7c5860a8f1f8f27df739.md) | 65 | `result-track:d4db7c5860a8f1f8f27df739efb2595858215c592f47db577ed6b68bdfaf79d2` |
| 10 | `lemma` | [iterateFrobenius_add_apply](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant0af9c9791f5b8d9ca8796ed63546be39789039c8e0764143a955836fcb74a409.lean/declarations/iteratefrobenius-add-apply--c353e6641032e7362dfbfa1f.md) | 68 | `result-track:c353e6641032e7362dfbfa1f9713c087453915506a0680aa19f451a48e4ce474` |
| 11 | `lemma` | [iterateFrobenius_add](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant0af9c9791f5b8d9ca8796ed63546be39789039c8e0764143a955836fcb74a409.lean/declarations/iteratefrobenius-add--46f375a195344e297df61635.md) | 72 | `result-track:46f375a195344e297df61635ab710809ca1499a15bc4597512d574c00b4302be` |
| 12 | `lemma` | [iterateFrobenius_mul_apply](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant0af9c9791f5b8d9ca8796ed63546be39789039c8e0764143a955836fcb74a409.lean/declarations/iteratefrobenius-mul-apply--1352b982641d3cc7a1c7c26c.md) | 76 | `result-track:1352b982641d3cc7a1c7c26c7dfb0b17642356eec4fe9cbcaec80b68c3e231d7` |
| 13 | `lemma` | [coe_iterateFrobenius_mul](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant0af9c9791f5b8d9ca8796ed63546be39789039c8e0764143a955836fcb74a409.lean/declarations/coe-iteratefrobenius-mul--c355dd948fd4dceecab05aea.md) | 80 | `result-track:c355dd948fd4dceecab05aea0f9545b62b7cf7163e26e412b25da7851720c41f` |
| 14 | `lemma` | [MonoidHom.map_frobenius](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant0af9c9791f5b8d9ca8796ed63546be39789039c8e0764143a955836fcb74a409.lean/declarations/monoidhom-map-frobenius--615935a14206f952b125766d.md) | 85 | `result-track:615935a14206f952b125766da6a543a14a4d3f10b6710e9c6090c40a5186e25e` |
| 15 | `lemma` | [RingHom.map_frobenius](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant0af9c9791f5b8d9ca8796ed63546be39789039c8e0764143a955836fcb74a409.lean/declarations/ringhom-map-frobenius--1aee77a5e36d9e77dbfc213d.md) | 86 | `result-track:1aee77a5e36d9e77dbfc213d7cf20990431d51a2dcce46e33818958ea20ca634` |
| 16 | `lemma` | [MonoidHom.map_iterate_frobenius](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant0af9c9791f5b8d9ca8796ed63546be39789039c8e0764143a955836fcb74a409.lean/declarations/monoidhom-map-iterate-frobenius--217d4c9bb397ca149c3d906b.md) | 88 | `result-track:217d4c9bb397ca149c3d906bbf10b441a5cea99b81ff6e2dc51df26077ea0c2e` |
| 17 | `lemma` | [MonoidHom.map_iterateFrobenius](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant0af9c9791f5b8d9ca8796ed63546be39789039c8e0764143a955836fcb74a409.lean/declarations/monoidhom-map-iteratefrobenius--b13244bbdc93a7ac06b787fe.md) | 92 | `result-track:b13244bbdc93a7ac06b787fe0229bdfe64db28db6ad2075da611adea8b869926` |
| 18 | `lemma` | [RingHom.map_iterate_frobenius](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant0af9c9791f5b8d9ca8796ed63546be39789039c8e0764143a955836fcb74a409.lean/declarations/ringhom-map-iterate-frobenius--57941478b410372945349546.md) | 96 | `result-track:57941478b41037294534954601974c3f7b61c88f1b01da6f61cbaa11597a3fc8` |
| 19 | `lemma` | [RingHom.map_iterateFrobenius](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant0af9c9791f5b8d9ca8796ed63546be39789039c8e0764143a955836fcb74a409.lean/declarations/ringhom-map-iteratefrobenius--dcd9d92e3f39096e175781b5.md) | 100 | `result-track:dcd9d92e3f39096e175781b58b9db544de26b31a29f0fbd8fab7790a0064b619` |
| 20 | `lemma` | [MonoidHom.iterate_map_frobenius](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant0af9c9791f5b8d9ca8796ed63546be39789039c8e0764143a955836fcb74a409.lean/declarations/monoidhom-iterate-map-frobenius--0c5db0d5dedc62f0aea52835.md) | 104 | `result-track:0c5db0d5dedc62f0aea52835eac061faf6dc9205d0adcb65b5ef0637a86bd0f1` |
| 21 | `lemma` | [RingHom.iterate_map_frobenius](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant0af9c9791f5b8d9ca8796ed63546be39789039c8e0764143a955836fcb74a409.lean/declarations/ringhom-iterate-map-frobenius--e6b53d36293485840c5d6cc3.md) | 108 | `result-track:e6b53d36293485840c5d6cc343edbc530bace923fc412a5531b29c1f2af20ee4` |
| 22 | `lemma` | [RingHom.frobenius_comm](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant0af9c9791f5b8d9ca8796ed63546be39789039c8e0764143a955836fcb74a409.lean/declarations/ringhom-frobenius-comm--0c5452412a7b1560d475a20b.md) | 112 | `result-track:0c5452412a7b1560d475a20bd58bacfd94827283508c2f722fe180213ea62eae` |
| 23 | `lemma` | [RingHom.iterateFrobenius_comm](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant0af9c9791f5b8d9ca8796ed63546be39789039c8e0764143a955836fcb74a409.lean/declarations/ringhom-iteratefrobenius-comm--fbb741e2f4d1ac50fb8f41c3.md) | 116 | `result-track:fbb741e2f4d1ac50fb8f41c3305bc4f551931fd63f300ce14f0be2981c4d8484` |
| 24 | `def` | [LinearMap.frobenius](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant0af9c9791f5b8d9ca8796ed63546be39789039c8e0764143a955836fcb74a409.lean/declarations/linearmap-frobenius--cab49db34bcf6965de3fb7c8.md) | 123 | `declaration-track:cab49db34bcf6965de3fb7c82d70065c8eed7fa6264d4b5e69f9d3f5999fcd1f` |
| 25 | `def` | [LinearMap.iterateFrobenius](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant0af9c9791f5b8d9ca8796ed63546be39789039c8e0764143a955836fcb74a409.lean/declarations/linearmap-iteratefrobenius--4e3f39d4535b65f718741579.md) | 129 | `declaration-track:4e3f39d4535b65f718741579060023a2d363b4158749e287857f50fb5f452ef2` |
| 26 | `theorem` | [LinearMap.frobenius_def](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant0af9c9791f5b8d9ca8796ed63546be39789039c8e0764143a955836fcb74a409.lean/declarations/linearmap-frobenius-def--d3bc1f9b68d7f8f922cf2050.md) | 134 | `result-track:d3bc1f9b68d7f8f922cf20502247c1b7488b704afd60bb24e677b25ed5c9ae4d` |
| 27 | `theorem` | [LinearMap.iterateFrobenius_def](../../../../../mathematics/Algebra/GroupTheory/Frobenius/Variant0af9c9791f5b8d9ca8796ed63546be39789039c8e0764143a955836fcb74a409.lean/declarations/linearmap-iteratefrobenius-def--41de474a70298c4081fd7206.md) | 136 | `result-track:41de474a70298c4081fd7206b4561b425f0ef07486d75c9610943ef5c035b9c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
