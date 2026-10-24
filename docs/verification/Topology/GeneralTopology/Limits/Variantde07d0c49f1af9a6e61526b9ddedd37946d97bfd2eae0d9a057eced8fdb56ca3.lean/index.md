# Verification target: GRWTSK.Topology.GeneralTopology.Limits.Variantde07d0c49f1af9a6e61526b9ddedd37946d97bfd2eae0d9a057eced8fdb56ca3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1325b0ca4a2d494abfd1c38b0de958acdbbbcce0",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Limits/Variantde07d0c49f1af9a6e61526b9ddedd37946d97bfd2eae0d9a057eced8fdb56ca3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantde07d0c49f1af9a6e61526b9ddedd37946d97bfd2eae0d9a057eced8fdb56ca3.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantde07d0c49f1af9a6e61526b9ddedd37946d97bfd2eae0d9a057eced8fdb56ca3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1325b0ca4a2d494abfd1c38b0de958acdbbbcce0`.

Source path: `GRWTSK/Topology/GeneralTopology/Limits/Variantde07d0c49f1af9a6e61526b9ddedd37946d97bfd2eae0d9a057eced8fdb56ca3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Limits/Variantde07d0c49f1af9a6e61526b9ddedd37946d97bfd2eae0d9a057eced8fdb56ca3.lean.json)

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
| 1 | `abbrev` | [HasExplicitFiniteCoproduct](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantde07d0c49f1af9a6e61526b9ddedd37946d97bfd2eae0d9a057eced8fdb56ca3.lean/declarations/hasexplicitfinitecoproduct--699a8d10c5035a6305c3f48c.md) | 55 | `declaration-track:699a8d10c5035a6305c3f48c9b0827df830f1d96458b0990e429829f8a38d244` |
| 2 | `abbrev` | [finiteCoproduct](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantde07d0c49f1af9a6e61526b9ddedd37946d97bfd2eae0d9a057eced8fdb56ca3.lean/declarations/finitecoproduct--0eb5313cbc950841a27787c6.md) | 63 | `declaration-track:0eb5313cbc950841a27787c63bcdb68e19253e630d1175952c40eb53108c0357` |
| 3 | `def` | [finiteCoproduct.ι](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantde07d0c49f1af9a6e61526b9ddedd37946d97bfd2eae0d9a057eced8fdb56ca3.lean/declarations/finitecoproduct--1483f7ab731231bef374ba4f.md) | 68 | `declaration-track:1483f7ab731231bef374ba4fd06c0e9438a9df3522b5ebf7718470b2ff5ea632` |
| 4 | `def` | [finiteCoproduct.desc](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantde07d0c49f1af9a6e61526b9ddedd37946d97bfd2eae0d9a057eced8fdb56ca3.lean/declarations/finitecoproduct-desc--4aad4868b5230280c9f3fe0c.md) | 78 | `declaration-track:4aad4868b5230280c9f3fe0caae8aa3f5e430b7c73f43eaf558128c267db43f6` |
| 5 | `lemma` | [finiteCoproduct.ι_desc](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantde07d0c49f1af9a6e61526b9ddedd37946d97bfd2eae0d9a057eced8fdb56ca3.lean/declarations/finitecoproduct-desc--071ebdb09755788178b4dbef.md) | 87 | `result-track:071ebdb09755788178b4dbefc767a046dafd81042536428a9e9320d40c0eb970` |
| 6 | `lemma` | [finiteCoproduct.hom_ext](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantde07d0c49f1af9a6e61526b9ddedd37946d97bfd2eae0d9a057eced8fdb56ca3.lean/declarations/finitecoproduct-hom-ext--64bc164b46cc843a02656e39.md) | 90 | `result-track:64bc164b46cc843a02656e399582da08fbdfdad2a649789acfc5d93b0c9ae120` |
| 7 | `abbrev` | [finiteCoproduct.cofan](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantde07d0c49f1af9a6e61526b9ddedd37946d97bfd2eae0d9a057eced8fdb56ca3.lean/declarations/finitecoproduct-cofan--75492e1801c8706e20049fee.md) | 98 | `declaration-track:75492e1801c8706e20049fee81507730b5233bdc8101d82f195633ea9a9479ba` |
| 8 | `def` | [finiteCoproduct.isColimit](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantde07d0c49f1af9a6e61526b9ddedd37946d97bfd2eae0d9a057eced8fdb56ca3.lean/declarations/finitecoproduct-iscolimit--822b51d5caf4da3cfda8e9f4.md) | 102 | `declaration-track:822b51d5caf4da3cfda8e9f4081274a4f75dea58829da933de828f0e2ccf3eae` |
| 9 | `lemma` | [finiteCoproduct.ι_injective](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantde07d0c49f1af9a6e61526b9ddedd37946d97bfd2eae0d9a057eced8fdb56ca3.lean/declarations/finitecoproduct-injective--941e33ad3946c0947e0444cf.md) | 109 | `result-track:941e33ad3946c0947e0444cfe41c2109da4dca4b6be61c29a476ab6c3181b86d` |
| 10 | `lemma` | [finiteCoproduct.ι_jointly_surjective](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantde07d0c49f1af9a6e61526b9ddedd37946d97bfd2eae0d9a057eced8fdb56ca3.lean/declarations/finitecoproduct-jointly-surjective--8c0042e1272d3ce03070552d.md) | 113 | `result-track:8c0042e1272d3ce03070552d29d68cec3eeeb8c272581e2bee5ef189af48c91a` |
| 11 | `lemma` | [finiteCoproduct.ι_desc_apply](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantde07d0c49f1af9a6e61526b9ddedd37946d97bfd2eae0d9a057eced8fdb56ca3.lean/declarations/finitecoproduct-desc-apply--d9b563fc8c150fb9e7c8b06e.md) | 116 | `result-track:d9b563fc8c150fb9e7c8b06e431f1c08218174e044ba2e1536256746c50eef22` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantde07d0c49f1af9a6e61526b9ddedd37946d97bfd2eae0d9a057eced8fdb56ca3.lean/declarations/instance--22d3f3424edae3d0cdf07b8c.md) | 120 | `declaration-track:22d3f3424edae3d0cdf07b8cb5ec958e624288bf2cea48d29e193d0d2eb611f9` |
| 13 | `class` | [HasExplicitFiniteCoproducts](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantde07d0c49f1af9a6e61526b9ddedd37946d97bfd2eae0d9a057eced8fdb56ca3.lean/declarations/hasexplicitfinitecoproducts--7702c57a3e40fe0f87be765e.md) | 134 | `declaration-track:7702c57a3e40fe0f87be765e9738f4c24820bf84a12cbd9afb3d5e9737e10227` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantde07d0c49f1af9a6e61526b9ddedd37946d97bfd2eae0d9a057eced8fdb56ca3.lean/declarations/instance--3790a0239f4f999a0b85b3a1.md) | 139 | `declaration-track:3790a0239f4f999a0b85b3a197819522a4d36bcf35453c25a88ef3b677665a07` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantde07d0c49f1af9a6e61526b9ddedd37946d97bfd2eae0d9a057eced8fdb56ca3.lean/declarations/instance--b1b92c2eaba34965f934ac6d.md) | 143 | `declaration-track:b1b92c2eaba34965f934ac6d9104c7d442557833a7362919d52c8cc2b9c9d6f3` |
| 16 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantde07d0c49f1af9a6e61526b9ddedd37946d97bfd2eae0d9a057eced8fdb56ca3.lean/declarations/example--327e82a66a82753ef6a8a6ae.md) | 151 | `declaration-track:327e82a66a82753ef6a8a6ae1ca85b9750c63f6a95699f1491539afe9ffdbf9f` |
| 17 | `lemma` | [finiteCoproduct.isOpenEmbedding_ι](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantde07d0c49f1af9a6e61526b9ddedd37946d97bfd2eae0d9a057eced8fdb56ca3.lean/declarations/finitecoproduct-isopenembedding--6e83715919bb0ce821dafbb5.md) | 154 | `result-track:6e83715919bb0ce821dafbb5f20d7245f3f7c9d2179d0962d157d53b1b27f0d3` |
| 18 | `lemma` | [Sigma.isOpenEmbedding_ι](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantde07d0c49f1af9a6e61526b9ddedd37946d97bfd2eae0d9a057eced8fdb56ca3.lean/declarations/sigma-isopenembedding--1192175017743d5adfa23bcf.md) | 160 | `result-track:1192175017743d5adfa23bcf3636560e380b546766c247579f094be17d958a42` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantde07d0c49f1af9a6e61526b9ddedd37946d97bfd2eae0d9a057eced8fdb56ca3.lean/declarations/instance--6a7c789b01fa66676878d5a8.md) | 170 | `declaration-track:6a7c789b01fa66676878d5a8cd48a87cb00e3fdb900931e27f6e46cc41fc45bd` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantde07d0c49f1af9a6e61526b9ddedd37946d97bfd2eae0d9a057eced8fdb56ca3.lean/declarations/instance--f57f1a058bb25a5dface60a7.md) | 179 | `declaration-track:f57f1a058bb25a5dface60a74bf8eef5e111d6db6c85b72af8220470330323fa` |
| 21 | `abbrev` | [HasExplicitPullback](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantde07d0c49f1af9a6e61526b9ddedd37946d97bfd2eae0d9a057eced8fdb56ca3.lean/declarations/hasexplicitpullback--2360190f284baba67a69e1da.md) | 195 | `declaration-track:2360190f284baba67a69e1da27e62cd8397f2358b3264cf91f4ae28c44c66c15` |
| 22 | `def` | [pullback](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantde07d0c49f1af9a6e61526b9ddedd37946d97bfd2eae0d9a057eced8fdb56ca3.lean/declarations/pullback--345f5e5ad1de25e89a44a203.md) | 203 | `declaration-track:345f5e5ad1de25e89a44a203581515e79bb8d0ea5d71f66893db65e9ea622e65` |
| 23 | `def` | [pullback.fst](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantde07d0c49f1af9a6e61526b9ddedd37946d97bfd2eae0d9a057eced8fdb56ca3.lean/declarations/pullback-fst--f5aaecc7b0fec7820897610a.md) | 213 | `declaration-track:f5aaecc7b0fec7820897610ae2582a35ba5b88fd42e630379f417042bacd2baf` |
| 24 | `def` | [pullback.snd](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantde07d0c49f1af9a6e61526b9ddedd37946d97bfd2eae0d9a057eced8fdb56ca3.lean/declarations/pullback-snd--39df517b1d0d70e3e6b34712.md) | 221 | `declaration-track:39df517b1d0d70e3e6b34712b5d701f2c6d7f7e082bd21b52ec30753868e6f10` |
| 25 | `lemma` | [pullback.condition](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantde07d0c49f1af9a6e61526b9ddedd37946d97bfd2eae0d9a057eced8fdb56ca3.lean/declarations/pullback-condition--0e117cc3532e3e0e2a5fe58c.md) | 227 | `result-track:0e117cc3532e3e0e2a5fe58c91f261fff3fd61ecd3047c439915fef302c19c05` |
| 26 | `def` | [pullback.lift](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantde07d0c49f1af9a6e61526b9ddedd37946d97bfd2eae0d9a057eced8fdb56ca3.lean/declarations/pullback-lift--6d86889780534181cfa3d1d4.md) | 235 | `declaration-track:6d86889780534181cfa3d1d488f6ea492695cd1f21db696da6b78edffff186f9` |
| 27 | `lemma` | [pullback.lift_fst](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantde07d0c49f1af9a6e61526b9ddedd37946d97bfd2eae0d9a057eced8fdb56ca3.lean/declarations/pullback-lift-fst--2a9e62e70efa112766efc6b3.md) | 242 | `result-track:2a9e62e70efa112766efc6b305b11b40e25669ff6728458d0ab6ab7f47583086` |
| 28 | `lemma` | [pullback.lift_snd](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantde07d0c49f1af9a6e61526b9ddedd37946d97bfd2eae0d9a057eced8fdb56ca3.lean/declarations/pullback-lift-snd--f298480576cdda8b5df92831.md) | 246 | `result-track:f298480576cdda8b5df92831d1c06717499718a0c240b060ea09439b7a05d8e7` |
| 29 | `lemma` | [pullback.hom_ext](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantde07d0c49f1af9a6e61526b9ddedd37946d97bfd2eae0d9a057eced8fdb56ca3.lean/declarations/pullback-hom-ext--3dc24fe355cb8a3b1d2c01da.md) | 249 | `result-track:3dc24fe355cb8a3b1d2c01da27a41d2ef7dc0396c057bd6865abf06ab4b9d2e5` |
| 30 | `def` | [pullback.cone](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantde07d0c49f1af9a6e61526b9ddedd37946d97bfd2eae0d9a057eced8fdb56ca3.lean/declarations/pullback-cone--4c23034eca000577d17b0254.md) | 263 | `declaration-track:4c23034eca000577d17b025490b56cd5aa11fa5242f0e1ae8c0f866100d10a61` |
| 31 | `def` | [pullback.isLimit](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantde07d0c49f1af9a6e61526b9ddedd37946d97bfd2eae0d9a057eced8fdb56ca3.lean/declarations/pullback-islimit--88879a98a2baea44d2268d06.md) | 270 | `declaration-track:88879a98a2baea44d2268d0692d3162d04dc7c67d8ba3aacc05b9e60f44d2a4d` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantde07d0c49f1af9a6e61526b9ddedd37946d97bfd2eae0d9a057eced8fdb56ca3.lean/declarations/instance--8e8fbdd035f4944b08ccfd3d.md) | 277 | `declaration-track:8e8fbdd035f4944b08ccfd3d6bc19924994d27f94a19499cdf6fd1c4ff35c57b` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantde07d0c49f1af9a6e61526b9ddedd37946d97bfd2eae0d9a057eced8fdb56ca3.lean/declarations/instance--d18d858bfdcf5729eaac3c8c.md) | 281 | `declaration-track:d18d858bfdcf5729eaac3c8ccbe7b033677de4dd431436d059df5c4e4136cf69` |
| 34 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantde07d0c49f1af9a6e61526b9ddedd37946d97bfd2eae0d9a057eced8fdb56ca3.lean/declarations/instance--c1213b67ebb3bf36056382d9.md) | 287 | `declaration-track:c1213b67ebb3bf36056382d9056e5063bc9cb941f4d3faf19ebd27237f3d1720` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantde07d0c49f1af9a6e61526b9ddedd37946d97bfd2eae0d9a057eced8fdb56ca3.lean/declarations/instance--e508166fab0d42778573d76b.md) | 291 | `declaration-track:e508166fab0d42778573d76b12c279f8b2462193fa5c99e1134bfb8d68b0d865` |
| 36 | `class` | [HasExplicitPullbacks](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantde07d0c49f1af9a6e61526b9ddedd37946d97bfd2eae0d9a057eced8fdb56ca3.lean/declarations/hasexplicitpullbacks--a71ca4eeb42a3531ae5346f6.md) | 303 | `declaration-track:a71ca4eeb42a3531ae5346f63fd41e2f1f74a31e1e33c814b774381f7ca1879f` |
| 37 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantde07d0c49f1af9a6e61526b9ddedd37946d97bfd2eae0d9a057eced8fdb56ca3.lean/declarations/instance--882024b9c5f6335b7ac023f2.md) | 308 | `declaration-track:882024b9c5f6335b7ac023f2c7901f401777218799b959b619c702d890773cd3` |
| 38 | `class` | [HasExplicitPullbacksOfInclusions](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantde07d0c49f1af9a6e61526b9ddedd37946d97bfd2eae0d9a057eced8fdb56ca3.lean/declarations/hasexplicitpullbacksofinclusions--d48ba33768274f24b66c6c5c.md) | 316 | `declaration-track:d48ba33768274f24b66c6c5c0114db5254045897b24a914ae3e7d0405c992551` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantde07d0c49f1af9a6e61526b9ddedd37946d97bfd2eae0d9a057eced8fdb56ca3.lean/declarations/instance--9d0cc27e0370e5fc7ade469f.md) | 321 | `declaration-track:9d0cc27e0370e5fc7ade469fa451a928f575f6bf8460769e3e820115647acc9b` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantde07d0c49f1af9a6e61526b9ddedd37946d97bfd2eae0d9a057eced8fdb56ca3.lean/declarations/instance--8b32fc24b25c50801618cfcd.md) | 331 | `declaration-track:8b32fc24b25c50801618cfcdb21c4abb45b38aed7df0ba187c9e42b8b9c20faf` |
| 41 | `theorem` | [hasPullbacksOfInclusions](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantde07d0c49f1af9a6e61526b9ddedd37946d97bfd2eae0d9a057eced8fdb56ca3.lean/declarations/haspullbacksofinclusions--c8d214e43022b25e93b4d11c.md) | 334 | `result-track:c8d214e43022b25e93b4d11c498a43e55da5400e3f1b3114c0f1756bdc36369b` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantde07d0c49f1af9a6e61526b9ddedd37946d97bfd2eae0d9a057eced8fdb56ca3.lean/declarations/instance--fb9715201dfec0c3cb954777.md) | 344 | `declaration-track:fb9715201dfec0c3cb9547777f8ff8540e010e23896918ea7db67c008fb91ad6` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantde07d0c49f1af9a6e61526b9ddedd37946d97bfd2eae0d9a057eced8fdb56ca3.lean/declarations/instance--41e81f45473e66c05b051aa9.md) | 350 | `declaration-track:41e81f45473e66c05b051aa9ad4b2ee3a764fdc96fcbd96858d0d7715239f99d` |
| 44 | `theorem` | [finitaryExtensive](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantde07d0c49f1af9a6e61526b9ddedd37946d97bfd2eae0d9a057eced8fdb56ca3.lean/declarations/finitaryextensive--e43861d78ee44c7731db645f.md) | 353 | `result-track:e43861d78ee44c7731db645f94758eadfc17e75faf3a538abcb5831d9eb6e250` |
| 45 | `def` | [isTerminalPUnit](../../../../../mathematics/Topology/GeneralTopology/Limits/Variantde07d0c49f1af9a6e61526b9ddedd37946d97bfd2eae0d9a057eced8fdb56ca3.lean/declarations/isterminalpunit--02c6fafae42805b4a4abc1d2.md) | 366 | `declaration-track:02c6fafae42805b4a4abc1d2c93174f8f29466e1f4883ca4cac2e16c9e9e6260` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
