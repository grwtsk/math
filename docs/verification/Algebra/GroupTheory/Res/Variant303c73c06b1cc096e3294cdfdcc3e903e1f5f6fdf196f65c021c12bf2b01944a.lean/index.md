# Verification target: GRWTSK.Algebra.GroupTheory.Res.Variant303c73c06b1cc096e3294cdfdcc3e903e1f5f6fdf196f65c021c12bf2b01944a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d127b7b83dbc004ab27e68c31c71f9145a8fe76e",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Res/Variant303c73c06b1cc096e3294cdfdcc3e903e1f5f6fdf196f65c021c12bf2b01944a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Res/Variant303c73c06b1cc096e3294cdfdcc3e903e1f5f6fdf196f65c021c12bf2b01944a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Res/Variant303c73c06b1cc096e3294cdfdcc3e903e1f5f6fdf196f65c021c12bf2b01944a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d127b7b83dbc004ab27e68c31c71f9145a8fe76e`.

Source path: `GRWTSK/Algebra/GroupTheory/Res/Variant303c73c06b1cc096e3294cdfdcc3e903e1f5f6fdf196f65c021c12bf2b01944a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Res/Variant303c73c06b1cc096e3294cdfdcc3e903e1f5f6fdf196f65c021c12bf2b01944a.lean.json)

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
| 1 | `def` | [resMap](../../../../../mathematics/Algebra/GroupTheory/Res/Variant303c73c06b1cc096e3294cdfdcc3e903e1f5f6fdf196f65c021c12bf2b01944a.lean/declarations/resmap--c232c18fb82baa7c35d87571.md) | 40 | `declaration-track:c232c18fb82baa7c35d875718ee54004496c64116a1c9defe33a83ee99cd8afb` |
| 2 | `abbrev` | [resFunctor](../../../../../mathematics/Algebra/GroupTheory/Res/Variant303c73c06b1cc096e3294cdfdcc3e903e1f5f6fdf196f65c021c12bf2b01944a.lean/declarations/resfunctor--da727e12c0a0614410786209.md) | 45 | `declaration-track:da727e12c0a06144107862093dc9d74b4c1fcdc002b9dc62b482226aace7424a` |
| 3 | `abbrev` | [res](../../../../../mathematics/Algebra/GroupTheory/Res/Variant303c73c06b1cc096e3294cdfdcc3e903e1f5f6fdf196f65c021c12bf2b01944a.lean/declarations/res--c548d681528d3652fbbef270.md) | 50 | `declaration-track:c548d681528d3652fbbef270b57cb8708aef68f7d60e64eb9cfd88cbe18fd2d6` |
| 4 | `lemma` | [res_id](../../../../../mathematics/Algebra/GroupTheory/Res/Variant303c73c06b1cc096e3294cdfdcc3e903e1f5f6fdf196f65c021c12bf2b01944a.lean/declarations/res-id--c901fbb4130e75264fa8bc93.md) | 54 | `result-track:c901fbb4130e75264fa8bc93323865469f0c918eab2785acb657eba16dd1a00c` |
| 5 | `lemma` | [res_obj_ρ](../../../../../mathematics/Algebra/GroupTheory/Res/Variant303c73c06b1cc096e3294cdfdcc3e903e1f5f6fdf196f65c021c12bf2b01944a.lean/declarations/res-obj--70b19468661e2896ae29ad83.md) | 56 | `result-track:70b19468661e2896ae29ad839f99b82412ac382285f648de037d35314a9e7d3e` |
| 6 | `lemma` | [coe_res_obj_ρ'](../../../../../mathematics/Algebra/GroupTheory/Res/Variant303c73c06b1cc096e3294cdfdcc3e903e1f5f6fdf196f65c021c12bf2b01944a.lean/declarations/coe-res-obj--5a0945be8c37b5930d265734.md) | 58 | `result-track:5a0945be8c37b5930d2657349273aad9582b45c08838f9250f4da6cc9ca1ae2e` |
| 7 | `lemma` | [res_obj_V](../../../../../mathematics/Algebra/GroupTheory/Res/Variant303c73c06b1cc096e3294cdfdcc3e903e1f5f6fdf196f65c021c12bf2b01944a.lean/declarations/res-obj-v--c2f4f70d3026f5a3c76f88fc.md) | 60 | `result-track:c2f4f70d3026f5a3c76f88fc05ab56e380bb9fb6c4773d0855e3b7e093936510` |
| 8 | `lemma` | [resMap_hom_toLinearMap](../../../../../mathematics/Algebra/GroupTheory/Res/Variant303c73c06b1cc096e3294cdfdcc3e903e1f5f6fdf196f65c021c12bf2b01944a.lean/declarations/resmap-hom-tolinearmap--e190344993b0e46a90da613d.md) | 63 | `result-track:e190344993b0e46a90da613da15c54b7a2533ff57a5a92921877dda7f01938c3` |
| 9 | `lemma` | [resMap_hom_apply](../../../../../mathematics/Algebra/GroupTheory/Res/Variant303c73c06b1cc096e3294cdfdcc3e903e1f5f6fdf196f65c021c12bf2b01944a.lean/declarations/resmap-hom-apply--460c80bb0ed26cb090384ed9.md) | 70 | `result-track:460c80bb0ed26cb090384ed9b81ffb97826c0b949aa2ef725b00dc7be00b1b09` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Res/Variant303c73c06b1cc096e3294cdfdcc3e903e1f5f6fdf196f65c021c12bf2b01944a.lean/declarations/instance--93a46b94a7b707240884725a.md) | 76 | `declaration-track:93a46b94a7b707240884725adbe24d39bd84d1b667d1318f57f261378c9fd770` |
| 11 | `abbrev` | [liftHomOfSurj](../../../../../mathematics/Algebra/GroupTheory/Res/Variant303c73c06b1cc096e3294cdfdcc3e903e1f5f6fdf196f65c021c12bf2b01944a.lean/declarations/lifthomofsurj--ccb316e6966a9c253c432477.md) | 82 | `declaration-track:ccb316e6966a9c253c4324774ee1cfdb436f6f6360ae31111b10a3bcc1b1b3e8` |
| 12 | `lemma` | [liftHomOfSurj_toLinearMap](../../../../../mathematics/Algebra/GroupTheory/Res/Variant303c73c06b1cc096e3294cdfdcc3e903e1f5f6fdf196f65c021c12bf2b01944a.lean/declarations/lifthomofsurj-tolinearmap--3812eff1d88c67053e52e50e.md) | 86 | `result-track:3812eff1d88c67053e52e50e1520865ff2b9823ef9358ebfd1378a38b7d91de0` |
| 13 | `lemma` | [full_res](../../../../../mathematics/Algebra/GroupTheory/Res/Variant303c73c06b1cc096e3294cdfdcc3e903e1f5f6fdf196f65c021c12bf2b01944a.lean/declarations/full-res--bc0864ef0a6921c277f670b0.md) | 90 | `result-track:bc0864ef0a6921c277f670b007dd5e32bd9dfafc62953a205a4d1b95196b7223` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Res/Variant303c73c06b1cc096e3294cdfdcc3e903e1f5f6fdf196f65c021c12bf2b01944a.lean/declarations/instance--46c130ad7302e0c34c3b2cb8.md) | 93 | `declaration-track:46c130ad7302e0c34c3b2cb8d72e760b33fabac2bb54bd39bf4fa24db29c157a` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Res/Variant303c73c06b1cc096e3294cdfdcc3e903e1f5f6fdf196f65c021c12bf2b01944a.lean/declarations/instance--758a2372cd7079e235d91bb9.md) | 96 | `declaration-track:758a2372cd7079e235d91bb9d2fff714b97e637f35c4adc40ffdeff61415082a` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Res/Variant303c73c06b1cc096e3294cdfdcc3e903e1f5f6fdf196f65c021c12bf2b01944a.lean/declarations/instance--32a13cc3ad16d714821e5770.md) | 105 | `declaration-track:32a13cc3ad16d714821e577056c8e3ad7cb35f2d791aacd8c814817b95b68839` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Res/Variant303c73c06b1cc096e3294cdfdcc3e903e1f5f6fdf196f65c021c12bf2b01944a.lean/declarations/instance--76929d0e131b68142b986ebd.md) | 110 | `declaration-track:76929d0e131b68142b986ebdd9d1944603efa0ac6d0e1547b29a7d69e48a6483` |
| 18 | `lemma` | [isZero_res_iff](../../../../../mathematics/Algebra/GroupTheory/Res/Variant303c73c06b1cc096e3294cdfdcc3e903e1f5f6fdf196f65c021c12bf2b01944a.lean/declarations/iszero-res-iff--58afa206ebef8e14b1633f57.md) | 117 | `result-track:58afa206ebef8e14b1633f577ddce27ec3f27aab12719b006d591024583abc5b` |
| 19 | `lemma` | [res_map_exact](../../../../../mathematics/Algebra/GroupTheory/Res/Variant303c73c06b1cc096e3294cdfdcc3e903e1f5f6fdf196f65c021c12bf2b01944a.lean/declarations/res-map-exact--b66fe516f44733bb106100b4.md) | 124 | `result-track:b66fe516f44733bb106100b453249624e07b0897d90304500f9ff0f66b125486` |
| 20 | `lemma` | [shortExact_res](../../../../../mathematics/Algebra/GroupTheory/Res/Variant303c73c06b1cc096e3294cdfdcc3e903e1f5f6fdf196f65c021c12bf2b01944a.lean/declarations/shortexact-res--1f9a48456eefdc708132089d.md) | 129 | `result-track:1f9a48456eefdc708132089dc31cd2b584d936973662552fc11e5366d4ce7871` |
| 21 | `abbrev` | [ofQuotient](../../../../../mathematics/Algebra/GroupTheory/Res/Variant303c73c06b1cc096e3294cdfdcc3e903e1f5f6fdf196f65c021c12bf2b01944a.lean/declarations/ofquotient--97693529dcdf5be5369b4305.md) | 156 | `declaration-track:97693529dcdf5be5369b430548eb2250c794175f7cad80819d6173184e290ed7` |
| 22 | `abbrev` | [resOfQuotientIso](../../../../../mathematics/Algebra/GroupTheory/Res/Variant303c73c06b1cc096e3294cdfdcc3e903e1f5f6fdf196f65c021c12bf2b01944a.lean/declarations/resofquotientiso--416f3c31ee81b5208e9690da.md) | 161 | `declaration-track:416f3c31ee81b5208e9690daf1ae19ec21a8266d9b904b33ad0fdfcb635f5d0e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
