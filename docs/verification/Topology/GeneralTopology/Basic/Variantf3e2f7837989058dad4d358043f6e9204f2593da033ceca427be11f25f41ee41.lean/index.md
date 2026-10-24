# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variantf3e2f7837989058dad4d358043f6e9204f2593da033ceca427be11f25f41ee41

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1f28ef9f5e0cea5bb558ad1c7fb530bbf3d0da96",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variantf3e2f7837989058dad4d358043f6e9204f2593da033ceca427be11f25f41ee41.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf3e2f7837989058dad4d358043f6e9204f2593da033ceca427be11f25f41ee41.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf3e2f7837989058dad4d358043f6e9204f2593da033ceca427be11f25f41ee41.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1f28ef9f5e0cea5bb558ad1c7fb530bbf3d0da96`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variantf3e2f7837989058dad4d358043f6e9204f2593da033ceca427be11f25f41ee41.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variantf3e2f7837989058dad4d358043f6e9204f2593da033ceca427be11f25f41ee41.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Filter.Ultrafilter.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Cofinite` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.ZornAtoms` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [finite_sUnion_mem_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf3e2f7837989058dad4d358043f6e9204f2593da033ceca427be11f25f41ee41.lean/declarations/finite-sunion-mem-iff--b7ebd638fb783c356364a5be.md) | 37 | `result-track:b7ebd638fb783c356364a5be2fb383568f42296c1b88ffd6e5ab218791232359` |
| 2 | `theorem` | [finite_biUnion_mem_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf3e2f7837989058dad4d358043f6e9204f2593da033ceca427be11f25f41ee41.lean/declarations/finite-biunion-mem-iff--24fe2f7ce9e1c4c32f3afea8.md) | 42 | `result-track:24fe2f7ce9e1c4c32f3afea814d273f528a2bfe65483af306b776794647a8da5` |
| 3 | `lemma` | [eventually_exists_mem_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf3e2f7837989058dad4d358043f6e9204f2593da033ceca427be11f25f41ee41.lean/declarations/eventually-exists-mem-iff--011add636d02b3fa431e86ff.md) | 46 | `result-track:011add636d02b3fa431e86ff8392ad4aceeffa67f576d45241e79f80e1e277bd` |
| 4 | `lemma` | [eventually_exists_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf3e2f7837989058dad4d358043f6e9204f2593da033ceca427be11f25f41ee41.lean/declarations/eventually-exists-iff--925a4702f7338aa6bf67a214.md) | 52 | `result-track:925a4702f7338aa6bf67a2148e744785e4075da41da3dc71c6b213d9e74c9009` |
| 5 | `theorem` | [eq_pure_of_finite_mem](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf3e2f7837989058dad4d358043f6e9204f2593da033ceca427be11f25f41ee41.lean/declarations/eq-pure-of-finite-mem--26cc382345afcbe0ed4673fe.md) | 56 | `result-track:26cc382345afcbe0ed4673fee6379f010644d425ce6795973b1f0bf1acf4c6c7` |
| 6 | `theorem` | [eq_pure_of_finite](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf3e2f7837989058dad4d358043f6e9204f2593da033ceca427be11f25f41ee41.lean/declarations/eq-pure-of-finite--9984cb880950a2948138cb64.md) | 61 | `result-track:9984cb880950a2948138cb64c80c5d715b4c60a512a100d09c6faf3a7738bc18` |
| 7 | `theorem` | [le_cofinite_or_eq_pure](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf3e2f7837989058dad4d358043f6e9204f2593da033ceca427be11f25f41ee41.lean/declarations/le-cofinite-or-eq-pure--837c1f1f908e2809b07540e1.md) | 64 | `result-track:837c1f1f908e2809b07540e125f5d8405a04a00b97ea2611906a0cadbecf8644` |
| 8 | `theorem` | [exists_ultrafilter_of_finite_inter_nonempty](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf3e2f7837989058dad4d358043f6e9204f2593da033ceca427be11f25f41ee41.lean/declarations/exists-ultrafilter-of-finite-inter-nonempty--84af2d41d008d89b6bf63d2d.md) | 70 | `result-track:84af2d41d008d89b6bf63d2d9129caea847085c677db7af4302bd8278a7ea0ca` |
| 9 | `lemma` | [atTop_eq_pure_of_isTop](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf3e2f7837989058dad4d358043f6e9204f2593da033ceca427be11f25f41ee41.lean/declarations/attop-eq-pure-of-istop--8c646d85b49183d097d12de5.md) | 84 | `result-track:8c646d85b49183d097d12de56141043934768fddd726ddb4b4ab2fed4859e59d` |
| 10 | `lemma` | [atBot_eq_pure_of_isBot](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf3e2f7837989058dad4d358043f6e9204f2593da033ceca427be11f25f41ee41.lean/declarations/atbot-eq-pure-of-isbot--9c71bed5de63cc0ab44da88e.md) | 88 | `result-track:9c71bed5de63cc0ab44da88e4f2c2fe8ee6f3f7358f27c39058c84efdfcbb0ee` |
| 11 | `theorem` | [tendsto_iff_ultrafilter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf3e2f7837989058dad4d358043f6e9204f2593da033ceca427be11f25f41ee41.lean/declarations/tendsto-iff-ultrafilter--f69c85a72d57a2d369288609.md) | 93 | `result-track:f69c85a72d57a2d369288609c53f45d405fff11b3387499e1ad5fa540b587575` |
| 12 | `def` | [hyperfilter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf3e2f7837989058dad4d358043f6e9204f2593da033ceca427be11f25f41ee41.lean/declarations/hyperfilter--40aa089137881f6f96db9736.md) | 102 | `declaration-track:40aa089137881f6f96db973621d50e19506fa89bb508affa9c7b72c7af75a4f0` |
| 13 | `theorem` | [hyperfilter_le_cofinite](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf3e2f7837989058dad4d358043f6e9204f2593da033ceca427be11f25f41ee41.lean/declarations/hyperfilter-le-cofinite--a59adc1ed50cb88c99a67bab.md) | 107 | `result-track:a59adc1ed50cb88c99a67bab2f2029c344e1431ba14cde9d52dad4f72c12e5f6` |
| 14 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.FiniteSUnionMemIff.Variant29120714214fc76cf08cff48dfd84edcddd4bc7315b46008447fa737a13b7d62.Nat.hyperfilter_le_atTop](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf3e2f7837989058dad4d358043f6e9204f2593da033ceca427be11f25f41ee41.lean/declarations/root-grwtsk-topology-generaltopology-finitesunionmemiff-variant291207142--becb0cbe07ce377a43ebb4ec.md) | 110 | `result-track:becb0cbe07ce377a43ebb4ece6dbc164bc5291d0fa6985ae0970afe386d2647c` |
| 15 | `theorem` | [bot_ne_hyperfilter](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf3e2f7837989058dad4d358043f6e9204f2593da033ceca427be11f25f41ee41.lean/declarations/bot-ne-hyperfilter--78210decfcc94ac16f2f0867.md) | 114 | `result-track:78210decfcc94ac16f2f08676648b652be253b768ca2a6136669e121ecdeaf84` |
| 16 | `theorem` | [notMem_hyperfilter_of_finite](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf3e2f7837989058dad4d358043f6e9204f2593da033ceca427be11f25f41ee41.lean/declarations/notmem-hyperfilter-of-finite--a2ac1b10b9e86fdd40541747.md) | 117 | `result-track:a2ac1b10b9e86fdd40541747e9135c3d6ff69cd7088a462112ad8310e34e2933` |
| 17 | `theorem` | [compl_mem_hyperfilter_of_finite](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf3e2f7837989058dad4d358043f6e9204f2593da033ceca427be11f25f41ee41.lean/declarations/compl-mem-hyperfilter-of-finite--9b3f1e63291b78a603b2afdd.md) | 128 | `result-track:9b3f1e63291b78a603b2afdd0bd9704b1c1895bd7d466f7e73bb2716df5ff882` |
| 18 | `theorem` | [mem_hyperfilter_of_finite_compl](../../../../../mathematics/Topology/GeneralTopology/Basic/Variantf3e2f7837989058dad4d358043f6e9204f2593da033ceca427be11f25f41ee41.lean/declarations/mem-hyperfilter-of-finite-compl--4ea9558ce5a2a4e8b77c3044.md) | 133 | `result-track:4ea9558ce5a2a4e8b77c3044c760f9f0074e811371c8a19d060a009d117cd7b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
