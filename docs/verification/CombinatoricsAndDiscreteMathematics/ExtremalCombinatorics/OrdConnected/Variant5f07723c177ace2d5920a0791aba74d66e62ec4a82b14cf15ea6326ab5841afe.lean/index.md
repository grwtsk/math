# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.ExtremalCombinatorics.OrdConnected.Variant5f07723c177ace2d5920a0791aba74d66e62ec4a82b14cf15ea6326ab5841afe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "956043809a71cd91637b31a72ac6c465f29d0ea8",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variant5f07723c177ace2d5920a0791aba74d66e62ec4a82b14cf15ea6326ab5841afe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variant5f07723c177ace2d5920a0791aba74d66e62ec4a82b14cf15ea6326ab5841afe.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variant5f07723c177ace2d5920a0791aba74d66e62ec4a82b14cf15ea6326ab5841afe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `956043809a71cd91637b31a72ac6c465f29d0ea8`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variant5f07723c177ace2d5920a0791aba74d66e62ec4a82b14cf15ea6326ab5841afe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variant5f07723c177ace2d5920a0791aba74d66e62ec4a82b14cf15ea6326ab5841afe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Intervals.UnorderedInterval` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Lattice` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Antichain` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [OrdConnected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variant5f07723c177ace2d5920a0791aba74d66e62ec4a82b14cf15ea6326ab5841afe.lean/declarations/ordconnected--0f9c4c3904c8e586e0d53ccf.md) | 38 | `declaration-track:0f9c4c3904c8e586e0d53ccf625eba6e7da6f1bc2e0c808edb58edefe9736580` |
| 2 | `theorem` | [OrdConnected.out](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variant5f07723c177ace2d5920a0791aba74d66e62ec4a82b14cf15ea6326ab5841afe.lean/declarations/ordconnected-out--3b98fc8b6e986c5a365628c8.md) | 43 | `result-track:3b98fc8b6e986c5a365628c8d50c7bc7ee805daad06645587985ca4bfc1f7bd1` |
| 3 | `theorem` | [ordConnected_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variant5f07723c177ace2d5920a0791aba74d66e62ec4a82b14cf15ea6326ab5841afe.lean/declarations/ordconnected-def--34b297b7d7aab193b65377db.md) | 47 | `result-track:34b297b7d7aab193b65377db4a060219659259edc19440802c27d07113b88848` |
| 4 | `theorem` | [ordConnected_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variant5f07723c177ace2d5920a0791aba74d66e62ec4a82b14cf15ea6326ab5841afe.lean/declarations/ordconnected-iff--7f267403346587ea7d89178e.md) | 52 | `result-track:7f267403346587ea7d89178e425ab62ec1d65e5c4f857ede6e288b2b3d9fedd2` |
| 5 | `theorem` | [ordConnected_of_Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variant5f07723c177ace2d5920a0791aba74d66e62ec4a82b14cf15ea6326ab5841afe.lean/declarations/ordconnected-of-ioo--00bee5fd75ca6bec95663524.md) | 57 | `result-track:00bee5fd75ca6bec95663524d3dc9f9f465276b2caf937110d9e9f9ec7d88d3d` |
| 6 | `theorem` | [OrdConnected.preimage_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variant5f07723c177ace2d5920a0791aba74d66e62ec4a82b14cf15ea6326ab5841afe.lean/declarations/ordconnected-preimage-mono--eb88f043a1d07183a41eba7c.md) | 66 | `result-track:eb88f043a1d07183a41eba7c504cf94ce888dbbc950a71562084d1b8df8d7a94` |
| 7 | `theorem` | [OrdConnected.preimage_anti](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variant5f07723c177ace2d5920a0791aba74d66e62ec4a82b14cf15ea6326ab5841afe.lean/declarations/ordconnected-preimage-anti--9e17acfb3720699c7be847ea.md) | 71 | `result-track:9e17acfb3720699c7be847eae8be1bb91c33765cbfbb46b58bf369d6306554ea` |
| 8 | `theorem` | [Icc_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variant5f07723c177ace2d5920a0791aba74d66e62ec4a82b14cf15ea6326ab5841afe.lean/declarations/icc-subset--32b2f8d23f9cddb2ba20a439.md) | 76 | `result-track:32b2f8d23f9cddb2ba20a439cac5fa0902df8513fde5779ec449980ae2f77052` |
| 9 | `theorem` | [OrdConnected.inter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variant5f07723c177ace2d5920a0791aba74d66e62ec4a82b14cf15ea6326ab5841afe.lean/declarations/ordconnected-inter--79c03d2682f362f0d5fcce4c.md) | 81 | `result-track:79c03d2682f362f0d5fcce4cb4fe865a886975dcae93f0c1bd29c7767158a7a8` |
| 10 | `instance` | [OrdConnected.inter'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variant5f07723c177ace2d5920a0791aba74d66e62ec4a82b14cf15ea6326ab5841afe.lean/declarations/ordconnected-inter--838b295da9bddda996c147dd.md) | 86 | `declaration-track:838b295da9bddda996c147dd45795f4781d3d008c6feacd2233605d836f41fe5` |
| 11 | `theorem` | [OrdConnected.dual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variant5f07723c177ace2d5920a0791aba74d66e62ec4a82b14cf15ea6326ab5841afe.lean/declarations/ordconnected-dual--cb5dd6f9f5ca3d1378eb647e.md) | 91 | `result-track:cb5dd6f9f5ca3d1378eb647e011ff82cca6f0429aef7deac3c6802657e104652` |
| 12 | `theorem` | [ordConnected_dual](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variant5f07723c177ace2d5920a0791aba74d66e62ec4a82b14cf15ea6326ab5841afe.lean/declarations/ordconnected-dual--2a53ce27ffc8cf00dd6ebee1.md) | 96 | `result-track:2a53ce27ffc8cf00dd6ebee139e862db05ae97c979a59cb8562cba1b66fa3a3e` |
| 13 | `theorem` | [ordConnected_sInter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variant5f07723c177ace2d5920a0791aba74d66e62ec4a82b14cf15ea6326ab5841afe.lean/declarations/ordconnected-sinter--5f39e030e7eea8cfbd1ae7b4.md) | 100 | `result-track:5f39e030e7eea8cfbd1ae7b4c53572c64713bb7bbb1188f9eb556346d6abf13b` |
| 14 | `theorem` | [ordConnected_iInter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variant5f07723c177ace2d5920a0791aba74d66e62ec4a82b14cf15ea6326ab5841afe.lean/declarations/ordconnected-iinter--5af3119d1c58fb33c9387a67.md) | 105 | `result-track:5af3119d1c58fb33c9387a67352960ca76be088d0a7379a4b8db7b8b3faf01fc` |
| 15 | `instance` | [ordConnected_iInter'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variant5f07723c177ace2d5920a0791aba74d66e62ec4a82b14cf15ea6326ab5841afe.lean/declarations/ordconnected-iinter--981401c52ae02fd133040832.md) | 110 | `declaration-track:981401c52ae02fd1330408327a2050acc4abc6794e6aae911650a84edf4b3cd3` |
| 16 | `theorem` | [ordConnected_biInter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variant5f07723c177ace2d5920a0791aba74d66e62ec4a82b14cf15ea6326ab5841afe.lean/declarations/ordconnected-biinter--3ef22e4d0fba37ded9bd34bb.md) | 116 | `result-track:3ef22e4d0fba37ded9bd34bbaa9ea8407a34caf615f96a0630f7eccab6c4f2cb` |
| 17 | `theorem` | [ordConnected_pi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variant5f07723c177ace2d5920a0791aba74d66e62ec4a82b14cf15ea6326ab5841afe.lean/declarations/ordconnected-pi--c7f023c37334c5aed4f83cad.md) | 121 | `result-track:c7f023c37334c5aed4f83cad8ed60dd974a01d393cb1f91030933725ebcc1f7b` |
| 18 | `instance` | [ordConnected_pi'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variant5f07723c177ace2d5920a0791aba74d66e62ec4a82b14cf15ea6326ab5841afe.lean/declarations/ordconnected-pi--166da9f0cd5af539d6fa3111.md) | 126 | `declaration-track:166da9f0cd5af539d6fa3111ce8fe045fa15225d73b6a5eae9f821bca25199a1` |
| 19 | `theorem` | [ordConnected_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variant5f07723c177ace2d5920a0791aba74d66e62ec4a82b14cf15ea6326ab5841afe.lean/declarations/ordconnected-ici--b0d157106961eb517469a412.md) | 132 | `result-track:b0d157106961eb517469a4126b815333f0f726f76c00c301bcb4ab342f5c3cb2` |
| 20 | `theorem` | [ordConnected_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variant5f07723c177ace2d5920a0791aba74d66e62ec4a82b14cf15ea6326ab5841afe.lean/declarations/ordconnected-iic--674464ab5e2aff4d9f1f40b0.md) | 137 | `result-track:674464ab5e2aff4d9f1f40b0a055df7664714b9ad7b9eb29743aba63c1d2be19` |
| 21 | `theorem` | [ordConnected_Ioi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variant5f07723c177ace2d5920a0791aba74d66e62ec4a82b14cf15ea6326ab5841afe.lean/declarations/ordconnected-ioi--d788f8a0f9291903460de300.md) | 142 | `result-track:d788f8a0f9291903460de300f165167cdda2e83ecd7551be45c9279c177957c9` |
| 22 | `theorem` | [ordConnected_Iio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variant5f07723c177ace2d5920a0791aba74d66e62ec4a82b14cf15ea6326ab5841afe.lean/declarations/ordconnected-iio--ded1cad8501deda2401aec69.md) | 147 | `result-track:ded1cad8501deda2401aec697d0b857de41190d33f28681b1b271811fbd1c000` |
| 23 | `theorem` | [ordConnected_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variant5f07723c177ace2d5920a0791aba74d66e62ec4a82b14cf15ea6326ab5841afe.lean/declarations/ordconnected-icc--f45e470702953352d38cd215.md) | 152 | `result-track:f45e470702953352d38cd21561a4dc53db8bf4e6dc4dd7d18aea75102cf37a99` |
| 24 | `theorem` | [ordConnected_Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variant5f07723c177ace2d5920a0791aba74d66e62ec4a82b14cf15ea6326ab5841afe.lean/declarations/ordconnected-ico--837c54fe856e48661723dfed.md) | 157 | `result-track:837c54fe856e48661723dfedcc08bd149d8f27f455f4d4a845b9188dc5dd827f` |
| 25 | `theorem` | [ordConnected_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variant5f07723c177ace2d5920a0791aba74d66e62ec4a82b14cf15ea6326ab5841afe.lean/declarations/ordconnected-ioc--82d3c2e70a1072f1211de3a3.md) | 162 | `result-track:82d3c2e70a1072f1211de3a330b72d6646e08f3b698000db0fea829800992528` |
| 26 | `theorem` | [ordConnected_Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variant5f07723c177ace2d5920a0791aba74d66e62ec4a82b14cf15ea6326ab5841afe.lean/declarations/ordconnected-ioo--5495098115ac9c1cd70977e8.md) | 167 | `result-track:5495098115ac9c1cd70977e82ec923eed6efccbd8a9c7bcef2dbe821568ca69f` |
| 27 | `theorem` | [ordConnected_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variant5f07723c177ace2d5920a0791aba74d66e62ec4a82b14cf15ea6326ab5841afe.lean/declarations/ordconnected-singleton--adf68187df372f9fce5c3034.md) | 172 | `result-track:adf68187df372f9fce5c3034840304aa40260b1c9e2dcce2fb19d42c28f9978e` |
| 28 | `theorem` | [ordConnected_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variant5f07723c177ace2d5920a0791aba74d66e62ec4a82b14cf15ea6326ab5841afe.lean/declarations/ordconnected-empty--625385bab50b15ee071d4f16.md) | 179 | `result-track:625385bab50b15ee071d4f16021e0a131d5ea113c2097ecf05429b1eaf651535` |
| 29 | `theorem` | [ordConnected_univ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variant5f07723c177ace2d5920a0791aba74d66e62ec4a82b14cf15ea6326ab5841afe.lean/declarations/ordconnected-univ--0b386489c668e0610cd04472.md) | 184 | `result-track:0b386489c668e0610cd0447290bc74f1265a16fa7a8566b36b018b51251be62a` |
| 30 | `instance` | [instDenselyOrdered](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variant5f07723c177ace2d5920a0791aba74d66e62ec4a82b14cf15ea6326ab5841afe.lean/declarations/instdenselyordered--ec0cfad5106ecd9576fce3d8.md) | 189 | `declaration-track:ec0cfad5106ecd9576fce3d8e9c73baeee8b76687c66deb8f9bb85c71e4e6492` |
| 31 | `theorem` | [ordConnected_preimage](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variant5f07723c177ace2d5920a0791aba74d66e62ec4a82b14cf15ea6326ab5841afe.lean/declarations/ordconnected-preimage--31a850f75095c86d01e8e22d.md) | 196 | `result-track:31a850f75095c86d01e8e22d839c8f29311e2efc5bae5501ab1a823ed9d0f4ca` |
| 32 | `theorem` | [ordConnected_image](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variant5f07723c177ace2d5920a0791aba74d66e62ec4a82b14cf15ea6326ab5841afe.lean/declarations/ordconnected-image--aa0a82a47e2e52de70ec1b5d.md) | 202 | `result-track:aa0a82a47e2e52de70ec1b5d7988dfb2ca8258e89aa49f930becff0dab7a7dee` |
| 33 | `theorem` | [ordConnected_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variant5f07723c177ace2d5920a0791aba74d66e62ec4a82b14cf15ea6326ab5841afe.lean/declarations/ordconnected-range--ce4513011a87ee264a96d4ec.md) | 210 | `result-track:ce4513011a87ee264a96d4ece5419beb30a3bc878bcab966baff1db58559435d` |
| 34 | `theorem` | [dual_ordConnected_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variant5f07723c177ace2d5920a0791aba74d66e62ec4a82b14cf15ea6326ab5841afe.lean/declarations/dual-ordconnected-iff--25d2a59bf629030bc0c87276.md) | 216 | `result-track:25d2a59bf629030bc0c8727648ff32334c18a059a6ab4a65ef3b52c39f013d93` |
| 35 | `theorem` | [dual_ordConnected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variant5f07723c177ace2d5920a0791aba74d66e62ec4a82b14cf15ea6326ab5841afe.lean/declarations/dual-ordconnected--2d643032a2e699c51d9e2641.md) | 222 | `result-track:2d643032a2e699c51d9e2641ed282a8d82e45c2cb5d48ada31927b61f37ddacf` |
| 36 | `theorem` | [_root_.IsAntichain.ordConnected](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variant5f07723c177ace2d5920a0791aba74d66e62ec4a82b14cf15ea6326ab5841afe.lean/declarations/root-isantichain-ordconnected--ed528c2b712bda8857539551.md) | 232 | `result-track:ed528c2b712bda88575395510519942b8f2b03bf4c3d90e73171bd4d566a4697` |
| 37 | `theorem` | [ordConnected_uIcc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variant5f07723c177ace2d5920a0791aba74d66e62ec4a82b14cf15ea6326ab5841afe.lean/declarations/ordconnected-uicc--967ed08a5c6dc70582166767.md) | 246 | `result-track:967ed08a5c6dc70582166767fe75c66cb2af3286a7b59de289cf3343b1c446dd` |
| 38 | `theorem` | [ordConnected_uIoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variant5f07723c177ace2d5920a0791aba74d66e62ec4a82b14cf15ea6326ab5841afe.lean/declarations/ordconnected-uioc--65e5c5548ee1d92ad3f9bb2b.md) | 251 | `result-track:65e5c5548ee1d92ad3f9bb2b739a9d0e91f740e39438daaebd54ae7dd2f42c84` |
| 39 | `theorem` | [OrdConnected.uIcc_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variant5f07723c177ace2d5920a0791aba74d66e62ec4a82b14cf15ea6326ab5841afe.lean/declarations/ordconnected-uicc-subset--f1f3374c0ee2f407478657bf.md) | 255 | `result-track:f1f3374c0ee2f407478657bfedb854d9b0e0f847735c3204b3f62a1c1769ed85` |
| 40 | `theorem` | [OrdConnected.uIoc_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variant5f07723c177ace2d5920a0791aba74d66e62ec4a82b14cf15ea6326ab5841afe.lean/declarations/ordconnected-uioc-subset--8d7ccda27fbee1ab1508c1ef.md) | 260 | `result-track:8d7ccda27fbee1ab1508c1efd4a0c96050405e5c715588aef99a725a932e6fd3` |
| 41 | `theorem` | [ordConnected_iff_uIcc_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variant5f07723c177ace2d5920a0791aba74d66e62ec4a82b14cf15ea6326ab5841afe.lean/declarations/ordconnected-iff-uicc-subset--7b3f59b2baf4e972ec636429.md) | 265 | `result-track:7b3f59b2baf4e972ec636429fcbf59bce54c77f53f05d28ca59d36e7c18baed9` |
| 42 | `theorem` | [ordConnected_of_uIcc_subset_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variant5f07723c177ace2d5920a0791aba74d66e62ec4a82b14cf15ea6326ab5841afe.lean/declarations/ordconnected-of-uicc-subset-left--6f387db4b2b9a4033e9c512e.md) | 270 | `result-track:6f387db4b2b9a4033e9c512ead53aa4653e6ddf9baf62135e015086ae88cb82e` |
| 43 | `theorem` | [ordConnected_iff_uIcc_subset_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variant5f07723c177ace2d5920a0791aba74d66e62ec4a82b14cf15ea6326ab5841afe.lean/declarations/ordconnected-iff-uicc-subset-left--ca4fefd18547810db174050f.md) | 278 | `result-track:ca4fefd18547810db174050f0ca8e343a63cf7ec3c8affe1aaa181e8cee8b91e` |
| 44 | `theorem` | [ordConnected_iff_uIcc_subset_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/OrdConnected/Variant5f07723c177ace2d5920a0791aba74d66e62ec4a82b14cf15ea6326ab5841afe.lean/declarations/ordconnected-iff-uicc-subset-right--0c041537492e31e143f69f27.md) | 283 | `result-track:0c041537492e31e143f69f2764c7fc8d90b413bf6b06a5a12706185a930202f7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
