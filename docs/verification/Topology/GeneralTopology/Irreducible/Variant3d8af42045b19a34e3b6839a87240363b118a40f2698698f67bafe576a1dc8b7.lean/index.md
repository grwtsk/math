# Verification target: GRWTSK.Topology.GeneralTopology.Irreducible.Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f7c0c0526985238db903b4bce3346d9f268de23",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f7c0c0526985238db903b4bce3346d9f268de23`.

Source path: `GRWTSK/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Minimal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Zorn` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousOn` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.StacksAttribute` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsPreirreducible](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/declarations/ispreirreducible--8a6988c9564ab767b4575dd5.md) | 48 | `declaration-track:8a6988c9564ab767b4575dd5a37bcab45e18e268365ae19cd05bdf328aab4669` |
| 2 | `def` | [IsIrreducible](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/declarations/isirreducible--d4f0b6e1fe0583ec7c5d0eed.md) | 54 | `declaration-track:d4f0b6e1fe0583ec7c5d0eed7be1a720fbeb3279885229687e2fd39b1edcb801` |
| 3 | `theorem` | [IsIrreducible.nonempty](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/declarations/isirreducible-nonempty--63594fe0576204c3c71dd610.md) | 57 | `result-track:63594fe0576204c3c71dd6103fc8f1ee6e9f5ae6f4cc49f3ea5d74144c93436a` |
| 4 | `theorem` | [IsIrreducible.isPreirreducible](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/declarations/isirreducible-ispreirreducible--17e3fe68ce1d53d21a8da3d4.md) | 60 | `result-track:17e3fe68ce1d53d21a8da3d479d84bc3592e4eafa90d9fb33c07a1eaa8234232` |
| 5 | `theorem` | [isPreirreducible_empty](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/declarations/ispreirreducible-empty--3c2a095ccaccfa053e0260f6.md) | 63 | `result-track:3c2a095ccaccfa053e0260f6662b39ca925033ffde9a96b7a96fc08bffde0537` |
| 6 | `theorem` | [Set.Subsingleton.isPreirreducible](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/declarations/set-subsingleton-ispreirreducible--939bd283dd2bbc242d99df0c.md) | 66 | `result-track:939bd283dd2bbc242d99df0c663e174dc89f6245e3edff8f5028473aca33cd65` |
| 7 | `theorem` | [isPreirreducible_singleton](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/declarations/ispreirreducible-singleton--34970b9673a3b936c55569a3.md) | 69 | `result-track:34970b9673a3b936c55569a305f9b3272a6d6c197a0e6d47213e259d5c22ec3a` |
| 8 | `theorem` | [isIrreducible_singleton](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/declarations/isirreducible-singleton--8ca952c620776103be279acc.md) | 72 | `result-track:8ca952c620776103be279acccafaaff57763c008b88dbe8b91024494479dd458` |
| 9 | `theorem` | [isPreirreducible_iff_closure](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/declarations/ispreirreducible-iff-closure--fd23af544164c74b4da8f222.md) | 75 | `result-track:fd23af544164c74b4da8f222a5742e2404f99878e8096772ae78a9a3532062df` |
| 10 | `theorem` | [isIrreducible_iff_closure](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/declarations/isirreducible-iff-closure--2c49b85cf0ccc52d3e9734fc.md) | 81 | `result-track:2c49b85cf0ccc52d3e9734fc8ae1e417883bb9bcf76dce05b1a600cb71c44939` |
| 11 | `theorem` | [exists_preirreducible](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/declarations/exists-preirreducible--7af9764c7dc9b58e8aee8895.md) | 88 | `result-track:7af9764c7dc9b58e8aee8895c0e7e28ac35dc84d8cd8e7ec9e1cb3f1d25eb7f0` |
| 12 | `def` | [irreducibleComponents](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/declarations/irreduciblecomponents--c024060f7949072a2e6d20e4.md) | 109 | `declaration-track:c024060f7949072a2e6d20e48411b0ea509e474a2660b4a4f5afc405310e086f` |
| 13 | `theorem` | [isClosed_of_mem_irreducibleComponents](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/declarations/isclosed-of-mem-irreduciblecomponents--07cd84cc858ff2ebb70386f4.md) | 113 | `result-track:07cd84cc858ff2ebb70386f4b0bea295e2825b2aab65246a058c3cf14aa08314` |
| 14 | `theorem` | [irreducibleComponents_eq_maximals_closed](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/declarations/irreduciblecomponents-eq-maximals-closed--0aeacfcb6d834e6663e0fb15.md) | 118 | `result-track:0aeacfcb6d834e6663e0fb15819912a101be3b56e6ffb3e4386bae7380427d9d` |
| 15 | `lemma` | [exists_mem_irreducibleComponents_subset_of_isIrreducible](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/declarations/exists-mem-irreduciblecomponents-subset-of-isirreducible--be7d7ed4f793e68f9c58dc6e.md) | 130 | `result-track:be7d7ed4f793e68f9c58dc6ed8b22fa7ef0406e7538a19b8edfef9ed454efa0e` |
| 16 | `def` | [irreducibleComponent](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/declarations/irreduciblecomponent--b3032c0116cbdfe4438b2902.md) | 138 | `declaration-track:b3032c0116cbdfe4438b29022f30c31439354630bb39f5f0c1e61a9cf109458a` |
| 17 | `theorem` | [irreducibleComponent_property](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/declarations/irreduciblecomponent-property--dc2df12db5ff3a6e2ef9f44d.md) | 141 | `result-track:dc2df12db5ff3a6e2ef9f44d11e1aa159720369caa6cbbe7b9df32e2ac1a99e2` |
| 18 | `theorem` | [mem_irreducibleComponent](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/declarations/mem-irreduciblecomponent--bc528ac27487ad71a2e5acf9.md) | 148 | `result-track:bc528ac27487ad71a2e5acf968f437658c52d310541cd58db8bbd20a096c43bf` |
| 19 | `theorem` | [isIrreducible_irreducibleComponent](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/declarations/isirreducible-irreduciblecomponent--ee019366f996c233daa3f7a5.md) | 151 | `result-track:ee019366f996c233daa3f7a5deb015902c094897d7c69f11ed1a68e44f484a0a` |
| 20 | `theorem` | [eq_irreducibleComponent](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/declarations/eq-irreduciblecomponent--b97cd990f4dd920e3bd171ad.md) | 154 | `result-track:b97cd990f4dd920e3bd171ad626cc2557f600f3d15be3f5d4270b564be9e83b4` |
| 21 | `theorem` | [irreducibleComponent_mem_irreducibleComponents](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/declarations/irreduciblecomponent-mem-irreduciblecomponents--99fb7708b8bdeefa4e9100b1.md) | 158 | `result-track:99fb7708b8bdeefa4e9100b10fc42cf2dfd11287b1337ee4f63b8d315844c059` |
| 22 | `theorem` | [isClosed_irreducibleComponent](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/declarations/isclosed-irreduciblecomponent--dbcd639b82c325ed00685dfb.md) | 162 | `result-track:dbcd639b82c325ed00685dfb4da06af6c7f58f99b048df9ee8fdfa0af442d27b` |
| 23 | `class` | [PreirreducibleSpace](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/declarations/preirreduciblespace--3e53c4abb4de21fb7df757e3.md) | 166 | `declaration-track:3e53c4abb4de21fb7df757e3ef090f1d84b6a0ddae0dad8c269a838570a31d91` |
| 24 | `class` | [IrreducibleSpace](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/declarations/irreduciblespace--971b0215bcefb1748eba34e4.md) | 173 | `declaration-track:971b0215bcefb1748eba34e4700eab18109c3be0a02b15ff8be53a8063739eb7` |
| 25 | `theorem` | [IrreducibleSpace.isIrreducible_univ](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/declarations/irreduciblespace-isirreducible-univ--b71384ddb63a63ee9827f36f.md) | 179 | `result-track:b71384ddb63a63ee9827f36f2239e08af99189bf5d1aabfcf6c0863fe2944c83` |
| 26 | `theorem` | [irreducibleSpace_def](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/declarations/irreduciblespace-def--a48fa1e1261d00d6a3c7ce9a.md) | 183 | `result-track:a48fa1e1261d00d6a3c7ce9aca65000b91a1a0646608a15eb7ec2d1b2e02d16f` |
| 27 | `theorem` | [nonempty_preirreducible_inter](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/declarations/nonempty-preirreducible-inter--584b6d2d7c4f5a8ab4e6c352.md) | 189 | `result-track:584b6d2d7c4f5a8ab4e6c35288316ae5aabd7242e2a2d4b7875cc634a7b87f4d` |
| 28 | `theorem` | [IsOpen.dense](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/declarations/isopen-dense--32d8984bcab6ae9358a36399.md) | 195 | `result-track:32d8984bcab6ae9358a3639954fb7bbfed0f73f0506c5e4205ab010cf291bf94` |
| 29 | `theorem` | [IsPreirreducible.image](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/declarations/ispreirreducible-image--013f02cd78cd74efc0374fbf.md) | 199 | `result-track:013f02cd78cd74efc0374fbf444bd4fbda581946912f5946fe43d1c57d3aba49` |
| 30 | `theorem` | [IsIrreducible.image](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/declarations/isirreducible-image--778192c0b97ea026aa11d147.md) | 217 | `result-track:778192c0b97ea026aa11d1474c0fe3baebf96626b4bb0a6009c72c319ca1d09a` |
| 31 | `theorem` | [Subtype.preirreducibleSpace](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/declarations/subtype-preirreduciblespace--e4e597bece4685951ad680be.md) | 221 | `result-track:e4e597bece4685951ad680be3d84186f7986381194f541bc9ccfa1cca6541563` |
| 32 | `theorem` | [Subtype.irreducibleSpace](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/declarations/subtype-irreduciblespace--88db3a5eee0b6a2f8c9bc544.md) | 227 | `result-track:88db3a5eee0b6a2f8c9bc5445558dc11229f5c54a50f6b882b5469a904e89d5f` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/declarations/instance--d3ff1c39ee68e8db56cdec21.md) | 232 | `declaration-track:d3ff1c39ee68e8db56cdec214d7a2768163ba85a8ea2ff4884a7ce6df74d31cf` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/declarations/instance--e1f684b8193d93565219d944.md) | 236 | `declaration-track:e1f684b8193d93565219d944c857ef4f28693725eceba6b0c891c2f48f582f6f` |
| 35 | `theorem` | [irreducibleComponents_eq_singleton](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/declarations/irreduciblecomponents-eq-singleton--e8d1e97434a9de7529a8519f.md) | 244 | `result-track:e8d1e97434a9de7529a8519f54c34ba0e08a54608250ff833ef07f3f90d28618` |
| 36 | `theorem` | [isIrreducible_iff_sInter](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/declarations/isirreducible-iff-sinter--5687613381109db42ae847e1.md) | 253 | `result-track:5687613381109db42ae847e1129006c9a8dec82e07782ced27016e486211f09a` |
| 37 | `theorem` | [isPreirreducible_iff_isClosed_union_isClosed](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/declarations/ispreirreducible-iff-isclosed-union-isclosed--d8cf52931ee2dc3130265b06.md) | 271 | `result-track:d8cf52931ee2dc3130265b06560cd60b5488a3130f11e631bb622f64cd980d5a` |
| 38 | `theorem` | [isIrreducible_iff_sUnion_isClosed](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/declarations/isirreducible-iff-sunion-isclosed--98ea577162792e73f0643a69.md) | 284 | `result-track:98ea577162792e73f0643a69e40bf3902b24fd1022116320a189c551ca1b6307` |
| 39 | `theorem` | [subset_closure_inter_of_isPreirreducible_of_isOpen](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/declarations/subset-closure-inter-of-ispreirreducible-of-isopen--55a9821b0f9b8e7a058a8614.md) | 300 | `result-track:55a9821b0f9b8e7a058a8614b0be82bfa592aabf784f31cf28cc2d6a47052a30` |
| 40 | `theorem` | [IsPreirreducible.subset_irreducible](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/declarations/ispreirreducible-subset-irreducible--4c38577b683f7f2e25f0f3f6.md) | 308 | `result-track:4c38577b683f7f2e25f0f3f697c02f41c7fd423e94e528ad4b6416a864493126` |
| 41 | `theorem` | [IsPreirreducible.open_subset](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/declarations/ispreirreducible-open-subset--8c79d29e0ec831fe82e35564.md) | 325 | `result-track:8c79d29e0ec831fe82e35564ed6fc22e033fb2b63678f590e04e2da3e64a62d5` |
| 42 | `theorem` | [IsPreirreducible.interior](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/declarations/ispreirreducible-interior--eb3b9ab46083ce9f1312424e.md) | 330 | `result-track:eb3b9ab46083ce9f1312424e1ce73b2eba1aaac2e0e39b36a3ad8d3760a59440` |
| 43 | `theorem` | [IsPreirreducible.preimage](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/declarations/ispreirreducible-preimage--70e30a241b5095b720d0761f.md) | 333 | `result-track:70e30a241b5095b720d0761fbef5da537cf2942fa668848ce85a30a012bcad7b` |
| 44 | `lemma` | [IsPreirreducible.preimage_of_dense_isPreirreducible_fiber](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/declarations/ispreirreducible-preimage-of-dense-ispreirreducible-fiber--a0d8defa344c44eea1ab3278.md) | 347 | `result-track:a0d8defa344c44eea1ab3278e4b9e431b7a2e7a5e833864b990267fff98a8b3a` |
| 45 | `lemma` | [IsPreirreducible.preimage_of_isPreirreducible_fiber](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/declarations/ispreirreducible-preimage-of-ispreirreducible-fiber--b598931800a39359b917da6e.md) | 359 | `result-track:b598931800a39359b917da6eabdd078ca554d5b93b2c15f5e332f12cf716bb32` |
| 46 | `lemma` | [preimage_mem_irreducibleComponents_of_isPreirreducible_fiber](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/declarations/preimage-mem-irreduciblecomponents-of-ispreirreducible-fiber--1996fb2cb2957e4dd0d90fe1.md) | 371 | `result-track:1996fb2cb2957e4dd0d90fe1c2ed04efe011dce621f29262f8822825c555e019` |
| 47 | `lemma` | [image_mem_irreducibleComponents_of_isPreirreducible_fiber](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/declarations/image-mem-irreduciblecomponents-of-ispreirreducible-fiber--8e3ebf5dc0a905010c269883.md) | 387 | `result-track:8e3ebf5dc0a905010c2698835fc05e4bb23ef29aaf7954e26c3e5c6c6071f895` |
| 48 | `def` | [irreducibleComponentsEquivOfIsPreirreducibleFiber](../../../../../mathematics/Topology/GeneralTopology/Irreducible/Variant3d8af42045b19a34e3b6839a87240363b118a40f2698698f67bafe576a1dc8b7.lean/declarations/irreduciblecomponentsequivofispreirreduciblefiber--8de5f1310ec6c9f87acf8da5.md) | 399 | `declaration-track:8de5f1310ec6c9f87acf8da5064fad6c807d091d4acff86b45ad2ab28b91253e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
