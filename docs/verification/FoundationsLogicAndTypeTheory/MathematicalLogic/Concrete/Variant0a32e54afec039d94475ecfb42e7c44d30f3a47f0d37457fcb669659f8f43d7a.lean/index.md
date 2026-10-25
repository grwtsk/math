# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Concrete.Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c8ff7449f44f3ff88d2883b521aa1915b4edf12a",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c8ff7449f44f3ff88d2883b521aa1915b4edf12a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Cycle` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.Cycle.Type` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.List` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [formPerm_disjoint_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/declarations/formperm-disjoint-iff--37f70fc365851983432d890c.md) | 54 | `result-track:37f70fc365851983432d890c0ee6ad5ec472e84b86a7123f3667c1efe9ddbe3b` |
| 2 | `theorem` | [isCycle_formPerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/declarations/iscycle-formperm--7c0c4cae757ccf2c2bc4bbb1.md) | 68 | `result-track:7c0c4cae757ccf2c2bc4bbb1275abb145288dacdb1f665b4e90881be1f3a08c7` |
| 3 | `theorem` | [pairwise_sameCycle_formPerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/declarations/pairwise-samecycle-formperm--3492639cb282d50194f602aa.md) | 82 | `result-track:3492639cb282d50194f602aa90043bd87528360d20331ae6408258c59845d0b6` |
| 4 | `theorem` | [cycleOf_formPerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/declarations/cycleof-formperm--2f6e8c54c4e0115c2a2f7e35.md) | 89 | `result-track:2f6e8c54c4e0115c2a2f7e351a7c2a6dc1a55d13156fa3aa2c84bbda7ae66774` |
| 5 | `theorem` | [cycleType_formPerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/declarations/cycletype-formperm--5a264e00e40c862cc854a5f0.md) | 96 | `result-track:5a264e00e40c862cc854a5f0c1e59e7c51dfa5e2ddb974af6254328f128b8239` |
| 6 | `theorem` | [formPerm_apply_mem_eq_next](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/declarations/formperm-apply-mem-eq-next--7f9c186d4204428aab88bd4e.md) | 110 | `result-track:7f9c186d4204428aab88bd4e2017d230858a9f4a510b9c45358998a64785262e` |
| 7 | `def` | [formPerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/declarations/formperm--8bb075cc191a1008082a05ba.md) | 124 | `declaration-track:8bb075cc191a1008082a05ba76c9da60794dd9f6b385f0824a6ed703217730ef` |
| 8 | `theorem` | [formPerm_coe](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/declarations/formperm-coe--0c5dab713881176348decc0f.md) | 133 | `result-track:0c5dab713881176348decc0f1a46182fce559e081f38afc564af8b2621465be5` |
| 9 | `theorem` | [formPerm_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/declarations/formperm-subsingleton--7f72272c46fd0c6d54961763.md) | 136 | `result-track:7f72272c46fd0c6d54961763e407f1506366b2d9009c7eb171c9f77c9b60e6c2` |
| 10 | `theorem` | [isCycle_formPerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/declarations/iscycle-formperm--c812dd94ab4fcf7b0f52b94d.md) | 145 | `result-track:c812dd94ab4fcf7b0f52b94d4b3468e794d0ab8d2db5ad4f0f68bd856bc27d30` |
| 11 | `theorem` | [support_formPerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/declarations/support-formperm--2c8a65021e1b39c8b2700599.md) | 150 | `result-track:2c8a65021e1b39c8b2700599e116a5987c5d7e469a1eb773bd3d382437a4150d` |
| 12 | `theorem` | [formPerm_eq_self_of_notMem](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/declarations/formperm-eq-self-of-notmem--46c52ad082ddf9bf8d7e1ad4.md) | 157 | `result-track:46c52ad082ddf9bf8d7e1ad46081fc7e92ab329b9d8870fa2ed4cea5e548fafb` |
| 13 | `theorem` | [formPerm_apply_mem_eq_next](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/declarations/formperm-apply-mem-eq-next--cc693d2a4dc9c600cb4a9431.md) | 165 | `result-track:cc693d2a4dc9c600cb4a9431e4e0e53fdc7d6e1cac3119c651629998370c0828` |
| 14 | `theorem` | [formPerm_reverse](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/declarations/formperm-reverse--7523327941fe86e3f7c95978.md) | 170 | `result-track:7523327941fe86e3f7c959786576c32b5ea9a7822987928ea11ab6cc55592b19` |
| 15 | `theorem` | [formPerm_eq_formPerm_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/declarations/formperm-eq-formperm-iff--07192ccf78524f5484713543.md) | 175 | `result-track:07192ccf78524f5484713543809b837768f018a699eca0451c217c35db91810c` |
| 16 | `def` | [toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/declarations/tolist--8c3f7f6a5283cdcf38dc8187.md) | 196 | `declaration-track:8c3f7f6a5283cdcf38dc8187a67f861714e00f51e698ed843507f6970ddce4fb` |
| 17 | `theorem` | [toList_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/declarations/tolist-one--628005982cc1a39d02cbafcf.md) | 200 | `result-track:628005982cc1a39d02cbafcf13ad6c2ed0a7da12f58e84cd988dbe5a5d1e71d4` |
| 18 | `theorem` | [toList_eq_nil_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/declarations/tolist-eq-nil-iff--997e931764f53faf19b3972b.md) | 203 | `result-track:997e931764f53faf19b3972bc70d39be68d69952004841d9e123d09c472510a2` |
| 19 | `theorem` | [length_toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/declarations/length-tolist--16e9e1746992e6d5b53cdb54.md) | 206 | `result-track:16e9e1746992e6d5b53cdb547d1ddf1faa98a035d23f0a6539796b34ec08f4b4` |
| 20 | `theorem` | [toList_ne_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/declarations/tolist-ne-singleton--919310e4a00fbac6bb2c3775.md) | 208 | `result-track:919310e4a00fbac6bb2c377591115d68351c7187c9b55c22052cd5706b19a15d` |
| 21 | `theorem` | [two_le_length_toList_iff_mem_support](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/declarations/two-le-length-tolist-iff-mem-support--b04eb5d60949cd11d0685124.md) | 212 | `result-track:b04eb5d60949cd11d0685124ca261c63f1cf83c503d02e1676ce3ef8673c2a24` |
| 22 | `theorem` | [length_toList_pos_of_mem_support](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/declarations/length-tolist-pos-of-mem-support--1de2456b52db6a032e94822f.md) | 215 | `result-track:1de2456b52db6a032e94822f7171dacc068f19f8e3813ae89116a3ec9847e193` |
| 23 | `theorem` | [getElem_toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/declarations/getelem-tolist--d428673e98e93079acc9385c.md) | 218 | `result-track:d428673e98e93079acc9385cc2ba00bbce89ec1ca3976c933b1957fa39a930e7` |
| 24 | `theorem` | [get_toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/declarations/get-tolist--1fdaf94079e7ebfd9483d1ce.md) | 222 | `result-track:1fdaf94079e7ebfd9483d1ce0366203f26a071f0c360805d1b7aad91322ba4ce` |
| 25 | `theorem` | [toList_getElem_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/declarations/tolist-getelem-zero--ab021d3cdd44076aa9248738.md) | 225 | `result-track:ab021d3cdd44076aa9248738d714e93beac9b35e921dc2bc82d41f52dfe3712b` |
| 26 | `theorem` | [toList_get_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/declarations/tolist-get-zero--c08900193509a8214be6cb3a.md) | 229 | `result-track:c08900193509a8214be6cb3a05c90a84846ba2b7f45a501028e723cf84f80deb` |
| 27 | `theorem` | [mem_toList_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/declarations/mem-tolist-iff--c9becee3b87b942b224b9fb8.md) | 234 | `result-track:c9becee3b87b942b224b9fb882cfcbdb11a98b6d0e5ee533b45c0396ce298fb4` |
| 28 | `theorem` | [nodup_toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/declarations/nodup-tolist--ab0a66b80ec28b2b5f5e938a.md) | 245 | `result-track:ab0a66b80ec28b2b5f5e938a550af0128d7cca9cb083a01d671f30ce8a0a2b0a` |
| 29 | `theorem` | [next_toList_eq_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/declarations/next-tolist-eq-apply--e3f27a973a8046e12bc2c3fa.md) | 278 | `result-track:e3f27a973a8046e12bc2c3fab5d7b8b325ffffe05f9543b1744ddc83df53e0d3` |
| 30 | `theorem` | [toList_pow_apply_eq_rotate](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/declarations/tolist-pow-apply-eq-rotate--b62c6cc186a1ceee62627f0a.md) | 289 | `result-track:b62c6cc186a1ceee62627f0a343e1184a118b4c1858e35d2706a8b9d2393324e` |
| 31 | `theorem` | [SameCycle.toList_isRotated](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/declarations/samecycle-tolist-isrotated--9525fb19f9a251e8bab25b99.md) | 297 | `result-track:9525fb19f9a251e8bab25b994c94feee7cbb0a2571e7d2b2c512c606c84860d6` |
| 32 | `theorem` | [pow_apply_mem_toList_iff_mem_support](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/declarations/pow-apply-mem-tolist-iff-mem-support--42e96c779a474636dc767ebe.md) | 309 | `result-track:42e96c779a474636dc767ebeed6b030817231fb30c54d2a418962d543c4f60e7` |
| 33 | `theorem` | [toList_formPerm_nil](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/declarations/tolist-formperm-nil--79921d510a00aa66ef18c370.md) | 314 | `result-track:79921d510a00aa66ef18c370f7ef3fceb6684a31ca295e0e1003574e907a1404` |
| 34 | `theorem` | [toList_formPerm_singleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/declarations/tolist-formperm-singleton--e95c4877a342673b92de4f86.md) | 316 | `result-track:e95c4877a342673b92de4f86ecf6980d7e67e5d3a81df7c8c510ba376982af66` |
| 35 | `theorem` | [toList_formPerm_nontrivial](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/declarations/tolist-formperm-nontrivial--340be238d29d74707af16e41.md) | 318 | `result-track:340be238d29d74707af16e410978927fe028bc1d53662ea84a809fe410448375` |
| 36 | `theorem` | [toList_formPerm_isRotated_self](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/declarations/tolist-formperm-isrotated-self--424e6fe93c0a8c70be318719.md) | 331 | `result-track:424e6fe93c0a8c70be3187194d6ae2c48873b7d76b5e7e4029d8fd45bdf1e925` |
| 37 | `theorem` | [formPerm_toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/declarations/formperm-tolist--57b61c72828c147ea0f2b255.md) | 343 | `result-track:57b61c72828c147ea0f2b2557e11e7ecd4b87c9170d8dc0d3c2d35fc152b4566` |
| 38 | `def` | [toCycle](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/declarations/tocycle--3e2dc58d86f815c9d139a56a.md) | 362 | `declaration-track:3e2dc58d86f815c9d139a56a3060305910254b63416f3065576bb47cfcd1a3d2` |
| 39 | `theorem` | [toCycle_eq_toList](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/declarations/tocycle-eq-tolist--9929a90cf8c42b8b855fc591.md) | 372 | `result-track:9929a90cf8c42b8b855fc591aa185950eb1bed10df015f9c6151279c73e62097` |
| 40 | `theorem` | [nodup_toCycle](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/declarations/nodup-tocycle--7403c2d579d535c2e22e2f76.md) | 378 | `result-track:7403c2d579d535c2e22e2f76e9939bba1e5518234b1dc81891d83726d2b96b7f` |
| 41 | `theorem` | [nontrivial_toCycle](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/declarations/nontrivial-tocycle--d52a9d502ee7f4f23b0a2c5b.md) | 382 | `result-track:d52a9d502ee7f4f23b0a2c5bd2e3966b7d257293a02cfe1ecdb1696e5dfd84c0` |
| 42 | `def` | [isoCycle](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/declarations/isocycle--d6a97bf32edbbc28dbd648e5.md) | 390 | `declaration-track:d6a97bf32edbbc28dbd648e5ac0feaba45f8f6d322816e696b4d81b0389a015d` |
| 43 | `theorem` | [IsCycle.existsUnique_cycle](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/declarations/iscycle-existsunique-cycle--8c463b4805ea232fafc77038.md) | 420 | `result-track:8c463b4805ea232fafc770386c2b14c47ef748ca898ccb6c931b636645e4a519` |
| 44 | `theorem` | [IsCycle.existsUnique_cycle_subtype](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/declarations/iscycle-existsunique-cycle-subtype--acc4fe6ebf9fea87decbe5eb.md) | 437 | `result-track:acc4fe6ebf9fea87decbe5ebc37a50925c82daf0b107bdc1c8bc6c8e57363c20` |
| 45 | `theorem` | [IsCycle.existsUnique_cycle_nontrivial_subtype](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/declarations/iscycle-existsunique-cycle-nontrivial-subtype--f5671b8ef7fc1e9779f2160f.md) | 444 | `result-track:f5671b8ef7fc1e9779f2160f5813e98f21c312659a8e10e27071ad0dd089ef25` |
| 46 | `def` | [isoCycle'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/declarations/isocycle--61c22d755c519ad12868726d.md) | 465 | `declaration-track:61c22d755c519ad12868726d6c6047733e0af1b58d3874b61e77349c7aed937c` |
| 47 | `instance` | [instRepr](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Concrete/Variant0a32e54afec039d94475ecfb42e7c44d30f3a47f0d37457fcb669659f8f43d7a.lean/declarations/instrepr--a3da6a556d3c00f0c8e6637a.md) | 497 | `declaration-track:a3da6a556d3c00f0c8e6637a7a81b12361416ad3bbd1ffbf8580c93f744b8512` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
